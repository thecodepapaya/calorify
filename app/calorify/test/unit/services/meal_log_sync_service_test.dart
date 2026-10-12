import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/repositories/food_repository.dart';
import 'package:calorify/core/services/meal_log_sync_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:models/models.dart';

class _MockDatabase extends Mock implements DatabaseInterface {}

class _MockFoodRepository extends Mock implements FoodRepository {}

Meal _meal() => Meal(
  name: 'Banana',
  quantity: '1 serving',
  type: MealType.SNACK,
  macros: MealMacro(calories: 107, protein: 1, carbs: 27, fat: 0, fiber: 3),
);

void main() {
  late _MockDatabase database;
  late _MockFoodRepository repository;
  late MealLogSyncService service;

  setUpAll(() {
    registerFallbackValue(_meal());
    registerFallbackValue(DateTime(2026));
  });

  setUp(() {
    database = _MockDatabase();
    repository = _MockFoodRepository();
    service = MealLogSyncService(
      database: database,
      foodRepository: repository,
    );
    when(() => database.preparePendingMealLogSyncs()).thenAnswer((_) async {});
  });

  test('acknowledges a successfully mirrored analyzed meal', () async {
    final loggedAt = DateTime(2026, 8, 24, 10);
    final pending = PendingMealLogSync(
      id: 7,
      analysisId: '00000000-0000-4000-8000-000000000601',
      operation: MealLogSyncOperation.upsert,
      version: 2,
      attempts: 1,
      meal: _meal(),
      loggedAt: loggedAt,
    );
    when(
      () => database.getPendingMealLogSyncs(),
    ).thenAnswer((_) async => [pending]);
    when(
      () => repository.confirmMealLogV3(
        analysisId: any(named: 'analysisId'),
        meal: any(named: 'meal'),
        loggedAt: any(named: 'loggedAt'),
      ),
    ).thenAnswer((_) async {});
    when(
      () => database.markMealLogSyncCompleted(any(), any()),
    ).thenAnswer((_) async {});

    final result = await service.syncPending();

    expect(result.succeeded, 1);
    expect(result.failed, 0);
    verify(
      () => repository.confirmMealLogV3(
        analysisId: pending.analysisId,
        meal: any(named: 'meal'),
        loggedAt: loggedAt,
      ),
    ).called(1);
    verify(() => database.markMealLogSyncCompleted(7, 2)).called(1);
  });

  test(
    'keeps a failed confirmation queued with its attempt recorded',
    () async {
      final pending = PendingMealLogSync(
        id: 8,
        analysisId: '00000000-0000-4000-8000-000000000602',
        operation: MealLogSyncOperation.upsert,
        version: 1,
        attempts: 0,
        meal: _meal(),
        loggedAt: DateTime(2026, 8, 24),
      );
      when(
        () => database.getPendingMealLogSyncs(),
      ).thenAnswer((_) async => [pending]);
      when(
        () => repository.confirmMealLogV3(
          analysisId: any(named: 'analysisId'),
          meal: any(named: 'meal'),
          loggedAt: any(named: 'loggedAt'),
        ),
      ).thenThrow(StateError('offline'));
      when(
        () => database.markMealLogSyncFailed(any(), any(), any()),
      ).thenAnswer((_) async {});

      final result = await service.syncPending();

      expect(result.failed, 1);
      verify(() => database.markMealLogSyncFailed(8, 1, any())).called(1);
      verifyNever(() => database.markMealLogSyncCompleted(any(), any()));
    },
  );

  test(
    'replays a delete tombstone through the same endpoint contract',
    () async {
      const pending = PendingMealLogSync(
        id: 9,
        analysisId: '00000000-0000-4000-8000-000000000603',
        operation: MealLogSyncOperation.delete,
        version: 3,
        attempts: 0,
      );
      when(
        () => database.getPendingMealLogSyncs(),
      ).thenAnswer((_) async => [pending]);
      when(
        () => repository.deleteMealLogV3(analysisId: pending.analysisId),
      ).thenAnswer((_) async {});
      when(
        () => database.markMealLogSyncCompleted(any(), any()),
      ).thenAnswer((_) async {});

      final result = await service.syncPending();

      expect(result.succeeded, 1);
      verify(
        () => repository.deleteMealLogV3(analysisId: pending.analysisId),
      ).called(1);
      verify(() => database.markMealLogSyncCompleted(9, 3)).called(1);
    },
  );

  test('concurrent callers share one replay', () async {
    when(
      () => database.getPendingMealLogSyncs(),
    ).thenAnswer((_) async => <PendingMealLogSync>[]);

    await Future.wait([service.syncPending(), service.syncPending()]);

    verify(() => database.getPendingMealLogSyncs()).called(1);
  });
}
