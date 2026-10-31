import 'package:calorify/features/home/utils/meal_analysis_flow.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_analysis_v3_question_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

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


}
