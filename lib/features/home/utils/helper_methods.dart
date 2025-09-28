import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:flutter/material.dart';

Future<void> logMeal(BuildContext context, MealInfo mealInfo) async {
  await appDb.logMeal(mealInfo);
  if (!context.mounted) return;
  await _writeDataToHealthConnect(context, mealInfo);
}

Future<bool> _writeDataToHealthConnect(
  BuildContext context,
  MealInfo mealInfo,
) async {
  try {
    final isSuccess = await HealthService.instance.writeMealData(mealInfo);
    if (!isSuccess) throw Exception('Could not sync to Health Connect');

    if (!context.mounted) return false;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(snack('Meal synced with Health Connect'));

    return isSuccess;
  } on Exception catch (e) {
    if (!context.mounted) return false;
    ScaffoldMessenger.of(context).showSnackBar(snack('$e'));
    return false;
  }
}

SnackBar snack(String message) => SnackBar(content: Text(message));
