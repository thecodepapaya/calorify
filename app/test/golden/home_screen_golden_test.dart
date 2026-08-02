import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/features/home/home_screen.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health/health.dart';
import '../helpers/golden_test_helpers.dart';
import '../setup/all_tests.dart';

class MockHealthService extends Mock implements HealthService {}

class MockDatabaseInterface extends Mock implements DatabaseInterface {}

void main() {
  late MockHealthService mockHealthService;
  late MockDatabaseInterface mockDatabaseInterface;

  setUpAll(() async {
    setupAllTests();
    await loadGoldenFonts();
  });

  setUp(() {
    mockHealthService = MockHealthService();
    mockDatabaseInterface = MockDatabaseInterface();

    HealthService.setMockInstance(mockHealthService);
    DatabaseService.setMockInterface(mockDatabaseInterface);

    when(
      () => mockHealthService.status,
    ).thenReturn(HealthConnectSdkStatus.sdkAvailable);
    when(() => mockHealthService.isAuthorized).thenReturn(true);
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

  group('HomeScreen Golden Tests', () {
    testGoldens('Empty state', (WidgetTester tester) async {
      for (final locale in goldenTestLocales) {
        for (final device in testDevices) {
          await tester.pumpWidgetBuilder(
            ProviderScope(
              overrides: [aiSummaryProvider.overrideWith((ref) => null)],
              child: const HomeScreen(),
            ),
            wrapper: goldenWrapper(locale: locale),
            surfaceSize: device.size,
          );
          await screenMatchesGolden(
            tester,
            'home_screen_empty_${locale.name}_${device.name}',
          );
        }
      }
    });

    testGoldens('With goal set', (WidgetTester tester) async {
      when(
        () => mockDatabaseInterface.watchDailyCalorieGoal(),
      ).thenAnswer((_) => Stream.value(2500));

      for (final locale in goldenTestLocales) {
        for (final device in testDevices) {
          await tester.pumpWidgetBuilder(
            ProviderScope(
              overrides: [aiSummaryProvider.overrideWith((ref) => null)],
              child: const HomeScreen(),
            ),
            wrapper: goldenWrapper(locale: locale),
            surfaceSize: device.size,
          );
          await screenMatchesGolden(
            tester,
            'home_screen_with_goal_${locale.name}_${device.name}',
          );
        }
      }
    });
  });
}
