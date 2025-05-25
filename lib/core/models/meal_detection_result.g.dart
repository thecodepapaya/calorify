// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_detection_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MealDetectionResult _$MealDetectionResultFromJson(Map<String, dynamic> json) =>
    MealDetectionResult(
      mealIdentified: json['meal_identified'] as bool,
      calorieConfidence: (json['calorie_confidence'] as num).toInt(),
      tip: json['tip'] as String,
      mealInfo: MealInfo.fromJson(json['meal_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MealDetectionResultToJson(
  MealDetectionResult instance,
) => <String, dynamic>{
  'meal_identified': instance.mealIdentified,
  'calorie_confidence': instance.calorieConfidence,
  'tip': instance.tip,
  'meal_info': instance.mealInfo,
};
