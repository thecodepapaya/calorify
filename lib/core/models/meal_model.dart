import 'package:calorify/core/models/meal_type.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'meal_model.g.dart';

@immutable
@JsonSerializable()
class MealInfo {
  @JsonKey(name: 'meal_name')
  final String mealName;
  @JsonKey(name: 'meal_quantity')
  final String mealQuantity;
  @JsonKey(name: 'meal_type')
  final MealType mealType;
  @JsonKey(name: 'calories')
  final int calories;
  @JsonKey(name: 'protein')
  final int protein;
  @JsonKey(name: 'carbs')
  final int carbs;
  @JsonKey(name: 'fat')
  final int fat;
  @JsonKey(name: 'fiber')
  final int fiber;
  @JsonKey(name: 'timestamp')
  final DateTime timestamp;

  const MealInfo({
    required this.mealName,
    required this.mealQuantity,
    required this.mealType,
    required this.calories,
    required this.protein,
    required this.carbs,
    required this.fat,
    required this.fiber,
    required this.timestamp,
  });

  factory MealInfo.fromJson(Map<String, dynamic> json) =>
      _$MealInfoFromJson(json);

  Map<String, dynamic> toJson() => _$MealInfoToJson(this);

  @override
  String toString() {
    return 'MealInfo(mealName: $mealName, '
        'mealQuantity: $mealQuantity, '
        'mealType: $mealType, '
        'calories: $calories, '
        'protein: $protein, '
        'carbs: $carbs, '
        'fat: $fat, '
        'fiber: $fiber, '
        'timestamp: $timestamp)';
  }
}
