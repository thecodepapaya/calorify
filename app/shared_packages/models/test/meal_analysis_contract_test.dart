import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

void main() {
  test('meal analysis request correlation IDs survive binary round trips', () {
    final textRequest = MealAnalysisTextRequest(
      analysisId: 'analysis-text',
      textDescription: 'Dal and rice',
    );
    final imageRequest = MealAnalysisImageRequest(
      analysisId: 'analysis-image',
      imageUrl: 'users/user-1/analyses/analysis-image.jpg',
    );
    final reanalyzeRequest = MealAnalysisReanalyzeRequest(
      analysisId: 'analysis-parent',
      newAnalysisId: 'analysis-child',
      issues: [MealReanalyzeFeedbackIssue.PORTION_SIZE],
    );

    final decodedText = MealAnalysisTextRequest.fromBuffer(
      textRequest.writeToBuffer(),
    );
    final decodedImage = MealAnalysisImageRequest.fromBuffer(
      imageRequest.writeToBuffer(),
    );
    final decodedReanalysis = MealAnalysisReanalyzeRequest.fromBuffer(
      reanalyzeRequest.writeToBuffer(),
    );

    expect(decodedText.analysisId, 'analysis-text');
    expect(decodedText.textDescription, 'Dal and rice');
    expect(decodedImage.analysisId, 'analysis-image');
    expect(decodedImage.imageUrl, imageRequest.imageUrl);
    expect(decodedReanalysis.analysisId, 'analysis-parent');
    expect(decodedReanalysis.newAnalysisId, 'analysis-child');
    expect(decodedReanalysis.hasNewAnalysisId(), isTrue);
  });

  test('V3 pipeline errors retain retryability through the event adapter', () {
    final event = MealAnalysisV3Event.fromJson({
      'event': 'ERROR',
      'analysisId': 'analysis-1',
      'data': {
        'code': 'PROVIDER_UNAVAILABLE',
        'retryable': true,
        'recoveryAction': 'RETRY',
      },
    });

    expect(event.kind, MealAnalysisV3EventKind.error);
    expect(event.analysisId, 'analysis-1');
    expect(event.issue!.code, 'PROVIDER_UNAVAILABLE');
    expect(event.issue!.retryable, isTrue);
  });

  test(
    'V3 progress retains bounded presentation data through the event adapter',
    () {
      final event = MealAnalysisV3Event.fromJson({
        'event': 'PROGRESS',
        'analysisId': 'analysis-1',
        'data': {
          'phase': 'MATCH',
          'progress': 0.34,
          'mealName': 'Dal and rice',
          'components': [
            {
              'componentId': 'dal',
              'name': 'Dal',
              'ingredientNames': ['Lentils', 'Ghee'],
            },
            {
              'componentId': 'rice',
              'name': 'Rice',
              'ingredientNames': ['Basmati rice'],
            },
          ],
        },
      });

      expect(event.kind, MealAnalysisV3EventKind.progress);
      expect(event.progress!.phase, MealAnalysisV3ProgressPhase.match);
      expect(event.progress!.progress, 0.34);
      expect(event.progress!.mealName, 'Dal and rice');
      expect(event.progress!.components, hasLength(2));
      expect(event.progress!.components.first.componentId, 'dal');
      expect(event.progress!.components.first.name, 'Dal');
      expect(event.progress!.components.first.ingredientNames, [
        'Lentils',
        'Ghee',
      ]);
    },
  );

  test(
    'V3 progress rejects duplicate components and oversized ingredient lists',
    () {
      Map<String, dynamic> progressData(
        List<Map<String, dynamic>> components,
      ) => {
        'event': 'PROGRESS',
        'analysisId': 'analysis-1',
        'data': {'phase': 'MATCH', 'progress': 0.34, 'components': components},
      };

      expect(
        () => MealAnalysisV3Event.fromJson(
          progressData([
            {
              'componentId': 'dal',
              'name': 'Dal',
              'ingredientNames': <String>[],
            },
            {
              'componentId': 'dal',
              'name': 'Rice',
              'ingredientNames': <String>[],
            },
          ]),
        ),
        throwsFormatException,
      );
      expect(
        () => MealAnalysisV3Event.fromJson(
          progressData([
            {
              'componentId': 'dal',
              'name': 'Dal',
              'ingredientNames': List.generate(
                25,
                (index) => 'Ingredient $index',
              ),
            },
          ]),
        ),
        throwsFormatException,
      );
    },
  );
}
