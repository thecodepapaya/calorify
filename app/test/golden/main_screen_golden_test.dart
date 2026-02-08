import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/features/main/main_screen.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:health/health.dart';
import '../helpers/golden_test_helpers.dart';
import '../helpers/test_helpers.dart';
import '../setup/all_tests.dart';

class MockDatabaseInterface extends Mock implements DatabaseInterface {}

void main() {
  late MockDatabaseInterface mockDatabaseInterface;

  setUpAll(() async {
    setupAllTests();
    await loadAppFonts();
  });

  setUp(() {
    mockDatabaseInterface = MockDatabaseInterface();
    DatabaseService.setMockInterface(mockDatabaseInterface);

    final mockHealthService = HealthService.instance;
    when(() => mockHealthService.status).thenReturn(HealthConnectSdkStatus.sdkAvailable);
    when(() => mockHealthService.isAuthorized).thenReturn(true);
    when(() => mockHealthService.getTotalCaloriesBurned()).thenAnswer((_) async => 500.0);
    
    when(() => mockDatabaseInterface.watchDailyCalorieGoal()).thenAnswer((_) => Stream.value(2000));
    when(() => mockDatabaseInterface.getDailyCalorieGoal()).thenAnswer((_) async => 2000);
    when(() => mockDatabaseInterface.watchAllMealsForToday()).thenAnswer((_) => Stream.value([]));
    when(() => mockDatabaseInterface.watchLastUsedFavoriteMeals()).thenAnswer((_) => Stream.value([]));
    when(() => mockDatabaseInterface.watchAllMealsForLast7Days()).thenAnswer((_) => Stream.value([]));
  });

  group('MainScreen Golden Tests', () {
    testGoldens('Dashboard tab', (WidgetTester tester) async {
      final mockRouter = MockTabsRouter();
      when(() => mockRouter.activeIndex).thenReturn(0);

      for (final locale in goldenTestLocales) {
        for (final device in testDevices) {
          await tester.pumpWidgetBuilder(
            const MainScreen(),
            wrapper: goldenWrapper(router: mockRouter, locale: locale),
            surfaceSize: device.size,
          );
          await screenMatchesGolden(
            tester,
            'main_screen_dashboard_${locale.name}_${device.name}',
          );
        }
      }
    });
  });
}
