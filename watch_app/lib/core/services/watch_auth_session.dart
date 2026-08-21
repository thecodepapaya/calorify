import 'dart:convert';
import 'dart:io';

import 'package:calorify_watch/core/services/wear_os_channel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:models/models.dart';
import 'package:path_provider/path_provider.dart';

class WatchAuthSnapshot {
  const WatchAuthSnapshot({
    required this.userId,
    required this.authToken,
    required this.syncedAt,
    required this.isAnonymous,
  });

  final String userId;
  final String authToken;
  final DateTime syncedAt;
  final bool isAnonymous;

  bool get isStale =>
      DateTime.now().difference(syncedAt) > const Duration(minutes: 45);

  Map<String, dynamic> toJson() {
    return {
      'uid': userId,
      'authToken': authToken,
      'syncedAt': syncedAt.toUtc().toIso8601String(),
      'isAnonymous': isAnonymous,
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
    );
  }

  static WatchAuthSnapshot? fromProto(WearAuthSession session) {
    final syncedAt = DateTime.tryParse(session.syncedAt);
    if (session.uid.isEmpty || session.authToken.isEmpty || syncedAt == null) {
      return null;
    }
    return WatchAuthSnapshot(
      userId: session.uid,
      authToken: session.authToken,
      syncedAt: syncedAt,
      isAnonymous: session.isAnonymous,
    );
  }
}

@visibleForTesting
bool shouldRefreshWatchAuthSession(
  WatchAuthSnapshot? session, {
  required bool refreshIfNeeded,
}) => refreshIfNeeded && (session == null || session.isStale);

/// Narrow persistence boundary for the phone-provided authentication session.
/// Production uses Android Keystore-backed storage; tests can supply a fake.
abstract interface class WatchAuthStorage {
  Future<String?> read();

  Future<void> write(String value);

  Future<void> delete();
}

class KeystoreWatchAuthStorage implements WatchAuthStorage {
  KeystoreWatchAuthStorage();

  static const _key = 'watch_auth_session';
  static final _storage = FlutterSecureStorage(
    aOptions: const AndroidOptions(
      encryptedSharedPreferences: true,
      resetOnError: true,
    ),
  );

  @override
  Future<String?> read() => _storage.read(key: _key);

  @override
  Future<void> write(String value) => _storage.write(key: _key, value: value);

  @override
  Future<void> delete() => _storage.delete(key: _key);
}

typedef WatchAuthSessionFetcher = Future<WearAuthSession?> Function();

abstract interface class WatchSyncAuth {
  Future<void> initialize();

  Future<WatchAuthSnapshot?> refreshFromPhone();
}

class WatchAuthSession implements WatchSyncAuth {
  WatchAuthSession({
    WatchAuthStorage? storage,
    WatchAuthSessionFetcher? fetchSession,
    Future<void> Function()? deleteLegacySession,
  }) : _storage = storage ?? KeystoreWatchAuthStorage(),
       _fetchSession = fetchSession ?? _fetchSessionFromPhone,
       _deleteLegacySession =
           deleteLegacySession ?? _deleteLegacyPlaintextSession;

  static final WatchAuthSession instance = WatchAuthSession();

  final WatchAuthStorage _storage;
  final WatchAuthSessionFetcher _fetchSession;
  final Future<void> Function() _deleteLegacySession;

  WatchAuthSnapshot? _session;
  Future<void>? _loadFuture;

  @override
  Future<void> initialize() async {
    _loadFuture ??= _initialize();
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

  @override
  Future<WatchAuthSnapshot?> refreshFromPhone() async {
    await initialize();
    try {
      final response = await _fetchSession();
      if (response == null) {
        return _session;
      }

      final parsed = WatchAuthSnapshot.fromProto(response);
      if (parsed == null) {
        _debugLog('Phone returned an invalid auth session payload');
        return _session;
      }

      _session = parsed;
      await _saveToSecureStorage(parsed);
      return _session;
    } catch (_) {
      _debugLog('Failed to refresh auth session');
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
    try {
      await _storage.delete();
    } catch (_) {
      _debugLog('Failed to delete secure auth session');
    }
    try {
      await _deleteLegacySession();
    } catch (_) {
      _debugLog('Failed to delete legacy auth session file');
    }
  }

  Future<void> _initialize() async {
    await _loadFromSecureStorage();
    try {
      await _deleteLegacySession();
    } catch (_) {
      _debugLog('Failed to delete legacy auth session file');
    }
  }

  Future<void> _loadFromSecureStorage() async {
    try {
      final raw = await _storage.read();
      if (raw == null || raw.isEmpty) {
        return;
      }

      final decoded = jsonDecode(raw);
      if (decoded is! Map) {
        return;
      }

      final parsed = WatchAuthSnapshot.fromJson(
        Map<String, dynamic>.from(decoded),
      );
      if (parsed == null) {
        await _storage.delete();
        return;
      }
      _session = parsed;
      if (decoded.containsKey('fcmToken')) {
        await _storage.write(jsonEncode(parsed.toJson()));
      }
    } catch (_) {
      // Keystore entries can become unreadable after restore or lock-screen
      // changes. Stay memory-only until the phone supplies a fresh session;
      // never fall back to an unencrypted file.
      _debugLog('Failed to load secure auth session');
      try {
        await _storage.delete();
      } catch (_) {}
    }
  }

  Future<void> _saveToSecureStorage(WatchAuthSnapshot session) async {
    try {
      await _storage.write(jsonEncode(session.toJson()));
    } catch (_) {
      // The in-memory session remains usable for this process. A later launch
      // will request it from the phone again instead of persisting plaintext.
      _debugLog('Secure auth persistence unavailable; using memory only');
    }
  }

  static Future<WearAuthSession?> _fetchSessionFromPhone() async {
    final result = await WearOsChannel.sendRequest(
      operation: WearOperation.WEAR_OPERATION_AUTH_SESSION,
      request: WearRequest(authSession: AuthSessionRequest()),
    );
    if (!result.isSuccess || !result.response!.hasAuthSession()) return null;
    final response = result.response!.authSession;
    return response.hasSession() ? response.session : null;
  }

  static Future<void> _deleteLegacyPlaintextSession() async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/watch_auth_session.json');
    if (await file.exists()) {
      await file.delete();
    }
  }

  void _debugLog(String message) {
    if (kDebugMode) {
      debugPrint('[WatchAuthSession] $message');
    }
  }
}
