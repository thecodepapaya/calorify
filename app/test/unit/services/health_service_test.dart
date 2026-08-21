import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:health/health.dart';
import 'package:calorify/core/services/health_service.dart';
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
  });

  setUp(() {
    mockHealth = MockHealth();
    healthService = HealthService.test(health: mockHealth);
  });

  group('HealthService', () {
    test('init sets status and authorization correctly', () async {
      when(() => mockHealth.configure()).thenAnswer((_) async {});
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

      expect(healthService.status, HealthConnectSdkStatus.sdkAvailable);
      expect(healthService.isAuthorized, isTrue);
      expect(healthService.isInitialized, isTrue);

      final captured =
          verify(
            () => mockHealth.hasPermissions(
              captureAny(),
              permissions: captureAny(named: 'permissions'),
            ),
          ).captured;
      expect(captured[0], [
        HealthDataType.TOTAL_CALORIES_BURNED,
        HealthDataType.NUTRITION,
      ]);
      expect(captured[1], [HealthDataAccess.READ, HealthDataAccess.READ_WRITE]);
    });

    test(
      'refreshAuthorizationStatus detects permissions granted in settings',
      () async {
        when(() => mockHealth.configure()).thenAnswer((_) async {});
        when(
          () => mockHealth.getHealthConnectSdkStatus(),
        ).thenAnswer((_) async => HealthConnectSdkStatus.sdkAvailable);
        var isAuthorized = false;
        when(
          () => mockHealth.hasPermissions(
            any(),
            permissions: any(named: 'permissions'),
          ),
        ).thenAnswer((_) async => isAuthorized);

        await healthService.init();
        expect(healthService.isAuthorized, isFalse);

        isAuthorized = true;
        expect(await healthService.refreshAuthorizationStatus(), isTrue);
        expect(healthService.isAuthorized, isTrue);
      },
    );

    test(
      'isHealthConnectAvailable returns true when mockHealth says so',
      () async {
        // Initialize first
        when(() => mockHealth.configure()).thenAnswer((_) async {});
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

        when(
          () => mockHealth.isHealthConnectAvailable(),
        ).thenAnswer((_) async => true);

        final result = await healthService.isHealthConnectAvailable;
        expect(result, isTrue);
      },
    );

    test('fetchHealthData never opens a permission request', () async {
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
        final types = invocation.positionalArguments.first as List;
        return types.length > 1;
      });

      await healthService.init();
      final result = await healthService.fetchHealthData(
        DateTime(2026, 1, 1),
        DateTime(2026, 1, 2),
        HealthDataType.TOTAL_CALORIES_BURNED,
      );

      expect(result, isEmpty);
      verifyNever(
        () => mockHealth.requestAuthorization(
          any(),
          permissions: any(named: 'permissions'),
        ),
      );
    });

    test(
      'getTotalCaloriesBurned uses fallback estimate when Health Connect unavailable',
      () async {
        when(() => mockHealth.configure()).thenAnswer((_) async {});
        when(
          () => mockHealth.getHealthConnectSdkStatus(),
        ).thenAnswer((_) async => HealthConnectSdkStatus.sdkUnavailable);
        when(
          () => mockHealth.hasPermissions(
            any(),
            permissions: any(named: 'permissions'),
          ),
        ).thenAnswer((_) async => false);

        await healthService.init();

        final profile = UserProfile(
          height: 170.0,
          weight: 70.0,
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
        await healthService.init();

        final result = await healthService.getTotalCaloriesBurned();
        expect(result?.calories, 600.0);
        expect(result?.usedFallback, isTrue);
      },
    );
  });
}
