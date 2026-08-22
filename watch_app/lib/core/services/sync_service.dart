import 'dart:async';

import 'package:calorify_watch/core/db/watch_database.dart';
import 'package:calorify_watch/core/services/data_cache.dart';
import 'package:calorify_watch/core/services/watch_clock.dart';
import 'package:calorify_watch/core/services/watch_transport.dart';
import 'package:calorify_watch/core/services/wear_json_protocol.dart';
import 'package:calorify_watch/core/services/wear_os_channel.dart';
import 'package:flutter/foundation.dart';
import 'package:models/models.dart';

enum SyncState { idle, syncing, synced, error, disconnected }

enum SyncRequestResult { synced, queued, failed }

enum _PendingOperationProcessResult { applied, retryLater, drop }

class WatchSyncException implements Exception {
  const WatchSyncException(this.message);

  final String message;

  @override
  String toString() => message;
}

String watchMealOperationId(LoggedMeal meal) =>
    'watch:${meal.clientId}:${meal.createdAt}';

/// Service to sync data between watch and main app using Wear OS Data Layer.
class SyncService {
  SyncService({
    required WatchSyncTransport transport,
    required WatchSyncDatabase database,
    required DataCache cache,
    required WatchClock clock,
    bool enablePendingPolling = true,
  }) : _transport = transport,
       _database = database,
       _cache = cache,
       _clock = clock,
       _enablePendingPolling = enablePendingPolling;

  static final SyncService instance = SyncService(
    transport: WearOsSyncTransport(),
    database: WatchDatabase(),
    cache: DataCache.instance,
    clock: const SystemWatchClock(),
  );

  final WatchSyncTransport _transport;
  final WatchSyncDatabase _database;
  final DataCache _cache;
  final WatchClock _clock;
  final bool _enablePendingPolling;
  final ValueNotifier<SyncState> syncState = ValueNotifier(SyncState.idle);

  bool _isInitialized = false;
  Future<void>? _initialization;
  bool _channelReady = false;
  bool _isFlushingPending = false;
  final Set<int> _activeOptimisticMealIds = <int>{};
  final Set<int> _activeDeletedMealIds = <int>{};
  Timer? _pendingSyncTimer;

  ValueListenable<DateTime?> get lastSyncTime => _cache.dashboardLastSyncTime;
  ValueListenable<DateTime?> get favoriteLastSyncTime =>
      _cache.favoritesLastSyncTime;
  ValueListenable<List<LoggedMeal>> get todaysMeals => _cache.todaysMeals;
  ValueListenable<int?> get calorieGoal => _cache.calorieGoal;
  ValueListenable<List<FavoriteMeal>> get favoriteMeals => _cache.favoriteMeals;

  Future<void> initialize() {
    if (_isInitialized) {
      _restoreCachedSyncState();
      return Future.value();
    }

    return _initialization ??= _initialize().whenComplete(() {
      _initialization = null;
    });
  }

  Future<void> _initialize() async {
    try {
      await _clock.delay(const Duration(milliseconds: 100));
      await _restorePersistedCache();

      // The local cache and retry loop must remain active even when the phone
      // is unavailable during startup.
      _isInitialized = true;
      if (_enablePendingPolling) {
        _startPendingSyncPolling();
      }

      _channelReady = await _transport.initialize();
      if (!_channelReady) {
        syncState.value = SyncState.disconnected;
        return;
      }

      final connected = await _transport.isPhoneConnected();
      if (!connected) {
        syncState.value = SyncState.disconnected;
        return;
      }

      _restoreCachedSyncState();
      await _flushPendingOperations();
    } catch (error) {
      _debugLog('Failed to initialize sync service: type=${error.runtimeType}');
      syncState.value = SyncState.error;
    }
  }

  Future<void> refreshDashboard({bool forceRefresh = false}) async {
    await _ensureInitialized();

    if (!forceRefresh && _hasDashboardCache) {
      _restoreCachedSyncState();
      unawaited(_runBackgroundRefresh(_refreshDashboardData));
      return;
    }

    await _refreshDashboardData();
  }

  Future<List<FavoriteMeal>> requestFavoriteMeals({
    bool forceRefresh = false,
  }) async {
    await _ensureInitialized();

    if (!forceRefresh &&
        (_cache.favoriteMeals.value.isNotEmpty || _cache.hasFreshFavorites)) {
      unawaited(
        _runBackgroundRefresh(() async {
          await _refreshFavoriteMeals();
        }),
      );
      return _cache.favoriteMeals.value;
    }

    return _refreshFavoriteMeals();
  }

  Future<SyncRequestResult> sendMeal(Meal meal, {int? favoriteMealId}) async {
    await _ensureInitialized();

    final optimisticMeal = _cache.addOptimisticMeal(meal);
    _activeOptimisticMealIds.add(optimisticMeal.clientId);
    await _database.upsertMeal(optimisticMeal);

    if (!await _ensurePhoneConnected()) {
      await _database.queueMealLog(
        optimisticMeal,
        favoriteMealId: favoriteMealId,
      );
      _activeOptimisticMealIds.remove(optimisticMeal.clientId);
      return SyncRequestResult.queued;
    }

    syncState.value = SyncState.syncing;

    try {
      final response = await _transport.send(
        path: WatchPaths.mealLog,
        data: _mealLogRequest(optimisticMeal, favoriteMealId: favoriteMealId),
      );

      if (response.isSuccess) {
        _markTransportSynced();
        _activeOptimisticMealIds.remove(optimisticMeal.clientId);
        unawaited(_runBackgroundRefresh(_refreshDashboardData));
        return SyncRequestResult.synced;
      }

      if (!response.isValidatedPeerRejection) {
        await _database.queueMealLog(
          optimisticMeal,
          favoriteMealId: favoriteMealId,
        );
        _activeOptimisticMealIds.remove(optimisticMeal.clientId);
        syncState.value = SyncState.disconnected;
        return SyncRequestResult.queued;
      }
    } catch (error) {
      _debugLog('Failed to send meal: type=${error.runtimeType}');
      await _database.queueMealLog(
        optimisticMeal,
        favoriteMealId: favoriteMealId,
      );
      _activeOptimisticMealIds.remove(optimisticMeal.clientId);
      syncState.value = SyncState.disconnected;
      return SyncRequestResult.queued;
    }

    _activeOptimisticMealIds.remove(optimisticMeal.clientId);
    _cache.removeMealById(optimisticMeal.clientId);
    await _database.deleteCachedMeal(optimisticMeal.clientId);
    syncState.value = SyncState.error;
    return SyncRequestResult.failed;
  }

  Future<SyncRequestResult> deleteMeal(int mealId) async {
    if (mealId == 0) {
      return SyncRequestResult.failed;
    }

    await _ensureInitialized();

    final removedMeal = _cache.removeMealById(mealId);
    if (removedMeal == null) {
      return SyncRequestResult.failed;
    }
    _activeDeletedMealIds.add(mealId);
    await _database.deleteCachedMeal(mealId);

    if (mealId < 0) {
      await _database.cancelQueuedMealLog(mealId);
      _activeDeletedMealIds.remove(mealId);
      return SyncRequestResult.queued;
    }

    if (!await _ensurePhoneConnected()) {
      await _database.queueMealDelete(mealId);
      _activeDeletedMealIds.remove(mealId);
      return SyncRequestResult.queued;
    }

    syncState.value = SyncState.syncing;

    try {
      final response = await _transport.send(
        path: WatchPaths.mealDelete,
        data: {'meal_id': mealId},
      );

      if (response.isSuccess) {
        _markTransportSynced();
        unawaited(_runBackgroundRefresh(_refreshDashboardData));
        _activeDeletedMealIds.remove(mealId);
        return SyncRequestResult.synced;
      }

      if (!response.isValidatedPeerRejection) {
        await _database.queueMealDelete(mealId);
        _activeDeletedMealIds.remove(mealId);
        syncState.value = SyncState.disconnected;
        return SyncRequestResult.queued;
      }
    } catch (error) {
      _debugLog('Failed to delete meal: type=${error.runtimeType}');
      await _database.queueMealDelete(mealId);
      _activeDeletedMealIds.remove(mealId);
      syncState.value = SyncState.disconnected;
      return SyncRequestResult.queued;
    }

    _activeDeletedMealIds.remove(mealId);
    _cache.restoreMeal(removedMeal);
    await _database.upsertMeal(removedMeal);
    syncState.value = SyncState.error;
    return SyncRequestResult.failed;
  }

  Future<bool> isPhoneConnected() async {
    if (!_isInitialized) {
      return false;
    }

    return _transport.isPhoneConnected();
  }

  Future<void> _refreshDashboardData({bool flushPendingFirst = true}) async {
    if (!await _ensurePhoneConnected()) {
      throw const WatchSyncException('No connected phone');
    }

    syncState.value = SyncState.syncing;

    try {
      if (flushPendingFirst) {
        await _flushPendingOperations();
      }
      final results = await Future.wait<dynamic>([
        _fetchTodaysMealsFromPhone(),
        _fetchCalorieGoalFromPhone(),
      ]);

      final pendingOperations = await _database.getPendingOperations();
      final protectedOptimisticIds = <int>{..._activeOptimisticMealIds};
      final suppressedMealIds = <int>{..._activeDeletedMealIds};
      for (final operation in pendingOperations) {
        switch (operation.type) {
          case PendingWatchOperationType.logMeal:
            protectedOptimisticIds.add(operation.mealId);
            break;
          case PendingWatchOperationType.deleteMeal:
            suppressedMealIds.add(operation.mealId);
            break;
        }
      }

      final syncedAt = _clock.now();
      _cache.updateDashboard(
        meals: mergeWatchDashboardMeals(
          remoteMeals: results[0] as List<LoggedMeal>,
          localMeals: _cache.todaysMeals.value,
          protectedOptimisticIds: protectedOptimisticIds,
          suppressedMealIds: suppressedMealIds,
        ),
        goal: results[1] as int?,
        syncedAt: syncedAt,
      );
      await _database.replaceDashboard(
        meals: _cache.todaysMeals.value,
        calorieGoal: _cache.calorieGoal.value,
        dashboardLastSyncAt: syncedAt,
      );
      syncState.value = SyncState.synced;
    } catch (error) {
      _debugLog('Failed to refresh dashboard data: type=${error.runtimeType}');
      syncState.value = SyncState.error;
      rethrow;
    }
  }

  Future<List<FavoriteMeal>> _refreshFavoriteMeals() async {
    if (!await _ensurePhoneConnected()) {
      throw const WatchSyncException('No connected phone');
    }

    syncState.value = SyncState.syncing;

    try {
      final response = await _transport.send(path: WatchPaths.favorites);

      if (response.isSuccess) {
        final rawFavorites = response.data!['favorites'];
        if (rawFavorites is! List) {
          throw const FormatException('Favorites response is malformed');
        }
        final favorites =
            rawFavorites
                .map(
                  (value) => favoriteMealFromLegacyJson(
                    Map<String, dynamic>.from(value as Map),
                  ),
                )
                .toList();

        final syncedAt = _clock.now();
        _cache.setFavoriteMeals(favorites, syncedAt: syncedAt);
        await _database.replaceFavorites(favorites, lastSyncAt: syncedAt);
        _markTransportSynced();
        return favorites;
      }

      throw WatchSyncException(
        response.errorMessage ?? 'Failed to fetch favorite meals',
      );
    } catch (error) {
      _debugLog('Failed to refresh favorite meals: type=${error.runtimeType}');
      syncState.value = SyncState.error;
      rethrow;
    }
  }

  Future<List<LoggedMeal>> _fetchTodaysMealsFromPhone() async {
    final response = await _transport.send(path: WatchPaths.todayMeals);

    if (response.isSuccess) {
      final meals = response.data!['meals'];
      if (meals is! List) {
        throw const FormatException('Today meals response is malformed');
      }
      return meals
          .map(
            (value) =>
                mealInfoFromLegacyJson(Map<String, dynamic>.from(value as Map)),
          )
          .toList();
    }

    throw WatchSyncException(
      response.errorMessage ?? 'Failed to fetch today\'s meals',
    );
  }

  Future<int?> _fetchCalorieGoalFromPhone() async {
    final response = await _transport.send(path: WatchPaths.calorieGoal);

    if (response.isSuccess) {
      return (response.data!['goal'] as num?)?.toInt();
    }

    throw WatchSyncException(
      response.errorMessage ?? 'Failed to fetch calorie goal',
    );
  }

  Future<void> _ensureInitialized() async {
    if (!_isInitialized) {
      await initialize();
    }
  }

  Future<bool> _ensurePhoneConnected() async {
    if (!_channelReady) {
      _channelReady = await _transport.initialize();
    }
    if (!_channelReady) {
      syncState.value = SyncState.disconnected;
      return false;
    }
    final connected = await isPhoneConnected();
    if (!connected) {
      syncState.value = SyncState.disconnected;
    }
    return connected;
  }

  bool get _hasDashboardCache =>
      _cache.todaysMeals.value.isNotEmpty ||
      _cache.calorieGoal.value != null ||
      _cache.hasFreshDashboard;

  Future<void> _restorePersistedCache() async {
    final snapshot = await _database.loadSnapshot();
    _cache.restoreSnapshot(
      meals: snapshot.meals,
      favorites: snapshot.favoriteMeals,
      goal: snapshot.calorieGoal,
      dashboardSyncedAt: snapshot.dashboardLastSyncAt,
      favoritesSyncedAt: snapshot.favoritesLastSyncAt,
    );
    _restoreCachedSyncState();
  }

  void _restoreCachedSyncState() {
    if ((_cache.dashboardLastSyncTime.value != null ||
            _cache.favoritesLastSyncTime.value != null) &&
        syncState.value != SyncState.syncing &&
        syncState.value != SyncState.disconnected) {
      syncState.value = SyncState.synced;
    }
  }

  void _markTransportSynced() {
    syncState.value = SyncState.synced;
  }

  Future<void> _runBackgroundRefresh(Future<void> Function() refresh) async {
    try {
      await refresh();
    } catch (error) {
      _debugLog('Background refresh failed: type=${error.runtimeType}');
    }
  }

  Future<void> _flushPendingAndRefresh() async {
    final changed = await _flushPendingOperations();
    if (changed) {
      await _refreshDashboardData(flushPendingFirst: false);
    }
  }

  void _startPendingSyncPolling() {
    _pendingSyncTimer?.cancel();
    _pendingSyncTimer = _clock.periodic(const Duration(seconds: 30), (_) {
      unawaited(_runBackgroundRefresh(_flushPendingAndRefresh));
    });
  }

  Future<bool> _flushPendingOperations() async {
    if (_isFlushingPending) {
      return true;
    }
    _isFlushingPending = true;
    try {
      final operations = await _database.getPendingOperations();
      if (operations.isEmpty) {
        _restoreCachedSyncState();
        return false;
      }

      // The timer runs every 30 seconds. Check the local queue before waking
      // the Wear OS channel so an idle watch does no phone-connectivity work.
      if (!await _ensurePhoneConnected()) {
        return false;
      }

      syncState.value = SyncState.syncing;

      for (final operation in operations) {
        final result = await _performPendingOperation(operation);
        switch (result) {
          case _PendingOperationProcessResult.applied:
            await _database.deletePendingOperation(operation.id);
            break;
          case _PendingOperationProcessResult.drop:
            await _dropPendingOperation(operation);
            break;
          case _PendingOperationProcessResult.retryLater:
            syncState.value = SyncState.disconnected;
            return false;
        }
      }

      _markTransportSynced();
      return true;
    } finally {
      _isFlushingPending = false;
    }
  }

  Future<_PendingOperationProcessResult> _performPendingOperation(
    PendingWatchOperation operation,
  ) async {
    try {
      switch (operation.type) {
        case PendingWatchOperationType.logMeal:
          final meal = operation.meal;
          if (meal == null) {
            _debugLog(
              'Dropping queued meal ${operation.mealId} because its payload '
              'could not be decoded.',
            );
            return _PendingOperationProcessResult.drop;
          }

          final response = await _transport.send(
            path: WatchPaths.mealLog,
            data: _mealLogRequest(
              meal,
              favoriteMealId: operation.favoriteMealId,
            ),
          );
          return _classifyPendingOperationResponse(
            response,
            operation: operation,
          );
        case PendingWatchOperationType.deleteMeal:
          final response = await _transport.send(
            path: WatchPaths.mealDelete,
            data: {'meal_id': operation.mealId},
          );
          return _classifyPendingOperationResponse(
            response,
            operation: operation,
          );
      }
    } catch (error) {
      _debugLog(
        'Retrying queued ${operation.type.name} for meal ${operation.mealId} '
        'after unexpected error: type=${error.runtimeType}',
      );
      return _PendingOperationProcessResult.retryLater;
    }
  }

  _PendingOperationProcessResult _classifyPendingOperationResponse(
    WatchTransportResult response, {
    required PendingWatchOperation operation,
  }) {
    if (response.isSuccess) {
      return _PendingOperationProcessResult.applied;
    }

    // Only a validated peer response can permanently reject user work. Local
    // transport/decode/correlation failures must leave the durable queue intact
    // even when their error code is otherwise non-retryable.
    if (!response.isValidatedPeerRejection) {
      return _PendingOperationProcessResult.retryLater;
    }

    _debugLog(
      'Dropping queued ${operation.type.name} for meal ${operation.mealId} '
      'after server rejection: code=${response.errorCode?.name ?? 'unknown'}',
    );
    return _PendingOperationProcessResult.drop;
  }

  Map<String, dynamic> _mealLogRequest(LoggedMeal meal, {int? favoriteMealId}) {
    return {
      ...mealInfoToLegacyJson(meal),
      'watch_operation_id': watchMealOperationId(meal),
      if (favoriteMealId != null) 'favorite_meal_id': favoriteMealId,
    };
  }

  Future<void> _dropPendingOperation(PendingWatchOperation operation) async {
    await _database.deletePendingOperation(operation.id);

    switch (operation.type) {
      case PendingWatchOperationType.logMeal:
        _cache.removeMealById(operation.mealId);
        await _database.deleteCachedMeal(operation.mealId);
        break;
      case PendingWatchOperationType.deleteMeal:
        // The meal was already removed locally when the delete was queued.
        break;
    }
  }

  void _debugLog(String message) {
    if (kDebugMode) {
      debugPrint(message);
    }
  }

  void dispose() {
    _pendingSyncTimer?.cancel();
    _pendingSyncTimer = null;
    _isInitialized = false;
    _initialization = null;
    _channelReady = false;
    syncState.dispose();
    unawaited(_database.close());
  }
}
