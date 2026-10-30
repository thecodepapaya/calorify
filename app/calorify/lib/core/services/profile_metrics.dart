import 'package:models/models.dart';
import 'package:utils/utils.dart';

/// Pure health and calorie calculations derived from user health data.
///
/// Keeping these calculations independent from onboarding, persistence, and
/// Health Connect prevents those services from depending on each other.
class ProfileMetrics {
  const ProfileMetrics();

  static const double _bmrWeightMultiplier = 10;
  static const double _bmrHeightMultiplier = 6.25;
  static const double _bmrAgeMultiplier = 5;
  static const double _maleOffset = 5;
  static const double _femaleOffset = -161;
  static const int _weightLossDeficit = 500;
  static const int _weightGainSurplus = 500;
  static const double _targetBmi = 22;
  static const int _estimateBlockHours = 3;

  double? basalMetabolicRate(HealthData profile) {
    final height = _heightInCentimeters(profile);
    final weight = _weightInKilograms(profile);
    if (!profile.hasDateOfBirth() ||
        !profile.hasGender() ||
        height == null ||
        weight == null) {
      return null;
    }

    final age = profile.age;
    if (age == null) return null;

    final base =
        (_bmrWeightMultiplier * weight) +
        (_bmrHeightMultiplier * height) -
        (_bmrAgeMultiplier * age);
    return base + (profile.gender == Gender.MALE ? _maleOffset : _femaleOffset);
  }

  double? totalDailyEnergyExpenditure(HealthData profile) {
    if (!profile.hasActivityLevel()) return null;
    final bmr = basalMetabolicRate(profile);
    return bmr == null ? null : bmr * profile.activityLevel.multiplier;
  }

  double? dailyCalorieGoal(HealthData profile) {
    if (!profile.hasWeightGoal()) return null;
    final tdee = totalDailyEnergyExpenditure(profile);
    if (tdee == null) return null;

    return switch (profile.weightGoal) {
      WeightGoal.LOSE_WEIGHT => tdee - _weightLossDeficit,
      WeightGoal.MAINTAIN_WEIGHT => tdee,
      WeightGoal.GAIN_WEIGHT => tdee + _weightGainSurplus,
      _ => tdee,
    };
  }

  /// Estimates calories burned in coarse blocks to avoid minute-by-minute UI
  /// jitter when Health Connect data is unavailable.
  double? caloriesBurnedSoFar(HealthData profile, {DateTime? at}) {
    final tdee = totalDailyEnergyExpenditure(profile);
    if (tdee == null) return null;
    final hour = (at ?? DateTime.now()).hour;
    final completedHours = (hour ~/ _estimateBlockHours) * _estimateBlockHours;
    return tdee * (completedHours / Duration.hoursPerDay);
  }

  double? idealWeight(HealthData profile) {
    final height = _heightInCentimeters(profile);
    if (height == null) return null;
    final meters = height / 100;
    final kilograms = _targetBmi * meters * meters;
    final isMetric = !profile.hasWeight() || profile.weight.unit.isMetric;
    return isMetric
        ? kilograms
        : LocaleUtils.convertWeightToImperial(kilograms);
  }

  double? bodyMassIndex(HealthData profile) {
    final height = _heightInCentimeters(profile);
    final weight = _weightInKilograms(profile);
    if (height == null || weight == null || height <= 0) return null;
    final meters = height / 100;
    return weight / (meters * meters);
  }

  double? _heightInCentimeters(HealthData profile) {
    if (!profile.hasHeight()) return null;
    return profile.height.unit.isMetric
        ? profile.height.value
        : LocaleUtils.convertHeightToMetric(profile.height.value);
  }

  double? _weightInKilograms(HealthData profile) {
    if (!profile.hasWeight()) return null;
    return profile.weight.unit.isMetric
        ? profile.weight.value
        : LocaleUtils.convertWeightToMetric(profile.weight.value);
  }
}
