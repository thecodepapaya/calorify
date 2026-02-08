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
      'user_preferences',
      'getLanguageCode',
      () => _delegate.getLanguageCode(),
    );
  }

  @override
  Future<void> setLanguageCode(String? code) async {
    await _logWrite('user_preferences', 'setLanguageCode', {
      'languageCode': code ?? 'null',
    }, () => _delegate.setLanguageCode(code));
  }

  @override
  Future<ThemeMode> getThemeMode() {
    return _logRead(
      'user_preferences',
      'getThemeMode',
      () => _delegate.getThemeMode(),
    );
  }

  @override
  Future<void> setThemeMode(ThemeMode mode) async {
    await _logWrite('user_preferences', 'setThemeMode', {
      'theme': mode.name,
    }, () => _delegate.setThemeMode(mode));
  }

  @override
  Future<bool> hasSeenFeedbackSheet() {
    return _logRead(
      'user_preferences',
      'hasSeenFeedbackSheet',
      () => _delegate.hasSeenFeedbackSheet(),
    );
  }

  @override
  Future<void> setFeedbackSheetShown() async {
    await _logWrite(
      'user_preferences',
      'setFeedbackSheetShown',
      {},
      () => _delegate.setFeedbackSheetShown(),
    );
  }

  // User Profile Operations
  @override
  Future<void> saveUserProfile(UserProfile profile) async {
    await _logWrite('user_profile', 'saveUserProfile', {
      'hasHeight': profile.hasHeight(),
      'hasWeight': profile.hasWeight(),
      'hasGender': profile.hasGender(),
    }, () => _delegate.saveUserProfile(profile));
  }

  @override
  Future<UserProfile?> getUserProfile() {
    return _logRead(
      'user_profile',
      'getUserProfile',
      () => _delegate.getUserProfile(),
    );
  }

  @override
  Future<bool> isProfileComplete() {
    return _logRead(
      'user_profile',
      'isProfileComplete',
      () => _delegate.isProfileComplete(),
    );
  }

  // Daily Calorie Goal Operations
  @override
  Future<int?> getDailyCalorieGoal() {
    return _logRead(
      'user_profile',
      'getDailyCalorieGoal',
      () => _delegate.getDailyCalorieGoal(),
    );
  }

  @override
  Stream<int?> watchDailyCalorieGoal() {
    log('[DB READ] user_profile | watchDailyCalorieGoal | Stream');
    return _delegate.watchDailyCalorieGoal();
  }

  @override
  Future<void> setDailyCalorieGoal(int goal) async {
    await _logWrite(
      'user_profile',
      'setDailyCalorieGoal',
      {'goal': goal},
      () => _delegate.setDailyCalorieGoal(goal),
    );
  }

  // Meal Operations
  @override
  Future<void> logMeal(Meal mealInfo) async {
    await _logWrite('meal_info', 'logMeal', {
      'name': mealInfo.name,
      'calories': mealInfo.macros.calories,
    }, () => _delegate.logMeal(mealInfo));
  }

  @override
  Future<void> upsertMeal(LoggedMeal mealInfo) async {
    await _logWrite('meal_info', 'upsertMeal', {
      'id': mealInfo.clientId,
      'name': mealInfo.meal.name,
      'calories': mealInfo.meal.macros.calories,
    }, () => _delegate.upsertMeal(mealInfo));
  }

  @override
  Future<void> deleteMeal(int mealId) async {
    await _logWrite('meal_info', 'deleteMeal', {
      'mealId': mealId,
    }, () => _delegate.deleteMeal(mealId));
  }

  @override
  Future<LoggedMeal?> getMealById(int mealId) {
    return _logRead(
      'meal_info',
      'getMealById',
      () => _delegate.getMealById(mealId),
    );
  }

  @override
  Future<List<LoggedMeal>> paginatedMealsHistory({required int offset}) async {
    final contextStr = 'offset=$offset';
    log('[DB READ] meal_info | paginatedMealsHistory | $contextStr');
    final result = await _delegate.paginatedMealsHistory(offset: offset);
    log(
      '[DB READ] meal_info | paginatedMealsHistory | Result: ${result.length} meals',
    );
    return result;
  }

  @override
  Future<List<LoggedMeal>> getLatestMealsForFeedbackEligibility({
    int limit = 5,
  }) async {
    log('[DB READ] meal_info | getLatestMealsForFeedbackEligibility | limit=$limit');
    final result =
        await _delegate.getLatestMealsForFeedbackEligibility(limit: limit);
    log(
      '[DB READ] meal_info | getLatestMealsForFeedbackEligibility | Result: ${result.length} meals',
    );
    return result;
  }

  @override
  Stream<List<LoggedMeal>> watchAllMealsForToday() {
    log('[DB READ] meal_info | watchAllMealsForToday | Stream');
    return _delegate.watchAllMealsForToday();
  }

  @override
  Stream<List<LoggedMeal>> watchAllMealsForLast7Days() {
    log('[DB READ] meal_info | watchAllMealsForLast7Days | Stream');
    return _delegate.watchAllMealsForLast7Days();
  }

  // Favorite Meal Operations
  @override
  Future<bool> isFavoriteMeal(int mealId) async {
    log('[DB READ] favorite_meal | isFavoriteMeal | mealId=$mealId');
    return await _delegate.isFavoriteMeal(mealId);
  }

  @override
  Future<void> addToFavorites(LoggedMeal mealInfo) async {
    await _logWrite('favorite_meal', 'addToFavorites', {
      'id': mealInfo.clientId,
      'name': mealInfo.meal.name,
    }, () => _delegate.addToFavorites(mealInfo));
  }

  @override
  Future<void> removeFavoriteMeal(int mealId) async {
    await _logWrite(
      'favorite_meal',
      'removeFavoriteMeal',
      {'mealId': mealId},
      () => _delegate.removeFavoriteMeal(mealId),
    );
  }

  @override
  Future<void> updateFavoriteLastUsedAt(int mealId) async {
    await _logWrite(
      'favorite_meal',
      'updateFavoriteLastUsedAt',
      {'mealId': mealId},
      () => _delegate.updateFavoriteLastUsedAt(mealId),
    );
  }

  @override
  Stream<List<FavoriteMeal>> watchAllFavoriteMeals() {
    log('[DB READ] favorite_meal | watchAllFavoriteMeals | Stream');
    return _delegate.watchAllFavoriteMeals();
  }

  @override
  Stream<List<FavoriteMeal>> watchLastUsedFavoriteMeals() {
    log('[DB READ] favorite_meal | watchLastUsedFavoriteMeals | Stream');
    return _delegate.watchLastUsedFavoriteMeals();
  }

  @override
  Future<void> clearUserPreferences() async {
    await _logWrite(
      'user_preferences',
      'clearUserPreferences',
      {},
      () => _delegate.clearUserPreferences(),
    );
  }

  @override
  Future<void> clearUserProfile() async {
    await _logWrite(
      'user_profile',
      'clearUserProfile',
      {},
      () => _delegate.clearUserProfile(),
    );
  }

  // Clear All Data
  @override
  Future<void> clearAllData() async {
    await _logWrite(
      'all_tables',
      'clearAllData',
      {},
      () => _delegate.clearAllData(),
    );
  }

  // Helper methods for logging
  Future<T> _logRead<T>(
    String table,
    String operation,
    Future<T> Function() action,
  ) async {
    log('[DB READ] $table | $operation');
    final result = await action();
    return result;
  }

  Future<T> _logWrite<T>(
    String table,
    String operation,
    Map<String, dynamic> context,
    Future<T> Function() action,
  ) async {
    final contextStr = _formatContext(context);
    log('[DB WRITE] $table | $operation | $contextStr');
    final result = await action();
    return result;
  }

  String _formatContext(Map<String, dynamic> context) {
    return context.entries.map((e) => '${e.key}=${e.value}').join(', ');
  }
}
