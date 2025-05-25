// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MealInfo _$MealInfoFromJson(Map<String, dynamic> json) => MealInfo(
  mealName: json['meal_name'] as String,
  mealQuantity: json['meal_quantity'] as String,
  mealType: $enumDecode(_$MealTypeEnumMap, json['meal_type']),
  calories: (json['calories'] as num).toInt(),
  protein: (json['protein'] as num).toInt(),
  carbs: (json['carbs'] as num).toInt(),
  fat: (json['fat'] as num).toInt(),
  fiber: (json['fiber'] as num).toInt(),
  timestamp: DateTime.parse(json['timestamp'] as String),
);

Map<String, dynamic> _$MealInfoToJson(MealInfo instance) => <String, dynamic>{
  'meal_name': instance.mealName,
  'meal_quantity': instance.mealQuantity,
  'meal_type': _$MealTypeEnumMap[instance.mealType]!,
  'calories': instance.calories,
  'protein': instance.protein,
  'carbs': instance.carbs,
  'fat': instance.fat,
  'fiber': instance.fiber,
  'timestamp': instance.timestamp.toIso8601String(),
};

const _$MealTypeEnumMap = {
  MealType.breakfast: 'breakfast',
  MealType.lunch: 'lunch',
  MealType.dinner: 'dinner',
  MealType.snack: 'snack',
  MealType.unknown: 'unknown',
};
