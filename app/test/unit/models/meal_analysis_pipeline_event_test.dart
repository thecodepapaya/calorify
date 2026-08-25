import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

void main() {
  test('RESULT parses confidence reasons and ignores future fields', () {
    final event = MealAnalysisPipelineEvent.fromJson({
      'step': 'RESULT',
      'data': {
        'analysisId': 'analysis-1',
        'mealName': 'Banana with skim milk',
        'quantity': '1 serving',
        'mealType': 'SNACK',
        'macros': {
          'calories': 159,
          'protein': 8.1,
          'carbs': 33.1,
          'fat': 0.5,
          'fiber': 2.6,
        },
        'calorieConfidence': 'HIGH',
        'calorieBand': {'min': 159, 'max': 159},
        'confidenceReasons': ['llm_nutrition_fallback'],
        'futureBackendField': 'must not break older clients',
      },
    });

    expect(event.step, PipelineStep.RESULT);
    expect(event.result, isNotNull);
    expect(event.result!.macros.calories, 159);
    expect(event.result!.confidenceReasons, ['llm_nutrition_fallback']);
  });

  test('ERROR preserves the retryable recovery signal', () {
    final event = MealAnalysisPipelineEvent.fromJson({
      'step': 'ERROR',
      'data': {
        'analysisId': 'analysis-1',
        'message': 'Analysis is still in progress',
        'retryable': true,
      },
    });

    expect(event.step, PipelineStep.ERROR);
    expect(event.retryable, isTrue);
  });

  test('NO_FOOD parses its typed terminal payload', () {
    final event = MealAnalysisPipelineEvent.fromJson({
      'step': 'NO_FOOD',
      'data': {
        'analysisId': 'analysis-2',
        'outcomeReason': 'No meal was detected.',
        'outcomeConfidence': 0.96,
      },
    });

    expect(event.step, PipelineStep.NO_FOOD);
    expect(event.noFood?.analysisId, 'analysis-2');
    expect(event.noFood?.outcomeReason, 'No meal was detected.');
    expect(event.noFood?.outcomeConfidence, 0.96);
  });
}
