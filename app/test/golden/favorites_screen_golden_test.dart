import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/features/favorites/favorites_screen.dart';
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

  group('FavoritesScreen Golden Tests', () {
    testGoldens('With favorites', (WidgetTester tester) async {
      final mockMeals = [
        MealInfo(
          id: 1,
          mealName: 'Favorite Apple',
          mealQuantity: '1',
          mealType: MealType.snack,
          calories: 95,
          protein: 0,
          carbs: 25,
          fat: 0,
          fiber: 4,
          timestamp: DateTime.now(),
          healthScore: HealthScore.healthy,
        ),
      ];

      when(() => mockDatabaseInterface.watchAllFavoriteMeals())
          .thenAnswer((_) => Stream.value(mockMeals));

      for (final device in testDevices) {
        await tester.pumpWidgetBuilder(
          const FavoritesScreen(),
          wrapper: goldenWrapper(),
          surfaceSize: device.size,
        );
        await screenMatchesGolden(tester, 'favorites_screen_with_items_${device.name}');
      }
    });

    testGoldens('Empty state', (WidgetTester tester) async {
      when(() => mockDatabaseInterface.watchAllFavoriteMeals())
          .thenAnswer((_) => Stream.value([]));

      for (final device in testDevices) {
        await tester.pumpWidgetBuilder(
          const FavoritesScreen(),
          wrapper: goldenWrapper(),
          surfaceSize: device.size,
        );
        await screenMatchesGolden(tester, 'favorites_screen_empty_${device.name}');
      }
    });
  });
}
