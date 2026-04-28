import 'dart:async';

import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/core/repositories/food_repository.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_analysis_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:i18n/i18n.dart';
import 'package:models/models.dart';

import '../../helpers/test_helpers.dart';
import '../../setup/all_tests.dart';

class _FakeFoodRepository extends FoodRepository {
  @override
  Future<List<String>> getMealAnalysisTips({int? count}) async => const [];
}

void main() {
  setUpAll(setupAllTests);

  Future<void> openSheet(
    WidgetTester tester,
    StreamController<MealAnalysisPipelineEvent> controller, {
    String? seedMealName,
  }) async {
    await tester.pumpWidget(
      wrapWithProviders(
        Builder(
          builder:
              (context) => ElevatedButton(
                onPressed:
                    () => showDebugMealAnalysisPipelineSheet(
                      context: context,
                      startAnalysis: () async => controller.stream,
                      seedMealName: seedMealName,
                    ),
                child: const Text('Open'),
              ),
        ),
        overrides: [
          foodRepositoryProvider.overrideWith((ref) => _FakeFoodRepository()),
        ],
      ),
    );
    await tester.tap(find.text('Open'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 500));
  }

  Future<void> pumpEvent(WidgetTester tester) async {
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 700));
  }

  testWidgets(
    'ingredient list upgrades to resolved names and survives empty uncertainty',
    (tester) async {
      final controller = StreamController<MealAnalysisPipelineEvent>();
      addTearDown(controller.close);

      await openSheet(tester, controller);

      controller.add(
        MealAnalysisPipelineEvent(
          step: PipelineStep.DECOMPOSITION,
          analysisId: 'analysis-1',
          decomposition: PipelineDecompositionData(
            analysisId: 'analysis-1',
            mealName: 'Paneer with roti',
            confidence: 0.9,
            ingredients: [
              PipelineDecomposedIngredient(rawName: 'paneer sabzi'),
              PipelineDecomposedIngredient(rawName: 'roti'),
            ],
          ),
        ),
      );
      await pumpEvent(tester);

      expect(find.text('Paneer with roti'), findsOneWidget);
      expect(find.text('paneer sabzi'), findsOneWidget);
      expect(find.text('roti'), findsOneWidget);

      controller.add(
        MealAnalysisPipelineEvent(
          step: PipelineStep.INGREDIENTS,
          analysisId: 'analysis-1',
          ingredientsStep: PipelineIngredientsData(
            analysisId: 'analysis-1',
            mealName: 'Paneer with roti',
            ingredients: [
              PipelineResolvedIngredient(canonicalName: 'Paneer curry'),
              PipelineResolvedIngredient(canonicalName: 'Whole wheat roti'),
            ],
          ),
        ),
      );
      await pumpEvent(tester);

      expect(find.text('Paneer curry'), findsOneWidget);
      expect(find.text('Whole wheat roti'), findsOneWidget);
      expect(find.text('paneer sabzi'), findsNothing);

      controller.add(
        MealAnalysisPipelineEvent(
          step: PipelineStep.UNCERTAINTY,
          analysisId: 'analysis-1',
          uncertainty: PipelineUncertaintyData(
            analysisId: 'analysis-1',
            mealName: 'Paneer with roti',
            variancePercent: 0.05,
            needsClarification: false,
            calorieBand: PipelineCalorieBand(min: 500, max: 540),
          ),
        ),
      );
      await pumpEvent(tester);

      expect(find.text('Paneer curry'), findsOneWidget);
      expect(find.text('Whole wheat roti'), findsOneWidget);
      expect(find.text(t.meal.analysis.ingredientsPending), findsNothing);

      await tester.pumpWidget(const SizedBox.shrink());
    },
  );

  testWidgets('seed meal name is used before replay emits decomposition', (
    tester,
  ) async {
    final controller = StreamController<MealAnalysisPipelineEvent>();
    addTearDown(controller.close);

    await openSheet(tester, controller, seedMealName: 'Paneer with roti');

    expect(find.text('Paneer with roti'), findsOneWidget);

    controller.add(
      MealAnalysisPipelineEvent(
        step: PipelineStep.INGREDIENTS,
        analysisId: 'analysis-2',
        ingredientsStep: PipelineIngredientsData(
          analysisId: 'analysis-2',
          ingredients: [
            PipelineResolvedIngredient(canonicalName: 'Paneer curry'),
          ],
        ),
      ),
    );
    await pumpEvent(tester);

    expect(find.text('Paneer with roti'), findsOneWidget);
    expect(find.text('Paneer curry'), findsOneWidget);

    await tester.pumpWidget(const SizedBox.shrink());
  });
}
