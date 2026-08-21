import 'package:flutter/foundation.dart';

/// Global message log for Wear OS debug messages
class WearOsMessageLog {
  static final List<Map<String, dynamic>> _messages = [];
  static final int _maxMessages = 50;

  /// Add a received message to the log
  static void addMessage(String path, Map<String, dynamic> data) {
    if (!kDebugMode) return;

    // The debug history is intentionally metadata-only. Legacy payloads may
    // contain meal descriptions or credentials and must never be retained by
    // a diagnostic screen.
    final fields = data.keys.toList()..sort();
    _messages.insert(0, {
      'path': path,
      'data': {'fieldCount': data.length, 'fields': fields.join(', ')},
      'timestamp': DateTime.now(),
    });
    if (_messages.length > _maxMessages) {
      _messages.removeRange(_maxMessages, _messages.length);
    }
  }

  /// Get all messages (read-only)
  static List<Map<String, dynamic>> get messages =>
      List.unmodifiable(_messages);

  /// Clear all messages
  static void clear() {
    _messages.clear();
  }
}
