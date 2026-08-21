import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/features/home/home_screen.dart';
import 'package:calorify/features/home/widgets/connect_health.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:health/health.dart';
import 'package:models/models.dart';
import 'package:widgets/widgets.dart';
import 'package:flutter/widgets.dart';
import '../../helpers/test_helpers.dart';
import '../../setup/all_tests.dart';

class MockDatabaseInterface extends Mock implements DatabaseInterface {}

class MockHealthService extends Mock implements HealthService {}

void main() {
  late MockDatabaseInterface mockDatabaseInterface;
  late MockHealthService mockHealthService;

  setUpAll(() {
    setupAllTests();
  });

  setUp(() {
    mockDatabaseInterface = MockDatabaseInterface();
    mockHealthService = MockHealthService();
    DatabaseService.setMockInterface(mockDatabaseInterface);

    // Default stubs
    when(
      () => mockHealthService.status,
    ).thenReturn(HealthConnectSdkStatus.sdkAvailable);
    when(() => mockHealthService.isAuthorized).thenReturn(true);
    when(
      () => mockHealthService.refreshAuthorizationStatus(),
    ).thenAnswer((_) async => mockHealthService.isAuthorized);
    when(() => mockHealthService.getTotalCaloriesBurned()).thenAnswer(
      (_) async => CaloriesResult(calories: 500.0, usedFallback: false),
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
  });

  group('HomeScreen Widget', () {
    testWidgets('renders all major components', (WidgetTester tester) async {
      await tester.pumpWidget(
        wrapWithProviders(
          const HomeScreen(),
          overrides: [
            healthServiceProvider.overrideWithValue(mockHealthService),
            aiSummaryProvider.overrideWith((ref) => null),
          ],
        ),
      );
      await tester.pump();

      expect(find.byType(HomeScreen), findsOneWidget);
      // Components from the build method
      // Note: Some might be wrapped in StreamBuilders, so we need to ensure streams emit values.
      expect(find.textContaining('Goal'), findsWidgets); // From SetDailyGoal
      expect(
        find.textContaining('Summary'),
        findsWidgets,
      ); // From DailySummaryCard
    });

    testWidgets('shows Health Connect prompt when not authorized', (
      WidgetTester tester,
    ) async {
      when(() => mockHealthService.isAuthorized).thenReturn(false);

      await tester.pumpWidget(
        wrapWithProviders(
          const HomeScreen(),
          overrides: [
            healthServiceProvider.overrideWithValue(mockHealthService),
            aiSummaryProvider.overrideWith((ref) => null),
          ],
        ),
      );
      await tester.pump();

      expect(find.textContaining('Connect'), findsWidgets);
    });

    testWidgets('hides Health Connect prompt after permissions change', (
      WidgetTester tester,
    ) async {
      var isAuthorized = false;
      when(
        () => mockHealthService.isAuthorized,
      ).thenAnswer((_) => isAuthorized);
      when(() => mockHealthService.refreshAuthorizationStatus()).thenAnswer((
        _,
      ) async {
        isAuthorized = true;
        return true;
      });

      await tester.pumpWidget(
        wrapWithProviders(
          const HomeScreen(),
          overrides: [
            healthServiceProvider.overrideWithValue(mockHealthService),
            aiSummaryProvider.overrideWith((ref) => null),
          ],
        ),
      );
      await tester.pump();

      expect(find.byType(HealthConnectPromptCard), findsOneWidget);

      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 100));

      expect(find.byType(HealthConnectPromptCard), findsNothing);
    });

    testWidgets('prevents duplicate Health Connect permission requests', (
      WidgetTester tester,
    ) async {
      final authorization = Completer<bool>();
      when(
        () => mockHealthService.requestAuthorization(),
      ).thenAnswer((_) => authorization.future);

      await tester.pumpWidget(
        wrapWithProviders(
          HealthConnectPromptCard(healthService: mockHealthService),
        ),
      );

      await tester.tap(find.text('Connect'));
      await tester.pump();
      await tester.tap(find.text('Connect'));
      await tester.pump();

      verify(() => mockHealthService.requestAuthorization()).called(1);
      authorization.complete(true);
      await tester.pump();
    });

    testWidgets('shows skeleton cards while dashboard data is loading', (
      WidgetTester tester,
    ) async {
      final todaysMealsController =
          StreamController<List<LoggedMeal>>.broadcast();
      final last7DaysMealsController =
          StreamController<List<LoggedMeal>>.broadcast();
      final dailyGoalController = StreamController<int?>.broadcast();
      final aiSummaryCompleter = Completer<AiMealSummaryResponse?>();

      addTearDown(() async {
        await todaysMealsController.close();
        await last7DaysMealsController.close();
        await dailyGoalController.close();
      });

      await tester.pumpWidget(
        wrapWithProviders(
          const HomeScreen(),
          overrides: [
            healthServiceProvider.overrideWithValue(mockHealthService),
            todaysMealsProvider.overrideWith(
              (ref) => todaysMealsController.stream,
            ),
            last7DaysMealsProvider.overrideWith(
              (ref) => last7DaysMealsController.stream,
            ),
            dailyCalorieGoalProvider.overrideWith(
              (ref) => dailyGoalController.stream,
            ),
            aiSummaryProvider.overrideWith((ref) => aiSummaryCompleter.future),
          ],
        ),
      );
      await tester.pump();

      expect(find.byType(ShimmerBox), findsWidgets);
      expect(find.byType(AppLoader), findsNothing);
    });
  });
}
