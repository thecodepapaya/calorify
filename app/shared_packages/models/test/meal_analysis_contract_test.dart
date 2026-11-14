import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

void main() {
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

  test('AnalysisHistoryItem deserializes regional metadata and timestamp', () {
    final captured = DateTime.utc(2026, 11, 7, 10, 30);
    final item = AnalysisHistoryItem(
      id: 'analysis-123',
      userUid: 'user-abc',
      status: 'PRESENTED',
      text: 'Ramen bowl',
      locale: 'ja-JP',
      countryCode: 'JP',
      timezone: 'Asia/Tokyo',
      localCapturedAt: Timestamp.fromDateTime(captured),
    );

    expect(item.id, 'analysis-123');
    expect(item.locale, 'ja-JP');
    expect(item.countryCode, 'JP');
    expect(item.timezone, 'Asia/Tokyo');
    expect(item.localCapturedAt.toDateTime(), captured);
  });
}
