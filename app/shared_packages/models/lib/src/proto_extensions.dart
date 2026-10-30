import 'dart:math';

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:models/models.dart';

extension MacrosExtension on Macros {
  /// Adds two Macros objects together, summing all measurement values.
  Macros operator +(Macros other) {
    return Macros(
      calorie: Measurement(value: calorie.value + other.calorie.value),
      carb: Measurement(value: carb.value + other.carb.value),
      protein: Measurement(value: protein.value + other.protein.value),
      fat: Measurement(value: fat.value + other.fat.value),
      fiber: Measurement(value: fiber.value + other.fiber.value),
    );
  }
}

extension MealTypeLegacy on MealType {
  String get legacyName {
    switch (this) {
      case MealType.BREAKFAST:
        return 'breakfast';
      case MealType.LUNCH:
        return 'lunch';
      case MealType.DINNER:
        return 'dinner';
      case MealType.SNACK:
        return 'snack';
      case MealType.UNKNOWN:
        return 'unknown';
    }
    return 'unknown';
  }
}

MealType mealTypeFromLegacyName(String? name) {
  switch (name) {
    case 'breakfast':
      return MealType.BREAKFAST;
    case 'lunch':
      return MealType.LUNCH;
    case 'dinner':
      return MealType.DINNER;
    case 'snack':
      return MealType.SNACK;
    case 'unknown':
      return MealType.UNKNOWN;
    default:
      return MealType.UNKNOWN;
  }
}

extension HealthScoreLegacy on HealthScore {
  String get legacyName {
    switch (this) {
      case HealthScore.HEALTHY:
        return 'healthy';
      case HealthScore.NEUTRAL:
        return 'neutral';
      case HealthScore.UNHEALTHY:
        return 'unhealthy';
    }
    return 'unknown';
  }
}

HealthScore healthScoreFromLegacyName(String? name) {
  switch (name) {
    case 'healthy':
      return HealthScore.HEALTHY;
    case 'neutral':
      return HealthScore.NEUTRAL;
    case 'unhealthy':
      return HealthScore.UNHEALTHY;
    default:
      return HealthScore.NEUTRAL;
  }
}

extension GenderLegacy on Gender {
  String get legacyName {
    switch (this) {
      case Gender.MALE:
        return 'male';
      case Gender.FEMALE:
        return 'female';
      case Gender.OTHER:
        return 'other';
    }
    return 'other';
  }
}

Gender genderFromLegacyName(String? name) {
  switch (name) {
    case 'male':
      return Gender.MALE;
    case 'female':
      return Gender.FEMALE;
    case 'other':
      return Gender.OTHER;
    default:
      return Gender.OTHER;
  }
}

extension WeightGoalLegacy on WeightGoal {
  String get legacyName {
    switch (this) {
      case WeightGoal.LOSE_WEIGHT:
        return 'loseWeight';
      case WeightGoal.MAINTAIN_WEIGHT:
        return 'maintainWeight';
      case WeightGoal.GAIN_WEIGHT:
        return 'gainWeight';
    }
    return 'maintainWeight';
  }
}

WeightGoal weightGoalFromLegacyName(String? name) {
  switch (name) {
    case 'loseWeight':
      return WeightGoal.LOSE_WEIGHT;
    case 'maintainWeight':
      return WeightGoal.MAINTAIN_WEIGHT;
    case 'gainWeight':
      return WeightGoal.GAIN_WEIGHT;
    default:
      return WeightGoal.MAINTAIN_WEIGHT;
  }
}

extension ActivityLevelLegacy on ActivityLevel {
  String get legacyName {
    switch (this) {
      case ActivityLevel.SEDENTARY:
        return 'sedentary';
      case ActivityLevel.LIGHTLY_ACTIVE:
        return 'lightlyActive';
      case ActivityLevel.MODERATELY_ACTIVE:
        return 'moderatelyActive';
      case ActivityLevel.VERY_ACTIVE:
        return 'veryActive';
      case ActivityLevel.EXTREMELY_ACTIVE:
        return 'extremelyActive';
    }
    return 'sedentary';
  }
}

ActivityLevel activityLevelFromLegacyName(String? name) {
  switch (name) {
    case 'sedentary':
      return ActivityLevel.SEDENTARY;
    case 'lightlyActive':
      return ActivityLevel.LIGHTLY_ACTIVE;
    case 'moderatelyActive':
      return ActivityLevel.MODERATELY_ACTIVE;
    case 'veryActive':
      return ActivityLevel.VERY_ACTIVE;
    case 'extremelyActive':
      return ActivityLevel.EXTREMELY_ACTIVE;
    default:
      return ActivityLevel.SEDENTARY;
  }
}

extension HeightUnitExtension on HeightUnit {
  bool get isMetric => this == HeightUnit.CM;
  bool get isImperial => this == HeightUnit.FT;

  int get precision => isMetric ? 0 : 1;
  int get heightPrecision => precision;
  double get step => 1.0 / pow(10, precision);

  double get min =>
      isMetric
          ? ScaleConstants.heightMetricMin
          : ScaleConstants.heightImperialMin;
  double get heightMin => min;

  double get max =>
      isMetric
          ? ScaleConstants.heightMetricMax
          : ScaleConstants.heightImperialMax;
  double get heightMax => max;

  String get display => isMetric ? 'cm' : 'ft';
  String get heightUnitDisplay => display;
}

extension WeightUnitExtension on WeightUnit {
  bool get isMetric => this == WeightUnit.KG;
  bool get isImperial => this == WeightUnit.LB;

  int get precision => isMetric ? 1 : 0;
  int get weightPrecision => precision;
  double get step => 1.0 / pow(10, precision);

  double get min =>
      isMetric
          ? ScaleConstants.weightMetricMin
          : ScaleConstants.weightImperialMin;
  double get weightMin => min;

  double get max =>
      isMetric
          ? ScaleConstants.weightMetricMax
          : ScaleConstants.weightImperialMax;
  double get weightMax => max;

  String get display => isMetric ? 'kg' : 'lbs';
  String get weightUnitDisplay => display;
}

$fixnum.Int64? int64FromInt(int? value) {
  if (value == null) return null;
  return $fixnum.Int64(value);
}

extension ActivityLevelMultiplier on ActivityLevel {
  double get multiplier {
    switch (this) {
      case ActivityLevel.SEDENTARY:
        return 1.2;
      case ActivityLevel.LIGHTLY_ACTIVE:
        return 1.375;
      case ActivityLevel.MODERATELY_ACTIVE:
        return 1.55;
      case ActivityLevel.VERY_ACTIVE:
        return 1.725;
      case ActivityLevel.EXTREMELY_ACTIVE:
        return 1.9;
    }
    return 1.2; // Default fallback
  }
}

extension HealthDataExtensions on HealthData {
  int? get age {
    final dob = iso8601DateToDateTime(dateOfBirth);
    if (dob == null) return null;
    final now = DateTime.now();
    var years = now.year - dob.year;
    if (now.month < dob.month ||
        (now.month == dob.month && now.day < dob.day)) {
      years--;
    }
    return years;
  }

  bool get isProfileComplete {
    return hasHeight() &&
        hasWeight() &&
        hasGender() &&
        hasDateOfBirth() &&
        hasWeightGoal() &&
        hasActivityLevel();
  }
}

const List<Gender> genderValues = [Gender.MALE, Gender.FEMALE, Gender.OTHER];

const List<WeightGoal> weightGoalValues = [
  WeightGoal.LOSE_WEIGHT,
  WeightGoal.MAINTAIN_WEIGHT,
  WeightGoal.GAIN_WEIGHT,
];

const List<ActivityLevel> activityLevelValues = [
  ActivityLevel.SEDENTARY,
  ActivityLevel.LIGHTLY_ACTIVE,
  ActivityLevel.MODERATELY_ACTIVE,
  ActivityLevel.VERY_ACTIVE,
  ActivityLevel.EXTREMELY_ACTIVE,
];

const List<HeightUnit> heightUnitValues = [
  HeightUnit.CM,
  HeightUnit.FT,
];

const List<WeightUnit> weightUnitValues = [
  WeightUnit.KG,
  WeightUnit.LB,
];

const List<MealType> mealTypeValues = [
  MealType.BREAKFAST,
  MealType.LUNCH,
  MealType.DINNER,
  MealType.SNACK,
  MealType.UNKNOWN,
];

extension LoggedMealDateTime on LoggedMeal {
  DateTime get dateTime =>
      hasCreatedAt()
          ? iso8601StringToDateTime(createdAt)?.toLocal() ?? DateTime.now()
          : DateTime.now();
}
