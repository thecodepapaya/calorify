import 'dart:async';

import 'package:calorify_watch/core/services/legacy_wear_protocol.dart';
import 'package:calorify_watch/core/services/watch_transport.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:models/models.dart';

/// Platform channel interface for Wear OS Data Layer communication
class WearOsChannel {
  static const MethodChannel _channel = MethodChannel(
    'dev.thecodepapaya.calorify/wear_os',
  );
  static const EventChannel _eventChannel = EventChannel(
    'dev.thecodepapaya.calorify/wear_os_messages',
  );
  static final Stream<dynamic> _events =
      _eventChannel.receiveBroadcastStream().asBroadcastStream();
  static int _requestCounter = 0;
  static bool? _typedProtocolAvailable;
  static Future<WatchTransportResult?>? _detectTextCapabilityProbe;

  /// Version-1 compatibility entry point used by debug tooling during the
  /// one-version migration window.
  static Future<Map<String, dynamic>?> sendMessage({
    required String path,
    required Map<String, dynamic> data,
  }) => _sendLegacyMessage(path: path, data: data);

  static Future<WatchTransportResult> sendProtocolRequest({
    required WearOperation operation,
    required WearRequest request,
  }) async {
    final requestId =
        'watch-${DateTime.now().microsecondsSinceEpoch}-${_requestCounter++}';
    final envelope = WearProtocolCodec.request(
      requestId: requestId,
      operation: operation,
      payload: request,
    );
    final responseTimeout =
        operation == WearOperation.WEAR_OPERATION_DETECT_TEXT
            ? const Duration(seconds: 47)
            : const Duration(seconds: 7);
    try {
      final result = await _channel
          .invokeMethod<Uint8List>(
            'sendProtocolMessage',
            WearProtocolCodec.encode(envelope),
          )
          .timeout(responseTimeout);
      if (result == null) {
        return WatchTransportResult.failure(
          WearErrorCode.WEAR_ERROR_CODE_MALFORMED_RESPONSE,
          message: 'Phone returned no response',
          retryable: true,
          legacyFallbackEligible: true,
          deliveryUncertain: true,
        );
      }
      final response = WearProtocolCodec.decode(result);
      return WatchTransportResult.fromEnvelope(
        response,
        requestId: requestId,
        operation: operation,
      );
    } on TimeoutException {
      debugPrint('Wear protocol request timed out: ${operation.name}');
      return WatchTransportResult.failure(
        WearErrorCode.WEAR_ERROR_CODE_TIMEOUT,
        message: 'Message to phone timed out',
        legacyFallbackEligible: true,
        deliveryUncertain: true,
      );
    } on MissingPluginException {
      return WatchTransportResult.failure(
        WearErrorCode.WEAR_ERROR_CODE_UNAVAILABLE,
        message: 'Generated Wear protocol is unsupported by the native bridge',
        isProtocolUnsupported: true,
      );
    } on PlatformException catch (e) {
      debugPrint('Failed to send Wear protocol request: code=${e.code}');
      final unsupported =
          e.code == 'NOT_IMPLEMENTED' || e.code == 'PROTOCOL_UNSUPPORTED';
      final noPeerResponse = e.code == 'PROTOCOL_NO_RESPONSE';
      return WatchTransportResult.failure(
        unsupported
            ? WearErrorCode.WEAR_ERROR_CODE_UNAVAILABLE
            : noPeerResponse
            ? WearErrorCode.WEAR_ERROR_CODE_TIMEOUT
            : WearErrorCode.WEAR_ERROR_CODE_PLATFORM,
        message:
            unsupported
                ? 'Generated Wear protocol is unsupported by the native bridge'
                : noPeerResponse
                ? 'Phone did not answer the generated protocol request'
                : 'Platform channel send failed',
        isProtocolUnsupported: unsupported,
        legacyFallbackEligible: noPeerResponse,
        deliveryUncertain: !unsupported,
      );
    } on WearProtocolViolation catch (error) {
      return WatchTransportResult.failure(
        error.code,
        message: error.message,
        retryable: true,
        legacyFallbackEligible: true,
        deliveryUncertain: true,
      );
    }
  }

  static Future<WatchTransportResult> sendRequest({
    required WearOperation operation,
    required WearRequest request,
  }) async {
    if (operation == WearOperation.WEAR_OPERATION_DETECT_TEXT &&
        _typedProtocolAvailable == null) {
      final probeFailure = await _ensureDetectTextCapability();
      if (probeFailure != null) return probeFailure;
    }

    return _sendRequestWithCompatibility(
      operation: operation,
      request: request,
      allowAmbiguousLegacyFallback:
          operation != WearOperation.WEAR_OPERATION_DETECT_TEXT,
    );
  }

  static Future<WatchTransportResult?> _ensureDetectTextCapability() async {
    if (_typedProtocolAvailable != null) return null;

    final pending = _detectTextCapabilityProbe ??= _probeDetectTextCapability();
    try {
      return await pending;
    } finally {
      if (identical(_detectTextCapabilityProbe, pending)) {
        _detectTextCapabilityProbe = null;
      }
    }
  }

  static Future<WatchTransportResult?> _probeDetectTextCapability() async {
    final probe = await _sendRequestWithCompatibility(
      operation: WearOperation.WEAR_OPERATION_CALORIE_GOAL,
      request: WearRequest(calorieGoal: CalorieGoalRequest()),
      allowAmbiguousLegacyFallback: true,
    );
    if (_typedProtocolAvailable != null) return null;

    // No analysis request has been sent yet, so the watch may safely use its
    // direct backend path without duplicating expensive phone-side AI work.
    return WatchTransportResult.failure(
      probe.errorCode ?? WearErrorCode.WEAR_ERROR_CODE_UNAVAILABLE,
      message: probe.errorMessage ?? 'Could not determine phone capability',
      retryable: true,
    );
  }

  static Future<WatchTransportResult> _sendRequestWithCompatibility({
    required WearOperation operation,
    required WearRequest request,
    required bool allowAmbiguousLegacyFallback,
  }) async {
    if (_typedProtocolAvailable != false) {
      final typed = await sendProtocolRequest(
        operation: operation,
        request: request,
      );
      if (typed.isProtocolResponse) {
        _typedProtocolAvailable = true;
        return typed;
      }
      if (!shouldUseLegacyWearProtocol(typed)) {
        return typed;
      }
      if (!allowAmbiguousLegacyFallback && typed.deliveryUncertain) {
        // A timeout or malformed response does not prove that the peer failed
        // to start the request. Replaying DETECT_TEXT would launch duplicate AI
        // work through the compatibility endpoint.
        return typed;
      }
      if (typed.isProtocolUnsupported) {
        _typedProtocolAvailable = false;
      }
    }

    final path = legacyWearPath(operation);
    if (path == null) {
      return WatchTransportResult.failure(
        WearErrorCode.WEAR_ERROR_CODE_UNKNOWN_OPERATION,
        message: 'Operation has no legacy compatibility path',
      );
    }
    final legacyResponse = await sendMessage(
      path: path,
      data: LegacyWearProtocol.encodeRequest(operation, request),
    );
    final legacy = LegacyWearProtocol.decodeResponse(operation, legacyResponse);
    final peerVersion = LegacyWearProtocol.peerProtocolVersion(legacyResponse);
    if (peerVersion != null && peerVersion >= wearProtocolVersion) {
      // The current phone answered through its compatibility endpoint, so a
      // missing generated response was transient and must not downgrade it.
      _typedProtocolAvailable = true;
    } else if (legacy.isSuccess) {
      // A successful unmarked response proves that this is an older phone.
      _typedProtocolAvailable = false;
    }
    return legacy;
  }

  static Future<Map<String, dynamic>?> _sendLegacyMessage({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    final responseTimeout =
        path == '/analysis/detect-text'
            ? const Duration(seconds: 47)
            : const Duration(seconds: 7);
    try {
      final result = await _channel
          .invokeMethod<Map<Object?, Object?>>('sendMessage', {
            'path': path,
            'data': data,
          })
          .timeout(responseTimeout);
      return result == null ? null : Map<String, dynamic>.from(result);
    } on TimeoutException {
      return {'success': false, 'errorCode': 'timeout'};
    } on PlatformException {
      return {'success': false, 'errorCode': 'platform'};
    }
  }

  /// Version-1 compatibility stream used only by debug tooling.
  static Stream<Map<String, dynamic>> listenForMessages() {
    return _events
        .where((event) => event is Map)
        .map((event) => Map<String, dynamic>.from(event as Map))
        .handleError((error) {
          debugPrint('Error receiving message: type=${error.runtimeType}');
        });
  }

  static Stream<WearEnvelope> listenForProtocolEvents() async* {
    await for (final event in _events) {
      if (event is Map) {
        final operation = operationForLegacyWearPath(
          event['path']?.toString() ?? '',
        );
        if (operation != null) {
          yield WearProtocolCodec.dataChangedEvent([operation]);
        }
        continue;
      }
      if (event is! Uint8List) continue;
      try {
        final envelope = WearProtocolCodec.decode(event);
        final validation = WearProtocolCodec.validateEvent(envelope);
        if (validation == null) {
          yield envelope;
        } else {
          debugPrint('Ignoring invalid Wear event: ${validation.message}');
        }
      } on WearProtocolViolation catch (error) {
        debugPrint('Ignoring malformed Wear event: ${error.message}');
      }
    }
  }

  /// Check if phone app is connected
  static Future<bool> isPhoneConnected() async {
    try {
      final result = await _channel
          .invokeMethod<bool>('isPhoneConnected')
          .timeout(const Duration(seconds: 3));
      return result ?? false;
    } on Object {
      return false;
    }
  }

  /// Initialize the Wear OS channel
  static Future<bool> initialize() async {
    _typedProtocolAvailable = null;
    _detectTextCapabilityProbe = null;
    try {
      // Add timeout to prevent hanging
      final result = await _channel
          .invokeMethod<bool>('initialize')
          .timeout(
            const Duration(seconds: 5),
            onTimeout: () {
              debugPrint('Wear OS channel initialization timed out');
              return false;
            },
          );
      return result ?? false;
    } on PlatformException catch (e) {
      debugPrint('Failed to initialize Wear OS channel: code=${e.code}');
      return false;
    } catch (e) {
      debugPrint(
        'Unexpected error initializing Wear OS channel: type=${e.runtimeType}',
      );
      return false;
    }
  }
}

class WearOsSyncTransport implements WatchSyncTransport {
  @override
  Future<bool> initialize() => WearOsChannel.initialize();

  @override
  Future<bool> isPhoneConnected() => WearOsChannel.isPhoneConnected();

  @override
  Stream<WearEnvelope> listenForEvents() {
    return WearOsChannel.listenForProtocolEvents();
  }

  @override
  Future<WatchTransportResult> send({
    required WearOperation operation,
    required WearRequest request,
  }) => WearOsChannel.sendRequest(operation: operation, request: request);
}
