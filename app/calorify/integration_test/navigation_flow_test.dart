import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/app.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:calorify/core/providers/app_banner_providers.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/constants/analytics_events.dart';
import 'package:health/health.dart' hide MealType;
import 'package:models/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import '../test/setup/all_tests.dart';

class MockDatabaseInterface extends Mock implements DatabaseInterface {}

class MockHealthService extends Mock implements HealthService {}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  late MockDatabaseInterface mockDatabaseInterface;
  late MockHealthService mockHealthService;

  setUpAll(() {
    setupAllTests();
    registerFallbackValue(AnalyticsEvent.homeView);
  });

  setUp(() {
    mockDatabaseInterface = MockDatabaseInterface();
    mockHealthService = MockHealthService();

    DatabaseService.setMockInterface(mockDatabaseInterface);

    when(() => mockDatabaseInterface.hasCompletedOnboarding()).thenAnswer(
      (_) async => true,
    );
    when(() => mockDatabaseInterface.getPendingHealthDataSync()).thenAnswer(
      (_) async => null,
    );
    when(() => mockDatabaseInterface.isHealthConnectPromptDismissed()).thenAnswer(
      (_) async => false,
    );
    when(() => mockDatabaseInterface.setHealthConnectPromptDismissed()).thenAnswer(
      (_) async {},
    );
    when(() => mockDatabaseInterface.getHealthData()).thenAnswer(
      (_) async => HealthData(
        height: Height(value: 180, unit: HeightUnit.CM),
        weight: Weight(value: 80, unit: WeightUnit.KG),
        gender: Gender.MALE,
        activityLevel: ActivityLevel.MODERATELY_ACTIVE,
        weightGoal: WeightGoal.MAINTAIN_WEIGHT,
      ),
    );
    when(
      () => mockDatabaseInterface.watchDailyCalorieGoal(),
    ).thenAnswer((_) => Stream.value(2000));
    when(
      () => mockDatabaseInterface.getDailyCalorieGoal(),
    ).thenAnswer((_) async => 2000);
    when(
      () => mockDatabaseInterface.watchAllMealsForToday(),
    ).thenAnswer((_) => Stream.value([]));
    when(
      () => mockDatabaseInterface.watchAllMealsForLast7Days(),
    ).thenAnswer((_) => Stream.value([]));
    when(
      () => mockDatabaseInterface.watchLastUsedFavoriteMeals(),
    ).thenAnswer((_) => Stream.value([]));
    when(
      () => mockDatabaseInterface.paginatedMealsHistory(
        offset: any(named: 'offset'),
      ),
    ).thenAnswer((_) async => []);
    when(
      () => mockDatabaseInterface.getThemeMode(),
    ).thenAnswer((_) async => ThemeMode.system);
    when(
      () => mockDatabaseInterface.getLanguageCode(),
    ).thenAnswer((_) async => 'en');

    when(() => mockHealthService.init()).thenAnswer((_) async {});
    when(() => mockHealthService.isHealthConnectAvailable).thenAnswer((_) async => true);
    when(
      () => mockHealthService.status,
    ).thenReturn(HealthConnectSdkStatus.sdkAvailable);
    when(
      () => mockHealthService.initializationState,
    ).thenReturn(HealthServiceInitializationState.ready);
    when(() => mockHealthService.canReadTotalCalories).thenReturn(true);
    when(() => mockHealthService.canWriteNutrition).thenReturn(true);
    when(() => mockHealthService.hasAnyHealthPermission).thenReturn(true);
    when(() => mockHealthService.hasAllHealthPermissions).thenReturn(true);
    when(
      () => mockHealthService.refreshAuthorizationStatus(),
    ).thenAnswer((_) async => true);
    when(() => mockHealthService.getTotalCaloriesBurned()).thenAnswer(
      (_) async => CaloriesResult(calories: 500.0, usedFallback: false),
    );
  });

  testWidgets('Navigation flow integration test', (WidgetTester tester) async {
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

    // Verify Dashboard
    expect(find.textContaining('Dashboard'), findsWidgets);

    // Navigate to History
    final historyTabFinder = find.text('History');
    if (tester.any(historyTabFinder)) {
      await tester.tap(historyTabFinder.first);
      await tester.pumpAndSettle();
      expect(find.textContaining('History'), findsWidgets);
    }

    // Navigate back to Dashboard/Home
    final dashboardTabFinder = find.text('Dashboard');
    if (tester.any(dashboardTabFinder)) {
      await tester.tap(dashboardTabFinder.first);
      await tester.pumpAndSettle();
      expect(find.textContaining('Goal'), findsWidgets);
    }
  });
}
