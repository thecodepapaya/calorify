import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/services/health_connect_sync_service.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:health/health.dart' hide MealType;
import 'package:mocktail/mocktail.dart';
import 'package:models/models.dart';

class _MockDatabase extends Mock implements DatabaseInterface {}

class _MockHealthService extends Mock implements HealthService {}

Meal _meal() => Meal(
  name: 'Oats',
  quantity: '1 bowl',
  type: MealType.BREAKFAST,
  macros: MealMacro(calories: 300, protein: 12, carbs: 45, fat: 8, fiber: 6),
);

void main() {
  late _MockDatabase database;
  late _MockHealthService healthService;
  late HealthConnectSyncService service;

  setUpAll(() {
    registerFallbackValue(_meal());
    registerFallbackValue(DateTime(2026));
  });

  setUp(() {
    database = _MockDatabase();
    healthService = _MockHealthService();
    service = HealthConnectSyncService(
      database: database,
      healthService: healthService,
    );
    when(() => healthService.isInitialized).thenReturn(true);
    when(
      () => healthService.status,
    ).thenReturn(HealthConnectSdkStatus.sdkAvailable);
    when(
      () => healthService.refreshAuthorizationStatus(),
    ).thenAnswer((_) async => true);
    when(() => healthService.canWriteNutrition).thenReturn(true);
    when(
      () => healthService.nutritionWritePermission,
    ).thenReturn(HealthPermissionState.granted);
    when(
      () => database.getHealthConnectNutritionSyncEnabled(),
    ).thenAnswer((_) async => true);
  });

  test('replays an upsert with stable identity and removes it', () async {
    final loggedAt = DateTime(2026, 8, 22, 8);
    final pending = PendingHealthConnectSync(
      id: 7,
      operation: HealthConnectSyncOperation.upsert,
      clientRecordId: 'meal-7',
      clientRecordVersion: 3,
      attempts: 0,
      meal: _meal(),
      loggedAt: loggedAt,
    );
    when(
      () => database.getPendingHealthConnectSyncs(),
    ).thenAnswer((_) async => [pending]);
    when(
      () => healthService.writeMealData(
        any(),
        loggedAt: any(named: 'loggedAt'),
        clientRecordId: any(named: 'clientRecordId'),
        clientRecordVersion: any(named: 'clientRecordVersion'),
      ),
    ).thenAnswer((_) async => true);
    when(
      () => database.markHealthConnectSyncCompleted(any(), any()),
    ).thenAnswer((_) async {});

    final result = await service.syncPending();

    expect(result.succeeded, 1);
    verify(
      () => healthService.writeMealData(
        any(),
        loggedAt: loggedAt,
        clientRecordId: 'meal-7',
        clientRecordVersion: 3,
      ),
    ).called(1);
    verify(() => database.markHealthConnectSyncCompleted(7, 3)).called(1);
  });

  test('keeps an upsert queued while nutrition permission is absent', () async {
    when(() => healthService.canWriteNutrition).thenReturn(false);
    when(
      () => healthService.nutritionWritePermission,
    ).thenReturn(HealthPermissionState.unknown);
    when(() => database.getPendingHealthConnectSyncs()).thenAnswer(
      (_) async => [
        PendingHealthConnectSync(
          id: 1,
          operation: HealthConnectSyncOperation.upsert,
          clientRecordId: 'meal-1',
          clientRecordVersion: 1,
          attempts: 0,
          meal: _meal(),
          loggedAt: DateTime(2026, 8, 22),
        ),
      ],
    );

    final result = await service.syncPending();

    expect(result.permissionRequired, isTrue);
    expect(result.attempted, 0);
    verifyNever(() => database.markHealthConnectSyncCompleted(any(), any()));
  });

  test('delete tombstones are retried even without write capability', () async {
    when(() => healthService.canWriteNutrition).thenReturn(false);
    when(
      () => healthService.nutritionWritePermission,
    ).thenReturn(HealthPermissionState.unknown);
    when(() => database.getPendingHealthConnectSyncs()).thenAnswer(
      (_) async => [
        const PendingHealthConnectSync(
          id: 2,
          operation: HealthConnectSyncOperation.delete,
          clientRecordId: 'meal-2',
          clientRecordVersion: 2,
          attempts: 1,
        ),
      ],
    );
    when(
      () => healthService.deleteMealData('meal-2'),
    ).thenAnswer((_) async => true);
    when(
      () => database.markHealthConnectSyncCompleted(2, 2),
    ).thenAnswer((_) async {});

    final result = await service.syncPending();

    expect(result.succeeded, 1);
    verify(() => healthService.deleteMealData('meal-2')).called(1);
  });

  test('concurrent callers share one replay', () async {
    when(
      () => database.getPendingHealthConnectSyncs(),
    ).thenAnswer((_) async => <PendingHealthConnectSync>[]);

    await Future.wait([service.syncPending(), service.syncPending()]);

    verify(() => database.getPendingHealthConnectSyncs()).called(1);
  });

  test('revoked write permission disables export and drops payloads', () async {
    when(
      () => healthService.nutritionWritePermission,
    ).thenReturn(HealthPermissionState.denied);
    when(
      () => database.setHealthConnectNutritionSyncEnabled(false),
    ).thenAnswer((_) async {});
    when(
      () => database.discardPendingHealthConnectUpserts(),
    ).thenAnswer((_) async {});

    await service.reconcileAuthorization();

    verify(
      () => database.setHealthConnectNutritionSyncEnabled(false),
    ).called(1);
    verify(() => database.discardPendingHealthConnectUpserts()).called(1);
  });

  test('explicit synced-meal deletion confirms every tombstone', () async {
    const deletion = PendingHealthConnectSync(
      id: 9,
      operation: HealthConnectSyncOperation.delete,
      clientRecordId: 'meal-9',
      clientRecordVersion: 4,
      attempts: 0,
    );
    var countRead = 0;
    when(
      () => database.enqueueAllHealthConnectDeletes(),
    ).thenAnswer((_) async {});
    when(
      () => database.countPendingHealthConnectDeletes(),
    ).thenAnswer((_) async => countRead++ == 0 ? 1 : 0);
    when(
      () => database.getPendingHealthConnectSyncs(),
    ).thenAnswer((_) async => [deletion]);
    when(
      () => healthService.deleteMealData('meal-9'),
    ).thenAnswer((_) async => true);
    when(
      () => database.markHealthConnectSyncCompleted(9, 4),
    ).thenAnswer((_) async {});

    final count = await service.deleteSyncedMeals();

    expect(count, 1);
    verify(() => database.enqueueAllHealthConnectDeletes()).called(1);
    verify(() => healthService.deleteMealData('meal-9')).called(1);
  });

  test('explicit deletion drains more than one outbox batch', () async {
    final pending = List.generate(
      51,
      (index) => PendingHealthConnectSync(
        id: index + 1,
        operation: HealthConnectSyncOperation.delete,
        clientRecordId: 'meal-${index + 1}',
        clientRecordVersion: 1,
        attempts: 0,
      ),
    );
    when(
      () => database.enqueueAllHealthConnectDeletes(),
    ).thenAnswer((_) async {});
    when(
      () => database.countPendingHealthConnectDeletes(),
    ).thenAnswer((_) async => pending.length);
    when(
      () => database.getPendingHealthConnectSyncs(),
    ).thenAnswer((_) async => pending.take(50).toList(growable: false));
    when(
      () => healthService.deleteMealData(any()),
    ).thenAnswer((_) async => true);
    when(
      () => database.markHealthConnectSyncCompleted(any(), any()),
    ).thenAnswer((invocation) async {
      final id = invocation.positionalArguments.first as int;
      pending.removeWhere((operation) => operation.id == id);
    });

    final count = await service.deleteSyncedMeals();

    expect(count, 51);
    expect(pending, isEmpty);
    verify(() => healthService.deleteMealData(any())).called(51);
  });
}
