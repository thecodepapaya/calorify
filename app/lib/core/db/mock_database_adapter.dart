import 'dart:async';

import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/db/mock_data/favorite_meal_mock.dart';
import 'package:calorify/core/db/mock_data/meal_info_mock.dart';
import 'package:calorify/core/db/mock_data/user_settings_mock.dart'
    hide UserProfile;
import 'package:models/models.dart';
import 'package:flutter/material.dart' show ThemeMode;
import 'package:utils/utils.dart';

/// Mock database adapter that implements DatabaseInterface
class MockDatabaseAdapter implements DatabaseInterface {
  final List<LoggedMeal> _meals = [];
  final List<FavoriteMeal> _favorites = [];
  int _nextMealId = 1;
  int _nextFavoriteId = 1;
  int? _dailyCalorieGoal;
  UserProfile? _userProfile;
  ThemeMode _themeMode = ThemeMode.system;
  String? _languageCode;
  bool _feedbackSheetShown = false;

  final StreamController<int?> _goalController =
      StreamController<int?>.broadcast();

  MockDatabaseAdapter() {
    _initializeMockData();
  }

  void _initializeMockData() {
    // Generate mock data for the last 7 days using MealInfoMock
    final meals = MealInfoMock.generateWeek(startClientId: _nextMealId);
    _meals.addAll(meals);
    if (meals.isNotEmpty) {
      _nextMealId =
          meals.map((m) => m.clientId).reduce((a, b) => a > b ? a : b) + 1;
    }

    // Generate favorite meals using FavoriteMealMock
    final favoriteMeals = FavoriteMealMock.generateUserFavorites(
      startClientId: _nextFavoriteId,
    );
    _favorites.addAll(favoriteMeals);
    if (favoriteMeals.isNotEmpty) {
      _nextFavoriteId =
          favoriteMeals.map((f) => f.clientId).reduce((a, b) => a > b ? a : b) +
          1;
    }

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
  Future<void> logMeal(Meal mealInfo) async {
    // Convert Meal to LoggedMeal and add to the mock database
    final loggedMeal = LoggedMeal(
      clientId: _nextMealId++,
      meal: mealInfo,
      createdAt: dateTimeToIso8601String(DateTime.now()),
      metadata: null,
    );
    _meals.add(loggedMeal);
  }

  @override
  Future<void> upsertMeal(LoggedMeal mealInfo) async {
    // In mock mode, we add or update the meal by clientId
    final existingIndex = _meals.indexWhere(
      (meal) => meal.hasClientId() && meal.clientId == mealInfo.clientId,
    );

    if (existingIndex != -1) {
      _meals[existingIndex] = mealInfo;
    } else {
      // If no clientId, assign one
      if (!mealInfo.hasClientId()) {
        final updatedMeal = mealInfo.deepCopy();
        updatedMeal.clientId = _nextMealId++;
        _meals.add(updatedMeal);
      } else {
        _meals.add(mealInfo);
      }
      if (mealInfo.hasClientId() && mealInfo.clientId >= _nextMealId) {
        _nextMealId = mealInfo.clientId + 1;
      }
    }
  }

  @override
  Future<void> deleteMeal(int mealId) async {
    _meals.removeWhere((meal) => meal.hasClientId() && meal.clientId == mealId);
  }

  @override
  Future<LoggedMeal?> getMealById(int mealId) async {
    try {
      final loggedMeal = _meals.firstWhere(
        (meal) => meal.hasClientId() && meal.clientId == mealId,
      );
      return loggedMeal;
    } catch (_) {
      return null;
    }
  }

  @override
  Future<bool> isFavoriteMeal(int mealId) async {
    // Check if the meal exists in favorites by clientId
    return _favorites.any(
      (favorite) =>
          favorite.hasLoggedMeal() &&
          favorite.loggedMeal.hasClientId() &&
          favorite.loggedMeal.clientId == mealId,
    );
  }

  @override
  Future<void> addToFavorites(LoggedMeal mealInfo) async {
    // Add meal to favorites if not already there
    final alreadyFavorite = _favorites.any(
      (favorite) =>
          favorite.hasLoggedMeal() &&
          favorite.loggedMeal.hasClientId() &&
          favorite.loggedMeal.clientId == mealInfo.clientId,
    );

    if (!alreadyFavorite) {
      final now = DateTime.now();
      _favorites.add(
        FavoriteMeal(
          clientId: _nextFavoriteId++,
          loggedMeal: mealInfo,
          favoriteAt: dateTimeToIso8601String(now),
          lastUsedAt: dateTimeToIso8601String(now),
        ),
      );
    }
  }

  @override
  Future<void> removeFavoriteMeal(int mealId) async {
    // Remove favorite by mealId (clientId)
    _favorites.removeWhere(
      (favorite) =>
          favorite.hasLoggedMeal() &&
          favorite.loggedMeal.hasClientId() &&
          favorite.loggedMeal.clientId == mealId,
    );
  }

  @override
  Future<void> updateFavoriteLastUsedAt(int mealId) async {
    // In mock mode, we don't track last used time
    // This is just for testing the interface
  }

  @override
  Stream<List<LoggedMeal>> watchAllMealsForToday() async* {
    yield _meals.where((meal) {
      final now = DateTime.now();
      final mealDate = meal.dateTime;
      return mealDate.year == now.year &&
          mealDate.month == now.month &&
          mealDate.day == now.day;
    }).toList();
  }

  @override
  Stream<List<LoggedMeal>> watchAllMealsForLast7Days() async* {
    yield _meals.where((meal) {
      final now = DateTime.now();
      final sevenDaysAgo = now.subtract(const Duration(days: 7));
      final mealDate = meal.dateTime;
      return mealDate.isAfter(sevenDaysAgo) && mealDate.isBefore(now);
    }).toList();
  }

  @override
  Stream<List<FavoriteMeal>> watchAllFavoriteMeals() async* {
    yield _favorites;
  }

  @override
  Stream<List<FavoriteMeal>> watchLastUsedFavoriteMeals() async* {
    yield _favorites;
  }

  @override
  Future<List<LoggedMeal>> paginatedMealsHistory({required int offset}) {
    return Future.value(_meals.reversed.skip(offset).take(30).toList());
  }

  @override
  DataSourceType get dataSourceType => DataSourceType.mock;

  // User Profile Methods
  @override
  Future<void> saveUserProfile(UserProfile profile) async {
    _userProfile = profile;
  }

  @override
  Future<UserProfile?> getUserProfile() async {
    return _userProfile;
  }

  @override
  Future<bool> isProfileComplete() async {
    if (_userProfile == null) return false;
    return _userProfile!.isProfileComplete;
  }

  @override
  Future<ThemeMode> getThemeMode() async {
    return _themeMode;
  }

  @override
  Future<void> setThemeMode(ThemeMode mode) async {
    _themeMode = mode;
  }

  @override
  Future<String?> getLanguageCode() async {
    return _languageCode;
  }

  @override
  Future<void> setLanguageCode(String? code) async {
    _languageCode = code;
  }

  @override
  Future<bool> hasSeenFeedbackSheet() async {
    return _feedbackSheetShown;
  }

  @override
  Future<void> setFeedbackSheetShown() async {
    _feedbackSheetShown = true;
  }

  @override
  Future<List<LoggedMeal>> getLatestMealsForFeedbackEligibility({
    int limit = 5,
  }) async {
    final sorted = List<LoggedMeal>.from(_meals)
      ..sort((a, b) => b.dateTime.compareTo(a.dateTime));
    return sorted.take(limit).toList();
  }

  @override
  Future<void> clearUserPreferences() async {
    _feedbackSheetShown = false;
    _themeMode = ThemeMode.system;
    _languageCode = null;
  }

  @override
  Future<void> clearUserProfile() async {
    _userProfile = null;
    _dailyCalorieGoal = null;
    _goalController.add(null);
  }

  @override
  Future<void> clearAllData() async {
    _meals.clear();
    _favorites.clear();
    _userProfile = null;
    _dailyCalorieGoal = null;
    _languageCode = null;
    _themeMode = ThemeMode.system;
    _feedbackSheetShown = false;
    _goalController.add(null);
  }
}
