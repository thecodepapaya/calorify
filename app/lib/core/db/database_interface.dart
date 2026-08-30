import 'package:models/models.dart';
import 'package:flutter/material.dart' show ThemeMode;
import 'package:calorify/core/ai_summary/ai_summary_models.dart';

enum DataSourceType { real, mock }

enum HealthConnectSyncOperation { upsert, delete }

enum MealLogSyncOperation { upsert, delete }

class PendingMealLogSync {
  const PendingMealLogSync({
    required this.id,
    required this.analysisId,
    required this.operation,
    required this.version,
    required this.attempts,
    this.meal,
    this.loggedAt,
  });

  final int id;
  final String analysisId;
  final MealLogSyncOperation operation;
  final int version;
  final int attempts;
  final Meal? meal;
  final DateTime? loggedAt;
}

class PendingHealthConnectSync {
  const PendingHealthConnectSync({
    required this.id,
    required this.operation,
    required this.clientRecordId,
    required this.clientRecordVersion,
    required this.attempts,
    this.meal,
    this.loggedAt,
  });

  final int id;
  final HealthConnectSyncOperation operation;
  final String clientRecordId;
  final int clientRecordVersion;
  final int attempts;
  final Meal? meal;
  final DateTime? loggedAt;
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

  /// Log a meal. [analysisId] identifies its V3 analysis when available.
  Future<void> logMeal(
    Meal mealInfo, {
    String? analysisId,
    PipelineResultData? analysisSnapshot,
    DateTime? loggedAt,
  });

  /// Upsert a meal
  Future<void> upsertMeal(LoggedMeal mealInfo);

  /// Delete a meal
  Future<void> deleteMeal(int mealId);

  /// Get a meal by id (local database id)
  Future<LoggedMeal?> getMealById(int mealId);

  /// Restores any analyzed meal mutations that were committed before an app
  /// restart but do not yet have an outbox row.
  Future<void> preparePendingMealLogSyncs();

  Future<List<PendingMealLogSync>> getPendingMealLogSyncs({int limit = 50});

  Future<void> markMealLogSyncCompleted(int id, int version);

  Future<void> markMealLogSyncFailed(int id, int version, Object error);

  /// Durable Health Connect work waiting for permission/connectivity.
  Future<List<PendingHealthConnectSync>> getPendingHealthConnectSyncs({
    int limit = 50,
  });

  /// Removes an operation only when the version that was processed is still
  /// current, so a concurrent edit cannot be lost.
  Future<void> markHealthConnectSyncCompleted(int id, int clientRecordVersion);

  Future<void> markHealthConnectSyncFailed(
    int id,
    int clientRecordVersion,
    Object error,
  );

  Future<int> countPendingHealthConnectDeletes();

  /// Queues deletion of every Health Connect record still linked to a local
  /// meal. Call only from an explicit, separately confirmed user action.
  Future<void> enqueueAllHealthConnectDeletes();

  Future<bool?> getHealthConnectNutritionSyncEnabled();

  Future<void> setHealthConnectNutritionSyncEnabled(bool enabled);

  Future<bool> isHealthConnectPromptDismissed();

  Future<void> setHealthConnectPromptDismissed();

  /// Requeues only meals that were previously linked to Health Connect.
  Future<void> enqueueLinkedHealthConnectUpserts();

  /// Drops meal payloads when export is explicitly disabled. Delete
  /// tombstones remain so already-synced records can still be reconciled.
  Future<void> discardPendingHealthConnectUpserts();

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

  Future<List<LoggedMeal>> getMealsBetween(
    DateTime startInclusive,
    DateTime endExclusive,
  );

  Future<LocalAiSummary?> getLocalAiSummary(String summaryLocalDate);

  Stream<LocalAiSummary?> watchLocalAiSummary(String summaryLocalDate);

  Future<void> saveLocalAiSummary(LocalAiSummary summary);

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
