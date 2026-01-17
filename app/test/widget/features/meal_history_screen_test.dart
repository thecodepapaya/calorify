import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/features/history/meal_history_screen.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:models/models.dart';
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
  });

  group('MealHistoryScreen Widget', () {
    testWidgets('renders empty view when no meals', (WidgetTester tester) async {
      when(() => mockDatabaseInterface.paginatedMealsHistory(offset: any(named: 'offset')))
          .thenAnswer((_) async => []);

      await tester.pumpWidget(wrapWithProviders(const MealHistoryScreen()));
      await tester.pumpAndSettle();

      expect(find.textContaining('No meals'), findsWidgets);
    });

    testWidgets('renders meals list', (WidgetTester tester) async {
      final mockMeals = [
        MealInfo(
          id: 1,
          mealName: 'Apple',
          mealQuantity: '1',
          mealType: MealType.snack,
          calories: 95,
          protein: 0,
          carbs: 25,
          fat: 0,
          fiber: 4,
          timestamp: DateTime.now(),
          healthScore: HealthScore.healthy,
          healthScoreReason: 'Good',
        ),
      ];

      when(() => mockDatabaseInterface.paginatedMealsHistory(offset: any(named: 'offset')))
          .thenAnswer((_) async => mockMeals);

      await tester.pumpWidget(wrapWithProviders(const MealHistoryScreen()));
      await tester.pumpAndSettle();

      expect(find.text('Apple'), findsOneWidget);
      expect(find.text('95'), findsWidgets); // Calorie value
    });
  });
}
