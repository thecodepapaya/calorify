import 'dart:async';

import 'package:calorify/core/services/health_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:health/health.dart' hide MealType;
import 'package:health/health.dart' as health show MealType;
import 'package:mocktail/mocktail.dart';
import 'package:models/models.dart';

import '../../setup/all_tests.dart';

class MockHealth extends Mock implements Health {}

void main() {
  late HealthService healthService;
  late MockHealth mockHealth;

  setUpAll(() {
    setupAllTests();
    registerFallbackValue(<HealthDataType>[]);
    registerFallbackValue(<HealthDataAccess>[]);
    registerFallbackValue(HealthDataType.NUTRITION);
    registerFallbackValue(DateTime(2026));
    registerFallbackValue(health.MealType.UNKNOWN);
    registerFallbackValue(RecordingMethod.unknown);
  });

  setUp(() {
    mockHealth = MockHealth();
    healthService = HealthService.test(health: mockHealth);
  });

  void stubInitialization({
    HealthConnectSdkStatus sdkStatus = HealthConnectSdkStatus.sdkAvailable,
    bool caloriesRead = true,
    bool nutritionWrite = true,
  }) {
    when(() => mockHealth.configure()).thenAnswer((_) async {});
    when(
      () => mockHealth.getHealthConnectSdkStatus(),
    ).thenAnswer((_) async => sdkStatus);
    when(
      () => mockHealth.hasPermissions(
        any(),
        permissions: any(named: 'permissions'),
      ),
    ).thenAnswer((invocation) async {
      final types =
          invocation.positionalArguments.first as List<HealthDataType>;
      final permissions =
          invocation.namedArguments[#permissions] as List<HealthDataAccess>;
      if (types.single == HealthDataType.TOTAL_CALORIES_BURNED &&
          permissions.single == HealthDataAccess.READ) {
        return caloriesRead;
      }
      if (types.single == HealthDataType.NUTRITION &&
          permissions.single == HealthDataAccess.WRITE) {
        return nutritionWrite;
      }
      return false;
    });
  }

  group('initialization and capability state', () {
    test('tracks calorie read and nutrition write independently', () async {
      stubInitialization(caloriesRead: true, nutritionWrite: false);

      await healthService.init();

      expect(healthService.status, HealthConnectSdkStatus.sdkAvailable);
      expect(healthService.canReadTotalCalories, isTrue);
      expect(healthService.canWriteNutrition, isFalse);
      expect(healthService.hasAnyHealthPermission, isTrue);
      expect(healthService.hasAllHealthPermissions, isFalse);
      expect(healthService.isAuthorized, isTrue);
      expect(
        healthService.initializationState,
        HealthServiceInitializationState.ready,
      );
      verify(
        () => mockHealth.hasPermissions(
          any(that: equals([HealthDataType.TOTAL_CALORIES_BURNED])),
          permissions: any(
            named: 'permissions',
            that: equals([HealthDataAccess.READ]),
          ),
        ),
      ).called(1);
      verify(
        () => mockHealth.hasPermissions(
          any(that: equals([HealthDataType.NUTRITION])),
          permissions: any(
            named: 'permissions',
            that: equals([HealthDataAccess.WRITE]),
          ),
        ),
      ).called(1);
      verifyNever(
        () => mockHealth.hasPermissions(
          any(that: equals([HealthDataType.NUTRITION])),
          permissions: any(
            named: 'permissions',
            that: equals([HealthDataAccess.READ]),
          ),
        ),
      );
    });

    test('failed initialization remains retryable', () async {
      var configureAttempts = 0;
      when(() => mockHealth.configure()).thenAnswer((_) async {
        configureAttempts += 1;
        if (configureAttempts == 1) throw StateError('channel unavailable');
      });
      when(
        () => mockHealth.getHealthConnectSdkStatus(),
      ).thenAnswer((_) async => HealthConnectSdkStatus.sdkAvailable);
      when(
        () => mockHealth.hasPermissions(
          any(),
          permissions: any(named: 'permissions'),
        ),
      ).thenAnswer((_) async => true);

      await healthService.init();

      expect(healthService.isInitialized, isFalse);
      expect(
        healthService.initializationState,
        HealthServiceInitializationState.failed,
      );
      expect(healthService.lastError, isA<StateError>());

      await healthService.init();

      expect(healthService.isInitialized, isTrue);
      expect(
        healthService.initializationState,
        HealthServiceInitializationState.ready,
      );
      expect(configureAttempts, 2);
    });

    test('concurrent initialization shares one platform operation', () async {
      final configureCompleter = Completer<void>();
      when(
        () => mockHealth.configure(),
      ).thenAnswer((_) => configureCompleter.future);
      when(
        () => mockHealth.getHealthConnectSdkStatus(),
      ).thenAnswer((_) async => HealthConnectSdkStatus.sdkAvailable);
      when(
        () => mockHealth.hasPermissions(
          any(),
          permissions: any(named: 'permissions'),
        ),
      ).thenAnswer((_) async => true);

      final first = healthService.init();
      final second = healthService.init();
      await Future<void>.delayed(Duration.zero);
      verify(() => mockHealth.configure()).called(1);

      configureCompleter.complete();
      await Future.wait([first, second]);

      expect(healthService.isInitialized, isTrue);
    });

    test(
      'permission channel errors become unknown instead of escaping',
      () async {
        stubInitialization(caloriesRead: false, nutritionWrite: true);
        when(
          () => mockHealth.hasPermissions(
            any(that: equals([HealthDataType.TOTAL_CALORIES_BURNED])),
            permissions: any(
              named: 'permissions',
              that: equals([HealthDataAccess.READ]),
            ),
          ),
        ).thenThrow(StateError('permission channel failed'));

        await healthService.init();

        expect(
          healthService.caloriesReadPermission,
          HealthPermissionState.unknown,
        );
        expect(healthService.canWriteNutrition, isTrue);
        expect(
          await healthService.hasPermission(
            HealthDataType.TOTAL_CALORIES_BURNED,
            HealthDataAccess.READ,
          ),
          isFalse,
        );
      },
    );
  });

  group('authorization actions', () {
    test('requests only the missing capability and refreshes state', () async {
      var nutritionGranted = false;
      when(() => mockHealth.configure()).thenAnswer((_) async {});
      when(
        () => mockHealth.getHealthConnectSdkStatus(),
      ).thenAnswer((_) async => HealthConnectSdkStatus.sdkAvailable);
      when(
        () => mockHealth.hasPermissions(
          any(),
          permissions: any(named: 'permissions'),
        ),
      ).thenAnswer((invocation) async {
        final type = (invocation.positionalArguments.first as List).single;
        return type == HealthDataType.TOTAL_CALORIES_BURNED || nutritionGranted;
      });
      when(
        () => mockHealth.requestAuthorization(
          any(),
          permissions: any(named: 'permissions'),
        ),
      ).thenAnswer((_) async {
        nutritionGranted = true;
        return true;
      });

      await healthService.init();
      final result = await healthService.requestAuthorization();

      expect(result, isTrue);
      expect(healthService.hasAllHealthPermissions, isTrue);
      final captured =
          verify(
            () => mockHealth.requestAuthorization(
              captureAny(),
              permissions: captureAny(named: 'permissions'),
            ),
          ).captured;
      expect(captured[0], [HealthDataType.NUTRITION]);
      expect(captured[1], [HealthDataAccess.WRITE]);
    });

    test(
      'does not open a permission prompt when everything is granted',
      () async {
        stubInitialization();
        await healthService.init();

        expect(await healthService.requestAuthorization(), isTrue);

        verifyNever(
          () => mockHealth.requestAuthorization(
            any(),
            permissions: any(named: 'permissions'),
          ),
        );
      },
    );

    test('revoke clears both cached capabilities', () async {
      stubInitialization();
      when(() => mockHealth.revokePermissions()).thenAnswer((_) async {});
      await healthService.init();

      expect(await healthService.revokeAuthorization(), isTrue);

      expect(healthService.canReadTotalCalories, isFalse);
      expect(healthService.canWriteNutrition, isFalse);
      verify(() => mockHealth.revokePermissions()).called(1);
    });

    test('settings bridge errors are contained', () async {
      healthService = HealthService.test(
        health: mockHealth,
        settingsOpener: () async => throw StateError('no activity'),
      );

      expect(await healthService.openHealthConnectSettings(), isFalse);
      expect(healthService.lastError, isA<StateError>());
    });
  });

  group('calorie reads', () {
    test(
      'uses Health Connect aggregation instead of raw record reads',
      () async {
        stubInitialization();
        when(
          () => mockHealth.getHealthIntervalDataFromTypes(
            startDate: any(named: 'startDate'),
            endDate: any(named: 'endDate'),
            types: any(named: 'types'),
            interval: any(named: 'interval'),
          ),
        ).thenAnswer((_) async => [_caloriePoint(320), _caloriePoint(180)]);
        await healthService.init();

        final result = await healthService.getTotalCaloriesBurned();

        expect(result?.calories, 500);
        expect(result?.usedFallback, isFalse);
        verify(
          () => mockHealth.getHealthIntervalDataFromTypes(
            startDate: any(named: 'startDate'),
            endDate: any(named: 'endDate'),
            types: any(
              named: 'types',
              that: equals([HealthDataType.TOTAL_CALORIES_BURNED]),
            ),
            interval: any(named: 'interval', that: greaterThan(0)),
          ),
        ).called(1);
        verifyNever(
          () => mockHealth.getHealthDataFromTypes(
            startTime: any(named: 'startTime'),
            endTime: any(named: 'endTime'),
            types: any(named: 'types'),
          ),
        );
      },
    );

    test('uses profile fallback when Health Connect is unavailable', () async {
      final profile = UserProfile(
        height: 170,
        weight: 70,
        gender: Gender.MALE,
        dateOfBirth: '1990-01-01',
        activityLevel: ActivityLevel.MODERATELY_ACTIVE,
        heightUnit: UnitSystem.METRIC,
        weightUnit: UnitSystem.METRIC,
      );
      healthService = HealthService.test(
        health: mockHealth,
        profileLoader: () async => profile,
        calorieEstimator: (_) => 600,
      );
      stubInitialization(
        sdkStatus: HealthConnectSdkStatus.sdkUnavailable,
        caloriesRead: false,
        nutritionWrite: false,
      );
      await healthService.init();

      final result = await healthService.getTotalCaloriesBurned();

      expect(result?.calories, 600);
      expect(result?.usedFallback, isTrue);
    });
  });

  group('nutrition writes', () {
    test('writes the real timestamp and stable client metadata', () async {
      stubInitialization(caloriesRead: false, nutritionWrite: true);
      final loggedAt = DateTime(2026, 8, 22, 12, 34);
      final meal = Meal(
        name: 'Dal rice',
        type: MealType.LUNCH,
        macros: MealMacro(
          calories: 540,
          carbs: 72,
          protein: 24,
          fat: 16,
          fiber: 9,
        ),
      );
      when(
        () => mockHealth.writeMeal(
          name: any(named: 'name'),
          mealType: any(named: 'mealType'),
          caloriesConsumed: any(named: 'caloriesConsumed'),
          protein: any(named: 'protein'),
          carbohydrates: any(named: 'carbohydrates'),
          fatTotal: any(named: 'fatTotal'),
          fiber: any(named: 'fiber'),
          startTime: any(named: 'startTime'),
          endTime: any(named: 'endTime'),
          clientRecordId: any(named: 'clientRecordId'),
          clientRecordVersion: any(named: 'clientRecordVersion'),
          recordingMethod: any(named: 'recordingMethod'),
        ),
      ).thenAnswer((_) async => true);
      await healthService.init();

      final result = await healthService.writeMealData(
        meal,
        loggedAt: loggedAt,
        clientRecordId: 'meal-42',
        clientRecordVersion: 3,
      );

      expect(result, isTrue);
      verify(
        () => mockHealth.writeMeal(
          name: 'Dal rice',
          mealType: health.MealType.LUNCH,
          caloriesConsumed: 540,
          protein: 24,
          carbohydrates: 72,
          fatTotal: 16,
          fiber: 9,
          startTime: loggedAt,
          endTime: loggedAt,
          clientRecordId: 'meal-42',
          clientRecordVersion: 3,
          recordingMethod: RecordingMethod.active,
        ),
      ).called(1);
    });

    test('write permission failures return false without writing', () async {
      stubInitialization(caloriesRead: true, nutritionWrite: false);
      await healthService.init();

      final result = await healthService.writeMealData(
        Meal(name: 'Apple'),
        loggedAt: DateTime(2026, 8, 22),
        clientRecordId: 'meal-1',
        clientRecordVersion: 1,
      );

      expect(result, isFalse);
      verifyNever(
        () => mockHealth.writeMeal(
          mealType: any(named: 'mealType'),
          startTime: any(named: 'startTime'),
          endTime: any(named: 'endTime'),
        ),
      );
    });

    test('deletes a meal by stable client record ID', () async {
      stubInitialization(caloriesRead: false, nutritionWrite: true);
      when(
        () => mockHealth.deleteByClientRecordId(
          dataTypeKey: any(named: 'dataTypeKey'),
          clientRecordId: any(named: 'clientRecordId'),
        ),
      ).thenAnswer((_) async => true);
      await healthService.init();

      expect(await healthService.deleteMealData(' meal-7 '), isTrue);

      verify(
        () => mockHealth.deleteByClientRecordId(
          dataTypeKey: HealthDataType.NUTRITION,
          clientRecordId: 'meal-7',
        ),
      ).called(1);
    });
  });
}

HealthDataPoint _caloriePoint(double calories) {
  final start = DateTime(2026, 8, 22);
  return HealthDataPoint(
    uuid: '',
    value: NumericHealthValue(numericValue: calories),
    type: HealthDataType.TOTAL_CALORIES_BURNED,
    unit: HealthDataUnit.KILOCALORIE,
    dateFrom: start,
    dateTo: start.add(const Duration(hours: 1)),
    sourcePlatform: HealthPlatformType.googleHealthConnect,
    sourceDeviceId: '',
    sourceId: '',
    sourceName: 'aggregate',
  );
}
