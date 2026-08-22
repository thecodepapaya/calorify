import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/features/home/widgets/daily_goal.dart';
import 'package:calorify/features/home/widgets/daily_summary.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:health/health.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../helpers/golden_test_helpers.dart';
import '../setup/all_tests.dart';

class MockDatabaseInterface extends Mock implements DatabaseInterface {}

class MockHealthService extends Mock implements HealthService {}

void main() {
  late MockDatabaseInterface mockDatabaseInterface;
  late MockHealthService mockHealthService;

  setUpAll(() async {
    setupAllTests();
    await loadGoldenFonts();
  });

  setUp(() {
    mockDatabaseInterface = MockDatabaseInterface();
    mockHealthService = MockHealthService();

    DatabaseService.setMockInterface(mockDatabaseInterface);

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
      () => mockHealthService.status,
    ).thenReturn(HealthConnectSdkStatus.sdkAvailable);
    when(() => mockHealthService.isAuthorized).thenReturn(true);
    when(
      () => mockHealthService.initializationState,
    ).thenReturn(HealthServiceInitializationState.ready);
    when(() => mockHealthService.canReadTotalCalories).thenReturn(true);
    when(() => mockHealthService.canWriteNutrition).thenReturn(true);
    when(() => mockHealthService.hasAnyHealthPermission).thenReturn(true);
    when(() => mockHealthService.hasAllHealthPermissions).thenReturn(true);
    when(() => mockHealthService.getTotalCaloriesBurned()).thenAnswer(
      (_) async => CaloriesResult(calories: 500.0, usedFallback: false),
    );
  });

  group('Home Widgets Golden Tests', () {
    testGoldens('DailyGoal widget', (WidgetTester tester) async {
      for (final locale in goldenTestLocales) {
        for (final device in testDevices) {
          await tester.pumpWidgetBuilder(
            ProviderScope(
              overrides: [
                healthServiceProvider.overrideWithValue(mockHealthService),
              ],
              child: const SetDailyGoal(),
            ),
            wrapper: goldenWrapper(locale: locale),
            surfaceSize: device.size,
          );
          await screenMatchesGolden(
            tester,
            'daily_goal_widget_${locale.name}_${device.name}',
          );
        }
      }
    });

    testGoldens('DailySummary widget', (WidgetTester tester) async {
      for (final locale in goldenTestLocales) {
        for (final device in testDevices) {
          await tester.pumpWidgetBuilder(
            ProviderScope(
              overrides: [
                healthServiceProvider.overrideWithValue(mockHealthService),
              ],
              child: const DailySummaryCard(),
            ),
            wrapper: goldenWrapper(locale: locale),
            surfaceSize: device.size,
          );
          await screenMatchesGolden(
            tester,
            'daily_summary_widget_${locale.name}_${device.name}',
          );
        }
      }
    });
  });
}
