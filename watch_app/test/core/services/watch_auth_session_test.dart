import 'dart:convert';

import 'package:calorify_watch/core/services/watch_auth_session.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

void main() {
  test(
    'phone session is restored through the secure storage boundary',
    () async {
      final storage = _MemoryAuthStorage();
      final syncedAt = DateTime.utc(2026, 8, 21, 10, 30);
      var legacyCleanupCalls = 0;
      final session = WatchAuthSession(
        storage: storage,
        fetchSession:
            () async => WearAuthSession(
              uid: 'user-1',
              authToken: 'secret-token',
              syncedAt: syncedAt.toIso8601String(),
              isAnonymous: false,
            ),
        deleteLegacySession: () async => legacyCleanupCalls++,
      );

      final refreshed = await session.refreshFromPhone();
      expect(refreshed?.userId, 'user-1');
      expect(storage.value, isNotNull);

      final restoredSession = WatchAuthSession(
        storage: storage,
        fetchSession: () async => null,
        deleteLegacySession: () async => legacyCleanupCalls++,
      );
      final restored = await restoredSession.getSession();

      expect(restored?.authToken, 'secret-token');
      expect(restored?.syncedAt, syncedAt);
      expect(legacyCleanupCalls, 2);
    },
  );

  test('secure storage failure falls back to memory only', () async {
    final storage = _ThrowingAuthStorage();
    final session = WatchAuthSession(
      storage: storage,
      fetchSession:
          () async => WearAuthSession(
            uid: 'user-1',
            authToken: 'ephemeral-token',
            syncedAt: DateTime.now().toUtc().toIso8601String(),
            isAnonymous: true,
          ),
      deleteLegacySession: () async {},
    );

    await session.initialize();
    final refreshed = await session.refreshFromPhone();

    expect(refreshed?.authToken, 'ephemeral-token');
    expect((await session.getSession())?.authToken, 'ephemeral-token');
    expect(storage.writeAttempts, 1);
  });

  test('corrupt secure value is discarded without escaping an error', () async {
    final storage = _MemoryAuthStorage()..value = '{not-json';
    final session = WatchAuthSession(
      storage: storage,
      fetchSession: () async => null,
      deleteLegacySession: () async {},
    );

    expect(await session.getSession(), isNull);
    expect(storage.value, isNull);
  });

  test(
    'legacy secure snapshots are rewritten without the unused FCM token',
    () async {
      final storage =
          _MemoryAuthStorage()
            ..value = jsonEncode({
              'uid': 'user-1',
              'authToken': 'secret-token',
              'syncedAt': DateTime.utc(2026, 8, 21, 10, 30).toIso8601String(),
              'isAnonymous': false,
              'fcmToken': 'obsolete-sensitive-token',
            });
      final session = WatchAuthSession(
        storage: storage,
        fetchSession: () async => null,
        deleteLegacySession: () async {},
      );

      expect((await session.getSession())?.userId, 'user-1');
      final migrated = jsonDecode(storage.value!) as Map<String, dynamic>;
      expect(migrated, isNot(contains('fcmToken')));
    },
  );
}

class _MemoryAuthStorage implements WatchAuthStorage {
  String? value;

  @override
  Future<void> delete() async {
    value = null;
  }

  @override
  Future<String?> read() async => value;

  @override
  Future<void> write(String value) async {
    this.value = value;
  }
}

class _ThrowingAuthStorage implements WatchAuthStorage {
  int writeAttempts = 0;

  @override
  Future<void> delete() => Future.error(StateError('keystore unavailable'));

  @override
  Future<String?> read() => Future.error(StateError('keystore unavailable'));

  @override
  Future<void> write(String value) {
    writeAttempts++;
    return Future.error(StateError('keystore unavailable'));
  }
}
