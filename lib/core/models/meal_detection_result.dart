import 'package:calorify/core/models/meal_model.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'meal_detection_result.g.dart';

@immutable
@JsonSerializable()
class MealDetectionResult {
  @JsonKey(name: 'meal_identified')
  final bool mealIdentified;
  @JsonKey(name: 'calorie_confidence')
  final int calorieConfidence;
  @JsonKey(name: 'tip')
  final String tip;
  @JsonKey(name: 'meal_info')
  final MealInfo mealInfo;

  const MealDetectionResult({
    required this.mealIdentified,
    required this.calorieConfidence,
    required this.tip,
    required this.mealInfo,
  });

  factory MealDetectionResult.fromJson(Map<String, dynamic> json) =>
      _$MealDetectionResultFromJson(json);

  Map<String, dynamic> toJson() => _$MealDetectionResultToJson(this);

  @override
  String toString() {
    return 'MealDetectionResult(mealIdentified: $mealIdentified, '
        'calorieConfidence: $calorieConfidence, '
        'tip: $tip, '
        'mealInfo: $mealInfo)';
  }
}
