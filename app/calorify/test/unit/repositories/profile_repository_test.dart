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

class _RecordingRemote {
  Object? error;
  final updates = <HealthData>[];

  Future<void> replaceHealthData(HealthData data) async {
    if (error != null) throw error!;
    updates.add(data);
  }
}

class _BlockingRemote {
  final firstStarted = Completer<void>();
  final releaseFirst = Completer<void>();
  final updates = <HealthData>[];
  var activeRequests = 0;
  var maxActiveRequests = 0;

  Future<void> replaceHealthData(HealthData data) async {
    activeRequests++;
    maxActiveRequests = max(maxActiveRequests, activeRequests);
    updates.add(data);
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
  final healthData = HealthData(
    weight: Weight(value: 70, unit: WeightUnit.KG),
    dailyMacroGoal: Macros(calorie: Measurement(value: 2100)),
  );
  final pending =
      PendingHealthDataSync(healthData: healthData, revision: 'revision-1');

  setUp(() {
    database = _MockDatabase();
    remote = _RecordingRemote();
    repository = ProfileRepository.forTesting(
      database: database,
      uploadProfile: remote.replaceHealthData,
    );
  });

  test('save persists locally before sending and acknowledging', () async {
    when(() => database.saveHealthData(healthData)).thenAnswer((_) async {});
    when(
      () => database.getPendingHealthDataSync(),
    ).thenAnswer((_) async => pending);
    when(
      () => database.markHealthDataSynced('revision-1'),
    ).thenAnswer((_) async => true);

    expect(await repository.saveHealthData(healthData), isTrue);

    verifyInOrder([
      () => database.saveHealthData(healthData),
      () => database.getPendingHealthDataSync(),
      () => database.markHealthDataSynced('revision-1'),
    ]);
    expect(remote.updates.single, healthData);
  });

  test('network failure leaves the durable revision pending', () async {
    remote.error = StateError('offline');
    when(
      () => database.getPendingHealthDataSync(),
    ).thenAnswer((_) async => pending);

    expect(await repository.syncPendingHealthData(), isFalse);
    verifyNever(() => database.markHealthDataSynced(any()));
  });

  test('a superseded revision is not acknowledged as current', () async {
    var readCount = 0;
    when(
      () => database.getPendingHealthDataSync(),
    ).thenAnswer((_) async => readCount++ == 0 ? pending : null);
    when(
      () => database.markHealthDataSynced('revision-1'),
    ).thenAnswer((_) async => false);

    expect(await repository.syncPendingHealthData(), isTrue);
    expect(remote.updates, hasLength(1));
  });

  test(
    'overlapping syncs serialize and leave the newest profile remote',
    () async {
      final blockingRemote = _BlockingRemote();
      repository = ProfileRepository.forTesting(
        database: database,
        uploadProfile: blockingRemote.replaceHealthData,
      );
      final newerHealthData = HealthData(
        weight: Weight(value: 80, unit: WeightUnit.KG),
        dailyMacroGoal: Macros(calorie: Measurement(value: 2300)),
      );
      final newerPending = PendingHealthDataSync(
        healthData: newerHealthData,
        revision: 'revision-2',
      );
      PendingHealthDataSync? currentPending = pending;

      when(
        () => database.getPendingHealthDataSync(),
      ).thenAnswer((_) async => currentPending);
      when(() => database.saveHealthData(newerHealthData)).thenAnswer((_) async {
        currentPending = newerPending;
      });
      when(() => database.markHealthDataSynced(any())).thenAnswer((
        invocation,
      ) async {
        final revision = invocation.positionalArguments.single as String;
        if (currentPending?.revision != revision) return false;
        currentPending = null;
        return true;
      });

      final olderSync = repository.syncPendingHealthData();
      await blockingRemote.firstStarted.future;
      final newerSync = repository.saveHealthData(newerHealthData);
      blockingRemote.releaseFirst.complete();

      expect(await Future.wait([olderSync, newerSync]), everyElement(isTrue));
      expect(blockingRemote.maxActiveRequests, 1);
      expect(blockingRemote.updates.map((d) => d.weight.value), [70, 80]);
      expect(currentPending, isNull);
    },
  );

  test('no pending revision performs no network request', () async {
    when(() => database.getPendingHealthDataSync()).thenAnswer((_) async => null);

    expect(await repository.syncPendingHealthData(), isTrue);
    expect(remote.updates, isEmpty);
  });

  test('network profile sync uses POST /users/health-data', () async {
    final adapter = _RecordingAdapter();
    final dio = Dio(BaseOptions(baseUrl: 'https://api.example.test'))
      ..httpClientAdapter = adapter;
    final repository = ProfileRepository(
      database: database,
      networkClient: NetworkClient.forTesting(dio),
    );
    when(
      () => database.getPendingHealthDataSync(),
    ).thenAnswer((_) async => pending);
    when(
      () => database.markHealthDataSynced('revision-1'),
    ).thenAnswer((_) async => true);

    await repository.syncPendingHealthData();

    expect(adapter.lastRequest?.method, 'POST');
    expect(adapter.lastRequest?.path, '/users/health-data');
    expect(adapter.lastRequest?.data, containsPair('healthData', isA<Map>()));
  });

  test('normalizes legacy dateOfBirth timestamps only for upload', () async {
    final legacyProfile = HealthData(
      weight: Weight(value: 70, unit: WeightUnit.KG),
      dateOfBirth: '2001-08-02T23:45:00+05:30',
    );
    final legacyPending = PendingHealthDataSync(
      healthData: legacyProfile,
      revision: 'legacy-revision',
    );
    when(
      () => database.getPendingHealthDataSync(),
    ).thenAnswer((_) async => legacyPending);
    when(
      () => database.markHealthDataSynced('legacy-revision'),
    ).thenAnswer((_) async => true);

    expect(await repository.syncPendingHealthData(), isTrue);

    expect(remote.updates.single.dateOfBirth, '2001-08-02');
    expect(legacyProfile.dateOfBirth, '2001-08-02T23:45:00+05:30');
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
