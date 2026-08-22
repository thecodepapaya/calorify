enum WatchTransportErrorCode {
  timeout,
  disconnected,
  unavailable,
  network,
  unauthenticated,
  notFound,
  rejected,
  invalidPayload,
  unknownOperation,
  malformedResponse,
  internal,
  platform,
}

extension WatchTransportErrorCodeRetry on WatchTransportErrorCode {
  bool get shouldRetry => switch (this) {
    WatchTransportErrorCode.timeout ||
    WatchTransportErrorCode.disconnected ||
    WatchTransportErrorCode.unavailable ||
    WatchTransportErrorCode.network ||
    WatchTransportErrorCode.malformedResponse ||
    WatchTransportErrorCode.internal ||
    WatchTransportErrorCode.platform => true,
    _ => false,
  };
}

class WatchTransportResult {
  const WatchTransportResult._({
    required this.data,
    required this.errorCode,
    required this.errorMessage,
    required this.isPeerResponse,
    required this.deliveryUncertain,
    required bool? retryable,
  }) : _retryable = retryable;

  factory WatchTransportResult.success(
    Map<String, dynamic> data, {
    bool isPeerResponse = true,
  }) {
    return WatchTransportResult._(
      data: data,
      errorCode: null,
      errorMessage: null,
      isPeerResponse: isPeerResponse,
      deliveryUncertain: false,
      retryable: false,
    );
  }

  factory WatchTransportResult.failure(
    WatchTransportErrorCode code, {
    String? message,
    bool? retryable,
    bool isPeerResponse = false,
    bool deliveryUncertain = false,
  }) {
    return WatchTransportResult._(
      data: null,
      errorCode: code,
      errorMessage: message,
      isPeerResponse: isPeerResponse,
      deliveryUncertain: deliveryUncertain,
      retryable: retryable,
    );
  }

  final Map<String, dynamic>? data;
  final WatchTransportErrorCode? errorCode;
  final String? errorMessage;
  final bool isPeerResponse;
  final bool deliveryUncertain;
  final bool? _retryable;

  bool get isSuccess => data != null && errorCode == null;
  bool get shouldRetry => _retryable ?? errorCode?.shouldRetry ?? false;
  bool get isValidatedPeerRejection =>
      isPeerResponse && errorCode != null && !shouldRetry;
}

abstract interface class WatchSyncTransport {
  Future<bool> initialize();

  Future<bool> isPhoneConnected();

  Future<WatchTransportResult> send({
    required String path,
    Map<String, dynamic> data = const {},
  });
}
