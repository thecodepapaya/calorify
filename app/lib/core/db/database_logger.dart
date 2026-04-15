import 'dart:developer';

import 'package:calorify/core/db/database_interface.dart';
import 'package:flutter/material.dart' show ThemeMode;
import 'package:models/models.dart';

/// Database logger that wraps DatabaseInterface and logs all read/write operations
class DatabaseLogger implements DatabaseInterface {
  final DatabaseInterface _delegate;

  DatabaseLogger(this._delegate);

  @override
  DataSourceType get dataSourceType => _delegate.dataSourceType;

  // User Preferences Operations
  @override
  Future<String?> getLanguageCode() {
    return _logRead(
      table: 'user_preferences',
      operation: 'getLanguageCode',
      action: () => _delegate.getLanguageCode(),
    );
  }

  @override
  Future<void> setLanguageCode(String? code) async {
    await _logWrite(
      table: 'user_preferences',
      operation: 'setLanguageCode',
      context: {'languageCode': code ?? 'null'},
      action: () => _delegate.setLanguageCode(code),
    );
  }

  @override
  Future<ThemeMode> getThemeMode() {
    return _logRead(
      table: 'user_preferences',
      operation: 'getThemeMode',
      action: () => _delegate.getThemeMode(),
    );
  }

  @override
  Future<void> setThemeMode(ThemeMode mode) async {
    await _logWrite(
      table: 'user_preferences',
      operation: 'setThemeMode',
      context: {'theme': mode.name},
      action: () => _delegate.setThemeMode(mode),
    );
  }

  @override
  Future<bool> hasSeenFeedbackSheet() {
    return _logRead(
      table: 'user_preferences',
      operation: 'hasSeenFeedbackSheet',
      action: () => _delegate.hasSeenFeedbackSheet(),
    );
  }

  @override
  Future<void> setFeedbackSheetShown() async {
    await _logWrite(
      table: 'user_preferences',
      operation: 'setFeedbackSheetShown',
      context: {},
      action: () => _delegate.setFeedbackSheetShown(),
    );
  }

  // User Profile Operations
  @override
  Future<void> saveUserProfile(UserProfile profile) async {
    await _logWrite(
      table: 'user_profile',
      operation: 'saveUserProfile',
      context: {
        'hasHeight': profile.hasHeight(),
        'hasWeight': profile.hasWeight(),
        'hasGender': profile.hasGender(),
      },
      action: () => _delegate.saveUserProfile(profile),
    );
  }

  @override
  Future<UserProfile?> getUserProfile() {
    return _logRead(
      table: 'user_profile',
      operation: 'getUserProfile',
      action: () => _delegate.getUserProfile(),
    );
  }

  @override
  Future<bool> isProfileComplete() {
    return _logRead(
      table: 'user_profile',
      operation: 'isProfileComplete',
      action: () => _delegate.isProfileComplete(),
    );
  }

  // Daily Calorie Goal Operations
  @override
  Future<int?> getDailyCalorieGoal() {
    return _logRead(
      table: 'user_profile',
      operation: 'getDailyCalorieGoal',
      action: () => _delegate.getDailyCalorieGoal(),
    );
  }

  @override
  Stream<int?> watchDailyCalorieGoal() {
    return _logStream<int?>(
      table: 'user_profile',
      operation: 'watchDailyCalorieGoal',
      streamFactory: () => _delegate.watchDailyCalorieGoal(),
    );
  }

  @override
  Future<void> setDailyCalorieGoal(int goal) async {
    await _logWrite(
      table: 'user_profile',
      operation: 'setDailyCalorieGoal',
      context: {'goal': goal},
      action: () => _delegate.setDailyCalorieGoal(goal),
    );
  }

  // Meal Operations
  @override
  Future<void> logMeal(Meal mealInfo, {String? analysisId}) async {
    await _logWrite(
      table: 'meal_info',
      operation: 'logMeal',
      context: {'name': mealInfo.name, 'calories': mealInfo.macros.calories},
      action: () => _delegate.logMeal(mealInfo, analysisId: analysisId),
    );
  }

  @override
  Future<void> upsertMeal(LoggedMeal mealInfo) async {
    await _logWrite(
      table: 'meal_info',
      operation: 'upsertMeal',
      context: {
        'id': mealInfo.clientId,
        'name': mealInfo.meal.name,
        'calories': mealInfo.meal.macros.calories,
      },
      action: () => _delegate.upsertMeal(mealInfo),
    );
  }

  @override
  Future<void> deleteMeal(int mealId) async {
    await _logWrite(
      table: 'meal_info',
      operation: 'deleteMeal',
      context: {'mealId': mealId},
      action: () => _delegate.deleteMeal(mealId),
    );
  }

  @override
  Future<LoggedMeal?> getMealById(int mealId) {
    return _logRead(
      table: 'meal_info',
      operation: 'getMealById',
      action: () => _delegate.getMealById(mealId),
    );
  }

  @override
  Future<List<LoggedMeal>> paginatedMealsHistory({required int offset}) async {
    final contextStr = 'offset=$offset';
    final result = await _logRead(
      table: 'meal_info',
      operation: 'paginatedMealsHistory',
      additionalContext: contextStr,
      action: () => _delegate.paginatedMealsHistory(offset: offset),
    );
    return result;
  }

  @override
  Future<List<LoggedMeal>> getLatestMealsForFeedbackEligibility({
    int limit = 5,
  }) async {
    final result = await _logRead(
      table: 'meal_info',
      operation: 'getLatestMealsForFeedbackEligibility',
      additionalContext: 'limit=$limit',
      action:
          () => _delegate.getLatestMealsForFeedbackEligibility(limit: limit),
    );
    return result;
  }

  @override
  Stream<List<LoggedMeal>> watchAllMealsForToday() {
    return _logStream<List<LoggedMeal>>(
      table: 'meal_info',
      operation: 'watchAllMealsForToday',
      streamFactory: () => _delegate.watchAllMealsForToday(),
    );
  }

  @override
  Stream<List<LoggedMeal>> watchAllMealsForLast7Days() {
    return _logStream<List<LoggedMeal>>(
      table: 'meal_info',
      operation: 'watchAllMealsForLast7Days',
      streamFactory: () => _delegate.watchAllMealsForLast7Days(),
    );
  }

  // Favorite Meal Operations
  @override
  Future<bool> isFavoriteMeal(int mealId) async {
    return await _logRead(
      table: 'favorite_meal',
      operation: 'isFavoriteMeal',
      action: () => _delegate.isFavoriteMeal(mealId),
    );
  }

  @override
  Future<void> addToFavorites(LoggedMeal mealInfo) async {
    await _logWrite(
      table: 'favorite_meal',
      operation: 'addToFavorites',
      context: {'id': mealInfo.clientId, 'name': mealInfo.meal.name},
      action: () => _delegate.addToFavorites(mealInfo),
    );
  }

  @override
  Future<void> removeFavoriteMeal(int mealId) async {
    await _logWrite(
      table: 'favorite_meal',
      operation: 'removeFavoriteMeal',
      context: {'mealId': mealId},
      action: () => _delegate.removeFavoriteMeal(mealId),
    );
  }

  @override
  Future<void> updateFavoriteLastUsedAt(int mealId) async {
    await _logWrite(
      table: 'favorite_meal',
      operation: 'updateFavoriteLastUsedAt',
      context: {'mealId': mealId},
      action: () => _delegate.updateFavoriteLastUsedAt(mealId),
    );
  }

  @override
  Stream<List<FavoriteMeal>> watchAllFavoriteMeals() {
    return _logStream<List<FavoriteMeal>>(
      table: 'favorite_meal',
      operation: 'watchAllFavoriteMeals',
      streamFactory: () => _delegate.watchAllFavoriteMeals(),
    );
  }

  @override
  Stream<List<FavoriteMeal>> watchLastUsedFavoriteMeals() {
    return _logStream<List<FavoriteMeal>>(
      table: 'favorite_meal',
      operation: 'watchLastUsedFavoriteMeals',
      streamFactory: () => _delegate.watchLastUsedFavoriteMeals(),
    );
  }

  @override
  Future<void> clearUserPreferences() async {
    await _logWrite(
      table: 'user_preferences',
      operation: 'clearUserPreferences',
      context: {},
      action: () => _delegate.clearUserPreferences(),
    );
  }

  @override
  Future<void> clearUserProfile() async {
    await _logWrite(
      table: 'user_profile',
      operation: 'clearUserProfile',
      context: {},
      action: () => _delegate.clearUserProfile(),
    );
  }

  // Clear All Data
  @override
  Future<void> clearAllData() async {
    await _logWrite(
      table: 'all_tables',
      operation: 'clearAllData',
      context: {},
      action: () => _delegate.clearAllData(),
    );
  }

  // Helper methods for logging
  Stream<T> _logStream<T>({
    required String table,
    required String operation,
    required Stream<T> Function() streamFactory,
    String? additionalContext,
  }) {
    var msg = '[DB STREAM] $table | $operation';
    if (additionalContext != null && additionalContext.isNotEmpty) {
      msg = '$msg | $additionalContext';
    }
    log(msg);
    return streamFactory();
  }

  Future<T> _logRead<T>({
    required String table,
    required String operation,
    required Future<T> Function() action,
    String? additionalContext,
  }) async {
    var msg = '[DB READ] $table | $operation';
    if (additionalContext != null && additionalContext.isNotEmpty) {
      msg = '$msg | $additionalContext';
    }
    log(msg);
    final result = await action();
    return result;
  }

  Future<T> _logWrite<T>({
    required String table,
    required String operation,
    Map<String, dynamic> context = const {},
    required Future<T> Function() action,
    String? additionalContext,
  }) async {
    final contextStr = _formatContext(context);
    var msg = '[DB WRITE] $table | $operation';
    if (contextStr.isNotEmpty) msg = '$msg | $contextStr';

    if (additionalContext != null && additionalContext.isNotEmpty) {
      msg = '$msg | $additionalContext';
    }
    log(msg);
    final result = await action();
    return result;
  }

  String _formatContext(Map<String, dynamic> context) {
    return context.entries.map((e) => '${e.key}=${e.value}').join(', ');
  }
}
