import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

void main() {
  test('binary request round trip preserves domain protobuf presence', () {
    final loggedMeal = LoggedMeal(
      clientId: -7,
      createdAt: '2026-08-21T12:00:00.000Z',
      meal: Meal(name: 'Dal', macros: MealMacro(calories: 240)),
    );
    final request = WearProtocolCodec.request(
      requestId: 'request-1',
      operation: WearOperation.WEAR_OPERATION_MEAL_LOG,
      payload: WearRequest(
        mealLog: MealLogRequest(
          meal: loggedMeal,
          operationId: 'watch:-7:2026-08-21T12:00:00.000Z',
        ),
      ),
    );

    final decoded = WearProtocolCodec.decode(WearProtocolCodec.encode(request));

    expect(WearProtocolCodec.validateRequest(decoded), isNull);
    expect(decoded.request.mealLog.meal.clientId, -7);
    expect(decoded.request.mealLog.meal.meal.hasHealth(), isFalse);
    expect(decoded.request.mealLog.hasFavoriteMealId(), isFalse);
  });

  test('unknown versions and operations produce typed validation errors', () {
    final unknownVersion = WearProtocolCodec.request(
      requestId: 'request-2',
      operation: WearOperation.WEAR_OPERATION_TODAY_MEALS,
      payload: WearRequest(todayMeals: TodayMealsRequest()),
    )..version = 99;
    final versionError = WearProtocolCodec.validateRequest(unknownVersion);
    expect(versionError?.code, WearErrorCode.WEAR_ERROR_CODE_INVALID_VERSION);

    final unknownOperationBytes =
        WearProtocolCodec.encode(
            WearEnvelope(
              version: wearProtocolVersion,
              requestId: 'request-3',
              request: WearRequest(todayMeals: TodayMealsRequest()),
            ),
          ).toList()
          ..addAll([24, 99]);
    final unknownOperation = WearProtocolCodec.decode(unknownOperationBytes);
    final operationError = WearProtocolCodec.validateRequest(unknownOperation);
    expect(
      operationError?.code,
      WearErrorCode.WEAR_ERROR_CODE_UNKNOWN_OPERATION,
    );
  });

  test('operation and oneof payload must agree', () {
    final request = WearProtocolCodec.request(
      requestId: 'request-4',
      operation: WearOperation.WEAR_OPERATION_FAVORITES,
      payload: WearRequest(calorieGoal: CalorieGoalRequest()),
    );

    final error = WearProtocolCodec.validateRequest(request);

    expect(error?.code, WearErrorCode.WEAR_ERROR_CODE_INVALID_PAYLOAD);
  });

  test('success and typed error responses remain correlated', () {
    final request = WearProtocolCodec.request(
      requestId: 'request-5',
      operation: WearOperation.WEAR_OPERATION_CALORIE_GOAL,
      payload: WearRequest(calorieGoal: CalorieGoalRequest()),
    );
    final success = WearProtocolCodec.successResponse(
      request: request,
      payload: WearResponse(calorieGoal: CalorieGoalResponse(goal: 2200)),
    );
    final failure = WearProtocolCodec.errorResponse(
      requestId: request.requestId,
      operation: request.operation,
      error: const WearProtocolViolation(
        WearErrorCode.WEAR_ERROR_CODE_UNAVAILABLE,
        'Temporarily unavailable',
        retryable: true,
      ),
    );

    expect(
      WearProtocolCodec.validateResponse(
        success,
        expectedRequestId: request.requestId,
        expectedOperation: request.operation,
      ),
      isNull,
    );
    expect(success.response.calorieGoal.goal, 2200);
    expect(
      WearProtocolCodec.validateResponse(
        failure,
        expectedRequestId: request.requestId,
        expectedOperation: request.operation,
      ),
      isNull,
    );
    expect(failure.response.error.shouldRetry, isTrue);
  });

  test('unsolicited events cannot masquerade as correlated responses', () {
    final event = WearProtocolCodec.dataChangedEvent([
      WearOperation.WEAR_OPERATION_TODAY_MEALS,
    ]);
    expect(WearProtocolCodec.validateEvent(event), isNull);
    expect(event.requestId, isEmpty);

    event.requestId = 'response-id';
    expect(
      WearProtocolCodec.validateEvent(event)?.code,
      WearErrorCode.WEAR_ERROR_CODE_INVALID_PAYLOAD,
    );
  });

  test('legacy paths are centralized for exactly the supported operations', () {
    for (final operation in WearOperation.values) {
      final path = legacyWearPath(operation);
      if (path != null) {
        expect(operationForLegacyWearPath(path), operation);
      }
    }
    expect(operationForLegacyWearPath('/unknown'), isNull);
  });
}
