import 'dart:async';

import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/db/mock_data/favorite_meal_mock.dart';
import 'package:calorify/core/db/mock_data/meal_info_mock.dart';
import 'package:calorify/core/db/mock_data/user_settings_mock.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/core/models/profile_models.dart' as profile_models;

/// Mock database adapter that implements DatabaseInterface
class MockDatabaseAdapter implements DatabaseInterface {
  final List<MealInfo> _meals = [];
  final List<MealInfo> _favorites = [];
  int? _dailyCalorieGoal;
  profile_models.UserProfile? _userProfile;

  final StreamController<int?> _goalController = StreamController<int?>.broadcast();

  MockDatabaseAdapter() {
    _initializeMockData();
  }

  void _initializeMockData() {
    // Generate mock data for the last 7 days using MealInfoMock
    _meals.addAll(MealInfoMock.generateWeek());

    // Generate favorite meals using FavoriteMealMock
    _favorites.addAll(FavoriteMealMock.generateUserFavorites());

    // Set a default calorie goal using UserSettingsMock
    final userSettings = UserSettingsMock.generateRealistic();
    _dailyCalorieGoal = userSettings['dailyCalorieGoal'] as int;
    _goalController.add(_dailyCalorieGoal);
  }

  @override
  Future<int?> getDailyCalorieGoal() async {
    return _dailyCalorieGoal;
  }

  @override
  Stream<int?> watchDailyCalorieGoal() async* {
    yield _dailyCalorieGoal;
    yield* _goalController.stream;
  }

  @override
  Future<void> setDailyCalorieGoal(int goal) async {
    _dailyCalorieGoal = goal;
    _goalController.add(_dailyCalorieGoal);
  }

  @override
  Future<void> logMeal(MealInfo mealInfo) async {
    // Add meal to the mock database
    _meals.add(mealInfo);
  }

  @override
  Future<void> upsertMeal(MealInfo mealInfo) async {
    // In mock mode, we add or update the meal
    final existingIndex = _meals.indexWhere(
      (meal) =>
          meal.mealName == mealInfo.mealName &&
          meal.timestamp.day == mealInfo.timestamp.day,
    );

    if (existingIndex != -1) {
      _meals[existingIndex] = mealInfo;
    } else {
      _meals.add(mealInfo);
    }
  }

  @override
  Future<void> deleteMeal(int mealId) async {
    _meals.removeWhere((meal) => meal.id == mealId);
  }

  @override
  Future<bool> isFavoriteMeal(int mealId) async {
    // In mock mode, we check if the meal exists in favorites
    // For simplicity, we'll check by meal name
    return _favorites.any((favorite) => favorite.mealName.contains('meal'));
  }

  @override
  Future<void> addToFavorites(MealInfo mealInfo) async {
    // Add meal to favorites if not already there
    if (!_favorites.any((favorite) => favorite.mealName == mealInfo.mealName)) {
      _favorites.add(mealInfo);
    }
  }

  @override
  Future<void> removeFavoriteMeal(int mealId) async {
    // Remove favorite by index (simplified for mock)
    if (mealId < _favorites.length) {
      _favorites.removeAt(mealId);
    }
  }

  @override
  Future<void> updateFavoriteLastUsedAt(int mealId) async {
    // In mock mode, we don't track last used time
    // This is just for testing the interface
  }

  @override
  Stream<List<MealInfo>> watchAllMealsForToday() async* {
    yield _meals.where((meal) {
      final now = DateTime.now();
      return meal.timestamp.year == now.year &&
          meal.timestamp.month == now.month &&
          meal.timestamp.day == now.day;
    }).toList();
  }

  @override
  Stream<List<MealInfo>> watchAllMealsForLast7Days() async* {
    yield _meals.where((meal) {
      final now = DateTime.now();
      final sevenDaysAgo = now.subtract(const Duration(days: 7));
      return meal.timestamp.isAfter(sevenDaysAgo) &&
          meal.timestamp.isBefore(now);
    }).toList();
  }

  @override
  Stream<List<MealInfo>> watchAllFavoriteMeals() async* {
    yield _favorites;
  }

  @override
  Stream<List<MealInfo>> watchLastUsedFavoriteMeals() async* {
    yield _favorites;
  }

  @override
  Future<List<MealInfo>> paginatedMealsHistory({
    required int offset,
    mealsPerPage = 30,
  }) {
    return Future.value(
      _meals.reversed.skip(offset).take(mealsPerPage).toList(),
    );
  }

  @override
  DataSourceType get dataSourceType => DataSourceType.mock;

  // User Profile Methods
  @override
  Future<void> saveUserProfile(profile_models.UserProfile profile) async {
    _userProfile = profile;
  }

  @override
  Future<profile_models.UserProfile?> getUserProfile() async {
    return _userProfile;
  }

  @override
  Future<bool> hasUserProfile() async {
    return _userProfile != null;
  }
}
