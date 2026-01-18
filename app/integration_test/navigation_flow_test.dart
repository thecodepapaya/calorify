import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/app.dart';
import 'package:calorify/core/services/database_service.dart';
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

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  late MockDatabaseInterface mockDatabaseInterface;
  late MockHealthService mockHealthService;
  late MockAnalytics mockAnalytics;

  setUpAll(() {
    registerFallbackValue(AnalyticsEvent.homeView);
  });

  setUp(() {
    mockDatabaseInterface = MockDatabaseInterface();
    mockHealthService = MockHealthService();
    mockAnalytics = MockAnalytics();

    DatabaseService.setMockInterface(mockDatabaseInterface);
    HealthService.setMockInstance(mockHealthService);
    Analytics.setMockInstance(mockAnalytics);

    when(() => mockAnalytics.logEvent(any())).thenAnswer((_) {});
    when(() => mockDatabaseInterface.getUserProfile()).thenAnswer(
      (_) async => UserProfile(
        height: 180,
        weight: 80,
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

    when(
      () => mockHealthService.status,
    ).thenReturn(HealthConnectSdkStatus.sdkAvailable);
    when(() => mockHealthService.isAuthorized).thenReturn(true);
    when(
      () => mockHealthService.getTotalCaloriesBurned(),
    ).thenAnswer((_) async => 500.0);
  });

  testWidgets('Navigation flow integration test', (WidgetTester tester) async {
    await tester.pumpWidget(
      TranslationProvider(child: const ProviderScope(child: CalorifyApp())),
    );
    await tester.pumpAndSettle();

    // Verify Dashboard
    expect(find.textContaining('Dashboard'), findsWidgets);

    // Navigate to History
    final historyTabFinder = find.textContaining('History');
    if (tester.any(historyTabFinder)) {
      await tester.tap(historyTabFinder);
      await tester.pumpAndSettle();
      expect(find.textContaining('History'), findsWidgets);
    }

    // Navigate back to Dashboard/Home
    final dashboardTabFinder = find.textContaining('Dashboard');
    if (tester.any(dashboardTabFinder)) {
      await tester.tap(dashboardTabFinder);
      await tester.pumpAndSettle();
      expect(find.textContaining('Goal'), findsWidgets);
    }
  });
}
