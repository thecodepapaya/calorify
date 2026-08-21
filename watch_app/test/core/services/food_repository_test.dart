import 'dart:async';

import 'package:calorify_watch/core/repositories/food_repository.dart';
import 'package:calorify_watch/core/services/watch_transport.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

void main() {
  test(
    'ambiguous dispatched analysis never starts a backend duplicate',
    () async {
      var backendCalls = 0;
      final repository = WatchFoodRepository(
        phoneDetector: (_) async {
          return WatchTransportResult.failure(
            WearErrorCode.WEAR_ERROR_CODE_TIMEOUT,
            retryable: true,
            deliveryUncertain: true,
          );
        },
        backendDetector: (_) async {
          backendCalls++;
          return MealDetectionResponse();
        },
      );

      await expectLater(
        repository.detectText(textDescription: 'A bowl of poha'),
        throwsA(isA<TimeoutException>()),
      );
      expect(backendCalls, 0);
    },
  );

  test('failure before analysis dispatch may use the backend once', () async {
    var backendCalls = 0;
    final expected = MealDetectionResponse(
      result: MealDetectionResult(mealIdentified: true),
    );
    final repository = WatchFoodRepository(
      phoneDetector: (_) async {
        return WatchTransportResult.failure(
          WearErrorCode.WEAR_ERROR_CODE_DISCONNECTED,
          retryable: true,
        );
      },
      backendDetector: (_) async {
        backendCalls++;
        return expected;
      },
    );

    final result = await repository.detectText(
      textDescription: 'A bowl of poha',
    );

    expect(result, same(expected));
    expect(backendCalls, 1);
  });
}
