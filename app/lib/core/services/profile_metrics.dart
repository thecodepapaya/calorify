import 'package:models/models.dart';
import 'package:utils/utils.dart';

/// Pure health and calorie calculations derived from a user profile.
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

  double? basalMetabolicRate(UserProfile profile) {
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

  double? totalDailyEnergyExpenditure(UserProfile profile) {
    if (!profile.hasActivityLevel()) return null;
    final bmr = basalMetabolicRate(profile);
    return bmr == null ? null : bmr * profile.activityLevel.multiplier;
  }

  double? dailyCalorieGoal(UserProfile profile) {
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
  double? caloriesBurnedSoFar(UserProfile profile, {DateTime? at}) {
    final tdee = totalDailyEnergyExpenditure(profile);
    if (tdee == null) return null;
    final hour = (at ?? DateTime.now()).hour;
    final completedHours = (hour ~/ _estimateBlockHours) * _estimateBlockHours;
    return tdee * (completedHours / Duration.hoursPerDay);
  }

  double? idealWeight(UserProfile profile) {
    final height = _heightInCentimeters(profile);
    if (height == null) return null;
    final meters = height / 100;
    final kilograms = _targetBmi * meters * meters;
    return profile.weightUnit.isMetric
        ? kilograms
        : LocaleUtils.convertWeightToImperial(kilograms);
  }

  double? bodyMassIndex(UserProfile profile) {
    final height = _heightInCentimeters(profile);
    final weight = _weightInKilograms(profile);
    if (height == null || weight == null || height <= 0) return null;
    final meters = height / 100;
    return weight / (meters * meters);
  }

  double? _heightInCentimeters(UserProfile profile) {
    if (!profile.hasHeight()) return null;
    return profile.heightUnit.isMetric
        ? profile.height
        : LocaleUtils.convertHeightToMetric(profile.height);
  }

  double? _weightInKilograms(UserProfile profile) {
    if (!profile.hasWeight()) return null;
    return profile.weightUnit.isMetric
        ? profile.weight
        : LocaleUtils.convertWeightToMetric(profile.weight);
  }
}
