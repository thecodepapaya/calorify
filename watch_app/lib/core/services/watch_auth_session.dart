import 'dart:convert';
import 'dart:io';

import 'package:calorify_watch/core/services/wear_os_channel.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

class WatchAuthSnapshot {
  const WatchAuthSnapshot({
    required this.userId,
    required this.authToken,
    required this.syncedAt,
    required this.isAnonymous,
    this.fcmToken,
  });

  final String userId;
  final String authToken;
  final DateTime syncedAt;
  final bool isAnonymous;
  final String? fcmToken;

  bool get isStale =>
      DateTime.now().difference(syncedAt) > const Duration(minutes: 45);

  Map<String, dynamic> toJson() {
    return {
      'uid': userId,
      'authToken': authToken,
      'syncedAt': syncedAt.toUtc().toIso8601String(),
      'isAnonymous': isAnonymous,
      if (fcmToken != null) 'fcmToken': fcmToken,
    };
  }

  static WatchAuthSnapshot? fromJson(Map<String, dynamic> json) {
    final userId = json['uid'] as String?;
    final authToken = json['authToken'] as String?;
    final syncedAtValue = json['syncedAt'] as String?;
    if (userId == null ||
        userId.isEmpty ||
        authToken == null ||
        authToken.isEmpty ||
        syncedAtValue == null) {
      return null;
    }

    final syncedAt = DateTime.tryParse(syncedAtValue);
    if (syncedAt == null) {
      return null;
    }

    return WatchAuthSnapshot(
      userId: userId,
      authToken: authToken,
      syncedAt: syncedAt,
      isAnonymous: json['isAnonymous'] as bool? ?? false,
      fcmToken: json['fcmToken'] as String?,
    );
  }
}

@visibleForTesting
bool shouldRefreshWatchAuthSession(
  WatchAuthSnapshot? session, {
  required bool refreshIfNeeded,
}) => refreshIfNeeded && (session == null || session.isStale);

class WatchAuthSession {
  WatchAuthSession._();

  static final WatchAuthSession instance = WatchAuthSession._();
  static const String _fileName = 'watch_auth_session.json';

  WatchAuthSnapshot? _session;
  Future<void>? _loadFuture;

  Future<void> initialize() async {
    _loadFuture ??= _loadFromDisk();
    await _loadFuture;
  }

  Future<WatchAuthSnapshot?> getSession({bool refreshIfNeeded = false}) async {
    await initialize();
    if (shouldRefreshWatchAuthSession(
      _session,
      refreshIfNeeded: refreshIfNeeded,
    )) {
      final refreshed = await refreshFromPhone();
      if (refreshed != null) {
        return refreshed;
      }
    }
    return _session;
  }

  Future<WatchAuthSnapshot?> refreshFromPhone() async {
    try {
      final response = await WearOsChannel.sendMessage(
        path: '/auth/session',
        data: const {},
      );
      if (response == null || response['success'] != true) {
        return _session;
      }

      final sessionData = response['session'];
      if (sessionData is! Map) {
        return _session;
      }

      final parsed = WatchAuthSnapshot.fromJson(
        Map<String, dynamic>.from(sessionData),
      );
      if (parsed == null) {
        _debugLog('Phone returned an invalid auth session payload');
        return _session;
      }

      _session = parsed;
      await _saveToDisk(parsed);
      return _session;
    } catch (error) {
      _debugLog('Failed to refresh auth session: $error');
      return _session;
    }
  }

  @visibleForTesting
  void resetForTesting() {
    _session = null;
    _loadFuture = null;
  }

  Future<void> clear() async {
    _session = null;
    final file = await _getSessionFile();
    if (await file.exists()) {
      await file.delete();
    }
  }

  Future<void> _loadFromDisk() async {
    try {
      final file = await _getSessionFile();
      if (!await file.exists()) {
        return;
      }

      final raw = await file.readAsString();
      final decoded = jsonDecode(raw);
      if (decoded is! Map) {
        return;
      }

      _session = WatchAuthSnapshot.fromJson(Map<String, dynamic>.from(decoded));
    } catch (error) {
      _debugLog('Failed to load cached auth session: $error');
    }
  }

  Future<void> _saveToDisk(WatchAuthSnapshot session) async {
    try {
      final file = await _getSessionFile();
      if (!await file.parent.exists()) {
        await file.parent.create(recursive: true);
      }
      await file.writeAsString(jsonEncode(session.toJson()));
    } catch (error) {
      _debugLog('Failed to persist auth session: $error');
    }
  }

  Future<File> _getSessionFile() async {
    final directory = await getApplicationDocumentsDirectory();
    return File('${directory.path}/$_fileName');
  }

  void _debugLog(String message) {
    if (kDebugMode) {
      debugPrint('[WatchAuthSession] $message');
    }
  }
}
