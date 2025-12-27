import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/core/models/profile_models.dart';

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
  Future<void> logMeal(MealInfo mealInfo) async {
    await _database.logMeal(mealInfo);
  }

  @override
  Future<void> upsertMeal(MealInfo mealInfo) async {
    await _database.upsertMeal(mealInfo);
  }

  @override
  Future<void> deleteMeal(int mealId) async {
    await _database.deleteMeal(mealId);
  }

  @override
  Future<bool> isFavoriteMeal(int mealId) async {
    return await _database.isFavoriteMeal(mealId);
  }

  @override
  Future<void> addToFavorites(MealInfo mealInfo) async {
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
  Stream<List<MealInfo>> watchAllMealsForToday() {
    return _database.watchAllMealsForToday();
  }

  @override
  Stream<List<MealInfo>> watchAllMealsForLast7Days() {
    return _database.watchAllMealsForLast7Days();
  }

  @override
  Stream<List<MealInfo>> watchAllFavoriteMeals() {
    return _database.watchAllFavoriteMeals();
  }

  @override
  Stream<List<MealInfo>> watchLastUsedFavoriteMeals() {
    return _database.watchLastUsedFavoriteMeals();
  }

  @override
  Future<List<MealInfo>> paginatedMealsHistory({required int offset}) {
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
  Future<bool> hasUserProfile() async {
    return await _database.hasUserProfile();
  }
}
