import 'package:models/models.dart';

class WatchTransportResult {
  WatchTransportResult._({
    required this.response,
    required this.error,
    required this.isProtocolResponse,
    required this.isProtocolUnsupported,
    required this.legacyFallbackEligible,
    required this.deliveryUncertain,
  });

  factory WatchTransportResult.fromEnvelope(
    WearEnvelope envelope, {
    required String requestId,
    required WearOperation operation,
  }) {
    final validation = WearProtocolCodec.validateResponse(
      envelope,
      expectedRequestId: requestId,
      expectedOperation: operation,
    );
    if (validation != null) {
      return WatchTransportResult.failure(
        validation.code,
        message: validation.message,
        // A decoded envelope is not a confirmed peer response until its
        // version, correlation id, operation, and payload all validate. Keep
        // durable work retryable when transport bytes are malformed or stale.
        retryable: true,
        legacyFallbackEligible: true,
        deliveryUncertain: true,
      );
    }
    if (envelope.response.hasError()) {
      return WatchTransportResult._(
        response: null,
        error: envelope.response.error,
        isProtocolResponse: true,
        isProtocolUnsupported: false,
        legacyFallbackEligible: false,
        deliveryUncertain: false,
      );
    }
    return WatchTransportResult.success(
      envelope.response,
      isProtocolResponse: true,
    );
  }

  factory WatchTransportResult.success(
    WearResponse response, {
    bool isProtocolResponse = false,
  }) {
    return WatchTransportResult._(
      response: response,
      error: null,
      isProtocolResponse: isProtocolResponse,
      isProtocolUnsupported: false,
      legacyFallbackEligible: false,
      deliveryUncertain: false,
    );
  }

  factory WatchTransportResult.failure(
    WearErrorCode code, {
    String? message,
    bool retryable = false,
    bool isProtocolResponse = false,
    bool isProtocolUnsupported = false,
    bool legacyFallbackEligible = false,
    bool deliveryUncertain = false,
  }) {
    return WatchTransportResult._(
      response: null,
      error: WearError(code: code, message: message, retryable: retryable),
      isProtocolResponse: isProtocolResponse,
      isProtocolUnsupported: isProtocolUnsupported,
      legacyFallbackEligible: legacyFallbackEligible,
      deliveryUncertain: deliveryUncertain,
    );
  }

  final WearResponse? response;
  final WearError? error;
  final bool isProtocolResponse;
  final bool isProtocolUnsupported;
  final bool legacyFallbackEligible;
  final bool deliveryUncertain;

  WearErrorCode? get errorCode => error?.code;
  String? get errorMessage => error?.message;
  bool get isSuccess => response != null && error == null;
  bool get shouldRetry => error?.shouldRetry ?? false;
  bool get isValidatedPeerRejection =>
      isProtocolResponse && error != null && !shouldRetry;
}

bool shouldUseLegacyWearProtocol(WatchTransportResult result) {
  return result.isProtocolUnsupported || result.legacyFallbackEligible;
}

abstract interface class WatchSyncTransport {
  Future<bool> initialize();

  Future<bool> isPhoneConnected();

  Future<WatchTransportResult> send({
    required WearOperation operation,
    required WearRequest request,
  });

  Stream<WearEnvelope> listenForEvents();
}
