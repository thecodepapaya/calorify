import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/core/models/profile_models.dart';

enum DataSourceType { real, mock }

/// Interface for database operations that can be implemented by both real and mock databases
abstract class DatabaseInterface {
  /// Get daily calorie goal
  Future<int?> getDailyCalorieGoal();

  /// Set daily calorie goal
  Future<void> setDailyCalorieGoal(int goal);

  /// Log a meal
  Future<void> logMeal(MealInfo mealInfo);

  /// Upsert a meal
  Future<void> upsertMeal(MealInfo mealInfo);

  /// Check if a meal is favorite
  Future<bool> isFavoriteMeal(int mealId);

  /// Add a meal to favorites
  Future<void> addToFavorites(MealInfo mealInfo);

  /// Remove a meal from favorites
  Future<void> removeFavoriteMeal(int mealId);

  /// Update last used time for a favorite meal
  Future<void> updateFavoriteLastUsedAt(int mealId);

  /// Watch all meals for today (stream) - only works with real database
  Stream<List<MealInfo>> watchAllMealsForToday();

  /// Watch all meals for last 7 days (stream) - only works with real database
  Stream<List<MealInfo>> watchAllMealsForLast7Days();

  /// Watch all favorite meals (stream) - only works with real database
  Stream<List<MealInfo>> watchAllFavoriteMeals();

  /// Watch last used favorite meals (stream) - only works with real database
  Stream<List<MealInfo>> watchLastUsedFavoriteMeals();

  /// Get paginated meal history
  Future<List<MealInfo>> paginatedMealsHistory({required int offset});

  /// Get the data source type
  DataSourceType get dataSourceType;

  /// User Profile Operations
  /// Save or update user profile (upsert)
  Future<void> saveUserProfile(UserProfile profile);

  /// Get user profile
  Future<UserProfile?> getUserProfile();

  /// Check if user profile exists
  Future<bool> hasUserProfile();
}
