import 'dart:typed_data';

import 'protos/wear/wear_protocol.pb.dart';

const int wearProtocolVersion = 2;

final class WearProtocolViolation implements Exception {
  const WearProtocolViolation(
    this.code,
    this.message, {
    this.retryable = false,
  });

  final WearErrorCode code;
  final String message;
  final bool retryable;

  WearError toProto() {
    return WearError(code: code, message: message, retryable: retryable);
  }

  @override
  String toString() => message;
}

abstract final class WearProtocolCodec {
  static WearEnvelope decode(List<int> bytes) {
    try {
      return WearEnvelope.fromBuffer(bytes);
    } catch (error) {
      throw WearProtocolViolation(
        WearErrorCode.WEAR_ERROR_CODE_INVALID_PAYLOAD,
        'Malformed Wear protocol envelope: $error',
      );
    }
  }

  static Uint8List encode(WearEnvelope envelope) {
    return Uint8List.fromList(envelope.writeToBuffer());
  }

  static WearEnvelope request({
    required String requestId,
    required WearOperation operation,
    required WearRequest payload,
  }) {
    return WearEnvelope(
      version: wearProtocolVersion,
      requestId: requestId,
      operation: operation,
      request: payload,
    );
  }

  static WearEnvelope successResponse({
    required WearEnvelope request,
    required WearResponse payload,
  }) {
    return WearEnvelope(
      version: wearProtocolVersion,
      requestId: request.requestId,
      operation: request.operation,
      response: payload,
    );
  }

  static WearEnvelope errorResponse({
    required String requestId,
    required WearOperation operation,
    required WearProtocolViolation error,
  }) {
    return WearEnvelope(
      version: wearProtocolVersion,
      requestId: requestId,
      operation: operation,
      response: WearResponse(error: error.toProto()),
    );
  }

  static WearEnvelope dataChangedEvent(Iterable<WearOperation> operations) {
    return WearEnvelope(
      version: wearProtocolVersion,
      operation: WearOperation.WEAR_OPERATION_DATA_CHANGED,
      event: WearEvent(dataChanged: DataChangedEvent(operations: operations)),
    );
  }

  static WearProtocolViolation? validateRequest(WearEnvelope envelope) {
    final common = _validateVersion(envelope);
    if (common != null) return common;
    if (envelope.whichBody() != WearEnvelope_Body.request) {
      return const WearProtocolViolation(
        WearErrorCode.WEAR_ERROR_CODE_INVALID_PAYLOAD,
        'Envelope body is not a request',
      );
    }
    if (envelope.requestId.trim().isEmpty) {
      return const WearProtocolViolation(
        WearErrorCode.WEAR_ERROR_CODE_INVALID_PAYLOAD,
        'Request id is required',
      );
    }
    if (envelope.operation == WearOperation.WEAR_OPERATION_UNSPECIFIED) {
      return const WearProtocolViolation(
        WearErrorCode.WEAR_ERROR_CODE_UNKNOWN_OPERATION,
        'Unknown Wear operation',
      );
    }

    final payloadOperation = operationForRequest(envelope.request);
    if (payloadOperation == WearOperation.WEAR_OPERATION_UNSPECIFIED) {
      return const WearProtocolViolation(
        WearErrorCode.WEAR_ERROR_CODE_INVALID_PAYLOAD,
        'Request payload is missing',
      );
    }
    if (payloadOperation != envelope.operation) {
      return const WearProtocolViolation(
        WearErrorCode.WEAR_ERROR_CODE_INVALID_PAYLOAD,
        'Request operation does not match its payload',
      );
    }
    return null;
  }

  static WearProtocolViolation? validateResponse(
    WearEnvelope envelope, {
    String? expectedRequestId,
    WearOperation? expectedOperation,
  }) {
    final common = _validateVersion(envelope);
    if (common != null) return common;
    if (envelope.whichBody() != WearEnvelope_Body.response) {
      return const WearProtocolViolation(
        WearErrorCode.WEAR_ERROR_CODE_INVALID_PAYLOAD,
        'Envelope body is not a response',
      );
    }
    if (envelope.requestId.trim().isEmpty ||
        (expectedRequestId != null &&
            envelope.requestId != expectedRequestId)) {
      return const WearProtocolViolation(
        WearErrorCode.WEAR_ERROR_CODE_INVALID_PAYLOAD,
        'Response request id does not match',
      );
    }
    if (expectedOperation != null && envelope.operation != expectedOperation) {
      return const WearProtocolViolation(
        WearErrorCode.WEAR_ERROR_CODE_INVALID_PAYLOAD,
        'Response operation does not match',
      );
    }

    final response = envelope.response;
    if (response.hasError()) {
      if (response.error.code == WearErrorCode.WEAR_ERROR_CODE_UNSPECIFIED) {
        return const WearProtocolViolation(
          WearErrorCode.WEAR_ERROR_CODE_INVALID_PAYLOAD,
          'Error response has no error code',
        );
      }
      if (response.whichPayload() != WearResponse_Payload.notSet) {
        return const WearProtocolViolation(
          WearErrorCode.WEAR_ERROR_CODE_INVALID_PAYLOAD,
          'Error response also contains a success payload',
        );
      }
      return null;
    }

    if (operationForResponse(response) != envelope.operation) {
      return const WearProtocolViolation(
        WearErrorCode.WEAR_ERROR_CODE_INVALID_PAYLOAD,
        'Response operation does not match its payload',
      );
    }
    return null;
  }

  static WearProtocolViolation? validateEvent(WearEnvelope envelope) {
    final common = _validateVersion(envelope);
    if (common != null) return common;
    if (envelope.whichBody() != WearEnvelope_Body.event ||
        envelope.operation != WearOperation.WEAR_OPERATION_DATA_CHANGED ||
        !envelope.event.hasDataChanged()) {
      return const WearProtocolViolation(
        WearErrorCode.WEAR_ERROR_CODE_INVALID_PAYLOAD,
        'Unsupported Wear event',
      );
    }
    if (envelope.requestId.isNotEmpty) {
      return const WearProtocolViolation(
        WearErrorCode.WEAR_ERROR_CODE_INVALID_PAYLOAD,
        'Unsolicited events cannot have a request id',
      );
    }
    return null;
  }

  static WearProtocolViolation? _validateVersion(WearEnvelope envelope) {
    if (envelope.version != wearProtocolVersion) {
      return WearProtocolViolation(
        WearErrorCode.WEAR_ERROR_CODE_INVALID_VERSION,
        'Unsupported Wear protocol version ${envelope.version}',
      );
    }
    return null;
  }
}

WearOperation operationForRequest(WearRequest request) {
  return switch (request.whichPayload()) {
    WearRequest_Payload.mealLog => WearOperation.WEAR_OPERATION_MEAL_LOG,
    WearRequest_Payload.mealDelete => WearOperation.WEAR_OPERATION_MEAL_DELETE,
    WearRequest_Payload.todayMeals => WearOperation.WEAR_OPERATION_TODAY_MEALS,
    WearRequest_Payload.calorieGoal =>
      WearOperation.WEAR_OPERATION_CALORIE_GOAL,
    WearRequest_Payload.userProfile =>
      WearOperation.WEAR_OPERATION_USER_PROFILE,
    WearRequest_Payload.favorites => WearOperation.WEAR_OPERATION_FAVORITES,
    WearRequest_Payload.authSession =>
      WearOperation.WEAR_OPERATION_AUTH_SESSION,
    WearRequest_Payload.detectText => WearOperation.WEAR_OPERATION_DETECT_TEXT,
    WearRequest_Payload.notSet => WearOperation.WEAR_OPERATION_UNSPECIFIED,
  };
}

WearOperation operationForResponse(WearResponse response) {
  return switch (response.whichPayload()) {
    WearResponse_Payload.mealLog => WearOperation.WEAR_OPERATION_MEAL_LOG,
    WearResponse_Payload.mealDelete => WearOperation.WEAR_OPERATION_MEAL_DELETE,
    WearResponse_Payload.todayMeals => WearOperation.WEAR_OPERATION_TODAY_MEALS,
    WearResponse_Payload.calorieGoal =>
      WearOperation.WEAR_OPERATION_CALORIE_GOAL,
    WearResponse_Payload.userProfile =>
      WearOperation.WEAR_OPERATION_USER_PROFILE,
    WearResponse_Payload.favorites => WearOperation.WEAR_OPERATION_FAVORITES,
    WearResponse_Payload.authSession =>
      WearOperation.WEAR_OPERATION_AUTH_SESSION,
    WearResponse_Payload.detectText => WearOperation.WEAR_OPERATION_DETECT_TEXT,
    WearResponse_Payload.notSet => WearOperation.WEAR_OPERATION_UNSPECIFIED,
  };
}

String? legacyWearPath(WearOperation operation) {
  return switch (operation) {
    WearOperation.WEAR_OPERATION_MEAL_LOG => '/meal',
    WearOperation.WEAR_OPERATION_MEAL_DELETE => '/meal/delete',
    WearOperation.WEAR_OPERATION_TODAY_MEALS => '/meals/today',
    WearOperation.WEAR_OPERATION_CALORIE_GOAL => '/calorie_goal',
    WearOperation.WEAR_OPERATION_USER_PROFILE => '/user_profile',
    WearOperation.WEAR_OPERATION_FAVORITES => '/favorites',
    WearOperation.WEAR_OPERATION_AUTH_SESSION => '/auth/session',
    WearOperation.WEAR_OPERATION_DETECT_TEXT => '/analysis/detect-text',
    WearOperation.WEAR_OPERATION_UNSPECIFIED ||
    WearOperation.WEAR_OPERATION_DATA_CHANGED => null,
    _ => null,
  };
}

WearOperation? operationForLegacyWearPath(String path) {
  return switch (path) {
    '/meal' => WearOperation.WEAR_OPERATION_MEAL_LOG,
    '/meal/delete' => WearOperation.WEAR_OPERATION_MEAL_DELETE,
    '/meals/today' => WearOperation.WEAR_OPERATION_TODAY_MEALS,
    '/calorie_goal' => WearOperation.WEAR_OPERATION_CALORIE_GOAL,
    '/user_profile' => WearOperation.WEAR_OPERATION_USER_PROFILE,
    '/favorites' => WearOperation.WEAR_OPERATION_FAVORITES,
    '/auth/session' => WearOperation.WEAR_OPERATION_AUTH_SESSION,
    '/analysis/detect-text' => WearOperation.WEAR_OPERATION_DETECT_TEXT,
    _ => null,
  };
}

extension WearErrorRetryability on WearError {
  bool get shouldRetry {
    if (retryable) return true;
    return switch (code) {
      WearErrorCode.WEAR_ERROR_CODE_TIMEOUT ||
      WearErrorCode.WEAR_ERROR_CODE_DISCONNECTED ||
      WearErrorCode.WEAR_ERROR_CODE_UNAVAILABLE ||
      WearErrorCode.WEAR_ERROR_CODE_NETWORK ||
      WearErrorCode.WEAR_ERROR_CODE_INTERNAL ||
      WearErrorCode.WEAR_ERROR_CODE_PLATFORM => true,
      _ => false,
    };
  }
}
