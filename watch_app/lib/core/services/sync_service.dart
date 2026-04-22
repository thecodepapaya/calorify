import 'dart:async';

import 'package:calorify_watch/core/services/data_cache.dart';
import 'package:calorify_watch/core/services/watch_auth_session.dart';
import 'package:calorify_watch/core/services/wear_os_channel.dart';
import 'package:flutter/foundation.dart';
import 'package:models/models.dart';
import 'package:utils/utils.dart';

enum SyncState { idle, syncing, synced, error, disconnected }

/// Service to sync data between watch and main app using Wear OS Data Layer.
class SyncService {
  SyncService._();

  static final SyncService instance = SyncService._();

  final DataCache _cache = DataCache.instance;
  final ValueNotifier<SyncState> syncState = ValueNotifier(SyncState.idle);

  bool _isInitialized = false;
  StreamSubscription<Map<String, dynamic>>? _messageSubscription;

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

      final success = await WearOsChannel.initialize();
      if (!success) {
        syncState.value = SyncState.disconnected;
        return;
      }

      _isInitialized = true;
      _startListening();

      final connected = await WearOsChannel.isPhoneConnected();
      if (!connected) {
        syncState.value = SyncState.disconnected;
        return;
      }

      await WatchAuthSession.instance.refreshFromPhone();
      _restoreCachedSyncState();
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

  Future<bool> sendMeal(Meal meal, {int? favoriteMealId}) async {
    await _ensureInitialized();

    final optimisticMeal = _cache.addOptimisticMeal(meal);
    if (!await _ensurePhoneConnected()) {
      _cache.removeMealById(optimisticMeal.clientId);
      return false;
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
        return true;
      }
    } catch (error) {
      _debugLog('Failed to send meal: $error');
    }

    _cache.removeMealById(optimisticMeal.clientId);
    syncState.value = SyncState.error;
    return false;
  }

  Future<bool> deleteMeal(int mealId) async {
    if (mealId <= 0) {
      return false;
    }

    await _ensureInitialized();

    final removedMeal = _cache.removeMealById(mealId);
    if (!await _ensurePhoneConnected()) {
      if (removedMeal != null) {
        _cache.restoreMeal(removedMeal);
      }
      return false;
    }

    syncState.value = SyncState.syncing;

    try {
      final response = await WearOsChannel.sendMessage(
        path: '/meal/delete',
        data: {'meal_id': mealId},
      );

      if (response != null && response['success'] == true) {
        _markSynced();
        return true;
      }
    } catch (error) {
      _debugLog('Failed to delete meal: $error');
    }

    if (removedMeal != null) {
      _cache.restoreMeal(removedMeal);
    }
    syncState.value = SyncState.error;
    return false;
  }

  Future<bool> isPhoneConnected() async {
    if (!_isInitialized) {
      return false;
    }

    return WearOsChannel.isPhoneConnected();
  }

  Future<void> _refreshDashboardData() async {
    if (!await _ensurePhoneConnected()) {
      return;
    }

    syncState.value = SyncState.syncing;

    try {
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

  void _restoreCachedSyncState() {
    if (_cache.lastSyncTime.value != null &&
        syncState.value != SyncState.syncing &&
        syncState.value != SyncState.disconnected) {
      syncState.value = SyncState.synced;
    }
  }

  void _markSynced() {
    _cache.lastSyncTime.value = DateTime.now();
    syncState.value = SyncState.synced;
  }

  void _startListening() {
    _messageSubscription?.cancel();
    _messageSubscription = WearOsChannel.listenForMessages().listen(
      (message) {
        _debugLog('Received message from phone: $message');
      },
      onError: (error) {
        _debugLog('Error listening for messages: $error');
      },
    );
  }

  void _debugLog(String message) {
    if (kDebugMode) {
      debugPrint(message);
    }
  }

  void dispose() {
    _messageSubscription?.cancel();
    _messageSubscription = null;
    _isInitialized = false;
    syncState.dispose();
  }
}
