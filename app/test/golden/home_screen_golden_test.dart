import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/features/home/home_screen.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/db/database_interface.dart';
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
    await loadAppFonts();
  });

  setUp(() {
    mockHealthService = MockHealthService();
    mockDatabaseInterface = MockDatabaseInterface();

    HealthService.setMockInstance(mockHealthService);
    DatabaseService.setMockInterface(mockDatabaseInterface);

    when(() => mockHealthService.status).thenReturn(HealthConnectSdkStatus.sdkAvailable);
    when(() => mockHealthService.isAuthorized).thenReturn(true);
    when(() => mockHealthService.getTotalCaloriesBurned()).thenAnswer((_) async => 500.0);
    when(() => mockDatabaseInterface.watchDailyCalorieGoal()).thenAnswer((_) => Stream.value(2000));
    when(() => mockDatabaseInterface.getDailyCalorieGoal()).thenAnswer((_) async => 2000);
    when(() => mockDatabaseInterface.watchAllMealsForToday()).thenAnswer((_) => Stream.value([]));
    when(() => mockDatabaseInterface.watchAllMealsForLast7Days()).thenAnswer((_) => Stream.value([]));
  });

  group('HomeScreen Golden Tests', () {
    testGoldens('Empty state', (WidgetTester tester) async {
      for (final device in testDevices) {
        await tester.pumpWidgetBuilder(
          const HomeScreen(),
          wrapper: goldenWrapper(),
          surfaceSize: device.size,
        );
        await screenMatchesGolden(tester, 'home_screen_empty_${device.name}');
      }
    });

    testGoldens('With goal set', (WidgetTester tester) async {
      when(() => mockDatabaseInterface.watchDailyCalorieGoal()).thenAnswer((_) => Stream.value(2500));
      
      for (final device in testDevices) {
        await tester.pumpWidgetBuilder(
          const HomeScreen(),
          wrapper: goldenWrapper(),
          surfaceSize: device.size,
        );
        await screenMatchesGolden(tester, 'home_screen_with_goal_${device.name}');
      }
    });
  });
}
