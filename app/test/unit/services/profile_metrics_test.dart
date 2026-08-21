import 'package:calorify/core/services/profile_metrics.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

void main() {
  const metrics = ProfileMetrics();
  final profile = UserProfile(
    height: 170,
    weight: 70,
    gender: Gender.MALE,
    dateOfBirth: '1990-01-01',
    activityLevel: ActivityLevel.MODERATELY_ACTIVE,
    weightGoal: WeightGoal.MAINTAIN_WEIGHT,
    heightUnit: UnitSystem.METRIC,
    weightUnit: UnitSystem.METRIC,
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
