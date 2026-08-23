import 'dart:async';
import 'dart:developer';

import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:calorify/core/providers/home_providers.dart'
    hide databaseInterfaceProvider;
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
  PipelineResultData? analysisSnapshot,
}) async {
  final loggedAt = DateTime.now();
  final container = ProviderScope.containerOf(context, listen: false);
  final database = container.read(databaseInterfaceProvider);

  await database.logMeal(
    mealInfo,
    analysisId: analysisId,
    analysisSnapshot: analysisSnapshot,
    loggedAt: loggedAt,
  );

  // The database committed this mutation together with a durable outbox row.
  // Try immediately; connectivity failures remain queued for startup retry.
  unawaited(() async {
    try {
      await container.read(mealLogSyncServiceProvider).syncPending();
    } on Object catch (error, stackTrace) {
      log(
        'Unable to start meal log synchronization',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }());

  if (!context.mounted) return;
  await _syncDataToHealthConnect(context);
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

Future<bool> _syncDataToHealthConnect(BuildContext context) async {
  final syncService = ProviderScope.containerOf(
    context,
    listen: false,
  ).read(healthConnectSyncServiceProvider);

  try {
    final result = await syncService.syncPending();
    if (result.failed > 0) throw Exception(t.health.syncFailed);

    if (!context.mounted) return false;
    if (result.succeeded > 0) {
      showFlushbar(t.health.mealSynced, context: context);
    }

    return result.succeeded > 0;
  } on Exception catch (e) {
    if (!context.mounted) return false;
    showFlushbar('$e', context: context);
    return false;
  }
}
