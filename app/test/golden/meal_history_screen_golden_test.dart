import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/features/history/meal_history_screen.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:models/models.dart';
import 'package:utils/utils.dart';
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
        LoggedMeal(
          clientId: 1,
          meal: Meal(
            name: 'Chicken Salad',
            quantity: '1 bowl',
            type: MealType.LUNCH,
            macros: MealMacro(
              calories: 350,
              protein: 30,
              carbs: 10,
              fat: 15,
              fiber: 5,
            ),
            health: MealHealth(
              healthScore: HealthScore.HEALTHY,
            ),
          ),
          createdAt: dateTimeToIso8601String(DateTime.now()),
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
