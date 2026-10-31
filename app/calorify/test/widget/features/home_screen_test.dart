import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/features/home/home_screen.dart';
import 'package:calorify/features/home/widgets/connect_health.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/services/health_connect_sync_service.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:health/health.dart';
import 'package:flutter/widgets.dart';
import '../../helpers/test_helpers.dart';
import '../../setup/all_tests.dart';

class MockDatabaseInterface extends Mock implements DatabaseInterface {}

class MockHealthService extends Mock implements HealthService {}

class MockHealthConnectSyncService extends Mock
    implements HealthConnectSyncService {}

void main() {
  late MockDatabaseInterface mockDatabaseInterface;
  late MockHealthService mockHealthService;
  late MockHealthConnectSyncService mockHealthConnectSyncService;

  setUpAll(() {
    setupAllTests();
  });

  setUp(() {
    mockDatabaseInterface = MockDatabaseInterface();
    mockHealthService = MockHealthService();
    mockHealthConnectSyncService = MockHealthConnectSyncService();
    DatabaseService.setMockInterface(mockDatabaseInterface);

    // Default stubs
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
    ).thenAnswer((_) async => mockHealthService.hasAnyHealthPermission);
    when(() => mockHealthService.getTotalCaloriesBurned()).thenAnswer(
      (_) async => CaloriesResult(calories: 500.0, usedFallback: false),
    );
    when(
      () => mockHealthConnectSyncService.syncPending(),
    ).thenAnswer((_) async => const HealthConnectSyncResult.none());
    when(
      () => mockHealthConnectSyncService.reconcileAuthorization(),
    ).thenAnswer((_) async {});
    when(
      () => mockHealthConnectSyncService.enableNutritionSync(),
    ).thenAnswer((_) async => const HealthConnectSyncResult.none());
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
      () => mockDatabaseInterface.isHealthConnectPromptDismissed(),
    ).thenAnswer((_) async => false);
    when(
      () => mockDatabaseInterface.setHealthConnectPromptDismissed(),
    ).thenAnswer((_) async {});
  });

  group('HomeScreen Widget', () {
    testWidgets('hides Health Connect prompt after permissions change', (
      WidgetTester tester,
    ) async {
      var isAuthorized = false;
      var shouldAuthorize = false;
      when(
        () => mockHealthService.canReadTotalCalories,
      ).thenAnswer((_) => isAuthorized);
      when(
        () => mockHealthService.canWriteNutrition,
      ).thenAnswer((_) => isAuthorized);
      when(
        () => mockHealthService.hasAnyHealthPermission,
      ).thenAnswer((_) => isAuthorized);
      when(
        () => mockHealthService.hasAllHealthPermissions,
      ).thenAnswer((_) => isAuthorized);
      when(() => mockHealthService.refreshAuthorizationStatus()).thenAnswer((
        _,
      ) async {
        isAuthorized = shouldAuthorize;
        return isAuthorized;
      });

      await tester.pumpWidget(
        wrapWithProviders(
          const HomeScreen(),
          overrides: [
            healthServiceProvider.overrideWithValue(mockHealthService),
            healthConnectSyncServiceProvider.overrideWithValue(
              mockHealthConnectSyncService,
            ),
            aiSummaryProvider.overrideWith((ref) => null),
          ],
        ),
      );
      await tester.pump();

      expect(find.byType(HealthConnectPromptCard), findsOneWidget);

      shouldAuthorize = true;
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 100));

      expect(find.byType(HealthConnectPromptCard), findsNothing);
      verify(
        () => mockHealthConnectSyncService.enableNutritionSync(),
      ).called(1);
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

      final promptAction = find.byKey(const Key('healthConnectPromptAction'));
      await tester.tap(promptAction);
      await tester.pump();
      await tester.tap(promptAction);
      await tester.pump();

      verify(() => mockHealthService.requestAuthorization()).called(1);
      authorization.complete(true);
      await tester.pump();
    });

    testWidgets('persists Health Connect prompt dismissal', (
      WidgetTester tester,
    ) async {
      when(() => mockHealthService.canReadTotalCalories).thenReturn(false);
      when(() => mockHealthService.canWriteNutrition).thenReturn(false);
      when(() => mockHealthService.hasAnyHealthPermission).thenReturn(false);
      when(() => mockHealthService.hasAllHealthPermissions).thenReturn(false);

      await tester.pumpWidget(
        wrapWithProviders(
          const HomeScreen(),
          overrides: [
            healthServiceProvider.overrideWithValue(mockHealthService),
            healthConnectSyncServiceProvider.overrideWithValue(
              mockHealthConnectSyncService,
            ),
            aiSummaryProvider.overrideWith((ref) => null),
          ],
        ),
      );
      await tester.pump();

      await tester.tap(find.byKey(const Key('healthConnectPromptDismiss')));
      await tester.pump();

      expect(find.byType(HealthConnectPromptCard), findsNothing);
      verify(
        () => mockDatabaseInterface.setHealthConnectPromptDismissed(),
      ).called(1);
    });
  });
}
