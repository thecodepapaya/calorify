import 'dart:async';

import 'package:calorify_watch/core/repositories/food_repository.dart';
import 'package:calorify_watch/core/services/watch_transport.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

void main() {
  test('ambiguous dispatched analysis reports a timeout', () async {
    final repository = WatchFoodRepository(
      phoneDetector: (_) async {
        return WatchTransportResult.failure(
          WearErrorCode.WEAR_ERROR_CODE_TIMEOUT,
          retryable: true,
          deliveryUncertain: true,
        );
      },
    );

    await expectLater(
      repository.detectText(textDescription: 'A bowl of poha'),
      throwsA(isA<TimeoutException>()),
    );
  });

  test('phone rejection does not fall back to a backend V1 request', () async {
    final repository = WatchFoodRepository(
      phoneDetector: (_) async {
        return WatchTransportResult.failure(
          WearErrorCode.WEAR_ERROR_CODE_DISCONNECTED,
          retryable: true,
        );
      },
    );

    await expectLater(
      repository.detectText(textDescription: 'A bowl of poha'),
      throwsA(isA<StateError>()),
    );
  });

  test('returns a successful phone-assisted V2 result', () async {
    final expected = MealDetectionResponse(
      result: MealDetectionResult(
        mealIdentified: true,
        meal: Meal(name: 'Poha'),
      ),
    );
    final repository = WatchFoodRepository(
      phoneDetector:
          (_) async => WatchTransportResult.success(
            WearResponse(detectText: DetectTextResponse(response: expected)),
          ),
    );

    final result = await repository.detectText(
      textDescription: 'A bowl of poha',
    );

    expect(result, same(expected));
  });
}
