import 'package:calorify/core/db/app_database.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

Meal _meal(String name) => Meal(
  name: name,
  quantity: '1 serving',
  type: MealType.SNACK,
  macros: MealMacro(calories: 100, protein: 2, carbs: 20, fat: 1, fiber: 3),
);

void main() {
  late AppDatabase database;

  setUp(() {
    database = AppDatabase.forTesting(NativeDatabase.memory());
  });

  tearDown(() => database.close());

  test('meal analysis id makes logging idempotent', () async {
    await database.logMeal(_meal('Apple'), analysisId: 'analysis-123');
    await database.logMeal(_meal('Apple'), analysisId: 'analysis-123');

    final meals = await database.paginatedMealsHistory(offset: 0);
    expect(meals, hasLength(1));
  });

  test('today stream shows newest meals first', () async {
    await database.logMeal(_meal('First'));
    await Future<void>.delayed(const Duration(milliseconds: 2));
    await database.logMeal(_meal('Second'));

    final meals = await database.watchAllMealsForToday().first;
    expect(meals.map((meal) => meal.meal.name), ['Second', 'First']);
  });
}
