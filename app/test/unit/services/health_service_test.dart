import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:health/health.dart';
import 'package:calorify/core/services/health_service.dart';
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
  });
}
