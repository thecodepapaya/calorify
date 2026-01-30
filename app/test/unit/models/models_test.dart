import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';
import 'package:utils/utils.dart';
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
        macros: MealMacro(
          calories: 95,
          protein: 0,
          carbs: 25,
          fat: 0,
          fiber: 4,
        ),
        health: MealHealth(
          healthScore: HealthScore.HEALTHY,
        ),
      ),
      createdAt: dateTimeToIso8601String(now),
    );

    test('toJson and fromJson are symmetric', () {
      final json = mealInfoToLegacyJson(loggedMeal);
      final fromJson = mealInfoFromLegacyJson(json);

      expect(fromJson.meal.name, loggedMeal.meal.name);
      expect(fromJson.meal.macros.calories, loggedMeal.meal.macros.calories);
      expect(fromJson.dateTime.day, loggedMeal.dateTime.day);
      expect(fromJson.meal.health.healthScore, loggedMeal.meal.health.healthScore);
    });

    test('copyWith works correctly', () {
      final updatedMeal = loggedMeal.meal.deepCopy();
      updatedMeal.name = 'Banana';
      updatedMeal.macros.calories = 105;

      expect(updatedMeal.name, 'Banana');
      expect(updatedMeal.macros.calories, 105);
      expect(updatedMeal.type, loggedMeal.meal.type);
    });
  });

  group('UserProfile Model', () {
    test('isProfileComplete returns true for full profile', () {
      final profile = UserProfile(
        height: 180,
        weight: 80,
        gender: Gender.MALE,
        dateOfBirth: dateTimeToIso8601String(DateTime(1990, 1, 1)),
        activityLevel: ActivityLevel.MODERATELY_ACTIVE,
        weightGoal: WeightGoal.MAINTAIN_WEIGHT,
      );

      expect(profile.isProfileComplete, isTrue);
    });

    test('isProfileComplete returns false for partial profile', () {
      final profile = UserProfile(height: 180);
      expect(profile.isProfileComplete, isFalse);
    });

    test('age calculation is correct', () {
      final birthday = DateTime(DateTime.now().year - 25, 1, 1);
      final profile = UserProfile(dateOfBirth: dateTimeToIso8601String(birthday));
      expect(profile.age, 25);
    });
  });
}
