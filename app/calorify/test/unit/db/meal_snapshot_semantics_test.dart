import 'package:calorify/core/db/app_database.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

void main() {
  late AppDatabase database;

  setUp(() {
    database = AppDatabase.forTesting(NativeDatabase.memory());
  });

  tearDown(() => database.close());

  test(
    'upserting a full meal snapshot clears absent optional metadata',
    () async {
      final timestamp = DateTime(2026, 8, 21).toIso8601String();
      final macros = MealMacro(calories: 100, protein: 2, carbs: 20, fat: 1);
      await database.upsertMeal(
        LoggedMeal(
          clientId: 7,
          createdAt: timestamp,
          metadata: MealMetadata(imageUrl: 'https://example.test/meal.jpg'),
          meal: Meal(
            name: 'Original',
            quantity: '1 serving',
            type: MealType.SNACK,
            macros: macros,
            health: MealHealth(
              healthScore: HealthScore.HEALTHY,
              healthScoreReason: 'Fresh fruit',
            ),
          ),
        ),
      );

      await database.upsertMeal(
        LoggedMeal(
          clientId: 7,
          createdAt: timestamp,
          meal: Meal(
            name: 'Replacement',
            quantity: '1 serving',
            type: MealType.SNACK,
            macros: macros,
          ),
        ),
      );

      final stored = await database.getMealById(7);
      expect(stored, isNotNull);
      expect(stored!.meal.name, 'Replacement');
      expect(stored.hasMetadata(), isFalse);
      expect(stored.meal.hasHealth(), isFalse);
    },
  );
}
