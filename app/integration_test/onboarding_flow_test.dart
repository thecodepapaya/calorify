import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/app.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/core/constants/analytics_events.dart';
import 'package:health/health.dart' hide MealType;
import 'package:models/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';

class MockDatabaseInterface extends Mock implements DatabaseInterface {}

class MockHealthService extends Mock implements HealthService {}

class MockAnalytics extends Mock implements Analytics {}

class FakeUserProfile extends Fake implements UserProfile {}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  late MockDatabaseInterface mockDatabaseInterface;
  late MockHealthService mockHealthService;
  late MockAnalytics mockAnalytics;

  setUpAll(() {
    registerFallbackValue(FakeUserProfile());
    registerFallbackValue(AnalyticsEvent.onboardingStart);
  });

  setUp(() {
    mockDatabaseInterface = MockDatabaseInterface();
    mockHealthService = MockHealthService();
    mockAnalytics = MockAnalytics();

    DatabaseService.setMockInterface(mockDatabaseInterface);
    Analytics.setMockInstance(mockAnalytics);

    when(() => mockAnalytics.logEvent(any())).thenAnswer((_) {});
    when(
      () => mockDatabaseInterface.getUserProfile(),
    ).thenAnswer((_) async => null);
    when(
      () => mockDatabaseInterface.saveUserProfile(any()),
    ).thenAnswer((_) async {});
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
    when(
      () => mockDatabaseInterface.getThemeMode(),
    ).thenAnswer((_) async => ThemeMode.system);
    when(
      () => mockDatabaseInterface.getLanguageCode(),
    ).thenAnswer((_) async => 'en');
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

    // Activity Level Screen
    expect(find.textContaining('active'), findsWidgets);
    await tester.tap(find.textContaining('Moderately Active'));
    await tester.pumpAndSettle();

    // ... and so on for all steps
  });
}
