import 'dart:async';

import 'package:calorify_watch/core/repositories/food_repository.dart';
import 'package:calorify_watch/core/services/watch_transport.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('ambiguous dispatched analysis reports a timeout', () async {
    final repository = WatchFoodRepository(
      phoneDetector: (_) async {
        return WatchTransportResult.failure(
          WatchTransportErrorCode.timeout,
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
          WatchTransportErrorCode.disconnected,
          retryable: true,
        );
      },
    );

    await expectLater(
      repository.detectText(textDescription: 'A bowl of poha'),
      throwsA(isA<StateError>()),
    );
  });

  test('returns a successful phone-assisted V3 result', () async {
    const rawSample = {
      'mealName': 'Poha',
      'servingSizeText': '1 bowl',
      'tip': 'Healthy breakfast',
      'mealType': {'value': 'BREAKFAST'},
      'macros': {
        'calories': 250,
        'protein': 5,
        'carbs': 45,
        'fat': 6,
        'fiber': 2,
      },
      'macroRanges': {
        'calories': {'min': 220, 'max': 280},
        'protein': {'min': 4, 'max': 6},
        'carbs': {'min': 40, 'max': 50},
        'fat': {'min': 5, 'max': 7},
        'fiber': {'min': 1, 'max': 3},
      },
      'components': <dynamic>[],
      'receipt': {
        'calculationOrigin': 'CALCULATION_ORIGIN_SERVER_USDA',
        'confidence': 'HIGH',
      },
    };
    final repository = WatchFoodRepository(
      phoneDetector:
          (_) async => WatchTransportResult.success({
            'success': true,
            'response': rawSample,
          }),
    );

    final result = await repository.detectText(
      textDescription: 'A bowl of poha',
    );

    expect(result.mealName, 'Poha');
  });
}
