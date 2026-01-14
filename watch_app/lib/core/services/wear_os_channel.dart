import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';

/// Platform channel interface for Wear OS Data Layer communication
class WearOsChannel {
  static const MethodChannel _channel = MethodChannel(
    'dev.thecodepapaya.calorify/wear_os',
  );

  /// Send a message to the connected phone app
  static Future<Map<String, dynamic>?> sendMessage({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    try {
      final result = await _channel.invokeMethod<Map<Object?, Object?>>(
        'sendMessage',
        {'path': path, 'data': data},
      );
      if (result == null) return null;
      return Map<String, dynamic>.from(result);
    } on PlatformException catch (e) {
      debugPrint('Failed to send message: ${e.message}');
      return null;
    }
  }

  /// Listen for messages from the phone app
  static Stream<Map<String, dynamic>> listenForMessages() {
    const eventChannel = EventChannel(
      'dev.thecodepapaya.calorify/wear_os_messages',
    );

    return eventChannel
        .receiveBroadcastStream()
        .map((dynamic event) {
          if (event is Map) {
            return Map<String, dynamic>.from(event);
          }
          return <String, dynamic>{};
        })
        .handleError((error) {
          debugPrint('Error receiving message: $error');
        });
  }

  /// Check if phone app is connected
  static Future<bool> isPhoneConnected() async {
    try {
      final result = await _channel.invokeMethod<bool>('isPhoneConnected');
      return result ?? false;
    } on PlatformException {
      return false;
    }
  }

  /// Initialize the Wear OS channel
  static Future<bool> initialize() async {
    try {
      // Add timeout to prevent hanging
      final result = await _channel.invokeMethod<bool>('initialize')
          .timeout(const Duration(seconds: 5), onTimeout: () {
        debugPrint('Wear OS channel initialization timed out');
        return false;
      });
      return result ?? false;
    } on PlatformException catch (e) {
      debugPrint('Failed to initialize Wear OS channel: ${e.message}');
      return false;
    } catch (e) {
      debugPrint('Unexpected error initializing Wear OS channel: $e');
      return false;
    }
  }
}
