import 'dart:async';

import 'package:calorify/features/home/utils/meal_analysis_v3_flow.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_analysis_v3_question_sheet.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_analysis_v3_loading_sheet.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_tip_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';
import 'package:widgets/widgets.dart';

import '../../helpers/test_helpers.dart';
import '../../setup/all_tests.dart';

void main() {
  setUpAll(setupAllTests);

  test('V3 progress remains continuous after clarification', () {
    final progress = MealAnalysisV3ProgressController();
    addTearDown(progress.dispose);

    progress.apply(
      const MealAnalysisV3Progress(
        phase: MealAnalysisV3ProgressPhase.check,
        progress: 0.8,
        mealName: 'Roti',
        components: [
          MealAnalysisV3ProgressComponent(
            componentId: 'roti',
            name: 'Roti',
            ingredientNames: ['Whole-wheat flour'],
          ),
        ],
      ),
    );
    progress.apply(
      const MealAnalysisV3Progress(
        phase: MealAnalysisV3ProgressPhase.understand,
        progress: 0.08,
      ),
    );

    expect(progress.value!.progress, 0.8);
    expect(progress.value!.phase, MealAnalysisV3ProgressPhase.check);
    expect(progress.value!.mealName, 'Roti');
    expect(progress.value!.components.single.name, 'Roti');
    expect(progress.value!.components.single.ingredientNames, [
      'Whole-wheat flour',
    ]);

    progress.apply(
      const MealAnalysisV3Progress(
        phase: MealAnalysisV3ProgressPhase.match,
        progress: 0.22,
        mealName: 'Whole-wheat roti',
        components: [
          MealAnalysisV3ProgressComponent(componentId: 'roti', name: 'Roti'),
        ],
      ),
    );
    expect(progress.value!.progress, 0.8);
    expect(progress.value!.mealName, 'Whole-wheat roti');
    expect(progress.value!.components.single.ingredientNames, [
      'Whole-wheat flour',
    ]);

    progress.apply(
      const MealAnalysisV3Progress(
        phase: MealAnalysisV3ProgressPhase.check,
        progress: 0.82,
      ),
    );
    expect(progress.value!.progress, 0.82);
  });

  const countQuestion = MealAnalysisV3PendingQuestion(
    questionId: 'q-count',
    scope: MealAnalysisV3QuestionScope.nutrition,
    target: MealAnalysisV3QuestionTarget(
      componentId: 'roti',
      dimension: 'COUNT',
    ),
    prompt: 'How many rotis?',
    response: MealAnalysisV3NumberResponse(
      unitCode: 'COUNT',
      min: 1,
      max: 6,
      step: 1,
      integerOnly: true,
    ),
    allowUseEstimate: true,
  );
  const mealTypeQuestion = MealAnalysisV3PendingQuestion(
    questionId: 'q-type',
    scope: MealAnalysisV3QuestionScope.mealType,
    target: MealAnalysisV3QuestionTarget(dimension: 'MEAL_TYPE'),
    prompt: 'Which meal was this?',
    response: MealAnalysisV3OptionResponse(
      options: [
        MealAnalysisV3Option(optionId: 'LUNCH', label: 'Lunch'),
        MealAnalysisV3Option(optionId: 'DINNER', label: 'Dinner'),
      ],
    ),
    allowUseEstimate: false,
  );

  testWidgets('V3 loading sheet restores the rich meal analysis presentation', (
    tester,
  ) async {
    final completion = Completer<void>();
    final progress = ValueNotifier<MealAnalysisV3Progress?>(null);
    await tester.pumpWidget(
      wrapWithProviders(
        Builder(
          builder:
              (context) => TextButton(
                onPressed:
                    () => showMealAnalysisV3LoadingSheet(
                      context: context,
                      completion: completion.future,
                      progress: progress,
                      textDescription: 'rice, dal, and yogurt',
                    ),
                child: const Text('Open'),
              ),
        ),
      ),
    );
    await tester.tap(find.text('Open'));
    await tester.pump();

    expect(find.text('Analyzing your meal'), findsOneWidget);
    expect(find.text('"rice, dal, and yogurt"'), findsOneWidget);
    expect(find.byType(LinearProgressIndicator), findsOneWidget);
    expect(find.byType(MacroIconCycleLoader), findsOneWidget);
    expect(find.text('Scanning ingredients…'), findsOneWidget);

    progress.value = const MealAnalysisV3Progress(
      phase: MealAnalysisV3ProgressPhase.match,
      progress: 0.22,
      mealName: 'Dal and rice',
      components: [
        MealAnalysisV3ProgressComponent(componentId: 'dal', name: 'Dal'),
        MealAnalysisV3ProgressComponent(componentId: 'rice', name: 'Rice'),
      ],
    );
    await tester.pump(const Duration(milliseconds: 350));
    expect(find.text('Dal'), findsOneWidget);
    expect(find.text('Rice'), findsOneWidget);
    for (final componentId in ['dal', 'rice']) {
      expect(
        find.descendant(
          of: find.byKey(ValueKey('v3-progress-component-$componentId')),
          matching: find.text('Scanning ingredients…'),
        ),
        findsOneWidget,
      );
    }

    progress.value = const MealAnalysisV3Progress(
      phase: MealAnalysisV3ProgressPhase.match,
      progress: 0.34,
      mealName: 'Dal and rice',
      components: [
        MealAnalysisV3ProgressComponent(
          componentId: 'dal',
          name: 'Dal',
          ingredientNames: ['Lentils', 'Ghee'],
        ),
        MealAnalysisV3ProgressComponent(
          componentId: 'rice',
          name: 'Rice',
          ingredientNames: ['Basmati rice'],
        ),
      ],
    );
    await tester.pump(const Duration(milliseconds: 350));
    expect(find.text('Dal and rice'), findsOneWidget);
    expect(find.text('Looking up ingredient nutrition'), findsOneWidget);
    expect(find.text('Dal'), findsWidgets);
    expect(find.text('Rice'), findsWidgets);
    expect(find.text('• Lentils   • Ghee'), findsOneWidget);
    expect(find.text('• Basmati rice'), findsOneWidget);
    final dalComponent = find.byKey(
      const ValueKey('v3-progress-component-dal'),
    );
    final componentRows = tester.widgetList<Row>(
      find.descendant(
        of: dalComponent,
        matching: find.byKey(const ValueKey('v3-progress-component-row')),
      ),
    );
    expect(componentRows, isNotEmpty);
    for (final componentRow in componentRows) {
      expect(componentRow.crossAxisAlignment, CrossAxisAlignment.baseline);
      expect(componentRow.textBaseline, TextBaseline.alphabetic);
    }
    expect(
      find.descendant(
        of: dalComponent,
        matching: find.byKey(const ValueKey('v3-progress-ingredients')),
      ),
      findsWidgets,
    );
    expect(
      tester
          .widget<LinearProgressIndicator>(find.byType(LinearProgressIndicator))
          .value,
      0.34,
    );

    completion.complete();
    await tester.pumpAndSettle();
    expect(find.text('Analyzing your meal'), findsNothing);
    progress.dispose();
  });

  testWidgets(
    'V3 sheet requires explicit answers and returns one atomic bundle',
    (tester) async {
      late Future<MealAnalysisV3AnswerBundle?> result;
      await tester.pumpWidget(
        wrapWithProviders(
          Builder(
            builder:
                (context) => TextButton(
                  onPressed: () {
                    result = showMealAnalysisV3QuestionSheet(
                      context: context,
                      bundle: const MealAnalysisV3QuestionBundle(
                        bundleRevision: 4,
                        nutritionQuestions: [countQuestion],
                        mealTypeQuestion: mealTypeQuestion,
                      ),
                    );
                  },
                  child: const Text('Open'),
                ),
          ),
        ),
      );
      await tester.tap(find.text('Open'));
      await tester.pumpAndSettle();

      final continueFinder = find.byKey(const ValueKey('v3-question-continue'));
      expect(
        tester
            .widget<ElevatedButton>(
              find.descendant(
                of: continueFinder,
                matching: find.byType(ElevatedButton),
              ),
            )
            .onPressed,
        isNull,
      );

      await tester.enterText(
        find.byKey(const ValueKey('v3-number-input')),
        '2.5',
      );
      await tester.pump();
      expect(find.text('Enter a value in the allowed range'), findsOneWidget);

      await tester.tap(find.byKey(const ValueKey('v3-use-estimate')));
      await tester.pump();
      await tester.tap(continueFinder);
      await tester.pumpAndSettle();

      expect(find.text('Which meal was this?'), findsOneWidget);
      expect(find.byKey(const ValueKey('v3-use-estimate')), findsNothing);
      await tester.tap(find.byKey(const ValueKey('v3-option-DINNER')));
      await tester.pump();
      await tester.tap(continueFinder);
      await tester.pumpAndSettle();

      final bundle = await result;
      expect(bundle!.bundleRevision, 4);
      expect(bundle.answers, hasLength(2));
      expect(bundle.answers.first, isA<MealAnalysisV3EstimateAnswer>());
      expect(
        (bundle.answers.last as MealAnalysisV3OptionAnswer).optionId,
        'DINNER',
      );
    },
  );

  testWidgets('V3 result renders serving text once and calorie interval', (
    tester,
  ) async {
    final pipelineContext = MealAnalysisPipelineSessionContext(
      result: PipelineResultData(
        analysisId: 'analysis-1',
        mealName: 'Dal and rice',
        quantity: '1 bowl + 1 serving',
        mealType: MealType.LUNCH,
        macros: PipelineMacros(calories: 520),
      ),
      textDescription: 'dal and rice',
    );
    const v3Result = MealAnalysisV3CompleteResult(
      mealName: 'Dal and rice',
      servingSizeText: '1 bowl + 1 serving',
      tip: '',
      mealType: 'LUNCH',
      macros: MealAnalysisV3MacroPoints(
        calories: 520,
        protein: 18,
        carbs: 82,
        fat: 12,
        fiber: 9,
      ),
      macroRanges: MealAnalysisV3MacroRanges(
        calories: MealAnalysisV3Range(min: 470, max: 590),
        protein: MealAnalysisV3Range(min: 16, max: 21),
        carbs: MealAnalysisV3Range(min: 74, max: 91),
        fat: MealAnalysisV3Range(min: 9, max: 17),
        fiber: MealAnalysisV3Range(min: 7, max: 11),
      ),
      components: [],
      receipt: {},
    );

    await tester.pumpWidget(
      wrapWithProviders(
        Builder(
          builder:
              (context) => TextButton(
                onPressed:
                    () => showMealTip(
                      context: context,
                      purpose: MealDetailsSheetPurpose.mealAddition,
                      mealDetectionResult:
                          pipelineContext.toMealDetectionResult(),
                      v3Result: v3Result,
                      previewOnly: true,
                    ),
                child: const Text('Open'),
              ),
        ),
      ),
    );
    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();

    expect(find.text('1 bowl + 1 serving'), findsOneWidget);
    expect(find.byKey(const ValueKey('v3-calorie-range')), findsOneWidget);
    expect(find.text('Estimated range: 470–590 kcal'), findsOneWidget);
  });
}
