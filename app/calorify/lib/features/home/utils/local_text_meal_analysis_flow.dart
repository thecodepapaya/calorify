import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/features/home/utils/meal_analysis_v3_flow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// V3 is cloud-only. The former local proposal/settlement path intentionally
/// no longer participates in production meal analysis.
Future<bool> showRoutedTextMealAnalysisFlow({
  required BuildContext context,
  required String textDescription,
}) {
  final repository = ProviderScope.containerOf(
    context,
    listen: false,
  ).read(foodRepositoryProvider);
  return showMealAnalysisV3Flow(
    context: context,
    textDescription: textDescription,
    start:
        (analysisId, requestContext, cancellation) => repository.analyzeTextV3(
          analysisId: analysisId,
          text: textDescription,
          context: requestContext,
          cancellation: cancellation,
        ),
  );
}
