import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/features/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:health/health.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/test_helpers.dart';
import '../../setup/all_tests.dart';

class MockDatabaseInterface extends Mock implements DatabaseInterface {}

class MockHealthService extends Mock implements HealthService {}

void main() {
  late MockDatabaseInterface database;
  late MockHealthService healthService;

  setUpAll(setupAllTests);

  setUp(() {
    database = MockDatabaseInterface();
    healthService = MockHealthService();
    DatabaseService.setMockInterface(database);

    when(
      () => healthService.status,
    ).thenReturn(HealthConnectSdkStatus.sdkAvailable);
    when(() => healthService.isAuthorized).thenReturn(true);
    when(() => healthService.getTotalCaloriesBurned()).thenAnswer(
      (_) async => CaloriesResult(calories: 500, usedFallback: false),
    );
    when(
      () => database.watchDailyCalorieGoal(),
    ).thenAnswer((_) => Stream.value(2000));
    when(() => database.getDailyCalorieGoal()).thenAnswer((_) async => 2000);
    when(
      () => database.watchAllMealsForToday(),
    ).thenAnswer((_) => Stream.value([]));
    when(
      () => database.watchAllMealsForLast7Days(),
    ).thenAnswer((_) => Stream.value([]));
    when(
      () => database.watchLastUsedFavoriteMeals(),
    ).thenAnswer((_) => Stream.value([]));
  });

  tearDown(() {
    TestWidgetsFlutterBinding.instance.platformDispatcher.clearAllTestValues();
  });

  testWidgets('uses a navigation rail on a tablet viewport', (tester) async {
    tester.view.physicalSize = const Size(1280, 800);
    tester.view.devicePixelRatio = 1;
    final router = MockTabsRouter();

    await tester.pumpWidget(
      wrapWithProviders(
        const MainScreen(),
        router: router,
        overrides: [
          healthServiceProvider.overrideWithValue(healthService),
          aiSummaryProvider.overrideWith((ref) => null),
        ],
      ),
    );
    await tester.pump();

    expect(find.byKey(const Key('tablet_navigation_rail')), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('keeps compact navigation on a foldable-sized pane', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(490, 800);
    tester.view.devicePixelRatio = 1;
    final router = MockTabsRouter();

    await tester.pumpWidget(
      wrapWithProviders(
        const MainScreen(),
        router: router,
        overrides: [
          healthServiceProvider.overrideWithValue(healthService),
          aiSummaryProvider.overrideWith((ref) => null),
        ],
      ),
    );
    await tester.pump();

    expect(find.byKey(const Key('tablet_navigation_rail')), findsNothing);
    expect(tester.takeException(), isNull);
  });
}
