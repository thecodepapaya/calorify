import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:models/src/proto/calorify/models.pb.dart';
import 'package:models/src/proto_extensions.dart';
import 'package:models/src/timestamp_utils.dart';

MealInfo mealInfoFromLegacyJson(Map<String, dynamic> json) {
  final normalized = Map<String, dynamic>.from(json);

  if (normalized['health_score'] is Map<String, dynamic>) {
    final healthScoreObj = normalized['health_score'] as Map<String, dynamic>;
    normalized['health_score'] = healthScoreObj['score'];
    normalized['health_score_reason'] =
        healthScoreObj['reason'] ?? normalized['health_score_reason'];
  }

  DateTime? timestamp;
  final timestampValue = normalized['timestamp'];
  if (timestampValue is DateTime) {
    timestamp = timestampValue;
  } else if (timestampValue is String) {
    timestamp = DateTime.tryParse(timestampValue);
  } else if (timestampValue is int) {
    timestamp = DateTime.fromMillisecondsSinceEpoch(timestampValue);
  }

  final localId = normalized['id'] ?? normalized['local_id'];
  final calories = normalized['calories'];

  return MealInfo(
    clientId: normalized['client_id'] as String?,
    localId: localId is int ? $fixnum.Int64(localId) : null,
    mealName: normalized['meal_name'] as String? ?? '',
    mealQuantity: normalized['meal_quantity'] as String? ?? '',
    mealType: mealTypeFromLegacyName(normalized['meal_type'] as String?),
    calories: calories is int ? calories : (calories as num?)?.round() ?? 0,
    protein: (normalized['protein'] as num?)?.round() ?? 0,
    carbs: (normalized['carbs'] as num?)?.round() ?? 0,
    fat: (normalized['fat'] as num?)?.round() ?? 0,
    fiber: (normalized['fiber'] as num?)?.round() ?? 0,
    timestamp: timestamp != null
        ? dateTimeToTimestamp(timestamp)
        : dateTimeToTimestamp(DateTime.now()),
    imageUrl: normalized['image_url'] as String?,
    healthScore: healthScoreFromLegacyName(
      normalized['health_score'] as String?,
    ),
    healthScoreReason: normalized['health_score_reason'] as String?,
  );
}

Map<String, dynamic> mealInfoToLegacyJson(MealInfo meal) {
  final json = <String, dynamic>{
    'meal_name': meal.mealName,
    'meal_quantity': meal.mealQuantity,
    'meal_type': meal.mealType.legacyName,
    'calories': meal.calories,
    'protein': meal.protein,
    'carbs': meal.carbs,
    'fat': meal.fat,
    'fiber': meal.fiber,
    'timestamp': timestampToIso8601String(meal.timestamp) ?? '',
  };

  if (meal.hasLocalId()) json['id'] = meal.localId.toInt();
  if (meal.hasClientId()) json['client_id'] = meal.clientId;
  if (meal.hasImageUrl()) json['image_url'] = meal.imageUrl;
  if (meal.hasHealthScore()) {
    json['health_score'] = meal.healthScore.legacyName;
  }
  if (meal.hasHealthScoreReason()) {
    json['health_score_reason'] = meal.healthScoreReason;
  }
  return json;
}

MealDetectionResult mealDetectionResultFromLegacyJson(
  Map<String, dynamic> json,
) {
  return MealDetectionResult(
    mealIdentified: json['meal_identified'] as bool? ?? false,
    calorieConfidence: json['calorie_confidence'] as int? ?? 0,
    tip: json['tip'] as String? ?? '',
    mealInfo: mealInfoFromLegacyJson(
      json['meal_info'] as Map<String, dynamic>? ?? const {},
    ),
  );
}

Map<String, dynamic> mealDetectionResultToLegacyJson(
  MealDetectionResult result,
) {
  return {
    'meal_identified': result.mealIdentified,
    'calorie_confidence': result.calorieConfidence,
    'tip': result.tip,
    'meal_info': mealInfoToLegacyJson(result.mealInfo),
  };
}

UserProfile userProfileFromLegacyJson(Map<String, dynamic> json) {
  DateTime? dob;
  final dobValue = json['dateOfBirth'];
  if (dobValue is DateTime) {
    dob = dobValue;
  } else if (dobValue is String) {
    dob = DateTime.tryParse(dobValue);
  } else if (dobValue is int) {
    dob = DateTime.fromMillisecondsSinceEpoch(dobValue);
  }

  return UserProfile(
    height: (json['height'] as num?)?.toDouble(),
    weight: (json['weight'] as num?)?.toDouble(),
    targetWeight: (json['targetWeight'] as num?)?.toDouble(),
    gender: genderFromLegacyName(json['gender'] as String?),
    dateOfBirth:
        dob != null ? dateTimeToTimestamp(dob) : null,
    weightGoal: weightGoalFromLegacyName(json['weightGoal'] as String?),
    activityLevel:
        activityLevelFromLegacyName(json['activityLevel'] as String?),
    heightUnit: unitSystemFromLegacyName(json['heightUnit'] as String?),
    weightUnit: unitSystemFromLegacyName(json['weightUnit'] as String?),
    dailyCalorieGoal: json['dailyCalorieGoal'] as int?,
  );
}

Map<String, dynamic> userProfileToLegacyJson(UserProfile profile) {
  final json = <String, dynamic>{};
  if (profile.hasHeight()) json['height'] = profile.height;
  if (profile.hasWeight()) json['weight'] = profile.weight;
  if (profile.hasTargetWeight()) json['targetWeight'] = profile.targetWeight;
  if (profile.hasGender()) json['gender'] = profile.gender.legacyName;
  if (profile.hasDateOfBirth()) {
    json['dateOfBirth'] = timestampToIso8601String(profile.dateOfBirth) ?? '';
  }
  if (profile.hasWeightGoal()) {
    json['weightGoal'] = profile.weightGoal.legacyName;
  }
  if (profile.hasActivityLevel()) {
    json['activityLevel'] = profile.activityLevel.legacyName;
  }
  if (profile.hasHeightUnit()) {
    json['heightUnit'] = profile.heightUnit.legacyName;
  }
  if (profile.hasWeightUnit()) {
    json['weightUnit'] = profile.weightUnit.legacyName;
  }
  if (profile.hasDailyCalorieGoal()) {
    json['dailyCalorieGoal'] = profile.dailyCalorieGoal;
  }
  return json;
}
