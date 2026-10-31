import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';
import '../../setup/all_tests.dart';

void main() {
  setUpAll(() {
    setupAllTests();
  });

  group('Meal Model', () {
    final now = DateTime.now();
    final loggedMeal = LoggedMeal(
      clientId: 1,
      meal: Meal(
        name: 'Apple',
        quantity: '1',
        type: MealType.SNACK,
        macros: Macros(
          calorie: Measurement(value: 95),
          protein: Measurement(value: 0),
          carb: Measurement(value: 25),
          fat: Measurement(value: 0),
          fiber: Measurement(value: 4),
        ),
        health: MealHealth(healthScore: HealthScore.HEALTHY),
      ),
      createdAt: dateTimeToIso8601String(now),
    );

    test('toProto3Json and mergeFromProto3Json are symmetric', () {
      final json = loggedMeal.toProto3Json();
      final fromJson =
          LoggedMeal.create()
            ..mergeFromProto3Json(Map<String, dynamic>.from(json as Map));

      expect(fromJson.meal.name, loggedMeal.meal.name);
      expect(
        fromJson.meal.macros.calorie.value,
        loggedMeal.meal.macros.calorie.value,
      );
      expect(fromJson.dateTime.day, loggedMeal.dateTime.day);
      expect(
        fromJson.meal.health.healthScore,
        loggedMeal.meal.health.healthScore,
      );
    });

    test('dateTime exposes stored UTC instants in the device timezone', () {
      final meal = LoggedMeal(createdAt: '2026-08-03T06:52:00.000Z');

      expect(meal.dateTime.isUtc, isFalse);
      expect(meal.dateTime.toUtc(), DateTime.parse('2026-08-03T06:52:00.000Z'));
    });
  });

  group('HealthData Model', () {
    test('isProfileComplete returns true for full profile', () {
      final profile = HealthData(
        height: Height(value: 180, unit: HeightUnit.CM),
        weight: Weight(value: 80, unit: WeightUnit.KG),
        gender: Gender.MALE,
        dateOfBirth: dateTimeToIso8601Date(DateTime(1990, 1, 1)),
        activityLevel: ActivityLevel.MODERATELY_ACTIVE,
        weightGoal: WeightGoal.MAINTAIN_WEIGHT,
      );

      expect(profile.isProfileComplete, isTrue);
    });

    test('isProfileComplete returns false for partial profile', () {
      final profile = HealthData(
        height: Height(value: 180, unit: HeightUnit.CM),
      );
      expect(profile.isProfileComplete, isFalse);
    });

    test('age calculation is correct', () {
      final birthday = DateTime(DateTime.now().year - 25, 1, 1);
      final profile = HealthData(dateOfBirth: dateTimeToIso8601Date(birthday));
      expect(profile.age, 25);
    });
  });
}
