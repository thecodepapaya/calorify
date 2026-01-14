import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';

/// Platform channel interface for Wear OS communication from phone app
class WearOsPhoneChannel {
  static const MethodChannel _channel = MethodChannel(
    'dev.thecodepapaya.calorify/wear_os_phone',
  );

  /// Send data to the connected watch app
  static Future<bool> sendToWatch({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    try {
      final result = await _channel.invokeMethod<bool>('sendToWatch', {
        'path': path,
        'data': data,
      });
      return result ?? false;
    } on PlatformException catch (e) {
      debugPrint('Failed to send to watch: ${e.message}');
      return false;
    }
  }

  /// Handle message from watch (called by Kotlin code)
  static Future<Map<String, dynamic>?> handleWatchMessage({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    try {
      final result = await _channel.invokeMethod<Map<Object?, Object?>>(
        'handleWatchMessage',
        {'path': path, 'data': data},
      );
      if (result == null) return null;
      return Map<String, dynamic>.from(result);
    } on PlatformException catch (e) {
      debugPrint('Failed to handle watch message: ${e.message}');
      return null;
    }
  }

  /// Check if watch app is connected
  static Future<bool> isWatchConnected() async {
    try {
      final result = await _channel.invokeMethod<bool>('isWatchConnected');
      return result ?? false;
    } on PlatformException catch (e) {
      debugPrint('Failed to check watch connection: ${e.message}');
      return false;
    }
  }

  /// Get information about connected watch device
  static Future<Map<String, dynamic>?> getConnectedWatchInfo() async {
    try {
      final result = await _channel.invokeMethod<Map<Object?, Object?>>(
        'getConnectedWatchInfo',
      );
      if (result == null) return null;
      return Map<String, dynamic>.from(result);
    } on PlatformException catch (e) {
      debugPrint('Failed to get watch info: ${e.message}');
      return null;
    }
  }
}
