import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/app.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/constants/analytics_events.dart';
import 'package:health/health.dart' hide MealType;
import 'package:models/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';

import 'package:calorify/core/providers/app_banner_providers.dart';
import '../test/setup/all_tests.dart';

class MockDatabaseInterface extends Mock implements DatabaseInterface {}

class MockHealthService extends Mock implements HealthService {}

class FakeHealthData extends Fake implements HealthData {}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  late MockDatabaseInterface mockDatabaseInterface;
  late MockHealthService mockHealthService;

  setUpAll(() {
    setupAllTests();
    registerFallbackValue(FakeHealthData());
    registerFallbackValue(AnalyticsEvent.onboardingStart);
  });

  setUp(() {
    mockDatabaseInterface = MockDatabaseInterface();
    mockHealthService = MockHealthService();

    DatabaseService.setMockInterface(mockDatabaseInterface);

    when(
      () => mockDatabaseInterface.hasCompletedOnboarding(),
    ).thenAnswer((_) async => false);
    when(
      () => mockDatabaseInterface.getOnboardingStep(),
    ).thenAnswer((_) async => 0);
    when(
      () => mockDatabaseInterface.setOnboardingStep(any()),
    ).thenAnswer((_) async {});
    when(
      () => mockDatabaseInterface.setOnboardingCompleted(),
    ).thenAnswer((_) async {});
    when(
      () => mockDatabaseInterface.getPendingHealthDataSync(),
    ).thenAnswer((_) async => null);
    when(
      () => mockDatabaseInterface.getHealthData(),
    ).thenAnswer((_) async => null);
    when(
      () => mockDatabaseInterface.saveHealthData(any()),
    ).thenAnswer((_) async {});
    when(
      () => mockDatabaseInterface.getThemeMode(),
    ).thenAnswer((_) async => ThemeMode.system);
    when(
      () => mockDatabaseInterface.getLanguageCode(),
    ).thenAnswer((_) async => 'en');

    when(() => mockHealthService.init()).thenAnswer((_) async {});
    when(
      () => mockHealthService.isHealthConnectAvailable,
    ).thenAnswer((_) async => true);
    when(
      () => mockHealthService.refreshAuthorizationStatus(),
    ).thenAnswer((_) async => false);
    when(
      () => mockHealthService.status,
    ).thenReturn(HealthConnectSdkStatus.sdkAvailable);
    when(
      () => mockHealthService.initializationState,
    ).thenReturn(HealthServiceInitializationState.ready);
    when(() => mockHealthService.canReadTotalCalories).thenReturn(false);
    when(() => mockHealthService.canWriteNutrition).thenReturn(false);
    when(() => mockHealthService.hasAnyHealthPermission).thenReturn(false);
    when(() => mockHealthService.hasAllHealthPermissions).thenReturn(false);
  });

  testWidgets('Full onboarding flow integration test', (
    WidgetTester tester,
  ) async {
    // Start app
    await tester.pumpWidget(
      TranslationProvider(
        child: ProviderScope(
          overrides: [
            databaseInterfaceProvider.overrideWithValue(mockDatabaseInterface),
            healthServiceProvider.overrideWithValue(mockHealthService),
            bannerSelectionProvider.overrideWith((ref) => Stream.value(null)),
          ],
          child: const CalorifyApp(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // Welcome Screen
    expect(find.textContaining('Welcome'), findsOneWidget);
    await tester.tap(find.textContaining('Get Started'));
    await tester.pumpAndSettle();

    // Weight Goal Screen
    expect(find.textContaining('goal'), findsWidgets);
    await tester.tap(find.textContaining('Lose Weight'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Continue'));
    await tester.pumpAndSettle();

    // Activity Level Screen
    expect(find.textContaining('active'), findsWidgets);
    await tester.tap(find.textContaining('Moderately Active'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Continue'));
    await tester.pumpAndSettle();

    // ... and so on for all steps
  });
}
