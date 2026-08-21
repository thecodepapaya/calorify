import 'package:calorify_watch/core/services/watch_transport.dart';
import 'package:models/models.dart';

/// Version-1 compatibility codec. All active watch code uses generated v2
/// messages; dynamic maps are isolated here until the one-version migration
/// window closes.
abstract final class LegacyWearProtocol {
  static const String protocolVersionKey = '_wearProtocolVersion';

  static int? peerProtocolVersion(Map<String, dynamic>? payload) {
    final value = payload?[protocolVersionKey];
    return value is num ? value.toInt() : null;
  }

  static Map<String, dynamic> encodeRequest(
    WearOperation operation,
    WearRequest request,
  ) {
    return switch (operation) {
      WearOperation.WEAR_OPERATION_MEAL_LOG => _mealLogRequest(request),
      WearOperation.WEAR_OPERATION_MEAL_DELETE => {
        'meal_id': request.mealDelete.mealId,
      },
      WearOperation.WEAR_OPERATION_DETECT_TEXT => {
        'textDescription': request.detectText.textDescription,
      },
      WearOperation.WEAR_OPERATION_TODAY_MEALS ||
      WearOperation.WEAR_OPERATION_CALORIE_GOAL ||
      WearOperation.WEAR_OPERATION_USER_PROFILE ||
      WearOperation.WEAR_OPERATION_FAVORITES ||
      WearOperation.WEAR_OPERATION_AUTH_SESSION => const {},
      _ => throw ArgumentError.value(operation, 'operation'),
    };
  }

  static WatchTransportResult decodeResponse(
    WearOperation operation,
    Map<String, dynamic>? payload,
  ) {
    if (payload == null) {
      return WatchTransportResult.failure(
        WearErrorCode.WEAR_ERROR_CODE_UNAVAILABLE,
        message: 'No response from phone',
        retryable: true,
        deliveryUncertain:
            operation == WearOperation.WEAR_OPERATION_DETECT_TEXT,
      );
    }
    if (payload['success'] == false) {
      final message = payload['error']?.toString();
      final code = _errorCode(payload, message);
      return WatchTransportResult.failure(
        code,
        message: message,
        isProtocolResponse: true,
        deliveryUncertain: _isDeliveryUncertain(operation, code),
      );
    }
    if (payload['success'] != true) {
      return WatchTransportResult.failure(
        WearErrorCode.WEAR_ERROR_CODE_MALFORMED_RESPONSE,
        message: 'Legacy phone response did not declare a result',
        retryable: true,
        deliveryUncertain:
            operation == WearOperation.WEAR_OPERATION_DETECT_TEXT,
      );
    }

    try {
      return WatchTransportResult.success(switch (operation) {
        WearOperation.WEAR_OPERATION_MEAL_LOG => WearResponse(
          mealLog: MealLogResponse(),
        ),
        WearOperation.WEAR_OPERATION_MEAL_DELETE => WearResponse(
          mealDelete: MealDeleteResponse(),
        ),
        WearOperation.WEAR_OPERATION_TODAY_MEALS => WearResponse(
          todayMeals: TodayMealsResponse(
            meals: _listOfMaps(payload['meals']).map(mealInfoFromLegacyJson),
          ),
        ),
        WearOperation.WEAR_OPERATION_CALORIE_GOAL => WearResponse(
          calorieGoal: CalorieGoalResponse(
            goal: (payload['goal'] as num?)?.toInt(),
          ),
        ),
        WearOperation.WEAR_OPERATION_USER_PROFILE => WearResponse(
          userProfile: UserProfileResponse(
            profile: userProfileFromLegacyJson(_map(payload['profile'])),
          ),
        ),
        WearOperation.WEAR_OPERATION_FAVORITES => WearResponse(
          favorites: FavoritesResponse(
            favorites: _listOfMaps(
              payload['favorites'],
            ).map(favoriteMealFromLegacyJson),
          ),
        ),
        WearOperation.WEAR_OPERATION_AUTH_SESSION => WearResponse(
          authSession: AuthSessionResponse(
            session: _authSession(_map(payload['session'])),
          ),
        ),
        WearOperation.WEAR_OPERATION_DETECT_TEXT => WearResponse(
          detectText: DetectTextResponse(
            response:
                MealDetectionResponse()
                  ..mergeFromProto3Json(_map(payload['response'])),
          ),
        ),
        _ => throw ArgumentError.value(operation, 'operation'),
      }, isProtocolResponse: true);
    } catch (error) {
      return WatchTransportResult.failure(
        WearErrorCode.WEAR_ERROR_CODE_MALFORMED_RESPONSE,
        message: 'Legacy phone response was malformed',
        retryable: true,
        deliveryUncertain:
            operation == WearOperation.WEAR_OPERATION_DETECT_TEXT,
      );
    }
  }

  static Map<String, dynamic> _mealLogRequest(WearRequest request) {
    final payload = request.mealLog;
    return {
      ...mealInfoToLegacyJson(payload.meal),
      'watch_operation_id': payload.operationId,
      if (payload.hasFavoriteMealId())
        'favorite_meal_id': payload.favoriteMealId,
    };
  }

  static WearAuthSession _authSession(Map<String, dynamic> session) {
    return WearAuthSession(
      uid: session['uid'] as String? ?? '',
      authToken: session['authToken'] as String? ?? '',
      isAnonymous: session['isAnonymous'] as bool? ?? false,
      syncedAt: session['syncedAt'] as String? ?? '',
    );
  }

  static Map<String, dynamic> _map(Object? value) {
    if (value is! Map) throw const FormatException('Expected map');
    return Map<String, dynamic>.from(value);
  }

  static Iterable<Map<String, dynamic>> _listOfMaps(Object? value) {
    if (value is! List) throw const FormatException('Expected list');
    return value.map(_map);
  }

  static WearErrorCode _errorCode(
    Map<String, dynamic> payload,
    String? message,
  ) {
    final explicit =
        payload['errorCode']?.toString() ?? payload['error_code']?.toString();
    return switch (explicit?.trim().toLowerCase()) {
          'timeout' => WearErrorCode.WEAR_ERROR_CODE_TIMEOUT,
          'disconnected' => WearErrorCode.WEAR_ERROR_CODE_DISCONNECTED,
          'unavailable' => WearErrorCode.WEAR_ERROR_CODE_UNAVAILABLE,
          'network' => WearErrorCode.WEAR_ERROR_CODE_NETWORK,
          'unauthenticated' => WearErrorCode.WEAR_ERROR_CODE_UNAUTHENTICATED,
          'not_found' => WearErrorCode.WEAR_ERROR_CODE_NOT_FOUND,
          'rejected' => WearErrorCode.WEAR_ERROR_CODE_REJECTED,
          'invalid_payload' => WearErrorCode.WEAR_ERROR_CODE_INVALID_PAYLOAD,
          'unknown_operation' =>
            WearErrorCode.WEAR_ERROR_CODE_UNKNOWN_OPERATION,
          'malformed_response' =>
            WearErrorCode.WEAR_ERROR_CODE_MALFORMED_RESPONSE,
          'internal' => WearErrorCode.WEAR_ERROR_CODE_INTERNAL,
          'platform' => WearErrorCode.WEAR_ERROR_CODE_PLATFORM,
          _ => null,
        } ??
        switch (message?.trim().toLowerCase()) {
          'response timed out' ||
          'request timed out' => WearErrorCode.WEAR_ERROR_CODE_TIMEOUT,
          'no connected phone' => WearErrorCode.WEAR_ERROR_CODE_DISCONNECTED,
          'wear os channel unavailable' =>
            WearErrorCode.WEAR_ERROR_CODE_UNAVAILABLE,
          'network unavailable' => WearErrorCode.WEAR_ERROR_CODE_NETWORK,
          _ => WearErrorCode.WEAR_ERROR_CODE_REJECTED,
        };
  }

  static bool _isDeliveryUncertain(
    WearOperation operation,
    WearErrorCode code,
  ) {
    if (operation != WearOperation.WEAR_OPERATION_DETECT_TEXT) return false;
    return code == WearErrorCode.WEAR_ERROR_CODE_TIMEOUT ||
        code == WearErrorCode.WEAR_ERROR_CODE_PLATFORM ||
        code == WearErrorCode.WEAR_ERROR_CODE_MALFORMED_RESPONSE;
  }
}
