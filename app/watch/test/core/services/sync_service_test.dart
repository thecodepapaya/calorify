import 'dart:async';

import 'package:calorify_watch/core/db/watch_database.dart';
import 'package:calorify_watch/core/services/data_cache.dart';
import 'package:calorify_watch/core/services/sync_service.dart';
import 'package:calorify_watch/core/services/watch_clock.dart';
import 'package:calorify_watch/core/services/watch_transport.dart';
import 'package:calorify_watch/core/services/wear_json_protocol.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

void main() {
  test('watch meal operation id is stable across retries', () {
    final meal = LoggedMeal(
      clientId: -4,
      createdAt: '2026-07-29T10:15:30.000Z',
      meal: Meal(name: 'Dal and rice'),
    );

    expect(watchMealOperationId(meal), 'watch:-4:2026-07-29T10:15:30.000Z');
    final restoredMeal = LoggedMeal.fromBuffer(meal.writeToBuffer());
    expect(watchMealOperationId(meal), watchMealOperationId(restoredMeal));
  });

  test('transport errors determine retry without substring matching', () {
    final timeout = WatchTransportResult.failure(
      WatchTransportErrorCode.timeout,
      message: 'Any localized message',
    );
    final rejection = WatchTransportResult.failure(
      WatchTransportErrorCode.rejected,
      message: 'Network field is invalid',
    );

    expect(timeout.errorCode, WatchTransportErrorCode.timeout);
    expect(timeout.shouldRetry, isTrue);
    expect(rejection.errorCode, WatchTransportErrorCode.rejected);
    expect(rejection.shouldRetry, isFalse);
  });

  test(
    'disconnected meal logs are cached and queued through collaborators',
    () async {
      final fixture = _SyncFixture(connected: false);
      addTearDown(fixture.dispose);

      final result = await fixture.service.sendMeal(Meal(name: 'Poha'));

      expect(result, SyncRequestResult.queued);
      expect(fixture.database.queuedLogs, hasLength(1));
      expect(fixture.cache.todaysMeals.value.single.meal.name, 'Poha');
      expect(fixture.service.syncState.value, SyncState.disconnected);
    },
  );

  test(
    'transient failures stay queued without reading error text',
    () async {
      final fixture = _SyncFixture();
      addTearDown(fixture.dispose);
      fixture.transport.responders[WatchPaths.mealLog] = (_, _) async {
        return WatchTransportResult.failure(
          WatchTransportErrorCode.timeout,
          message: 'Localized or arbitrary text',
        );
      };

      final result = await fixture.service.sendMeal(Meal(name: 'Upma'));

      expect(result, SyncRequestResult.queued);
      expect(fixture.database.queuedLogs.single.meal.name, 'Upma');
    },
  );

  test('permanent rejection rolls back an optimistic meal', () async {
    final fixture = _SyncFixture();
    addTearDown(fixture.dispose);
    fixture.transport.responders[WatchPaths.mealLog] = (_, _) async {
      return WatchTransportResult.failure(
        WatchTransportErrorCode.rejected,
        message: 'Invalid meal',
        isPeerResponse: true,
      );
    };

    final result = await fixture.service.sendMeal(Meal(name: 'Invalid'));

    expect(result, SyncRequestResult.failed);
    expect(fixture.cache.todaysMeals.value, isEmpty);
    expect(fixture.database.deletedMealIds, isNotEmpty);
    expect(fixture.database.queuedLogs, isEmpty);
  });

  test(
    'local non-retryable meal response is queued, not rolled back',
    () async {
      final fixture = _SyncFixture();
      addTearDown(fixture.dispose);
      fixture.transport.responders[WatchPaths.mealLog] = (_, _) async {
        return WatchTransportResult.failure(
          WatchTransportErrorCode.malformedResponse,
        );
      };

      final result = await fixture.service.sendMeal(Meal(name: 'Poha'));

      expect(result, SyncRequestResult.queued);
      expect(fixture.database.queuedLogs.single.meal.name, 'Poha');
      expect(fixture.database.deletedMealIds, isEmpty);
    },
  );

  test('local non-retryable delete response stays queued', () async {
    final fixture = _SyncFixture();
    addTearDown(fixture.dispose);
    const mealId = 42;
    fixture.database.snapshot = WatchCacheSnapshot(
      meals: [
        LoggedMeal(
          clientId: mealId,
          meal: Meal(name: 'Dal'),
          createdAt: DateTime.utc(2026, 8, 21, 8).toIso8601String(),
        ),
      ],
      favoriteMeals: const [],
    );
    fixture.transport.responders[WatchPaths.mealDelete] = (_, _) async {
      return WatchTransportResult.failure(
        WatchTransportErrorCode.malformedResponse,
      );
    };

    final result = await fixture.service.deleteMeal(mealId);

    expect(result, SyncRequestResult.queued);
    expect(fixture.database.queuedDeletes, [mealId]);
  });

  test(
    'dashboard refresh persists remote data with the injected clock',
    () async {
      final now = DateTime.utc(2026, 8, 21, 12);
      final fixture = _SyncFixture(now: now);
      addTearDown(fixture.dispose);
      final remoteMeal = LoggedMeal(
        clientId: 12,
        meal: Meal(name: 'Dal', macros: MealMacro(calories: 320)),
        createdAt: now.subtract(const Duration(hours: 1)).toIso8601String(),
      );
      fixture.transport.responders[WatchPaths.todayMeals] = (_, _) async {
        return WatchTransportResult.success({
          'success': true,
          'meals': [mealInfoToLegacyJson(remoteMeal)],
        });
      };
      fixture.transport.responders[WatchPaths.calorieGoal] = (_, _) async {
        return WatchTransportResult.success({'success': true, 'goal': 2100});
      };

      await fixture.service.refreshDashboard(forceRefresh: true);

      expect(fixture.cache.todaysMeals.value.single.meal.name, 'Dal');
      expect(fixture.cache.calorieGoal.value, 2100);
      expect(fixture.cache.dashboardLastSyncTime.value, now);
      expect(fixture.database.snapshot.dashboardLastSyncAt, now);
    },
  );

  test('pending operation remains durable after a retry result', () async {
    final pendingMeal = LoggedMeal(
      clientId: -5,
      meal: Meal(name: 'Queued meal'),
      createdAt: DateTime.utc(2026, 8, 21, 9).toIso8601String(),
    );
    final pending = PendingWatchOperation(
      id: 1,
      type: PendingWatchOperationType.logMeal,
      mealId: -5,
      createdAt: DateTime.utc(2026, 8, 21, 9),
      meal: pendingMeal,
    );
    final fixture = _SyncFixture(pendingOperations: [pending]);
    addTearDown(fixture.dispose);
    fixture.transport.responders[WatchPaths.mealLog] = (_, _) async {
      return WatchTransportResult.failure(WatchTransportErrorCode.network);
    };
    fixture.transport.responders[WatchPaths.todayMeals] = (_, _) async {
      return WatchTransportResult.success({'success': true, 'meals': []});
    };
    fixture.transport.responders[WatchPaths.calorieGoal] = (_, _) async {
      return WatchTransportResult.success({'success': true, 'goal': 2000});
    };

    await fixture.service.refreshDashboard(forceRefresh: true);

    expect(fixture.database.pendingOperations, contains(pending));
    expect(fixture.database.deletedOperationIds, isEmpty);
  });
}

typedef _TransportResponder =
    Future<WatchTransportResult> Function(
      String path,
      Map<String, dynamic> data,
    );

class _SyncFixture {
  _SyncFixture({
    bool connected = true,
    DateTime? now,
    List<PendingWatchOperation> pendingOperations = const [],
  }) : transport = _FakeTransport(connected: connected),
       database = _FakeDatabase(pendingOperations: pendingOperations),
       cache = DataCache(),
       clock = _FakeClock(now ?? DateTime.utc(2026, 8, 21)) {
    service = SyncService(
      transport: transport,
      database: database,
      cache: cache,
      clock: clock,
      enablePendingPolling: false,
    );
  }

  final _FakeTransport transport;
  final _FakeDatabase database;
  final DataCache cache;
  final _FakeClock clock;
  late final SyncService service;

  Future<void> dispose() async {
    service.dispose();
    await transport.close();
  }
}

class _FakeTransport implements WatchSyncTransport {
  _FakeTransport({required this.connected});

  final bool connected;
  final Map<String, _TransportResponder> responders = {};
  final List<String> requestedPaths = [];

  @override
  Future<bool> initialize() async => true;

  @override
  Future<bool> isPhoneConnected() async => connected;

  @override
  Future<WatchTransportResult> send({
    required String path,
    Map<String, dynamic> data = const {},
  }) async {
    requestedPaths.add(path);
    final responder = responders[path];
    return responder != null
        ? responder(path, data)
        : WatchTransportResult.failure(
          WatchTransportErrorCode.rejected,
          message: 'No fake response for $path',
        );
  }

  Future<void> close() async {}
}

class _FakeClock implements WatchClock {
  _FakeClock(this.value);

  final DateTime value;

  @override
  Future<void> delay(Duration duration) async {}

  @override
  DateTime now() => value;

  @override
  Timer periodic(Duration duration, void Function(Timer timer) callback) {
    throw StateError('Polling is disabled in sync tests');
  }
}

class _FakeDatabase implements WatchSyncDatabase {
  _FakeDatabase({List<PendingWatchOperation> pendingOperations = const []})
    : pendingOperations = List.of(pendingOperations);

  WatchCacheSnapshot snapshot = const WatchCacheSnapshot(
    meals: [],
    favoriteMeals: [],
  );
  final List<LoggedMeal> queuedLogs = [];
  final List<int> queuedDeletes = [];
  final List<int> deletedMealIds = [];
  final List<int> deletedOperationIds = [];
  final List<LoggedMeal> upsertedMeals = [];
  final List<PendingWatchOperation> pendingOperations;

  @override
  Future<void> cancelQueuedMealLog(int mealId) async {
    queuedLogs.removeWhere((meal) => meal.clientId == mealId);
    pendingOperations.removeWhere(
      (operation) =>
          operation.type == PendingWatchOperationType.logMeal &&
          operation.mealId == mealId,
    );
  }

  @override
  Future<void> close() async {}

  @override
  Future<void> deleteCachedMeal(int mealId) async {
    deletedMealIds.add(mealId);
  }

  @override
  Future<void> deletePendingOperation(int operationId) async {
    deletedOperationIds.add(operationId);
    pendingOperations.removeWhere((operation) => operation.id == operationId);
  }

  @override
  Future<List<PendingWatchOperation>> getPendingOperations() async {
    return List.of(pendingOperations);
  }

  @override
  Future<WatchCacheSnapshot> loadSnapshot() async => snapshot;

  @override
  Future<void> queueMealDelete(int mealId) async {
    queuedDeletes.add(mealId);
  }

  @override
  Future<void> queueMealLog(LoggedMeal meal, {int? favoriteMealId}) async {
    queuedLogs.add(meal);
  }

  @override
  Future<void> replaceDashboard({
    required List<LoggedMeal> meals,
    required int? calorieGoal,
    DateTime? dashboardLastSyncAt,
  }) async {
    snapshot = WatchCacheSnapshot(
      meals: List.of(meals),
      favoriteMeals: snapshot.favoriteMeals,
      calorieGoal: calorieGoal,
      dashboardLastSyncAt: dashboardLastSyncAt,
      favoritesLastSyncAt: snapshot.favoritesLastSyncAt,
    );
  }

  @override
  Future<void> replaceFavorites(
    List<FavoriteMeal> favorites, {
    required DateTime lastSyncAt,
  }) async {
    snapshot = WatchCacheSnapshot(
      meals: snapshot.meals,
      favoriteMeals: List.of(favorites),
      calorieGoal: snapshot.calorieGoal,
      dashboardLastSyncAt: snapshot.dashboardLastSyncAt,
      favoritesLastSyncAt: lastSyncAt,
    );
  }

  @override
  Future<void> upsertMeal(LoggedMeal meal) async {
    upsertedMeals.add(meal);
  }
}
