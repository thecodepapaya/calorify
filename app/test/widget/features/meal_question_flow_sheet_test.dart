import 'package:calorify/features/home/widgets/bottom_sheet/meal_question_flow_sheet.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_question_option_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:i18n/i18n.dart';
import 'package:models/models.dart';

import '../../helpers/test_helpers.dart';
import '../../setup/all_tests.dart';

void main() {
  setUpAll(setupAllTests);

  Future<void> openPipelineFlow(
    WidgetTester tester,
    List<PipelineClarification> clarifications,
    ValueChanged<Future<List<MealClarificationAnswer>?>> onFuture,
  ) async {
    await tester.pumpWidget(
      wrapWithProviders(
        Builder(
          builder:
              (context) => ElevatedButton(
                onPressed: () {
                  onFuture(
                    showMealQuestionFlowFromPipeline(
                      context: context,
                      clarifications: clarifications,
                    ),
                  );
                },
                child: const Text('Open'),
              ),
        ),
      ),
    );
    await tester.tap(find.text('Open'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 300));
  }

  testWidgets(
    'COUNT_QUESTION and size question render in one sheet and return id answers',
    (tester) async {
      final clarifications = [
        PipelineClarification(
          clarificationId: 'clr_roti_count',
          rowId: 'roti',
          ingredientName: 'roti',
          portionKind: PortionKind.COUNT_QUESTION,
          question: 'How many rotis?',
          defaultOptionId: '2',
          options: [
            PipelineClarificationOption(optionId: '1', label: '1'),
            PipelineClarificationOption(optionId: '2', label: '2'),
            PipelineClarificationOption(optionId: '3', label: '3'),
            PipelineClarificationOption(optionId: '4', label: '4'),
          ],
        ),
        PipelineClarification(
          clarificationId: 'clr_roti',
          rowId: 'roti',
          ingredientName: 'roti',
          portionKind: PortionKind.COUNT,
          question: 'How big were each of your 4 rotis?',
          defaultOptionId: 'regular',
          options: [
            PipelineClarificationOption(
              optionId: 'thin',
              label: 'Thin',
              detail: '~ 25g each',
            ),
            PipelineClarificationOption(
              optionId: 'regular',
              label: 'Regular',
              detail: '~ 35g each',
            ),
            PipelineClarificationOption(
              optionId: 'thick',
              label: 'Thick',
              detail: '~ 45g each',
            ),
          ],
        ),
      ];

      late Future<List<MealClarificationAnswer>?> answersFuture;
      await openPipelineFlow(
        tester,
        clarifications,
        (future) => answersFuture = future,
      );

      expect(find.text('How many rotis?'), findsOneWidget);
      await tester.ensureVisible(find.byType(MealQuestionOptionTile).at(3));
      await tester.tap(find.byType(MealQuestionOptionTile).at(3));
      await tester.pump();
      final nextButton = find.widgetWithText(
        ElevatedButton,
        t.meal.questionFlow.next,
      );
      expect(tester.widget<ElevatedButton>(nextButton).onPressed, isNotNull);
      await tester.ensureVisible(nextButton);
      await tester.tap(nextButton);
      // _fadeThen awaits AnimationController.reverse() (200ms) then setStates the
      // index advance. Pump once for the animation, again for the rebuild after
      // the .then microtask, then settle.
      await tester.pumpAndSettle();

      expect(find.text('How big were each of your 4 rotis?'), findsOneWidget);
      expect(find.text('~ 35g each'), findsOneWidget);
      await tester.ensureVisible(find.byType(MealQuestionOptionTile).at(2));
      await tester.tap(find.byType(MealQuestionOptionTile).at(2));
      await tester.pump();
      final continueButton = find.widgetWithText(
        ElevatedButton,
        t.meal.questionFlow.continueLabel,
      );
      expect(
        tester.widget<ElevatedButton>(continueButton).onPressed,
        isNotNull,
      );
      await tester.ensureVisible(continueButton);
      await tester.tap(continueButton);
      await tester.pumpAndSettle();

      final answers = await answersFuture;
      expect(answers, hasLength(2));
      expect(answers![0].clarificationId, 'clr_roti_count');
      expect(answers[0].selectedOptionId, '4');
      expect(answers[1].clarificationId, 'clr_roti');
      expect(answers[1].selectedOptionId, 'thick');
    },
  );
}
