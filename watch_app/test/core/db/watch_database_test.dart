import 'package:calorify_watch/core/db/watch_database.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

void main() {
  late WatchDatabase database;

  setUp(() {
    database = WatchDatabase.forTesting(NativeDatabase.memory());
  });

  tearDown(() => database.close());

  test('dashboard and favorites survive a complete cache round trip', () async {
    final older = _meal(
      id: 1,
      name: 'Dal',
      createdAt: DateTime.utc(2026, 7, 29, 8),
      calories: 240,
    );
    final newer = _meal(
      id: 2,
      name: 'Rice',
      createdAt: DateTime.utc(2026, 7, 29, 9),
      calories: 310,
    );
    final syncedAt = DateTime.utc(2026, 7, 29, 9, 5);
    final favorite = FavoriteMeal(
      clientId: 7,
      loggedMeal: newer,
      favoriteAt: DateTime.utc(2026, 7, 20).toIso8601String(),
      lastUsedAt: DateTime.utc(2026, 7, 28).toIso8601String(),
    );

    await database.replaceDashboard(
      meals: [older, newer],
      calorieGoal: 2100,
      lastSyncAt: syncedAt,
    );
    await database.replaceFavorites([favorite]);

    final snapshot = await database.loadSnapshot();
    expect(snapshot.meals.map((meal) => meal.clientId), containsAll([1, 2]));
    expect(
      snapshot.meals
          .singleWhere((meal) => meal.clientId == 2)
          .meal
          .macros
          .calories,
      310,
    );
    expect(snapshot.calorieGoal, 2100);
    expect(snapshot.lastSyncAt?.isAtSameMomentAs(syncedAt), isTrue);
    expect(snapshot.favoriteMeals.single.clientId, 7);
    expect(snapshot.favoriteMeals.single.loggedMeal.meal.name, 'Rice');
    expect(snapshot.favoriteMeals.single.lastUsedAt, favorite.lastUsedAt);
  });

  test(
    'queueing the same meal twice replaces rather than duplicates it',
    () async {
      final meal = _meal(
        id: -1,
        name: 'Poha',
        createdAt: DateTime.utc(2026, 7, 29, 8),
        calories: 280,
      );

      await database.queueMealLog(meal, favoriteMealId: 3);
      await database.queueMealLog(meal, favoriteMealId: 9);

      final operations = await database.getPendingOperations();
      expect(operations, hasLength(1));
      expect(operations.single.type, PendingWatchOperationType.logMeal);
      expect(operations.single.mealId, -1);
      expect(operations.single.favoriteMealId, 9);
      expect(operations.single.meal?.meal.name, 'Poha');
      expect(await database.hasPendingOperations(), isTrue);
    },
  );

  test('delete queue is idempotent and can be cancelled', () async {
    await database.queueMealDelete(42);
    await database.queueMealDelete(42);

    var operations = await database.getPendingOperations();
    expect(operations, hasLength(1));
    expect(operations.single.type, PendingWatchOperationType.deleteMeal);
    expect(operations.single.mealId, 42);

    await database.cancelQueuedMealDelete(42);
    operations = await database.getPendingOperations();
    expect(operations, isEmpty);
    expect(await database.hasPendingOperations(), isFalse);
  });

  test(
    'corrupt queued meal payload is removed with its optimistic cache row',
    () async {
      final meal = _meal(
        id: -5,
        name: 'Upma',
        createdAt: DateTime.utc(2026, 7, 29, 8),
        calories: 260,
      );
      await database.upsertMeal(meal);
      await database
          .into(database.pendingOperationsTable)
          .insert(
            PendingOperationsTableCompanion.insert(
              operationType: PendingWatchOperationType.logMeal.name,
              mealId: -5,
              payloadJson: const Value('{invalid json'),
            ),
          );

      expect(await database.getPendingOperations(), isEmpty);
      expect((await database.loadSnapshot()).meals, isEmpty);
      expect(await database.hasPendingOperations(), isFalse);
    },
  );
}

LoggedMeal _meal({
  required int id,
  required String name,
  required DateTime createdAt,
  required int calories,
}) {
  return LoggedMeal(
    clientId: id,
    createdAt: createdAt.toIso8601String(),
    meal: Meal(
      name: name,
      quantity: '1 serving',
      type: MealType.BREAKFAST,
      macros: MealMacro(
        calories: calories,
        protein: 10,
        carbs: 35,
        fat: 8,
        fiber: 5,
      ),
      health: MealHealth(
        healthScore: HealthScore.HEALTHY,
        healthScoreReason: 'Balanced meal',
      ),
    ),
  );
}
