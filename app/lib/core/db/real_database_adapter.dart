import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:models/models.dart';
import 'package:flutter/material.dart' show ThemeMode;

/// Adapter that wraps AppDatabase to implement DatabaseInterface
class RealDatabaseAdapter implements DatabaseInterface {
  final AppDatabase _database;
  RealDatabaseAdapter(this._database);

  @override
  Future<int?> getDailyCalorieGoal() async {
    return await _database.getDailyCalorieGoal();
  }

  @override
  Stream<int?> watchDailyCalorieGoal() {
    return _database.watchDailyCalorieGoal();
  }

  @override
  Future<void> setDailyCalorieGoal(int goal) async {
    await _database.setDailyCalorieGoal(goal);
  }

  @override
  Future<void> logMeal(Meal mealInfo, {String? analysisId}) async {
    await _database.logMeal(mealInfo, analysisId: analysisId);
  }

  @override
  Future<void> upsertMeal(LoggedMeal mealInfo) async {
    await _database.upsertMeal(mealInfo);
  }

  @override
  Future<void> deleteMeal(int mealId) async {
    await _database.deleteMeal(mealId);
  }

  @override
  Future<LoggedMeal?> getMealById(int mealId) async {
    return await _database.getMealById(mealId);
  }

  @override
  Future<bool> isFavoriteMeal(int mealId) async {
    return await _database.isFavoriteMeal(mealId);
  }

  @override
  Future<void> addToFavorites(LoggedMeal mealInfo) async {
    await _database.addToFavorites(mealInfo);
  }

  @override
  Future<void> removeFavoriteMeal(int mealId) async {
    await _database.removeFavoriteMeal(mealId);
  }

  @override
  Future<void> updateFavoriteLastUsedAt(int mealId) async {
    await _database.updateFavoriteLastUsedAt(mealId);
  }

  @override
  Stream<List<LoggedMeal>> watchAllMealsForToday() {
    return _database.watchAllMealsForToday();
  }

  @override
  Stream<List<LoggedMeal>> watchAllMealsForLast7Days() {
    return _database.watchAllMealsForLast7Days();
  }

  @override
  Stream<List<FavoriteMeal>> watchAllFavoriteMeals() {
    return _database.watchAllFavoriteMeals();
  }

  @override
  Stream<List<FavoriteMeal>> watchLastUsedFavoriteMeals() {
    return _database.watchLastUsedFavoriteMeals();
  }

  @override
  Future<List<LoggedMeal>> paginatedMealsHistory({required int offset}) {
    return _database.paginatedMealsHistory(offset: offset);
  }

  @override
  DataSourceType get dataSourceType => DataSourceType.real;

  // User Profile Methods
  @override
  Future<void> saveUserProfile(UserProfile profile) async {
    await _database.saveUserProfile(profile);
  }

  @override
  Future<UserProfile?> getUserProfile() async {
    return await _database.getUserProfile();
  }

  @override
  Future<bool> isProfileComplete() async {
    return await _database.isProfileComplete();
  }

  @override
  Future<ThemeMode> getThemeMode() async {
    return await _database.getThemeMode();
  }

  @override
  Future<void> setThemeMode(ThemeMode mode) async {
    await _database.setThemeMode(mode);
  }

  @override
  Future<String?> getLanguageCode() async {
    return await _database.getLanguageCode();
  }

  @override
  Future<void> setLanguageCode(String? languageCode) async {
    await _database.setLanguageCode(languageCode);
  }

  @override
  Future<bool> hasSeenFeedbackSheet() async {
    return await _database.hasSeenFeedbackSheet();
  }

  @override
  Future<void> setFeedbackSheetShown() async {
    await _database.setFeedbackSheetShown();
  }

  @override
  Future<List<LoggedMeal>> getLatestMealsForFeedbackEligibility({
    int limit = 5,
  }) {
    return _database.getLatestMealsForFeedbackEligibility(limit: limit);
  }

  @override
  Future<void> clearUserPreferences() async {
    await _database.clearUserPreferences();
  }

  @override
  Future<void> clearUserProfile() async {
    await _database.clearUserProfile();
  }

  @override
  Future<void> clearAllData() async {
    await _database.clearAllData();
  }
}
