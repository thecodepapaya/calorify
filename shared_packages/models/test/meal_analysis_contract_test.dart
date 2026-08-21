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

  test('pipeline errors retain retryability through the event adapter', () {
    final event = MealAnalysisPipelineEvent.fromJson({
      'step': 'ERROR',
      'data': {
        'analysisId': 'analysis-1',
        'message': 'Analysis is already advancing',
        'retryable': true,
      },
    });

    expect(event.step, PipelineStep.ERROR);
    expect(event.analysisId, 'analysis-1');
    expect(event.errorMessage, 'Analysis is already advancing');
    expect(event.retryable, isTrue);
  });
}
