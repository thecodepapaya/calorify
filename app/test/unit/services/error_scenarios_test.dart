import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/core/services/food_analysis.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:health/health.dart';
import '../../setup/all_tests.dart';

class MockGenerativeModelWrapper extends Mock
    implements GenerativeModelWrapper {}

class MockHealth extends Mock implements Health {}

void main() {
  setUpAll(() {
    setupAllTests();
  });

  group('Error Scenarios', () {
    test('FoodAnalysisService handles API errors gracefully', () async {
      final mockModel = MockGenerativeModelWrapper();
      final foodAnalysisService = FoodAnalysisService.test(model: mockModel);

      when(
        () => mockModel.generateContent(any()),
      ).thenThrow(Exception('API error'));

      expect(
        () => foodAnalysisService.analyzeFoodDescription(description: 'apple'),
        throwsA(isA<Exception>()),
      );
    });

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
      expect(healthService.isAuthorized, isFalse);
    });
  });
}
