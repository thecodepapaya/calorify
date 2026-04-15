import 'package:models/models.dart';
import 'package:flutter/material.dart' show ThemeMode;

enum DataSourceType { real, mock }

/// Interface for database operations that can be implemented by both real and mock databases
abstract class DatabaseInterface {
  /// Get daily calorie goal
  Future<int?> getDailyCalorieGoal();

  /// Watch daily calorie goal
  Stream<int?> watchDailyCalorieGoal();

  /// Set daily calorie goal
  Future<void> setDailyCalorieGoal(int goal);

  /// Log a meal. [analysisId] is non-null only for V2 analysis results.
  Future<void> logMeal(Meal mealInfo, {String? analysisId});

  /// Upsert a meal
  Future<void> upsertMeal(LoggedMeal mealInfo);

  /// Delete a meal
  Future<void> deleteMeal(int mealId);

  /// Get a meal by id (local database id)
  Future<LoggedMeal?> getMealById(int mealId);

  /// Check if a meal is favorite
  Future<bool> isFavoriteMeal(int mealId);

  /// Add a meal to favorites
  Future<void> addToFavorites(LoggedMeal mealInfo);

  /// Remove a meal from favorites
  Future<void> removeFavoriteMeal(int mealId);

  /// Update last used time for a favorite meal
  Future<void> updateFavoriteLastUsedAt(int mealId);

  /// Watch all meals for today (stream) - only works with real database
  Stream<List<LoggedMeal>> watchAllMealsForToday();

  /// Watch all meals for last 7 days (stream) - only works with real database
  Stream<List<LoggedMeal>> watchAllMealsForLast7Days();

  /// Watch all favorite meals (stream) - only works with real database
  Stream<List<FavoriteMeal>> watchAllFavoriteMeals();

  /// Watch last used favorite meals (stream) - only works with real database
  Stream<List<FavoriteMeal>> watchLastUsedFavoriteMeals();

  /// Get paginated meal history
  Future<List<LoggedMeal>> paginatedMealsHistory({required int offset});

  /// Get the data source type
  DataSourceType get dataSourceType;

  /// User Profile Operations
  /// Save or update user profile (upsert)
  Future<void> saveUserProfile(UserProfile profile);

  /// Get user profile
  Future<UserProfile?> getUserProfile();

  /// Check if user profile is complete
  Future<bool> isProfileComplete();

  /// Get theme mode preference
  Future<ThemeMode> getThemeMode();

  /// Set theme mode preference
  Future<void> setThemeMode(ThemeMode mode);

  /// Get language code preference
  Future<String?> getLanguageCode();

  /// Set language code preference
  Future<void> setLanguageCode(String? code);

  /// Whether the feedback/rating sheet has been shown to the user
  Future<bool> hasSeenFeedbackSheet();

  /// Mark that the feedback/rating sheet was shown (so it is not shown again)
  Future<void> setFeedbackSheetShown();

  /// Latest N meals by timestamp (for feedback eligibility check). Default limit 5.
  Future<List<LoggedMeal>> getLatestMealsForFeedbackEligibility({int limit = 5});

  /// Clear user preferences row only (for debug). Meals and profile unchanged.
  Future<void> clearUserPreferences();

  /// Clear user profile row only (for debug). Meals and preferences unchanged.
  Future<void> clearUserProfile();

  /// Clear all data from the database
  Future<void> clearAllData();
}
