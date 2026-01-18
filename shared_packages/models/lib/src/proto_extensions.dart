import 'dart:math';

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:models/src/proto/calorify/models.pb.dart';
import 'package:models/src/scale_constants.dart';
import 'package:models/src/timestamp_utils.dart';

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
}

$fixnum.Int64? int64FromInt(int? value) {
  if (value == null) return null;
  return $fixnum.Int64(value);
}

extension MealInfoCopyWith on MealInfo {
  int? get localIdValue => hasLocalId() ? localId.toInt() : null;
  String? get clientIdValue => hasClientId() ? clientId : null;
  DateTime? get timestampDateTime =>
      hasTimestamp() ? timestampToLocalDateTime(timestamp) : null;

  MealInfo copyWith({
    String? clientId,
    int? localId,
    String? mealName,
    String? mealQuantity,
    MealType? mealType,
    int? calories,
    int? protein,
    int? carbs,
    int? fat,
    int? fiber,
    DateTime? timestamp,
    String? imageUrl,
    HealthScore? healthScore,
    String? healthScoreReason,
    bool forceIdNull = false,
  }) {
    final copy = deepCopy();
    if (forceIdNull) {
      copy.clearLocalId();
      copy.clearClientId();
    } else {
      if (clientId != null) copy.clientId = clientId;
      if (localId != null) copy.localId = $fixnum.Int64(localId);
    }
    if (mealName != null) copy.mealName = mealName;
    if (mealQuantity != null) copy.mealQuantity = mealQuantity;
    if (mealType != null) copy.mealType = mealType;
    if (calories != null) copy.calories = calories;
    if (protein != null) copy.protein = protein;
    if (carbs != null) copy.carbs = carbs;
    if (fat != null) copy.fat = fat;
    if (fiber != null) copy.fiber = fiber;
    if (timestamp != null) {
      copy.timestamp = dateTimeToTimestamp(timestamp);
    }
    if (imageUrl != null) {
      copy.imageUrl = imageUrl;
    } else if (forceIdNull && !hasImageUrl()) {
      copy.clearImageUrl();
    }
    if (healthScore != null) {
      copy.healthScore = healthScore;
    } else if (forceIdNull && !hasHealthScore()) {
      copy.clearHealthScore();
    }
    if (healthScoreReason != null) {
      copy.healthScoreReason = healthScoreReason;
    } else if (forceIdNull && !hasHealthScoreReason()) {
      copy.clearHealthScoreReason();
    }
    return copy;
  }

  MealInfo copyWithFields({
    String? clientId,
    int? localId,
    String? mealName,
    String? mealQuantity,
    MealType? mealType,
    int? calories,
    int? protein,
    int? carbs,
    int? fat,
    int? fiber,
    DateTime? timestamp,
    String? imageUrl,
    HealthScore? healthScore,
    String? healthScoreReason,
    bool clearImageUrl = false,
    bool clearHealthScore = false,
    bool clearHealthScoreReason = false,
  }) {
    final copy = deepCopy();
    if (clientId != null) copy.clientId = clientId;
    if (localId != null) copy.localId = $fixnum.Int64(localId);
    if (mealName != null) copy.mealName = mealName;
    if (mealQuantity != null) copy.mealQuantity = mealQuantity;
    if (mealType != null) copy.mealType = mealType;
    if (calories != null) copy.calories = calories;
    if (protein != null) copy.protein = protein;
    if (carbs != null) copy.carbs = carbs;
    if (fat != null) copy.fat = fat;
    if (fiber != null) copy.fiber = fiber;
    if (timestamp != null) {
      copy.timestamp = dateTimeToTimestamp(timestamp);
    }
    if (clearImageUrl) copy.clearImageUrl();
    if (imageUrl != null) copy.imageUrl = imageUrl;
    if (clearHealthScore) copy.clearHealthScore();
    if (healthScore != null) copy.healthScore = healthScore;
    if (clearHealthScoreReason) copy.clearHealthScoreReason();
    if (healthScoreReason != null) copy.healthScoreReason = healthScoreReason;
    return copy;
  }
}

extension UserProfileCopyWith on UserProfile {
  DateTime? get dateOfBirthDateTime =>
      hasDateOfBirth() ? timestampToLocalDateTime(dateOfBirth) : null;

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
      copy.dateOfBirth = dateTimeToTimestamp(dateOfBirth);
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
      copy.dateOfBirth = dateTimeToTimestamp(dateOfBirth);
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
    final dob = dateOfBirthDateTime;
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
