import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:health/health.dart';
import '../../setup/all_tests.dart';

class MockHealth extends Mock implements Health {}

void main() {
  setUpAll(() {
    setupAllTests();
  });

  group('Error Scenarios', () {
    test('HealthService handles permission denied gracefully', () async {
      final mockHealth = MockHealth();
      final healthService = HealthService.test(health: mockHealth);

      when(() => mockHealth.configure()).thenAnswer((_) async {});
      when(
        () => mockHealth.getHealthConnectSdkStatus(),
      ).thenAnswer((_) async => HealthConnectSdkStatus.sdkAvailable);
      when(
        () => mockHealth.hasPermissions(
          any(),
          permissions: any(named: 'permissions'),
        ),
      ).thenAnswer((_) async => false);
      when(
        () => mockHealth.requestAuthorization(
          any(),
          permissions: any(named: 'permissions'),
        ),
      ).thenAnswer((_) async => false);

      await healthService.init();
      final authorized = await healthService.requestAuthorization();

      expect(authorized, isFalse);
      expect(healthService.hasAnyHealthPermission, isFalse);
    });
  });
}
