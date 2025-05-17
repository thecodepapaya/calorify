import 'package:flutter/foundation.dart';
import 'package:health/health.dart';

@immutable
class MealInfo {
  final bool mealIdentified;
  final String mealName;
  final String mealQuantity;
  final MealType mealType;
  final int calories;
  final int calorieConfidence;
  final int protein;
  final int carbs;
  final int fat;
  final int fiber;
  final String tip;

  const MealInfo({
    required this.mealIdentified,
    required this.mealName,
    required this.mealQuantity,
    required this.mealType,
    required this.calories,
    required this.calorieConfidence,
    required this.protein,
    required this.carbs,
    required this.fat,
    required this.fiber,
    required this.tip,
  });

  factory MealInfo.fromJson(Map<String, dynamic> json) {
    return MealInfo(
      mealIdentified: json['meal_identified'] as bool,
      mealName: json['meal_name'] as String,
      mealQuantity: json['meal_quantity'] as String,
      mealType: _mealTypeFromString(json['meal_type'] as String),
      calories: (json['calories'] as num).toInt(),
      calorieConfidence: (json['calorie_confidence'] as num).toInt(),
      protein: (json['protein'] as num).toInt(),
      carbs: (json['carbs'] as num).toInt(),
      fat: (json['fat'] as num).toInt(),
      fiber: (json['fiber'] as num).toInt(),
      tip: json['tip'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'meal_identified': mealIdentified,
      'meal_name': mealName,
      'meal_quantity': mealQuantity,
      'meal_type': mealType.name,
      'calories': calories,
      'calorie_confidence': calorieConfidence,
      'protein': protein,
      'carbs': carbs,
      'fat': fat,
      'fiber': fiber,
      'tip': tip,
    };
  }

  static MealType _mealTypeFromString(String type) {
    return MealType.values.firstWhere(
      (e) => e.name == type.toUpperCase(),
      orElse: () => MealType.UNKNOWN,
    );
  }
}
