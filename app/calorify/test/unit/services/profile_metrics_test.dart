import 'package:calorify/core/services/profile_metrics.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

void main() {
  const metrics = ProfileMetrics();
  final profile = HealthData(
    height: Height(value: 170, unit: HeightUnit.CM),
    weight: Weight(value: 70, unit: WeightUnit.KG),
    gender: Gender.MALE,
    dateOfBirth: '1990-01-01',
    activityLevel: ActivityLevel.MODERATELY_ACTIVE,
    weightGoal: WeightGoal.MAINTAIN_WEIGHT,
  );

  test(
    'profile calculations are available without onboarding or health IO',
    () {
      expect(metrics.basalMetabolicRate(profile), isNotNull);
      expect(metrics.totalDailyEnergyExpenditure(profile), isNotNull);
      expect(metrics.dailyCalorieGoal(profile), isNotNull);
      expect(metrics.bodyMassIndex(profile), closeTo(24.22, 0.01));
      expect(metrics.idealWeight(profile), closeTo(63.58, 0.01));
    },
  );

  test(
    'fallback calorie estimate advances in deterministic three-hour blocks',
    () {
      final beforeBoundary = metrics.caloriesBurnedSoFar(
        profile,
        at: DateTime(2026, 8, 21, 5, 59),
      );
      final sameBlock = metrics.caloriesBurnedSoFar(
        profile,
        at: DateTime(2026, 8, 21, 3),
      );
      final nextBlock = metrics.caloriesBurnedSoFar(
        profile,
        at: DateTime(2026, 8, 21, 6),
      );

      expect(beforeBoundary, sameBlock);
      expect(nextBlock, closeTo(sameBlock! * 2, 0.001));
    },
  );
}
