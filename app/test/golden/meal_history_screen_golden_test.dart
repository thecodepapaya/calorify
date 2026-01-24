import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/features/history/meal_history_screen.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:models/models.dart';
import '../helpers/golden_test_helpers.dart';
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
  });

  group('MealHistoryScreen Golden Tests', () {
    testGoldens('Empty state', (WidgetTester tester) async {
      when(
        () => mockDatabaseInterface.paginatedMealsHistory(
          offset: any(named: 'offset'),
        ),
      ).thenAnswer((_) async => []);

      for (final device in testDevices) {
        await tester.pumpWidgetBuilder(
          const MealHistoryScreen(),
          wrapper: goldenWrapper(),
          surfaceSize: device.size,
        );
        await screenMatchesGolden(tester, 'meal_history_empty_${device.name}');
      }
    });

    testGoldens('With meals', (WidgetTester tester) async {
      final mockMeals = [
        MealInfo(
          localId: int64FromInt(1),
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
      ];

      when(
        () => mockDatabaseInterface.paginatedMealsHistory(
          offset: any(named: 'offset'),
        ),
      ).thenAnswer((_) async => mockMeals);

      for (final device in testDevices) {
        await tester.pumpWidgetBuilder(
          const MealHistoryScreen(),
          wrapper: goldenWrapper(),
          surfaceSize: device.size,
        );
        await screenMatchesGolden(
          tester,
          'meal_history_with_meals_${device.name}',
        );
      }
    });
  });
}
