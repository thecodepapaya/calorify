import 'package:models/models.dart';
import 'package:flutter/material.dart' show ThemeMode;

enum DataSourceType { real, mock }

class LocalInferencePreferences {
  const LocalInferencePreferences({
    required this.enabled,
    this.acknowledgedPolicyVersion,
  });

  const LocalInferencePreferences.defaults()
    : enabled = false,
      acknowledgedPolicyVersion = null;

  final bool enabled;
  final String? acknowledgedPolicyVersion;
}

class PendingProfileSync {
  const PendingProfileSync({required this.profile, required this.revision});

  final UserProfile profile;
  final String revision;
}

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

  /// Check if a logged meal is a favorite by its source meal id.
  Future<bool> isFavoriteMeal(int sourceMealId);

  /// Add a meal to favorites
  Future<void> addToFavorites(LoggedMeal mealInfo);

  /// Update a favorite row while retaining its favorite id.
  Future<void> updateFavoriteMeal(int favoriteId, LoggedMeal mealInfo);

  /// Remove a favorite by its own database id.
  Future<void> removeFavoriteMeal(int favoriteId);

  /// Remove a favorite associated with a logged meal.
  Future<void> removeFavoriteMealBySourceMealId(int sourceMealId);

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

  /// Latest local profile revision waiting to be sent to the backend.
  Future<PendingProfileSync?> getPendingProfileSync();

  /// Acknowledge a sent revision. Returns false if a newer edit won the race.
  Future<bool> markProfileSynced(String revision);

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

  /// Last onboarding page reached, or null for legacy/never-started flows.
  Future<int?> getOnboardingStep();

  /// Persist the onboarding page before navigating to it.
  Future<void> setOnboardingStep(int step);

  /// Whether onboarding has been explicitly completed.
  Future<bool> hasCompletedOnboarding();

  /// Persist explicit onboarding completion.
  Future<void> setOnboardingCompleted();

  Future<LocalInferencePreferences> getLocalInferencePreferences();

  Future<void> setLocalInferenceEnabled(bool enabled);

  Future<void> acknowledgeLocalInferencePolicy(String policyVersion);

  /// Latest N meals by timestamp (for feedback eligibility check). Default limit 5.
  Future<List<LoggedMeal>> getLatestMealsForFeedbackEligibility({
    int limit = 5,
  });

  /// Clear user preferences row only (for debug). Meals and profile unchanged.
  Future<void> clearUserPreferences();

  /// Clear user profile row only (for debug). Meals and preferences unchanged.
  Future<void> clearUserProfile();

  /// Clear all data from the database
  Future<void> clearAllData();
}
