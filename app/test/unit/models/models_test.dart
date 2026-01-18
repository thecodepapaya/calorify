import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';
import '../../setup/all_tests.dart';

void main() {
  setUpAll(() {
    setupAllTests();
  });

  group('MealInfo Model', () {
    final now = DateTime.now();
    final meal = MealInfo(
      localId: int64FromInt(1),
      mealName: 'Apple',
      mealQuantity: '1',
      mealType: MealType.SNACK,
      calories: 95,
      protein: 0,
      carbs: 25,
      fat: 0,
      fiber: 4,
      timestamp: dateTimeToTimestamp(now),
      healthScore: HealthScore.HEALTHY,
    );

    test('toJson and fromJson are symmetric', () {
      final json = mealInfoToLegacyJson(meal);
      final fromJson = mealInfoFromLegacyJson(json);

      expect(fromJson.mealName, meal.mealName);
      expect(fromJson.calories, meal.calories);
      expect(fromJson.timestampDateTime?.day, meal.timestampDateTime?.day);
      expect(fromJson.healthScore, meal.healthScore);
    });

    test('copyWith works correctly', () {
      final updatedMeal = meal.deepCopy();
      updatedMeal.mealName = 'Banana';
      updatedMeal.calories = 105;

      expect(updatedMeal.mealName, 'Banana');
      expect(updatedMeal.calories, 105);
      expect(updatedMeal.mealType, meal.mealType);
    });
  });

  group('UserProfile Model', () {
    test('isProfileComplete returns true for full profile', () {
      final profile = UserProfile(
        height: 180,
        weight: 80,
        gender: Gender.MALE,
        dateOfBirth: dateTimeToTimestamp(DateTime(1990, 1, 1)),
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
      final profile = UserProfile(dateOfBirth: dateTimeToTimestamp(birthday));
      expect(profile.age, 25);
    });
  });
}
