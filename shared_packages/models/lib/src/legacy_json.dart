import 'package:models/models.dart';
import 'package:utils/utils.dart';

LoggedMeal mealInfoFromLegacyJson(Map<String, dynamic> json) {
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

  final calories = normalized['calories'];

  return LoggedMeal(
    clientId: normalized['client_id'] as int? ?? 0,
    meal: Meal(
      name: normalized['meal_name'] as String? ?? '',
      quantity: normalized['meal_quantity'] as String? ?? '',
      type: mealTypeFromLegacyName(normalized['meal_type'] as String?),
      macros: MealMacro(
        calories: calories is int ? calories : (calories as num?)?.round() ?? 0,
        protein: (normalized['protein'] as num?)?.round() ?? 0,
        carbs: (normalized['carbs'] as num?)?.round() ?? 0,
        fat: (normalized['fat'] as num?)?.round() ?? 0,
        fiber: (normalized['fiber'] as num?)?.round() ?? 0,
      ),
      health: MealHealth(
        healthScore: healthScoreFromLegacyName(
          normalized['health_score'] as String?,
        ),
        healthScoreReason: normalized['health_score_reason'] as String?,
      ),
    ),
    createdAt: timestamp != null ? dateTimeToIso8601String(timestamp) : null,
    metadata:
        normalized['image_url'] != null
            ? MealMetadata(imageUrl: normalized['image_url'] as String)
            : null,
  );
}

Map<String, dynamic> mealInfoToLegacyJson(LoggedMeal loggedMeal) {
  final json = <String, dynamic>{
    'client_id': loggedMeal.hasClientId() ? loggedMeal.clientId : 0,
    'meal_name': loggedMeal.meal.name,
    'meal_quantity': loggedMeal.meal.quantity,
    'meal_type': loggedMeal.meal.type.legacyName,
    'calories': loggedMeal.meal.macros.calories,
    'protein': loggedMeal.meal.macros.protein,
    'carbs': loggedMeal.meal.macros.carbs,
    'fat': loggedMeal.meal.macros.fat,
    'fiber': loggedMeal.meal.macros.fiber,
    'timestamp':
        loggedMeal.hasCreatedAt()
            ? loggedMeal.createdAt
            : dateTimeToIso8601String(DateTime.now()),
  };

  if (loggedMeal.hasMetadata() && loggedMeal.metadata.hasImageUrl()) {
    json['image_url'] = loggedMeal.metadata.imageUrl;
  }
  if (loggedMeal.meal.hasHealth()) {
    json['health_score'] = loggedMeal.meal.health.healthScore.legacyName;
  }
  if (loggedMeal.meal.health.hasHealthScoreReason()) {
    json['health_score_reason'] = loggedMeal.meal.health.healthScoreReason;
  }
  return json;
}

FavoriteMeal favoriteMealFromLegacyJson(Map<String, dynamic> json) {
  final normalized = Map<String, dynamic>.from(json);
  final mealInfo = normalized['meal_info'];

  return FavoriteMeal(
    clientId: normalized['client_id'] as int? ?? 0,
    loggedMeal:
        mealInfo is Map<String, dynamic>
            ? mealInfoFromLegacyJson(mealInfo)
            : mealInfoFromLegacyJson(normalized),
    favoriteAt: normalized['favorite_at'] as String? ?? '',
    lastUsedAt: normalized['last_used_at'] as String? ?? '',
  );
}

Map<String, dynamic> favoriteMealToLegacyJson(FavoriteMeal favoriteMeal) {
  return {
    'client_id': favoriteMeal.hasClientId() ? favoriteMeal.clientId : 0,
    'favorite_at': favoriteMeal.favoriteAt,
    'last_used_at': favoriteMeal.lastUsedAt,
    'meal_info': mealInfoToLegacyJson(favoriteMeal.loggedMeal),
  };
}

MealDetectionResult mealDetectionResultFromLegacyJson(
  Map<String, dynamic> json,
) {
  return MealDetectionResult(
    mealIdentified: json['meal_identified'] as bool? ?? false,
    calorieConfidence:
        json['calorie_confidence'] as CalorieConfidence? ??
        CalorieConfidence.UNSPECIFIED,
    tip: json['tip'] as String? ?? '',
    meal:
        mealInfoFromLegacyJson(
          json['meal_info'] as Map<String, dynamic>? ?? const {},
        ).meal,
  );
}

Map<String, dynamic> mealDetectionResultToLegacyJson(
  MealDetectionResult result,
) {
  return {
    'meal_identified': result.mealIdentified,
    'calorie_confidence': result.calorieConfidence,
    'tip': result.tip,
    'meal_info': mealInfoToLegacyJson(LoggedMeal(meal: result.meal)),
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
    dateOfBirth: dob != null ? dateTimeToIso8601String(dob) : null,
    weightGoal: weightGoalFromLegacyName(json['weightGoal'] as String?),
    activityLevel: activityLevelFromLegacyName(
      json['activityLevel'] as String?,
    ),
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
    json['dateOfBirth'] = profile.dateOfBirth;
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
