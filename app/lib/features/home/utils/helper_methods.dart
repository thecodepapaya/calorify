import 'dart:async';

import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/feedback_rating_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:models/models.dart';
import 'package:services/services.dart';

export 'package:services/services.dart' show showFlushbar;

Future<void> logMeal(
  BuildContext context,
  Meal mealInfo, {
  BuildContext? parentContext,
  String? analysisId,
}) async {
  final loggedAt = DateTime.now();
  final container = ProviderScope.containerOf(context, listen: false);
  final database = container.read(databaseInterfaceProvider);
  final foodRepository = container.read(foodRepositoryProvider);

  await database.logMeal(mealInfo, analysisId: analysisId);

  // Best-effort confirmation to the backend for V2 meals.
  // Never blocks the UI — failures are silently ignored.
  if (analysisId != null && analysisId.isNotEmpty) {
    unawaited(
      foodRepository
          .confirmMealLogV2(
            analysisId: analysisId,
            meal: mealInfo,
            loggedAt: loggedAt,
          )
          .catchError((_) {}),
    );
  }

  if (!context.mounted) return;
  await _writeDataToHealthConnect(context, mealInfo);
  if (!context.mounted) return;
  final feedbackContext =
      parentContext ?? Navigator.of(context).overlay?.context;
  if (feedbackContext != null) {
    unawaited(maybeShowFeedbackSheetAfterMealSaved(feedbackContext));
  }
}

/// Checks eligibility (pref not shown + 5 meals or 3+ meals across 2+ days)
/// and shows the feedback sheet if eligible. Waits for the meal sheet to close
/// before showing so the feedback sheet is not hidden behind it.
Future<void> maybeShowFeedbackSheetAfterMealSaved(BuildContext context) async {
  final db = ProviderScope.containerOf(
    context,
    listen: false,
  ).read(databaseInterfaceProvider);
  if (await db.hasSeenFeedbackSheet()) return;
  final meals = await db.getLatestMealsForFeedbackEligibility(limit: 5);
  final distinctDays =
      meals
          .map(
            (m) => DateTime(m.dateTime.year, m.dateTime.month, m.dateTime.day),
          )
          .toSet()
          .length;

  final eligible =
      meals.length >= 5 || (meals.length >= 3 && distinctDays >= 2);
  if (!eligible) return;
  // Let the meal tip sheet close first so the feedback sheet is in the foreground.
  await Future.delayed(const Duration(milliseconds: 800));
  if (!context.mounted) return;
  await showFeedbackRatingSheet(context);
}

Future<bool> _writeDataToHealthConnect(
  BuildContext context,
  Meal mealInfo,
) async {
  final healthService = ProviderScope.containerOf(
    context,
    listen: false,
  ).read(healthServiceProvider);
  if (!healthService.isAuthorized) return false;

  try {
    final isSuccess = await healthService.writeMealData(mealInfo);
    if (!isSuccess) throw Exception(t.health.syncFailed);

    if (!context.mounted) return false;
    showFlushbar(t.health.mealSynced, context: context);

    return isSuccess;
  } on Exception catch (e) {
    if (!context.mounted) return false;
    showFlushbar('$e', context: context);
    return false;
  }
}
