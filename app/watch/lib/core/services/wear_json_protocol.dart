import 'package:calorify_watch/core/services/watch_transport.dart';

abstract final class WatchPaths {
  static const mealLog = '/meal';
  static const mealDelete = '/meal/delete';
  static const todayMeals = '/meals/today';
  static const calorieGoal = '/calorie_goal';
  static const favorites = '/favorites';
  static const detectText = '/analysis/detect-text';
}

abstract final class WearJsonProtocol {
  static const transportErrorKey = '_transportError';

  static WatchTransportResult decodeResponse(
    String path,
    Map<String, dynamic>? payload,
  ) {
    final analysisRequest = path == WatchPaths.detectText;
    if (payload == null) {
      return WatchTransportResult.failure(
        WatchTransportErrorCode.unavailable,
        message: 'No response from phone',
        retryable: true,
        deliveryUncertain: analysisRequest,
      );
    }

    if (payload['success'] == false) {
      final message = payload['error']?.toString();
      final code = _errorCode(payload, message);
      final localTransportError = payload[transportErrorKey] == true;
      return WatchTransportResult.failure(
        code,
        message: message,
        isPeerResponse: !localTransportError,
        deliveryUncertain:
            analysisRequest &&
            (code == WatchTransportErrorCode.timeout ||
                code == WatchTransportErrorCode.platform ||
                code == WatchTransportErrorCode.malformedResponse),
      );
    }

    if (payload['success'] != true) {
      return WatchTransportResult.failure(
        WatchTransportErrorCode.malformedResponse,
        message: 'Phone response did not declare a result',
        retryable: true,
        deliveryUncertain: analysisRequest,
      );
    }

    return WatchTransportResult.success(payload);
  }

  static WatchTransportErrorCode _errorCode(
    Map<String, dynamic> payload,
    String? message,
  ) {
    final explicit =
        payload['errorCode']?.toString() ?? payload['error_code']?.toString();
    return switch (explicit?.trim().toLowerCase()) {
          'timeout' => WatchTransportErrorCode.timeout,
          'disconnected' => WatchTransportErrorCode.disconnected,
          'unavailable' => WatchTransportErrorCode.unavailable,
          'network' => WatchTransportErrorCode.network,
          'unauthenticated' => WatchTransportErrorCode.unauthenticated,
          'not_found' => WatchTransportErrorCode.notFound,
          'rejected' => WatchTransportErrorCode.rejected,
          'invalid_payload' => WatchTransportErrorCode.invalidPayload,
          'unknown_operation' => WatchTransportErrorCode.unknownOperation,
          'malformed_response' => WatchTransportErrorCode.malformedResponse,
          'internal' => WatchTransportErrorCode.internal,
          'platform' => WatchTransportErrorCode.platform,
          _ => null,
        } ??
        switch (message?.trim().toLowerCase()) {
          'response timed out' ||
          'request timed out' => WatchTransportErrorCode.timeout,
          'no connected phone' => WatchTransportErrorCode.disconnected,
          'wear os channel unavailable' => WatchTransportErrorCode.unavailable,
          'network unavailable' => WatchTransportErrorCode.network,
          _ => WatchTransportErrorCode.rejected,
        };
  }
}
