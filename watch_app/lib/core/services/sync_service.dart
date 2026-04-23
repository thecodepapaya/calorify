import 'dart:async';

import 'package:calorify_watch/core/db/watch_database.dart';
import 'package:calorify_watch/core/services/data_cache.dart';
import 'package:calorify_watch/core/services/watch_auth_session.dart';
import 'package:calorify_watch/core/services/wear_os_channel.dart';
import 'package:flutter/foundation.dart';
import 'package:models/models.dart';
import 'package:utils/utils.dart';

enum SyncState { idle, syncing, synced, error, disconnected }

enum SyncRequestResult { synced, queued, failed }

/// Service to sync data between watch and main app using Wear OS Data Layer.
class SyncService {
  SyncService._();

  static final SyncService instance = SyncService._();

  final DataCache _cache = DataCache.instance;
  final WatchDatabase _database = WatchDatabase();
  final ValueNotifier<SyncState> syncState = ValueNotifier(SyncState.idle);

  bool _isInitialized = false;
  StreamSubscription<Map<String, dynamic>>? _messageSubscription;
  Timer? _pendingSyncTimer;

  ValueListenable<DateTime?> get lastSyncTime => _cache.lastSyncTime;
  ValueListenable<List<LoggedMeal>> get todaysMeals => _cache.todaysMeals;
  ValueListenable<int?> get calorieGoal => _cache.calorieGoal;
  ValueListenable<List<FavoriteMeal>> get favoriteMeals => _cache.favoriteMeals;

  Future<void> initialize() async {
    if (_isInitialized) {
      _restoreCachedSyncState();
      return;
    }

    try {
      await Future.delayed(const Duration(milliseconds: 100));
      await WatchAuthSession.instance.initialize();
      await _restorePersistedCache();

      final success = await WearOsChannel.initialize();
      if (!success) {
        syncState.value = SyncState.disconnected;
        return;
      }

      _isInitialized = true;
      _startListening();
      _startPendingSyncPolling();

      final connected = await WearOsChannel.isPhoneConnected();
      if (!connected) {
        syncState.value = SyncState.disconnected;
        return;
      }

      await WatchAuthSession.instance.refreshFromPhone();
      _restoreCachedSyncState();
      await _flushPendingOperations();
    } catch (error) {
      _debugLog('Failed to initialize sync service: $error');
      syncState.value = SyncState.error;
    }
  }

  Future<void> refreshDashboard({bool forceRefresh = false}) async {
    await _ensureInitialized();

    if (!forceRefresh && _hasDashboardCache) {
      _restoreCachedSyncState();
      unawaited(_refreshDashboardData());
      return;
    }

    await _refreshDashboardData();
  }

  Future<List<LoggedMeal>> requestTodaysMeals({
    bool forceRefresh = false,
  }) async {
    await _ensureInitialized();

    if (!forceRefresh &&
        (_cache.todaysMeals.value.isNotEmpty || _cache.hasFreshData)) {
      _restoreCachedSyncState();
      unawaited(_refreshDashboardData());
      return _cache.todaysMeals.value;
    }

    await _refreshDashboardData();
    return _cache.todaysMeals.value;
  }

  Future<int?> requestCalorieGoal({bool forceRefresh = false}) async {
    await _ensureInitialized();

    if (!forceRefresh &&
        (_cache.calorieGoal.value != null || _cache.hasFreshData)) {
      _restoreCachedSyncState();
      unawaited(_refreshDashboardData());
      return _cache.calorieGoal.value;
    }

    await _refreshDashboardData();
    return _cache.calorieGoal.value;
  }

  Future<List<FavoriteMeal>> requestFavoriteMeals({
    bool forceRefresh = false,
  }) async {
    await _ensureInitialized();

    if (!forceRefresh && _cache.favoriteMeals.value.isNotEmpty) {
      unawaited(_refreshFavoriteMeals());
      return _cache.favoriteMeals.value;
    }

    return _refreshFavoriteMeals();
  }

  Future<Map<String, dynamic>?> requestUserProfile() async {
    await _ensureInitialized();
    if (!await _ensurePhoneConnected()) {
      return null;
    }

    try {
      final response = await WearOsChannel.sendMessage(
        path: '/user_profile',
        data: const {},
      );

      if (response != null && response['success'] == true) {
        final profile = response['profile'];
        if (profile is Map) {
          _markSynced();
          return Map<String, dynamic>.from(profile);
        }
      }

      syncState.value = SyncState.error;
      return null;
    } catch (error) {
      _debugLog('Failed to request user profile: $error');
      syncState.value = SyncState.error;
      return null;
    }
  }

  Future<SyncRequestResult> sendMeal(Meal meal, {int? favoriteMealId}) async {
    await _ensureInitialized();

    final optimisticMeal = _cache.addOptimisticMeal(meal);
    await _database.upsertMeal(optimisticMeal);

    if (!await _ensurePhoneConnected()) {
      await _database.queueMealLog(
        optimisticMeal,
        favoriteMealId: favoriteMealId,
      );
      return SyncRequestResult.queued;
    }

    syncState.value = SyncState.syncing;

    try {
      final loggedMeal = LoggedMeal(
        meal: meal,
        createdAt: dateTimeToIso8601String(DateTime.now()),
      );
      final requestData = mealInfoToLegacyJson(loggedMeal);
      if (favoriteMealId != null) {
        requestData['favorite_meal_id'] = favoriteMealId;
      }

      final response = await WearOsChannel.sendMessage(
        path: '/meal',
        data: requestData,
      );

      if (response != null && response['success'] == true) {
        _markSynced();
        unawaited(_refreshDashboardData());
        return SyncRequestResult.synced;
      }

      if (response == null) {
        await _database.queueMealLog(
          optimisticMeal,
          favoriteMealId: favoriteMealId,
        );
        syncState.value = SyncState.disconnected;
        return SyncRequestResult.queued;
      }
    } catch (error) {
      _debugLog('Failed to send meal: $error');
      await _database.queueMealLog(
        optimisticMeal,
        favoriteMealId: favoriteMealId,
      );
      syncState.value = SyncState.disconnected;
      return SyncRequestResult.queued;
    }

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
    await _database.deleteCachedMeal(mealId);

    if (mealId < 0) {
      await _database.cancelQueuedMealLog(mealId);
      return SyncRequestResult.queued;
    }

    if (!await _ensurePhoneConnected()) {
      await _database.queueMealDelete(mealId);
      return SyncRequestResult.queued;
    }

    syncState.value = SyncState.syncing;

    try {
      final response = await WearOsChannel.sendMessage(
        path: '/meal/delete',
        data: {'meal_id': mealId},
      );

      if (response != null && response['success'] == true) {
        _markSynced();
        return SyncRequestResult.synced;
      }

      if (response == null) {
        await _database.queueMealDelete(mealId);
        syncState.value = SyncState.disconnected;
        return SyncRequestResult.queued;
      }
    } catch (error) {
      _debugLog('Failed to delete meal: $error');
      await _database.queueMealDelete(mealId);
      syncState.value = SyncState.disconnected;
      return SyncRequestResult.queued;
    }

    _cache.restoreMeal(removedMeal);
    await _database.upsertMeal(removedMeal);
    syncState.value = SyncState.error;
    return SyncRequestResult.failed;
  }

  Future<bool> isPhoneConnected() async {
    if (!_isInitialized) {
      return false;
    }

    return WearOsChannel.isPhoneConnected();
  }

  Future<void> _refreshDashboardData({bool flushPendingFirst = true}) async {
    if (!await _ensurePhoneConnected()) {
      return;
    }

    syncState.value = SyncState.syncing;

    try {
      if (flushPendingFirst) {
        final flushedPendingOperations = await _flushPendingOperations();
        if (flushedPendingOperations) {
          return;
        }
      }
      final results = await Future.wait<dynamic>([
        _fetchTodaysMealsFromPhone(),
        _fetchCalorieGoalFromPhone(),
      ]);

      final syncedAt = DateTime.now();
      _cache.updateDashboard(
        meals: results[0] as List<LoggedMeal>,
        goal: results[1] as int?,
        syncedAt: syncedAt,
      );
      await _database.replaceDashboard(
        meals: _cache.todaysMeals.value,
        calorieGoal: _cache.calorieGoal.value,
        lastSyncAt: syncedAt,
      );
      syncState.value = SyncState.synced;
    } catch (error) {
      _debugLog('Failed to refresh dashboard data: $error');
      syncState.value = SyncState.error;
    }
  }

  Future<List<FavoriteMeal>> _refreshFavoriteMeals() async {
    if (!await _ensurePhoneConnected()) {
      return _cache.favoriteMeals.value;
    }

    syncState.value = SyncState.syncing;

    try {
      final response = await WearOsChannel.sendMessage(
        path: '/favorites',
        data: const {},
      );

      if (response != null && response['success'] == true) {
        final favoritesData =
            response['favorites'] as List<dynamic>? ?? const [];
        final favorites =
            favoritesData
                .map(
                  (json) => favoriteMealFromLegacyJson(
                    Map<String, dynamic>.from(json as Map),
                  ),
                )
                .toList();

        _cache.setFavoriteMeals(favorites);
        await _database.replaceFavorites(favorites);
        _markSynced();
        return favorites;
      }
    } catch (error) {
      _debugLog('Failed to refresh favorite meals: $error');
    }

    syncState.value = SyncState.error;
    return _cache.favoriteMeals.value;
  }

  Future<List<LoggedMeal>> _fetchTodaysMealsFromPhone() async {
    final response = await WearOsChannel.sendMessage(
      path: '/meals/today',
      data: const {},
    );

    if (response != null && response['success'] == true) {
      final mealsData = response['meals'] as List<dynamic>? ?? const [];
      return mealsData
          .map(
            (json) =>
                mealInfoFromLegacyJson(Map<String, dynamic>.from(json as Map)),
          )
          .toList();
    }

    throw Exception(response?['error'] ?? 'Failed to fetch today\'s meals');
  }

  Future<int?> _fetchCalorieGoalFromPhone() async {
    final response = await WearOsChannel.sendMessage(
      path: '/calorie_goal',
      data: const {},
    );

    if (response != null && response['success'] == true) {
      final goal = response['goal'];
      if (goal is int) {
        return goal;
      }
      if (goal is num) {
        return goal.toInt();
      }
      return null;
    }

    throw Exception(response?['error'] ?? 'Failed to fetch calorie goal');
  }

  Future<void> _ensureInitialized() async {
    if (!_isInitialized) {
      await initialize();
    }
  }

  Future<bool> _ensurePhoneConnected() async {
    final connected = await isPhoneConnected();
    if (connected) {
      unawaited(WatchAuthSession.instance.refreshFromPhone());
      return true;
    }
    if (!connected) {
      syncState.value = SyncState.disconnected;
      return false;
    }
    return false;
  }

  bool get _hasDashboardCache =>
      _cache.todaysMeals.value.isNotEmpty ||
      _cache.calorieGoal.value != null ||
      _cache.hasFreshData;

  Future<void> _restorePersistedCache() async {
    final snapshot = await _database.loadSnapshot();
    _cache.restoreSnapshot(
      meals: snapshot.meals,
      favorites: snapshot.favoriteMeals,
      goal: snapshot.calorieGoal,
      syncedAt: snapshot.lastSyncAt,
    );
    _restoreCachedSyncState();
  }

  void _restoreCachedSyncState() {
    if (_cache.lastSyncTime.value != null &&
        syncState.value != SyncState.syncing &&
        syncState.value != SyncState.disconnected) {
      syncState.value = SyncState.synced;
    }
  }

  void _markSynced() {
    _cache.lastSyncTime.value = DateTime.now();
    unawaited(_database.saveLastSync(_cache.lastSyncTime.value));
    syncState.value = SyncState.synced;
  }

  void _startListening() {
    _messageSubscription?.cancel();
    _messageSubscription = WearOsChannel.listenForMessages().listen(
      (message) {
        _debugLog('Received message from phone: $message');
        unawaited(_flushPendingOperations());
      },
      onError: (error) {
        _debugLog('Error listening for messages: $error');
      },
    );
  }

  void _startPendingSyncPolling() {
    _pendingSyncTimer?.cancel();
    _pendingSyncTimer = Timer.periodic(const Duration(seconds: 30), (_) {
      unawaited(_flushPendingOperations());
    });
  }

  Future<bool> _flushPendingOperations() async {
    if (!await isPhoneConnected()) {
      return false;
    }

    final operations = await _database.getPendingOperations();
    if (operations.isEmpty) {
      _restoreCachedSyncState();
      return false;
    }

    syncState.value = SyncState.syncing;

    for (final operation in operations) {
      final success = await _performPendingOperation(operation);
      if (!success) {
        syncState.value = SyncState.error;
        return false;
      }
      await _database.deletePendingOperation(operation.id);
    }

    _markSynced();
    await _refreshDashboardData(flushPendingFirst: false);
    return true;
  }

  Future<bool> _performPendingOperation(PendingWatchOperation operation) async {
    switch (operation.type) {
      case PendingWatchOperationType.logMeal:
        final meal = operation.meal;
        if (meal == null) {
          return false;
        }

        final requestData = mealInfoToLegacyJson(meal);
        if (operation.favoriteMealId != null) {
          requestData['favorite_meal_id'] = operation.favoriteMealId;
        }

        final response = await WearOsChannel.sendMessage(
          path: '/meal',
          data: requestData,
        );
        return response != null && response['success'] == true;
      case PendingWatchOperationType.deleteMeal:
        final response = await WearOsChannel.sendMessage(
          path: '/meal/delete',
          data: {'meal_id': operation.mealId},
        );
        return response != null && response['success'] == true;
    }
  }

  void _debugLog(String message) {
    if (kDebugMode) {
      debugPrint(message);
    }
  }

  void dispose() {
    _messageSubscription?.cancel();
    _messageSubscription = null;
    _pendingSyncTimer?.cancel();
    _pendingSyncTimer = null;
    _isInitialized = false;
    syncState.dispose();
    unawaited(_database.close());
  }
}
