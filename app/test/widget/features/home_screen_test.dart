import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/features/home/home_screen.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:health/health.dart';
import '../../helpers/test_helpers.dart';
import '../../setup/all_tests.dart';

class MockDatabaseInterface extends Mock implements DatabaseInterface {}

void main() {
  late MockDatabaseInterface mockDatabaseInterface;

  setUpAll(() {
    setupAllTests();
  });

  setUp(() {
    mockDatabaseInterface = MockDatabaseInterface();
    DatabaseService.setMockInterface(mockDatabaseInterface);

    // Default stubs
    final mockHealthService = HealthService.instance;
    when(
      () => mockHealthService.status,
    ).thenReturn(HealthConnectSdkStatus.sdkAvailable);
    when(() => mockHealthService.isAuthorized).thenReturn(true);
    when(
      () => mockHealthService.getTotalCaloriesBurned(),
    ).thenAnswer((_) async => CaloriesResult(calories: 500.0, usedFallback: false));
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
      await tester.pumpWidget(wrapWithProviders(const HomeScreen()));
      await tester.pumpAndSettle();

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
      final mockHealthService = HealthService.instance;
      when(() => mockHealthService.isAuthorized).thenReturn(false);

      await tester.pumpWidget(wrapWithProviders(const HomeScreen()));
      await tester.pumpAndSettle();

      expect(find.textContaining('Connect'), findsWidgets);
    });
  });
}
