import 'package:flutter/foundation.dart';
import 'package:health/health.dart';

@immutable
class Meal {
  const Meal({
    required this.mealType,
    required this.caloriesInKcal,
    required this.proteinInGrams,
    required this.carbsInGrams,
    required this.fatInGrams,
    required this.fiberInGrams,
    required this.startTime,
    required this.endTime,
  });

  final double caloriesInKcal;
  final double proteinInGrams;
  final double carbsInGrams;
  final double fatInGrams;
  final double fiberInGrams;
  final DateTime startTime;
  final DateTime endTime;
  final MealType mealType;
}
