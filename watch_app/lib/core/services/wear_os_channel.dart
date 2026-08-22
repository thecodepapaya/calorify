import 'dart:async';

import 'package:calorify_watch/core/services/watch_transport.dart';
import 'package:calorify_watch/core/services/wear_json_protocol.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// JSON request/response transport over the Wear OS Data Layer native bridge.
class WearOsChannel {
  static const MethodChannel _channel = MethodChannel(
    'dev.thecodepapaya.calorify/wear_os',
  );

  static Future<WatchTransportResult> sendRequest({
    required String path,
    Map<String, dynamic> data = const {},
  }) async {
    final timeout =
        path == WatchPaths.detectText
            ? const Duration(seconds: 47)
            : const Duration(seconds: 7);
    try {
      final result = await _channel
          .invokeMethod<Map<Object?, Object?>>('sendMessage', {
            'path': path,
            'data': data,
          })
          .timeout(timeout);
      return WearJsonProtocol.decodeResponse(
        path,
        result == null ? null : Map<String, dynamic>.from(result),
      );
    } on TimeoutException {
      debugPrint('Wear request timed out: path=$path');
      return WatchTransportResult.failure(
        WatchTransportErrorCode.timeout,
        message: 'Message to phone timed out',
        deliveryUncertain: path == WatchPaths.detectText,
      );
    } on MissingPluginException {
      return WatchTransportResult.failure(
        WatchTransportErrorCode.unavailable,
        message: 'Wear OS channel is unavailable',
      );
    } on PlatformException catch (error) {
      debugPrint('Wear request failed: path=$path, code=${error.code}');
      return WatchTransportResult.failure(
        WatchTransportErrorCode.platform,
        message: 'Platform channel send failed',
        deliveryUncertain: path == WatchPaths.detectText,
      );
    }
  }

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

  static Future<bool> initialize() async {
    try {
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
    } on PlatformException catch (error) {
      debugPrint('Wear OS initialization failed: code=${error.code}');
      return false;
    } catch (error) {
      debugPrint(
        'Unexpected Wear OS initialization error: type=${error.runtimeType}',
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
  Future<WatchTransportResult> send({
    required String path,
    Map<String, dynamic> data = const {},
  }) => WearOsChannel.sendRequest(path: path, data: data);
}
