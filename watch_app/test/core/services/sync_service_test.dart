import 'dart:async';

import 'package:calorify_watch/core/db/watch_database.dart';
import 'package:calorify_watch/core/services/data_cache.dart';
import 'package:calorify_watch/core/services/sync_service.dart';
import 'package:calorify_watch/core/services/watch_auth_session.dart';
import 'package:calorify_watch/core/services/watch_clock.dart';
import 'package:calorify_watch/core/services/watch_transport.dart';
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

  test('typed transport errors determine retry without substring matching', () {
    final timeout = WatchTransportResult.failure(
      WearErrorCode.WEAR_ERROR_CODE_TIMEOUT,
      message: 'Any localized message',
    );
    final rejection = WatchTransportResult.failure(
      WearErrorCode.WEAR_ERROR_CODE_REJECTED,
      message: 'Network field is invalid',
    );

    expect(timeout.errorCode, WearErrorCode.WEAR_ERROR_CODE_TIMEOUT);
    expect(timeout.shouldRetry, isTrue);
    expect(rejection.errorCode, WearErrorCode.WEAR_ERROR_CODE_REJECTED);
    expect(rejection.shouldRetry, isFalse);
  });

  test('fresh watch auth does not make a second phone round-trip', () {
    final freshSession = WatchAuthSnapshot(
      userId: 'user',
      authToken: 'token',
      syncedAt: DateTime.now(),
      isAnonymous: false,
    );

    expect(
      shouldRefreshWatchAuthSession(freshSession, refreshIfNeeded: true),
      isFalse,
    );
  });

  test('missing or stale watch auth is refreshed when requested', () {
    final staleSession = WatchAuthSnapshot(
      userId: 'user',
      authToken: 'token',
      syncedAt: DateTime.now().subtract(const Duration(hours: 2)),
      isAnonymous: false,
    );

    expect(shouldRefreshWatchAuthSession(null, refreshIfNeeded: true), isTrue);
    expect(
      shouldRefreshWatchAuthSession(staleSession, refreshIfNeeded: true),
      isTrue,
    );
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
    'typed transient failures stay queued without reading error text',
    () async {
      final fixture = _SyncFixture();
      addTearDown(fixture.dispose);
      fixture.transport.responders[WearOperation.WEAR_OPERATION_MEAL_LOG] = (
        _,
        _,
      ) async {
        return WatchTransportResult.failure(
          WearErrorCode.WEAR_ERROR_CODE_TIMEOUT,
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
    fixture.transport.responders[WearOperation.WEAR_OPERATION_MEAL_LOG] = (
      _,
      _,
    ) async {
      return WatchTransportResult.failure(
        WearErrorCode.WEAR_ERROR_CODE_REJECTED,
        message: 'Invalid meal',
        isProtocolResponse: true,
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
      fixture.transport.responders[WearOperation.WEAR_OPERATION_MEAL_LOG] = (
        _,
        _,
      ) async {
        return WatchTransportResult.failure(
          WearErrorCode.WEAR_ERROR_CODE_MALFORMED_RESPONSE,
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
    fixture.transport.responders[WearOperation.WEAR_OPERATION_MEAL_DELETE] = (
      _,
      _,
    ) async {
      return WatchTransportResult.failure(
        WearErrorCode.WEAR_ERROR_CODE_MALFORMED_RESPONSE,
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
      fixture.transport.responders[WearOperation.WEAR_OPERATION_TODAY_MEALS] = (
        _,
        _,
      ) async {
        return WatchTransportResult.success(
          WearResponse(todayMeals: TodayMealsResponse(meals: [remoteMeal])),
        );
      };
      fixture.transport.responders[WearOperation
          .WEAR_OPERATION_CALORIE_GOAL] = (_, _) async {
        return WatchTransportResult.success(
          WearResponse(calorieGoal: CalorieGoalResponse(goal: 2100)),
        );
      };

      await fixture.service.refreshDashboard(forceRefresh: true);

      expect(fixture.cache.todaysMeals.value.single.meal.name, 'Dal');
      expect(fixture.cache.calorieGoal.value, 2100);
      expect(fixture.cache.dashboardLastSyncTime.value, now);
      expect(fixture.database.snapshot.dashboardLastSyncAt, now);
    },
  );

  test('pending operation remains durable after typed retry result', () async {
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
    fixture.transport.responders[WearOperation.WEAR_OPERATION_MEAL_LOG] = (
      _,
      _,
    ) async {
      return WatchTransportResult.failure(
        WearErrorCode.WEAR_ERROR_CODE_NETWORK,
      );
    };
    fixture.transport.responders[WearOperation.WEAR_OPERATION_TODAY_MEALS] = (
      _,
      _,
    ) async {
      return WatchTransportResult.success(
        WearResponse(todayMeals: TodayMealsResponse()),
      );
    };
    fixture.transport.responders[WearOperation.WEAR_OPERATION_CALORIE_GOAL] = (
      _,
      _,
    ) async {
      return WatchTransportResult.success(
        WearResponse(calorieGoal: CalorieGoalResponse(goal: 2000)),
      );
    };

    await fixture.service.refreshDashboard(forceRefresh: true);

    expect(fixture.database.pendingOperations, contains(pending));
    expect(fixture.database.deletedOperationIds, isEmpty);
  });

  test(
    'pending operation remains durable after malformed correlated response',
    () async {
      final pendingMeal = LoggedMeal(
        clientId: -6,
        meal: Meal(name: 'Queued malformed response meal'),
        createdAt: DateTime.utc(2026, 8, 21, 10).toIso8601String(),
      );
      final pending = PendingWatchOperation(
        id: 2,
        type: PendingWatchOperationType.logMeal,
        mealId: -6,
        createdAt: DateTime.utc(2026, 8, 21, 10),
        meal: pendingMeal,
      );
      final fixture = _SyncFixture(pendingOperations: [pending]);
      addTearDown(fixture.dispose);
      fixture.transport.responders[WearOperation.WEAR_OPERATION_MEAL_LOG] = (
        _,
        _,
      ) async {
        return WatchTransportResult.fromEnvelope(
          WearEnvelope(
            version: wearProtocolVersion,
            requestId: 'wrong-request-id',
            operation: WearOperation.WEAR_OPERATION_MEAL_LOG,
            response: WearResponse(mealLog: MealLogResponse()),
          ),
          requestId: 'expected-request-id',
          operation: WearOperation.WEAR_OPERATION_MEAL_LOG,
        );
      };
      fixture.transport.responders[WearOperation.WEAR_OPERATION_TODAY_MEALS] = (
        _,
        _,
      ) async {
        return WatchTransportResult.success(
          WearResponse(todayMeals: TodayMealsResponse()),
        );
      };
      fixture.transport.responders[WearOperation
          .WEAR_OPERATION_CALORIE_GOAL] = (_, _) async {
        return WatchTransportResult.success(
          WearResponse(calorieGoal: CalorieGoalResponse(goal: 2000)),
        );
      };

      await fixture.service.refreshDashboard(forceRefresh: true);

      expect(fixture.database.pendingOperations, contains(pending));
      expect(fixture.database.deletedOperationIds, isEmpty);
      expect(fixture.database.deletedMealIds, isEmpty);
    },
  );
}

typedef _TransportResponder =
    Future<WatchTransportResult> Function(
      WearOperation operation,
      WearRequest request,
    );

class _SyncFixture {
  _SyncFixture({
    bool connected = true,
    DateTime? now,
    List<PendingWatchOperation> pendingOperations = const [],
  }) : transport = _FakeTransport(connected: connected),
       database = _FakeDatabase(pendingOperations: pendingOperations),
       cache = DataCache(),
       auth = _FakeAuth(),
       clock = _FakeClock(now ?? DateTime.utc(2026, 8, 21)) {
    service = SyncService(
      transport: transport,
      database: database,
      cache: cache,
      auth: auth,
      clock: clock,
      enablePendingPolling: false,
    );
  }

  final _FakeTransport transport;
  final _FakeDatabase database;
  final DataCache cache;
  final _FakeAuth auth;
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
  final Map<WearOperation, _TransportResponder> responders = {};
  final List<WearOperation> requestedOperations = [];
  final StreamController<WearEnvelope> _messages =
      StreamController<WearEnvelope>.broadcast();

  @override
  Future<bool> initialize() async => true;

  @override
  Future<bool> isPhoneConnected() async => connected;

  @override
  Stream<WearEnvelope> listenForEvents() => _messages.stream;

  @override
  Future<WatchTransportResult> send({
    required WearOperation operation,
    required WearRequest request,
  }) async {
    requestedOperations.add(operation);
    final responder = responders[operation];
    return responder != null
        ? responder(operation, request)
        : WatchTransportResult.failure(
          WearErrorCode.WEAR_ERROR_CODE_REJECTED,
          message: 'No fake response for ${operation.name}',
        );
  }

  Future<void> close() => _messages.close();
}

class _FakeAuth implements WatchSyncAuth {
  int refreshCount = 0;

  @override
  Future<void> initialize() async {}

  @override
  Future<WatchAuthSnapshot?> refreshFromPhone() async {
    refreshCount++;
    return null;
  }
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
