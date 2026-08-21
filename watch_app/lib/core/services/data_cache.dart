import 'package:flutter/foundation.dart';
import 'package:models/models.dart';

/// Combines a phone snapshot with local operations that have not been
/// acknowledged yet. A late background refresh must not make a just-recorded
/// meal disappear or resurrect a meal that the user just deleted.
List<LoggedMeal> mergeWatchDashboardMeals({
  required List<LoggedMeal> remoteMeals,
  required List<LoggedMeal> localMeals,
  required Set<int> protectedOptimisticIds,
  required Set<int> suppressedMealIds,
}) {
  final merged =
      remoteMeals.where((meal) {
        return !meal.hasClientId() ||
            !suppressedMealIds.contains(meal.clientId);
      }).toList();
  final remoteIds =
      merged
          .where((meal) => meal.hasClientId())
          .map((meal) => meal.clientId)
          .toSet();

  merged.addAll(
    localMeals.where((meal) {
      return meal.hasClientId() &&
          protectedOptimisticIds.contains(meal.clientId) &&
          !remoteIds.contains(meal.clientId);
    }),
  );
  return merged;
}

class DataCache {
  DataCache();

  static final DataCache instance = DataCache();
  static const Duration cacheLifetime = Duration(minutes: 5);

  final ValueNotifier<List<LoggedMeal>> todaysMeals = ValueNotifier(const []);
  final ValueNotifier<int?> calorieGoal = ValueNotifier(null);
  final ValueNotifier<List<FavoriteMeal>> favoriteMeals = ValueNotifier(
    const [],
  );
  final ValueNotifier<DateTime?> dashboardLastSyncTime = ValueNotifier(null);
  final ValueNotifier<DateTime?> favoritesLastSyncTime = ValueNotifier(null);

  int _nextTemporaryMealId = -1;

  bool get hasFreshDashboard => _isFresh(dashboardLastSyncTime.value);

  bool get hasFreshFavorites => _isFresh(favoritesLastSyncTime.value);

  bool _isFresh(DateTime? syncedAt) {
    if (syncedAt == null) {
      return false;
    }

    return DateTime.now().difference(syncedAt) < cacheLifetime;
  }

  void restoreSnapshot({
    required List<LoggedMeal> meals,
    required List<FavoriteMeal> favorites,
    required int? goal,
    required DateTime? dashboardSyncedAt,
    required DateTime? favoritesSyncedAt,
  }) {
    todaysMeals.value = _sortMeals(meals);
    calorieGoal.value = goal;
    favoriteMeals.value = List<FavoriteMeal>.unmodifiable(favorites);
    dashboardLastSyncTime.value = dashboardSyncedAt;
    favoritesLastSyncTime.value = favoritesSyncedAt;

    final lowestTemporaryId = meals
        .where((meal) => meal.hasClientId() && meal.clientId < 0)
        .map((meal) => meal.clientId)
        .fold<int?>(
          null,
          (lowest, id) => lowest == null || id < lowest ? id : lowest,
        );
    _nextTemporaryMealId =
        lowestTemporaryId != null ? lowestTemporaryId - 1 : -1;
  }

  void updateDashboard({
    required List<LoggedMeal> meals,
    required int? goal,
    DateTime? syncedAt,
  }) {
    todaysMeals.value = _sortMeals(meals);
    calorieGoal.value = goal;
    if (syncedAt != null) {
      dashboardLastSyncTime.value = syncedAt;
    }
  }

  void setTodaysMeals(List<LoggedMeal> meals, {DateTime? syncedAt}) {
    todaysMeals.value = _sortMeals(meals);
    if (syncedAt != null) {
      dashboardLastSyncTime.value = syncedAt;
    }
  }

  void setCalorieGoal(int? goal, {DateTime? syncedAt}) {
    calorieGoal.value = goal;
    if (syncedAt != null) {
      dashboardLastSyncTime.value = syncedAt;
    }
  }

  void setFavoriteMeals(List<FavoriteMeal> favorites, {DateTime? syncedAt}) {
    favoriteMeals.value = List<FavoriteMeal>.unmodifiable(favorites);
    if (syncedAt != null) {
      favoritesLastSyncTime.value = syncedAt;
    }
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
    dashboardLastSyncTime.dispose();
    favoritesLastSyncTime.dispose();
  }
}
