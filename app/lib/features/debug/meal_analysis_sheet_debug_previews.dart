import 'dart:async';
import 'dart:typed_data';

import 'package:calorify/features/home/widgets/bottom_sheet/meal_analysis_sheet.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';

const String _kMockAnalysisId = 'debug-ui-preview';

/// Fake streams stay open on the last frame until the preview sheet is closed.
/// Production controllers correctly treat an early stream close as a failure.
Stream<T> _previewEvents<T>(Iterable<T> events) {
  return Stream<T>.multi((sink) {
    for (final event in events) {
      sink.add(event);
    }
  });
}

Future<void> previewMealAnalysisSheetStartedOnly(BuildContext context) {
  return showDebugMealAnalysisPipelineSheet(
    context: context,
    startAnalysis:
        (_, _) async => _previewEvents([
          MealAnalysisPipelineEvent(
            step: PipelineStep.STARTED,
            analysisId: _kMockAnalysisId,
          ),
        ]),
  );
}

Future<void> previewMealAnalysisSheetDecomposition(BuildContext context) {
  return showDebugMealAnalysisPipelineSheet(
    context: context,
    startAnalysis:
        (_, _) async => _previewEvents([
          MealAnalysisPipelineEvent(
            step: PipelineStep.STARTED,
            analysisId: _kMockAnalysisId,
          ),
          MealAnalysisPipelineEvent(
            step: PipelineStep.DECOMPOSITION,
            analysisId: _kMockAnalysisId,
            decomposition: PipelineDecompositionData(
              analysisId: _kMockAnalysisId,
              mealName: 'Mediterranean grain bowl',
              confidence: 0.81,
              ingredients: [
                PipelineDecomposedIngredient(rawName: 'Chickpeas'),
                PipelineDecomposedIngredient(rawName: 'Farro'),
                PipelineDecomposedIngredient(rawName: 'Cucumber'),
                PipelineDecomposedIngredient(rawName: 'Cherry tomatoes'),
                PipelineDecomposedIngredient(rawName: 'Red onion'),
                PipelineDecomposedIngredient(rawName: 'Feta'),
                PipelineDecomposedIngredient(rawName: 'Kalamata olives'),
                PipelineDecomposedIngredient(rawName: 'Parsley'),
                PipelineDecomposedIngredient(rawName: 'Mint'),
                PipelineDecomposedIngredient(rawName: 'Lemon juice'),
                PipelineDecomposedIngredient(rawName: 'Olive oil'),
                PipelineDecomposedIngredient(rawName: 'Sumac'),
                PipelineDecomposedIngredient(rawName: 'Za\'atar'),
                PipelineDecomposedIngredient(rawName: 'Radish'),
                PipelineDecomposedIngredient(rawName: 'Roasted red pepper'),
              ],
            ),
          ),
        ]),
  );
}

Future<void> previewMealAnalysisSheetIngredients(BuildContext context) {
  return showDebugMealAnalysisPipelineSheet(
    context: context,
    startAnalysis:
        (_, _) async => _previewEvents([
          MealAnalysisPipelineEvent(
            step: PipelineStep.STARTED,
            analysisId: _kMockAnalysisId,
          ),
          MealAnalysisPipelineEvent(
            step: PipelineStep.DECOMPOSITION,
            analysisId: _kMockAnalysisId,
            decomposition: PipelineDecompositionData(
              analysisId: _kMockAnalysisId,
              mealName: 'Chicken tikka with rice',
              confidence: 0.77,
              ingredients: [
                PipelineDecomposedIngredient(rawName: 'Chicken'),
                PipelineDecomposedIngredient(rawName: 'Basmati rice'),
              ],
            ),
          ),
          MealAnalysisPipelineEvent(
            step: PipelineStep.INGREDIENTS,
            analysisId: _kMockAnalysisId,
            ingredientsStep: PipelineIngredientsData(
              analysisId: _kMockAnalysisId,
              ingredients: [
                PipelineResolvedIngredient(
                  rawName: 'chicken thigh',
                  canonicalName: 'Chicken, thigh, grilled',
                ),
                PipelineResolvedIngredient(
                  rawName: 'basmati',
                  canonicalName: 'Rice, white, cooked',
                ),
                PipelineResolvedIngredient(
                  rawName: 'raita',
                  canonicalName: 'Yogurt dip',
                ),
              ],
            ),
          ),
        ]),
  );
}

/// Pipeline phase index 2 → UI shows **3/4** ([progressCheck]). Uses UNCERTAINTY with
/// no clarification request so the sheet does not dismiss (same listener rules as production).
Future<void> previewMealAnalysisSheetProgressStep3(BuildContext context) {
  return showDebugMealAnalysisPipelineSheet(
    context: context,
    startAnalysis:
        (_, _) async => _previewEvents([
          MealAnalysisPipelineEvent(
            step: PipelineStep.STARTED,
            analysisId: _kMockAnalysisId,
          ),
          MealAnalysisPipelineEvent(
            step: PipelineStep.DECOMPOSITION,
            analysisId: _kMockAnalysisId,
            decomposition: PipelineDecompositionData(
              analysisId: _kMockAnalysisId,
              mealName: 'Garden salad with grilled tofu',
              confidence: 0.72,
              ingredients: [
                PipelineDecomposedIngredient(rawName: 'Tofu'),
                PipelineDecomposedIngredient(rawName: 'Mixed greens'),
              ],
            ),
          ),
          MealAnalysisPipelineEvent(
            step: PipelineStep.INGREDIENTS,
            analysisId: _kMockAnalysisId,
            ingredientsStep: PipelineIngredientsData(
              analysisId: _kMockAnalysisId,
              ingredients: [
                PipelineResolvedIngredient(
                  rawName: 'tofu',
                  canonicalName: 'Tofu, firm, grilled',
                ),
                PipelineResolvedIngredient(
                  rawName: 'greens',
                  canonicalName: 'Lettuce, mixed',
                ),
              ],
            ),
          ),
          MealAnalysisPipelineEvent(
            step: PipelineStep.UNCERTAINTY,
            analysisId: _kMockAnalysisId,
            uncertainty: PipelineUncertaintyData(
              analysisId: _kMockAnalysisId,
              variancePercent: 22,
              needsClarification: false,
            ),
          ),
        ]),
  );
}

Future<void> previewMealAnalysisSheetWithTextBanner(BuildContext context) {
  const desc =
      'Large iced latte with oat milk and a butter croissant on the side';
  return showDebugMealAnalysisPipelineSheet(
    context: context,
    textDescription: desc,
    startAnalysis:
        (_, _) async => _previewEvents([
          MealAnalysisPipelineEvent(
            step: PipelineStep.STARTED,
            analysisId: _kMockAnalysisId,
          ),
          MealAnalysisPipelineEvent(
            step: PipelineStep.DECOMPOSITION,
            analysisId: _kMockAnalysisId,
            decomposition: PipelineDecompositionData(
              analysisId: _kMockAnalysisId,
              mealName: 'Breakfast coffee & pastry',
              confidence: 0.74,
              ingredients: [
                PipelineDecomposedIngredient(rawName: 'Coffee'),
                PipelineDecomposedIngredient(rawName: 'Croissant'),
              ],
            ),
          ),
        ]),
  );
}

Future<void> previewMealAnalysisSheetWithImageBanner(
  BuildContext context,
  Uint8List imageBytes,
) {
  return showDebugMealAnalysisPipelineSheet(
    context: context,
    imageBytes: imageBytes,
    imageUrl: 'debug://preview',
    startAnalysis:
        (_, _) async => _previewEvents([
          MealAnalysisPipelineEvent(
            step: PipelineStep.STARTED,
            analysisId: _kMockAnalysisId,
          ),
          MealAnalysisPipelineEvent(
            step: PipelineStep.INGREDIENTS,
            analysisId: _kMockAnalysisId,
            ingredientsStep: PipelineIngredientsData(
              analysisId: _kMockAnalysisId,
              ingredients: [
                PipelineResolvedIngredient(
                  rawName: 'greens',
                  canonicalName: 'Mixed salad greens',
                ),
                PipelineResolvedIngredient(
                  rawName: 'tomatoes',
                  canonicalName: 'Tomatoes, cherry',
                ),
              ],
            ),
          ),
        ]),
  );
}
