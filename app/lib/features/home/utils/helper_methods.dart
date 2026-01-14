import 'package:models/models.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:i18n/i18n.dart';
import 'package:flutter/material.dart';

Future<void> logMeal(BuildContext context, MealInfo mealInfo) async {
  await DatabaseService.databaseInterface.logMeal(mealInfo);
  if (!context.mounted) return;
  await _writeDataToHealthConnect(context, mealInfo);
}

Future<bool> _writeDataToHealthConnect(
  BuildContext context,
  MealInfo mealInfo,
) async {
  if (!HealthService.instance.isAuthorized) return false;

  try {
    final isSuccess = await HealthService.instance.writeMealData(mealInfo);
    if (!isSuccess) throw Exception(t.health.syncFailed);

    if (!context.mounted) return false;
    ScaffoldMessenger.of(context).showSnackBar(snack(t.health.mealSynced));

    return isSuccess;
  } on Exception catch (e) {
    if (!context.mounted) return false;
    ScaffoldMessenger.of(context).showSnackBar(snack('$e'));
    return false;
  }
}

SnackBar snack(String message) => SnackBar(content: Text(message));
