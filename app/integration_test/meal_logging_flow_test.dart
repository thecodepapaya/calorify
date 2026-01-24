import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/app.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/services/food_analysis.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/core/constants/analytics_events.dart';
import 'package:health/health.dart' hide MealType;
import 'package:models/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';

class MockDatabaseInterface extends Mock implements DatabaseInterface {}

class MockFoodAnalysisService extends Mock implements FoodAnalysisService {}

class MockHealthService extends Mock implements HealthService {}

class MockAnalytics extends Mock implements Analytics {}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  late MockDatabaseInterface mockDatabaseInterface;
  late MockFoodAnalysisService mockFoodAnalysisService;
  late MockHealthService mockHealthService;
  late MockAnalytics mockAnalytics;

  setUpAll(() {
    registerFallbackValue(AnalyticsEvent.homeView);
    registerFallbackValue(MealType.SNACK);
    registerFallbackValue(
      MealInfo(
        mealName: '',
        mealQuantity: '',
        mealType: MealType.UNKNOWN,
        calories: 0,
        protein: 0,
        carbs: 0,
        fat: 0,
        fiber: 0,
        timestamp: dateTimeToTimestamp(DateTime(2023)),
      ),
    );
  });

  setUp(() {
    mockDatabaseInterface = MockDatabaseInterface();
    mockFoodAnalysisService = MockFoodAnalysisService();
    mockHealthService = MockHealthService();
    mockAnalytics = MockAnalytics();

    DatabaseService.setMockInterface(mockDatabaseInterface);
    FoodAnalysisService.setMockInstance(mockFoodAnalysisService);
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

  testWidgets('Meal logging flow integration test', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      TranslationProvider(child: const ProviderScope(child: CalorifyApp())),
    );
    await tester.pumpAndSettle();

    // Verify Home Screen
    expect(find.byType(CalorifyApp), findsOneWidget);

    // Navigate to Log Tab (Assuming it's the second tab)
    final logTabFinder = find.byIcon(Icons.add); // Adjust based on actual icon
    if (tester.any(logTabFinder)) {
      await tester.tap(logTabFinder);
      await tester.pumpAndSettle();
    }

    // Use "Quick Add with AI"
    final textControllerFinder = find.byType(TextFormField);
    expect(textControllerFinder, findsOneWidget);
    await tester.enterText(textControllerFinder, 'I had a chicken salad');

    final mockResult = MealDetectionResult(
      mealIdentified: true,
      calorieConfidence: 9,
      tip: 'Chicken salad is healthy!',
      mealInfo: MealInfo(
        mealName: 'Chicken Salad',
        mealQuantity: '1 bowl',
        mealType: MealType.LUNCH,
        calories: 350,
        protein: 30,
        carbs: 10,
        fat: 15,
        fiber: 5,
        timestamp: dateTimeToTimestamp(DateTime.now()),
        healthScore: HealthScore.HEALTHY,
      ),
    );

    when(
      () => mockFoodAnalysisService.analyzeFoodDescription(
        description: any(named: 'description'),
      ),
    ).thenAnswer((_) async => mockResult);

    final analyzeButtonFinder = find.textContaining('Analyze');
    await tester.tap(analyzeButtonFinder);
    await tester.pumpAndSettle();

    // Verify confirmation sheet/modal
    expect(find.text('Chicken Salad'), findsWidgets);

    // Save meal
    when(() => mockDatabaseInterface.logMeal(any())).thenAnswer((_) async {});
    final saveButtonFinder = find.textContaining('Save');
    if (tester.any(saveButtonFinder)) {
      await tester.tap(saveButtonFinder);
      await tester.pumpAndSettle();
    }

    // Verify we are back on home/log and meal is logged (mock would return updated stream)
    verify(() => mockDatabaseInterface.logMeal(any())).called(1);
  });
}
