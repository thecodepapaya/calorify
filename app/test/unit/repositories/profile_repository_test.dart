import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/network/network_client.dart';
import 'package:calorify/core/repositories/profile_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:models/models.dart';

class _MockDatabase extends Mock implements DatabaseInterface {}

class _RecordingRemote implements ProfileRemoteDataSource {
  Object? error;
  final updates = <UserProfile>[];

  @override
  Future<void> replaceUserProfile(UserProfile profile) async {
    if (error != null) throw error!;
    updates.add(profile);
  }
}

class _BlockingRemote implements ProfileRemoteDataSource {
  final firstStarted = Completer<void>();
  final releaseFirst = Completer<void>();
  final updates = <UserProfile>[];
  var activeRequests = 0;
  var maxActiveRequests = 0;

  @override
  Future<void> replaceUserProfile(UserProfile profile) async {
    activeRequests++;
    maxActiveRequests = max(maxActiveRequests, activeRequests);
    updates.add(profile);
    try {
      if (updates.length == 1) {
        firstStarted.complete();
        await releaseFirst.future;
      }
    } finally {
      activeRequests--;
    }
  }
}

void main() {
  late _MockDatabase database;
  late _RecordingRemote remote;
  late ProfileRepository repository;
  final profile = UserProfile(weight: 70, dailyCalorieGoal: 2100);
  final pending = PendingProfileSync(profile: profile, revision: 'revision-1');

  setUp(() {
    database = _MockDatabase();
    remote = _RecordingRemote();
    repository = ProfileRepository(database: database, remote: remote);
  });

  test('save persists locally before sending and acknowledging', () async {
    when(() => database.saveUserProfile(profile)).thenAnswer((_) async {});
    when(
      () => database.getPendingProfileSync(),
    ).thenAnswer((_) async => pending);
    when(
      () => database.markProfileSynced('revision-1'),
    ).thenAnswer((_) async => true);

    expect(await repository.saveUserProfile(profile), isTrue);

    verifyInOrder([
      () => database.saveUserProfile(profile),
      () => database.getPendingProfileSync(),
      () => database.markProfileSynced('revision-1'),
    ]);
    expect(remote.updates.single, profile);
  });

  test('network failure leaves the durable revision pending', () async {
    remote.error = StateError('offline');
    when(
      () => database.getPendingProfileSync(),
    ).thenAnswer((_) async => pending);

    expect(await repository.syncPendingProfile(), isFalse);
    verifyNever(() => database.markProfileSynced(any()));
  });

  test('a superseded revision is not acknowledged as current', () async {
    var readCount = 0;
    when(
      () => database.getPendingProfileSync(),
    ).thenAnswer((_) async => readCount++ == 0 ? pending : null);
    when(
      () => database.markProfileSynced('revision-1'),
    ).thenAnswer((_) async => false);

    expect(await repository.syncPendingProfile(), isTrue);
    expect(remote.updates, hasLength(1));
  });

  test(
    'overlapping syncs serialize and leave the newest profile remote',
    () async {
      final blockingRemote = _BlockingRemote();
      repository = ProfileRepository(
        database: database,
        remote: blockingRemote,
      );
      final newerProfile = UserProfile(weight: 80, dailyCalorieGoal: 2300);
      final newerPending = PendingProfileSync(
        profile: newerProfile,
        revision: 'revision-2',
      );
      PendingProfileSync? currentPending = pending;

      when(
        () => database.getPendingProfileSync(),
      ).thenAnswer((_) async => currentPending);
      when(() => database.saveUserProfile(newerProfile)).thenAnswer((_) async {
        currentPending = newerPending;
      });
      when(() => database.markProfileSynced(any())).thenAnswer((
        invocation,
      ) async {
        final revision = invocation.positionalArguments.single as String;
        if (currentPending?.revision != revision) return false;
        currentPending = null;
        return true;
      });

      final olderSync = repository.syncPendingProfile();
      await blockingRemote.firstStarted.future;
      final newerSync = repository.saveUserProfile(newerProfile);
      blockingRemote.releaseFirst.complete();

      expect(await Future.wait([olderSync, newerSync]), everyElement(isTrue));
      expect(blockingRemote.maxActiveRequests, 1);
      expect(blockingRemote.updates.map((profile) => profile.weight), [70, 80]);
      expect(currentPending, isNull);
    },
  );

  test('no pending revision performs no network request', () async {
    when(() => database.getPendingProfileSync()).thenAnswer((_) async => null);

    expect(await repository.syncPendingProfile(), isTrue);
    expect(remote.updates, isEmpty);
  });

  test('network profile sync uses full-replacement PUT semantics', () async {
    final adapter = _RecordingAdapter();
    final dio = Dio(BaseOptions(baseUrl: 'https://api.example.test'))
      ..httpClientAdapter = adapter;
    final remote = NetworkProfileRemoteDataSource(
      networkClient: NetworkClient.forTesting(dio),
    );

    await remote.replaceUserProfile(UserProfile(weight: 70));

    expect(adapter.lastRequest?.method, 'PUT');
    expect(adapter.lastRequest?.path, '/api/v1/user/profile');
    expect(adapter.lastRequest?.data, {'weight': 70.0});
  });
}

class _RecordingAdapter implements HttpClientAdapter {
  RequestOptions? lastRequest;

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    lastRequest = options;
    return ResponseBody.fromString(
      jsonEncode({'ok': true}),
      200,
      headers: {
        Headers.contentTypeHeader: ['application/json'],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}
