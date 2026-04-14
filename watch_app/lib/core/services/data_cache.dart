import 'package:models/models.dart';
import 'package:utils/utils.dart';
import 'package:flutter/foundation.dart';

class DataCache {
  DataCache._();

  static final DataCache instance = DataCache._();
  static const Duration cacheLifetime = Duration(minutes: 5);

  final ValueNotifier<List<LoggedMeal>> todaysMeals = ValueNotifier(const []);
  final ValueNotifier<int?> calorieGoal = ValueNotifier(null);
  final ValueNotifier<List<FavoriteMeal>> favoriteMeals = ValueNotifier(
    const [],
  );
  final ValueNotifier<DateTime?> lastSyncTime = ValueNotifier(null);

  int _nextTemporaryMealId = -1;

  bool get hasFreshData {
    final syncedAt = lastSyncTime.value;
    if (syncedAt == null) {
      return false;
    }

    return DateTime.now().difference(syncedAt) < cacheLifetime;
  }

  void updateDashboard({
    required List<LoggedMeal> meals,
    required int? goal,
    DateTime? syncedAt,
  }) {
    todaysMeals.value = _sortMeals(meals);
    calorieGoal.value = goal;
    if (syncedAt != null) {
      lastSyncTime.value = syncedAt;
    }
  }

  void setTodaysMeals(List<LoggedMeal> meals, {DateTime? syncedAt}) {
    todaysMeals.value = _sortMeals(meals);
    if (syncedAt != null) {
      lastSyncTime.value = syncedAt;
    }
  }

  void setCalorieGoal(int? goal, {DateTime? syncedAt}) {
    calorieGoal.value = goal;
    if (syncedAt != null) {
      lastSyncTime.value = syncedAt;
    }
  }

  void setFavoriteMeals(List<FavoriteMeal> favorites) {
    favoriteMeals.value = List<FavoriteMeal>.unmodifiable(favorites);
  }

  LoggedMeal addOptimisticMeal(Meal meal) {
    final optimisticMeal = LoggedMeal(
      clientId: _nextTemporaryMealId--,
      meal: meal,
      createdAt: dateTimeToIso8601String(DateTime.now()),
    );

    setTodaysMeals([...todaysMeals.value, optimisticMeal]);
    return optimisticMeal;
  }

  LoggedMeal? removeMealById(int mealId) {
    LoggedMeal? removedMeal;
    final updatedMeals =
        todaysMeals.value.where((meal) {
          final matches = meal.hasClientId() && meal.clientId == mealId;
          if (matches) {
            removedMeal = meal;
          }
          return !matches;
        }).toList();

    if (removedMeal != null) {
      setTodaysMeals(updatedMeals);
    }

    return removedMeal;
  }

  void restoreMeal(LoggedMeal meal) {
    setTodaysMeals([...todaysMeals.value, meal]);
  }

  List<LoggedMeal> _sortMeals(List<LoggedMeal> meals) {
    final sortedMeals = List<LoggedMeal>.from(meals);
    sortedMeals.sort((a, b) => b.dateTime.compareTo(a.dateTime));
    return List<LoggedMeal>.unmodifiable(sortedMeals);
  }

  void dispose() {
    todaysMeals.dispose();
    calorieGoal.dispose();
    favoriteMeals.dispose();
    lastSyncTime.dispose();
  }
}
