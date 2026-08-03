import 'dart:math';

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:models/models.dart';
import 'package:utils/utils.dart';

extension MealMacroExtension on MealMacro {
  /// Adds two MealMacro objects together, summing all macro fields.
  /// Handles null/zero values by using hasX() checks or defaulting to 0.
  MealMacro operator +(MealMacro other) {
    return MealMacro(
      calories: calories + other.calories,
      carbs: carbs + other.carbs,
      protein: protein + other.protein,
      fat: fat + other.fat,
      fiber: fiber + other.fiber,
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

extension UnitSystemLegacy on UnitSystem {
  String get legacyName {
    switch (this) {
      case UnitSystem.METRIC:
        return 'metric';
      case UnitSystem.IMPERIAL:
        return 'imperial';
    }
    return 'metric';
  }
}

UnitSystem unitSystemFromLegacyName(String? name) {
  switch (name) {
    case 'imperial':
      return UnitSystem.IMPERIAL;
    case 'metric':
      return UnitSystem.METRIC;
    default:
      return UnitSystem.METRIC;
  }
}

extension UnitSystemExtension on UnitSystem {
  UnitSystem get normalized => this;

  bool get isMetric => normalized == UnitSystem.METRIC;
  bool get isImperial => normalized == UnitSystem.IMPERIAL;

  int get heightPrecision => isMetric ? 0 : 1;
  int get weightPrecision => isMetric ? 1 : 0;

  double get heightStep => 1.0 / pow(10, heightPrecision);
  double get weightStep => 1.0 / pow(10, weightPrecision);

  double get heightMin =>
      isMetric
          ? ScaleConstants.heightMetricMin
          : ScaleConstants.heightImperialMin;

  double get heightMax =>
      isMetric
          ? ScaleConstants.heightMetricMax
          : ScaleConstants.heightImperialMax;

  double get weightMin =>
      isMetric
          ? ScaleConstants.weightMetricMin
          : ScaleConstants.weightImperialMin;

  double get weightMax =>
      isMetric
          ? ScaleConstants.weightMetricMax
          : ScaleConstants.weightImperialMax;

  /// Returns the weight unit display string ('kg' for metric, 'lbs' for imperial)
  String get weightUnitDisplay => isMetric ? 'kg' : 'lbs';

  /// Returns the height unit display string ('cm' for metric, 'in' for imperial)
  String get heightUnitDisplay => isMetric ? 'cm' : 'in';
}

$fixnum.Int64? int64FromInt(int? value) {
  if (value == null) return null;
  return $fixnum.Int64(value);
}

extension MealCopyWith on Meal {
  Meal copyWith({
    String? mealName,
    String? mealQuantity,
    MealType? mealType,
    int? calories,
    int? protein,
    int? carbs,
    int? fat,
    int? fiber,
    HealthScore? healthScore,
    String? healthScoreReason,
    bool forceIdNull = false,
  }) {
    final copy = deepCopy();
    if (mealName != null) copy.name = mealName;
    if (mealQuantity != null) copy.quantity = mealQuantity;
    if (mealType != null) copy.type = mealType;
    if (calories != null) copy.macros.calories = calories;
    if (protein != null) copy.macros.protein = protein;
    if (carbs != null) copy.macros.carbs = carbs;
    if (fat != null) copy.macros.fat = fat;
    if (fiber != null) copy.macros.fiber = fiber;
    if (healthScore != null || healthScoreReason != null) {
      if (!copy.hasHealth()) {
        copy.health = MealHealth();
      }
      if (healthScore != null) copy.health.healthScore = healthScore;
      if (healthScoreReason != null) {
        copy.health.healthScoreReason = healthScoreReason;
      }
    } else if (forceIdNull && copy.hasHealth()) {
      copy.clearHealth();
    }
    return copy;
  }

  Meal copyWithFields({
    String? mealName,
    String? mealQuantity,
    MealType? mealType,
    int? calories,
    int? protein,
    int? carbs,
    int? fat,
    int? fiber,
    HealthScore? healthScore,
    String? healthScoreReason,
    bool clearHealth = false,
    bool clearHealthScoreReason = false,
  }) {
    final copy = deepCopy();
    if (mealName != null) copy.name = mealName;
    if (mealQuantity != null) copy.quantity = mealQuantity;
    if (mealType != null) copy.type = mealType;
    if (calories != null) copy.macros.calories = calories;
    if (protein != null) copy.macros.protein = protein;
    if (carbs != null) copy.macros.carbs = carbs;
    if (fat != null) copy.macros.fat = fat;
    if (fiber != null) copy.macros.fiber = fiber;
    if (clearHealth) copy.clearHealth();
    if (healthScore != null || healthScoreReason != null) {
      if (!copy.hasHealth()) {
        copy.health = MealHealth();
      }
      if (healthScore != null) copy.health.healthScore = healthScore;
      if (clearHealthScoreReason) {
        if (copy.health.hasHealthScoreReason()) {
          copy.health.clearHealthScoreReason();
        }
      }
      if (healthScoreReason != null) {
        copy.health.healthScoreReason = healthScoreReason;
      }
    }
    return copy;
  }
}

extension UserProfileCopyWith on UserProfile {
  UserProfile copyWith({
    double? height,
    double? weight,
    double? targetWeight,
    Gender? gender,
    DateTime? dateOfBirth,
    WeightGoal? weightGoal,
    ActivityLevel? activityLevel,
    UnitSystem? heightUnit,
    UnitSystem? weightUnit,
    int? dailyCalorieGoal,
  }) {
    final copy = deepCopy();
    if (height != null) copy.height = height;
    if (weight != null) copy.weight = weight;
    if (targetWeight != null) copy.targetWeight = targetWeight;
    if (gender != null) copy.gender = gender;
    if (dateOfBirth != null) {
      copy.dateOfBirth = dateTimeToIso8601String(dateOfBirth);
    }
    if (weightGoal != null) copy.weightGoal = weightGoal;
    if (activityLevel != null) copy.activityLevel = activityLevel;
    if (heightUnit != null) copy.heightUnit = heightUnit;
    if (weightUnit != null) copy.weightUnit = weightUnit;
    if (dailyCalorieGoal != null) copy.dailyCalorieGoal = dailyCalorieGoal;
    return copy;
  }

  UserProfile copyWithFields({
    double? height,
    double? weight,
    double? targetWeight,
    Gender? gender,
    DateTime? dateOfBirth,
    WeightGoal? weightGoal,
    ActivityLevel? activityLevel,
    UnitSystem? heightUnit,
    UnitSystem? weightUnit,
    int? dailyCalorieGoal,
    bool clearDateOfBirth = false,
    bool clearGender = false,
    bool clearWeightGoal = false,
    bool clearActivityLevel = false,
  }) {
    final copy = deepCopy();
    if (height != null) copy.height = height;
    if (weight != null) copy.weight = weight;
    if (targetWeight != null) copy.targetWeight = targetWeight;
    if (gender != null) copy.gender = gender;
    if (clearGender) copy.clearGender();
    if (dateOfBirth != null) {
      copy.dateOfBirth = dateTimeToIso8601String(dateOfBirth);
    }
    if (clearDateOfBirth) copy.clearDateOfBirth();
    if (weightGoal != null) copy.weightGoal = weightGoal;
    if (clearWeightGoal) copy.clearWeightGoal();
    if (activityLevel != null) copy.activityLevel = activityLevel;
    if (clearActivityLevel) copy.clearActivityLevel();
    if (heightUnit != null) copy.heightUnit = heightUnit;
    if (weightUnit != null) copy.weightUnit = weightUnit;
    if (dailyCalorieGoal != null) copy.dailyCalorieGoal = dailyCalorieGoal;
    return copy;
  }
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

extension UserProfileExtensions on UserProfile {
  int? get age {
    final dob = iso8601StringToDateTime(dateOfBirth);
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

const List<UnitSystem> unitSystemValues = [
  UnitSystem.METRIC,
  UnitSystem.IMPERIAL,
];

const List<MealType> mealTypeValues = [
  MealType.BREAKFAST,
  MealType.LUNCH,
  MealType.DINNER,
  MealType.SNACK,
  MealType.UNKNOWN,
];

extension LoggedMealCopyWith on LoggedMeal {
  DateTime get dateTime =>
      hasCreatedAt()
          ? iso8601StringToDateTime(createdAt)?.toLocal() ?? DateTime.now()
          : DateTime.now();

  LoggedMeal copyWith({
    int? clientId,
    Meal? meal,
    DateTime? createdAt,
    MealMetadata? metadata,
    String? imageUrl,
    bool forceIdNull = false,
    // Meal field shortcuts
    String? mealName,
    String? mealQuantity,
    MealType? mealType,
    int? calories,
    int? protein,
    int? carbs,
    int? fat,
    int? fiber,
    HealthScore? healthScore,
    String? healthScoreReason,
  }) {
    final copy = deepCopy();

    if (forceIdNull) {
      copy.clearClientId();
    } else {
      if (clientId != null) copy.clientId = clientId;
    }

    // Update meal - either replace entirely or update fields
    if (meal != null) {
      copy.meal = meal;
    } else if (mealName != null ||
        mealQuantity != null ||
        mealType != null ||
        calories != null ||
        protein != null ||
        carbs != null ||
        fat != null ||
        fiber != null ||
        healthScore != null ||
        healthScoreReason != null) {
      // Use Meal's copyWith extension to update individual fields
      final mealCopy = copy.meal;
      copy.meal =
          (mealCopy as dynamic).copyWith(
                mealName: mealName,
                mealQuantity: mealQuantity,
                mealType: mealType,
                calories: calories,
                protein: protein,
                carbs: carbs,
                fat: fat,
                fiber: fiber,
                healthScore: healthScore,
                healthScoreReason: healthScoreReason,
              )
              as Meal;
    }

    if (createdAt != null) {
      copy.createdAt = dateTimeToIso8601String(createdAt);
    }

    // Update metadata - either replace entirely or update imageUrl
    if (metadata != null) {
      copy.metadata = metadata;
    } else if (imageUrl != null) {
      if (copy.hasMetadata()) {
        final metadataCopy = copy.metadata.deepCopy();
        metadataCopy.imageUrl = imageUrl;
        copy.metadata = metadataCopy;
      } else {
        copy.metadata = MealMetadata(imageUrl: imageUrl);
      }
    } else if (forceIdNull && copy.hasMetadata()) {
      copy.clearMetadata();
    }

    return copy;
  }

  LoggedMeal copyWithFields({
    int? clientId,
    Meal? meal,
    DateTime? createdAt,
    MealMetadata? metadata,
    String? imageUrl,
    bool clearClientId = false,
    bool clearMeal = false,
    bool clearCreatedAt = false,
    bool clearMetadata = false,
    // Meal field shortcuts
    String? mealName,
    String? mealQuantity,
    MealType? mealType,
    int? calories,
    int? protein,
    int? carbs,
    int? fat,
    int? fiber,
    HealthScore? healthScore,
    String? healthScoreReason,
    bool clearHealthScore = false,
    bool clearHealthScoreReason = false,
  }) {
    final copy = deepCopy();

    if (clearClientId) copy.clearClientId();
    if (clientId != null) copy.clientId = clientId;

    if (clearMeal) copy.clearMeal();
    if (meal != null) {
      copy.meal = meal;
    } else if (mealName != null ||
        mealQuantity != null ||
        mealType != null ||
        calories != null ||
        protein != null ||
        carbs != null ||
        fat != null ||
        fiber != null ||
        healthScore != null ||
        healthScoreReason != null ||
        clearHealthScore ||
        clearHealthScoreReason) {
      // Use Meal's copyWithFields extension to update individual fields
      final mealCopy = copy.meal;
      copy.meal = mealCopy.copyWithFields(
        mealName: mealName,
        mealQuantity: mealQuantity,
        mealType: mealType,
        calories: calories,
        protein: protein,
        carbs: carbs,
        fat: fat,
        fiber: fiber,
        healthScore: healthScore,
        healthScoreReason: healthScoreReason,
        clearHealth: clearHealthScore,
        clearHealthScoreReason: clearHealthScoreReason,
      );
    }

    if (clearCreatedAt) copy.clearCreatedAt();
    if (createdAt != null) {
      copy.createdAt = dateTimeToIso8601String(createdAt);
    }

    if (clearMetadata) copy.clearMetadata();
    if (metadata != null) {
      copy.metadata = metadata;
    } else if (imageUrl != null) {
      if (copy.hasMetadata()) {
        final metadataCopy = copy.metadata.deepCopy();
        metadataCopy.imageUrl = imageUrl;
        copy.metadata = metadataCopy;
      } else {
        copy.metadata = MealMetadata(imageUrl: imageUrl);
      }
    }

    return copy;
  }
}
