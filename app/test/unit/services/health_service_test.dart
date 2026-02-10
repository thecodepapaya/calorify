import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:health/health.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/services/onboarding_service.dart';
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
    HealthService.setMockInstance(healthService);
  });

  group('HealthService', () {
    test('init sets status and authorization correctly', () async {
      when(() => mockHealth.configure()).thenAnswer((_) async {});
      when(() => mockHealth.getHealthConnectSdkStatus())
          .thenAnswer((_) async => HealthConnectSdkStatus.sdkAvailable);
      when(() => mockHealth.hasPermissions(any(), permissions: any(named: 'permissions')))
          .thenAnswer((_) async => true);

      await healthService.init();

      expect(healthService.status, HealthConnectSdkStatus.sdkAvailable);
      expect(healthService.isAuthorized, isTrue);
      expect(healthService.isInitialized, isTrue);
    });

    test('isHealthConnectAvailable returns true when mockHealth says so', () async {
      // Initialize first
      when(() => mockHealth.configure()).thenAnswer((_) async {});
      when(() => mockHealth.getHealthConnectSdkStatus())
          .thenAnswer((_) async => HealthConnectSdkStatus.sdkAvailable);
      when(() => mockHealth.hasPermissions(any(), permissions: any(named: 'permissions')))
          .thenAnswer((_) async => true);
      await healthService.init();

      when(() => mockHealth.isHealthConnectAvailable()).thenAnswer((_) async => true);

      final result = await healthService.isHealthConnectAvailable;
      expect(result, isTrue);
    });

    test('getTotalCaloriesBurned uses fallback estimate when Health Connect unavailable', () async {
      when(() => mockHealth.configure()).thenAnswer((_) async {});
      when(() => mockHealth.getHealthConnectSdkStatus())
          .thenAnswer((_) async => HealthConnectSdkStatus.sdkUnavailable);
      when(() => mockHealth.hasPermissions(any(), permissions: any(named: 'permissions')))
          .thenAnswer((_) async => false);

      await healthService.init();

      // Prepare a mock onboarding service that returns a profile and a predictable estimate
      final mockOnboarding = MockOnboardingService();
      final profile = UserProfile(
        height: 170.0,
        weight: 70.0,
        gender: Gender.MALE,
        dateOfBirth: '1990-01-01',
        activityLevel: ActivityLevel.MODERATELY_ACTIVE,
        heightUnit: UnitSystem.METRIC,
        weightUnit: UnitSystem.METRIC,
      );
      when(() => mockOnboarding.getProfileData()).thenAnswer((_) async => profile);
      // Let the estimate function compute based on profile (we can let the real method run,
      // but since this is a mock, stub it for predictability)
      when(() => mockOnboarding.estimateCaloriesBurnedTodayFromProfile(profile))
          .thenReturn(600.0);
      OnboardingService.setMockInstance(mockOnboarding);

      final calories = await healthService.getTotalCaloriesBurned();
      expect(calories, 600.0);
      expect(HealthService.instance.lastFetchUsedFallback, isTrue);
    });
  });
}
