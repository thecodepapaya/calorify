import 'package:models/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('parses a mixed V3 question bundle and serializes atomic answers', () {
    final event = MealAnalysisV3Event.fromJson({
      'event': 'NEEDS_INPUT',
      'analysisId': 'analysis-1',
      'data': {
        'bundleRevision': 3,
        'nutritionQuestions': [
          {
            'questionId': 'q-count',
            'scope': 'NUTRITION',
            'target': {'componentId': 'roti', 'dimension': 'COUNT'},
            'prompt': 'How many rotis?',
            'response': {
              'kind': 'NUMBER',
              'unitCode': 'COUNT',
              'min': 1,
              'max': 6,
              'step': 1,
              'integerOnly': true,
            },
            'allowUseEstimate': true,
          },
        ],
        'mealTypeQuestion': {
          'questionId': 'q-type',
          'scope': 'MEAL_TYPE',
          'target': {'dimension': 'MEAL_TYPE'},
          'prompt': 'Which meal was this?',
          'response': {
            'kind': 'OPTION',
            'options': [
              {'optionId': 'LUNCH', 'label': 'Lunch'},
              {'optionId': 'DINNER', 'label': 'Dinner'},
            ],
          },
          'allowUseEstimate': false,
        },
      },
    });

    expect(event.kind, MealAnalysisV3EventKind.needsInput);
    expect(event.questions!.questions, hasLength(2));
    expect(
      event.questions!.questions.first.response,
      isA<MealAnalysisV3NumberResponse>(),
    );

    final request = MealAnalysisV3AnswerBundle(
      bundleRevision: event.questions!.bundleRevision,
      answers: const [
        MealAnalysisV3EstimateAnswer(questionId: 'q-count'),
        MealAnalysisV3OptionAnswer(questionId: 'q-type', optionId: 'DINNER'),
      ],
    ).toJson(event.analysisId);

    expect(request['bundleRevision'], 3);
    expect(request['answers'], [
      {'questionId': 'q-count', 'kind': 'USE_ESTIMATE'},
      {'questionId': 'q-type', 'kind': 'OPTION', 'optionId': 'DINNER'},
    ]);
  });

  test(
    'numeric response enforces finite inclusive bounds, step, and integer',
    () {
      const whole = MealAnalysisV3NumberResponse(
        unitCode: 'COUNT',
        min: 1,
        max: 6,
        step: 1,
        integerOnly: true,
      );
      expect(whole.accepts(1), isTrue);
      expect(whole.accepts(6), isTrue);
      expect(whole.accepts(2.5), isFalse);
      expect(whole.accepts(double.nan), isFalse);

      const decimal = MealAnalysisV3NumberResponse(
        unitCode: 'CUP',
        min: 0.5,
        max: 2,
        step: 0.1,
        integerOnly: false,
      );
      expect(decimal.accepts(0.6), isTrue);
      expect(decimal.accepts(0.65), isFalse);
    },
  );

  test('rejects an inverted numeric question range', () {
    expect(
      () => MealAnalysisV3PendingQuestion.fromJson({
        'questionId': 'q1',
        'scope': 'NUTRITION',
        'target': {'dimension': 'COUNT'},
        'prompt': 'How many?',
        'response': {
          'kind': 'NUMBER',
          'unitCode': 'COUNT',
          'min': 3,
          'max': 1,
          'step': 1,
          'integerOnly': true,
        },
        'allowUseEstimate': false,
      }),
      throwsFormatException,
    );
  });

  test('complete result preserves all macro points, ranges, and receipt', () {
    final result = MealAnalysisV3CompleteResult.fromJson({
      'mealName': 'Dal and rice',
      'servingSizeText': '1 bowl + 1 serving',
      'tip': 'Add a side of vegetables.',
      'mealType': {'value': 'LUNCH', 'origin': 'MODEL_INFERRED'},
      'macros': {
        'calories': 520,
        'protein': 18.2,
        'carbs': 82.1,
        'fat': 12.4,
        'fiber': 9.1,
      },
      'macroRanges': {
        'calories': {'min': 470, 'max': 590},
        'protein': {'min': 16, 'max': 21},
        'carbs': {'min': 74, 'max': 91},
        'fat': {'min': 9, 'max': 17},
        'fiber': {'min': 7, 'max': 11},
      },
      'components': [
        {'componentId': 'dal'},
      ],
      'receipt': {
        'workflowVersion': 'meal-analysis-v3-hypothesis',
        'calculationVersion': 'scenario-arithmetic-v1',
        'questionPolicyVersion': 'material-impact-v1',
        'datasetVersions': ['usda-2026'],
      },
    });

    expect(result.macros.fiber, 9.1);
    expect(result.macroRanges.protein.max, 21);
    expect(result.components.single['componentId'], 'dal');
    expect(result.receipt['calculationVersion'], 'scenario-arithmetic-v1');
  });

  test('complete result rejects a point outside its advertised range', () {
    expect(
      () => MealAnalysisV3CompleteResult.fromJson({
        'mealName': 'Meal',
        'servingSizeText': '1 serving',
        'mealType': {'value': 'SNACK'},
        'macros': {
          'calories': 500,
          'protein': 1,
          'carbs': 1,
          'fat': 1,
          'fiber': 1,
        },
        'macroRanges': {
          'calories': {'min': 100, 'max': 400},
          'protein': {'min': 0, 'max': 2},
          'carbs': {'min': 0, 'max': 2},
          'fat': {'min': 0, 'max': 2},
          'fiber': {'min': 0, 'max': 2},
        },
        'components': [{}],
        'receipt': {},
      }),
      throwsFormatException,
    );
  });
}
