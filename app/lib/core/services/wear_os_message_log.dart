import 'package:flutter/foundation.dart';

/// Global message log for Wear OS debug messages
class WearOsMessageLog {
  static final List<Map<String, dynamic>> _messages = [];
  static final int _maxMessages = 50;

  /// Add a received message to the log
  static void addMessage(String path, Map<String, dynamic> data) {
    if (!kDebugMode) return;
    
    _messages.insert(0, {
      'path': path,
      'data': data,
      'timestamp': DateTime.now(),
    });
    if (_messages.length > _maxMessages) {
      _messages.removeRange(_maxMessages, _messages.length);
    }
  }

  /// Get all messages (read-only)
  static List<Map<String, dynamic>> get messages => List.unmodifiable(_messages);
  
  /// Clear all messages
  static void clear() {
    _messages.clear();
  }
}
