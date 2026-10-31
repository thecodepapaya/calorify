import 'dart:typed_data';
import 'dart:ui';

import 'package:calorify/core/network/network_request_cancellation.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_analysis_sheet.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_analysis_v3_loading_sheet.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_clarification_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:i18n/i18n.dart';
import 'package:models/models.dart';
import 'package:uuid/uuid.dart';

Meal mealFromV3Result(
  MealAnalysisV3CompleteResult result, {
  String? textDescription,
}) {
  return Meal(
    name: result.mealName,
    quantity: result.servingSizeText,
    type: mealTypeFromLegacyName(result.mealType),
    macros: Macros(
      calorie: Measurement(value: result.macros.calories.round()),
      protein: Measurement(value: result.macros.protein.round()),
      carb: Measurement(value: result.macros.carbs.round()),
      fat: Measurement(value: result.macros.fat.round()),
      fiber: Measurement(value: result.macros.fiber.round()),
    ),
    metadata: MealMetadata(
      tip: result.tip,
      mealDescription: textDescription,
    ),
  );
}

typedef MealAnalysisV3Start =
    Future<Stream<MealAnalysisV3Event>> Function(
      String analysisId,
      MealAnalysisV3RequestContext context,
      NetworkRequestCancellation cancellation,
    );

Future<MealAnalysisV3RequestContext> createMealAnalysisV3Context() async {
  final locales = PlatformDispatcher.instance.locales;
  final locale = LocaleSettings.currentLocale.flutterLocale;
  final countryCode =
      locale.countryCode ??
      locales
          .where((item) => item.countryCode != null)
          .firstOrNull
          ?.countryCode ??
      'US';
  String timeZone;
  try {
    timeZone = (await FlutterTimezone.getLocalTimezone()).identifier;
  } on Object {
    timeZone = 'UTC';
  }
  return MealAnalysisV3RequestContext(
    locale: locale.toLanguageTag(),
    countryCode: countryCode.toUpperCase(),
    timeZone: timeZone,
    capturedAt: DateTime.now().toUtc(),
  );
}

Future<bool> showMealAnalysisFlow({
  required BuildContext context,
  required MealAnalysisV3Start start,
  Uint8List? imageBytes,
  String? textDescription,
}) async {
  final analysisId = const Uuid().v4();
  final requestContext = await createMealAnalysisV3Context();
  if (!context.mounted) return false;
  final cancellation = NetworkRequestCancellation();
  final stream = await start(analysisId, requestContext, cancellation);
  if (!context.mounted) return false;
  final progress = MealAnalysisV3ProgressController();

  try {
    final terminal = await _consumeWithLoading(
      context,
      stream,
      progress: progress,
      imageBytes: imageBytes,
      textDescription: textDescription,
    );
    if (!context.mounted || terminal == null) return false;
    switch (terminal.kind) {
      case MealAnalysisV3EventKind.complete:
        final result = terminal.result;
        if (result == null) {
          throw const FormatException('Missing analysis result');
        }
        var finalResult = result;
        final clarifications = result.clarifications;
        if (clarifications != null &&
            clarifications.clarification.isNotEmpty) {
          final answers = await showMealClarificationSheet(
            context: context,
            clarifications: clarifications,
          );
          if (!context.mounted) return false;
          if (answers != null) {
            finalResult = _applyClarificationAnswers(
              result,
              clarifications,
              answers,
            );
          }
        }
        await showMealAnalysisSheet(
          context: context,
          data: MealAnalysisSheetData.fromV3Result(
            result: finalResult,
            analysisId:
                terminal.analysisId.isNotEmpty
                    ? terminal.analysisId
                    : analysisId,
            imageBytes: imageBytes,
            textDescription: textDescription,
          ),
        );
        return true;
      case MealAnalysisV3EventKind.noFood:
      case MealAnalysisV3EventKind.unresolved:
      case MealAnalysisV3EventKind.error:
        throw MealAnalysisV3Exception(terminal.issue);
      case MealAnalysisV3EventKind.needsInput:
      case MealAnalysisV3EventKind.started:
      case MealAnalysisV3EventKind.progress:
        throw const FormatException(
          'Analysis stream ended without a terminal event',
        );
    }
  } finally {
    progress.dispose();
  }
}

/// Backwards compatibility alias
const showMealAnalysisV3Flow = showMealAnalysisFlow;

Future<MealAnalysisV3Event?> _consumeWithLoading(
  BuildContext context,
  Stream<MealAnalysisV3Event> stream, {
  required MealAnalysisV3ProgressController progress,
  Uint8List? imageBytes,
  String? textDescription,
}) async {
  final consumption = () async {
    MealAnalysisV3Event? terminal;
    await for (final event in stream) {
      if (event.kind == MealAnalysisV3EventKind.progress) {
        final update = event.progress;
        if (update == null) continue;
        progress.apply(update);
      } else if (event.kind != MealAnalysisV3EventKind.started) {
        terminal = event;
      }
    }
    return terminal;
  }();
  await showMealAnalysisV3LoadingSheet(
    context: context,
    completion: consumption.then<void>((_) {}),
    progress: progress,
    imageBytes: imageBytes,
    textDescription: textDescription,
  );
  return await consumption;
}

class MealAnalysisV3ProgressController
    extends ValueNotifier<MealAnalysisV3Progress?> {
  MealAnalysisV3ProgressController() : super(null);

  void apply(MealAnalysisV3Progress update) {
    final previous = value;
    final advances = previous == null || update.progress >= previous.progress;
    final incomingComponents = update.components;
    final components = switch ((previous, incomingComponents.isEmpty)) {
      (_, true) => previous?.components ?? const [],
      (final prior?, false)
          when !advances &&
              incomingComponents.every(
                (component) => component.ingredientNames.isEmpty,
              ) =>
        prior.components,
      (final prior?, false) => incomingComponents
          .map((component) {
            final old =
                prior.components
                    .where(
                      (candidate) =>
                          candidate.componentId == component.componentId,
                    )
                    .firstOrNull;
            if (component.ingredientNames.isNotEmpty || old == null) {
              return component;
            }
            return MealAnalysisV3ProgressComponent(
              componentId: component.componentId,
              name: component.name,
              ingredientNames: old.ingredientNames,
            );
          })
          .toList(growable: false),
      (null, false) => incomingComponents,
    };
    value = MealAnalysisV3Progress(
      phase: advances ? update.phase : previous.phase,
      progress: advances ? update.progress : previous.progress,
      mealName: update.mealName ?? previous?.mealName,
      components: components,
    );
  }
}

class MealAnalysisV3Exception implements Exception {
  const MealAnalysisV3Exception(this.issue);

  final MealAnalysisV3TerminalIssue? issue;

  @override
  String toString() => switch (issue?.code) {
    'PROVIDER_UNAVAILABLE' => t.meal.analysis.providerUnavailable,
    'INVALID_MODEL_OUTPUT' => t.meal.analysis.invalidModelOutput,
    'NUTRITION_SERVICE_BUSY' => t.meal.analysis.nutritionServiceBusy,
    'NUTRITION_DATA_UNAVAILABLE' => t.meal.analysis.nutritionDataUnavailable,
    'UNRESOLVED_NUTRITION' => t.meal.analysis.unresolvedNutrition,
    'NO_FOOD' => t.meal.analysis.noFoodTip,
    'ANALYSIS_FAILED' when issue?.message != null => issue!.message!,
    _ => t.meal.analysis.analysisUnavailable,
  };
}

MealAnalysisV3CompleteResult _applyClarificationAnswers(
  MealAnalysisV3CompleteResult result,
  Clarifications clarifications,
  Map<int, int> selectedOptions,
) {
  double deltaCal = 0;
  double deltaCarb = 0;
  double deltaProtein = 0;
  double deltaFat = 0;
  double deltaFiber = 0;

  for (final entry in selectedOptions.entries) {
    final qIdx = entry.key;
    final optIdx = entry.value;
    if (qIdx < clarifications.clarification.length) {
      final clarification = clarifications.clarification[qIdx];
      if (optIdx < clarification.options.length) {
        final opt = clarification.options[optIdx];
        if (opt.hasMacroDelta()) {
          deltaCal += opt.macroDelta.calorie;
          deltaCarb += opt.macroDelta.carb;
          deltaProtein += opt.macroDelta.protein;
          deltaFat += opt.macroDelta.fat;
          deltaFiber += opt.macroDelta.fiber;
        }
      }
    }
  }

  return result.withMacroDeltas(
    deltaCalories: deltaCal,
    deltaCarbs: deltaCarb,
    deltaProtein: deltaProtein,
    deltaFat: deltaFat,
    deltaFiber: deltaFiber,
  );
}
