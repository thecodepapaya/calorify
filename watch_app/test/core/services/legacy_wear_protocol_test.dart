import 'package:calorify_watch/core/services/legacy_wear_protocol.dart';
import 'package:calorify_watch/core/services/watch_transport.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

void main() {
  test('v2 meal request has one isolated v1 map representation', () {
    final request = WearRequest(
      mealLog: MealLogRequest(
        meal: LoggedMeal(
          clientId: -2,
          meal: Meal(name: 'Poha'),
          createdAt: '2026-08-21T08:00:00.000Z',
        ),
        operationId: 'watch:-2:2026-08-21T08:00:00.000Z',
        favoriteMealId: 4,
      ),
    );

    final legacy = LegacyWearProtocol.encodeRequest(
      WearOperation.WEAR_OPERATION_MEAL_LOG,
      request,
    );

    expect(legacy['meal_name'], 'Poha');
    expect(legacy['watch_operation_id'], startsWith('watch:-2'));
    expect(legacy['favorite_meal_id'], 4);
  });

  test('legacy dashboard maps decode immediately into protobufs', () {
    final response = LegacyWearProtocol.decodeResponse(
      WearOperation.WEAR_OPERATION_TODAY_MEALS,
      {
        'success': true,
        'meals': [
          {
            'client_id': 12,
            'meal_name': 'Dal',
            'calories': 300,
            'timestamp': '2026-08-21T12:00:00.000Z',
          },
        ],
      },
    );

    expect(response.isSuccess, isTrue);
    expect(response.response!.todayMeals.meals.single.meal.name, 'Dal');
  });

  test('legacy retry compatibility uses exact values, not substrings', () {
    final exact = LegacyWearProtocol.decodeResponse(
      WearOperation.WEAR_OPERATION_MEAL_LOG,
      {'success': false, 'error': 'Network unavailable'},
    );
    final rejection = LegacyWearProtocol.decodeResponse(
      WearOperation.WEAR_OPERATION_MEAL_LOG,
      {'success': false, 'error': 'Network field is invalid'},
    );
    final internal = LegacyWearProtocol.decodeResponse(
      WearOperation.WEAR_OPERATION_MEAL_LOG,
      {
        'success': false,
        'error': 'Phone failed to handle the watch request',
        'errorCode': 'internal',
      },
    );

    expect(exact.errorCode, WearErrorCode.WEAR_ERROR_CODE_NETWORK);
    expect(exact.shouldRetry, isTrue);
    expect(rejection.errorCode, WearErrorCode.WEAR_ERROR_CODE_REJECTED);
    expect(rejection.shouldRetry, isFalse);
    expect(internal.errorCode, WearErrorCode.WEAR_ERROR_CODE_INTERNAL);
    expect(internal.shouldRetry, isTrue);
  });

  test('legacy auth response converts to the generated session message', () {
    final response = LegacyWearProtocol.decodeResponse(
      WearOperation.WEAR_OPERATION_AUTH_SESSION,
      {
        'success': true,
        'session': {
          'uid': 'user-1',
          'authToken': 'token',
          'isAnonymous': false,
          'syncedAt': '2026-08-21T12:00:00.000Z',
        },
      },
    );

    expect(response.response!.authSession.session.uid, 'user-1');
    expect(response.response!.authSession.session.authToken, 'token');
  });

  test('transient transport errors never permanently downgrade to v1', () {
    final timeout = WatchTransportResult.failure(
      WearErrorCode.WEAR_ERROR_CODE_TIMEOUT,
    );
    final disconnected = WatchTransportResult.failure(
      WearErrorCode.WEAR_ERROR_CODE_DISCONNECTED,
    );
    final unsupported = WatchTransportResult.failure(
      WearErrorCode.WEAR_ERROR_CODE_UNAVAILABLE,
      isProtocolUnsupported: true,
    );
    final localNoResponse = WatchTransportResult.failure(
      WearErrorCode.WEAR_ERROR_CODE_TIMEOUT,
      legacyFallbackEligible: true,
    );

    expect(shouldUseLegacyWearProtocol(timeout), isFalse);
    expect(shouldUseLegacyWearProtocol(disconnected), isFalse);
    expect(shouldUseLegacyWearProtocol(unsupported), isTrue);
    expect(shouldUseLegacyWearProtocol(localNoResponse), isTrue);
  });

  test('new-phone legacy responses carry a bounded capability marker', () {
    expect(
      LegacyWearProtocol.peerProtocolVersion({
        LegacyWearProtocol.protocolVersionKey: wearProtocolVersion,
      }),
      wearProtocolVersion,
    );
    expect(
      LegacyWearProtocol.peerProtocolVersion({
        LegacyWearProtocol.protocolVersionKey: 'not-a-version',
      }),
      isNull,
    );
  });

  test(
    'legacy analysis timeout has uncertain delivery without v2 fallback',
    () {
      final result = LegacyWearProtocol.decodeResponse(
        WearOperation.WEAR_OPERATION_DETECT_TEXT,
        {'success': false, 'errorCode': 'timeout'},
      );

      expect(result.shouldRetry, isTrue);
      expect(result.deliveryUncertain, isTrue);
      expect(result.legacyFallbackEligible, isFalse);
    },
  );
}
