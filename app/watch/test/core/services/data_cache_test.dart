import 'package:calorify_watch/core/services/data_cache.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

void main() {
  test('restores newest-first order and continues temporary IDs safely', () {
    final cache = DataCache.instance;
    final older = _meal(-4, DateTime.utc(2026, 7, 29, 8));
    final newer = _meal(-8, DateTime.utc(2026, 7, 29, 9));
    cache.restoreSnapshot(
      meals: [older, newer],
      favorites: const [],
      goal: 2000,
      dashboardSyncedAt: DateTime.now(),
      favoritesSyncedAt: null,
    );

    expect(cache.todaysMeals.value.map((meal) => meal.clientId), [-8, -4]);
    expect(cache.calorieGoal.value, 2000);
    expect(cache.hasFreshDashboard, isTrue);
    expect(cache.hasFreshFavorites, isFalse);

    final optimistic = cache.addOptimisticMeal(Meal(name: 'New meal'));
    expect(optimistic.clientId, -9);
    expect(cache.todaysMeals.value.first.clientId, -9);
  });

  test('remove and restore preserve the exact logged meal', () {
    final cache = DataCache.instance;
    final meal = _meal(12, DateTime.utc(2026, 7, 29, 8));
    cache.restoreSnapshot(
      meals: [meal],
      favorites: const [],
      goal: null,
      dashboardSyncedAt: null,
      favoritesSyncedAt: DateTime.now(),
    );

    expect(cache.removeMealById(99), isNull);
    final removed = cache.removeMealById(12);
    expect(removed, same(meal));
    expect(cache.todaysMeals.value, isEmpty);

    cache.restoreMeal(removed!);
    expect(cache.todaysMeals.value.single, same(meal));
    expect(cache.hasFreshDashboard, isFalse);
    expect(cache.hasFreshFavorites, isTrue);
  });

  test('late phone refresh preserves queued logs and queued deletes', () {
    final queuedLog = _meal(-4, DateTime.utc(2026, 8, 2, 12));
    final deletedMeal = _meal(12, DateTime.utc(2026, 8, 2, 11));
    final remoteMeal = _meal(20, DateTime.utc(2026, 8, 2, 10));

    final merged = mergeWatchDashboardMeals(
      remoteMeals: [deletedMeal, remoteMeal],
      localMeals: [queuedLog],
      protectedOptimisticIds: {-4},
      suppressedMealIds: {12},
    );

    expect(merged.map((meal) => meal.clientId), containsAll(<int>[-4, 20]));
    expect(merged.map((meal) => meal.clientId), isNot(contains(12)));
  });
}

LoggedMeal _meal(int id, DateTime createdAt) => LoggedMeal(
  clientId: id,
  createdAt: createdAt.toIso8601String(),
  meal: Meal(name: 'Meal $id'),
);
