import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/features/favorites/favorites_screen.dart';
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

  group('FavoritesScreen Golden Tests', () {
    testGoldens('With favorites', (WidgetTester tester) async {
      final mockFavorites = [
        FavoriteMeal(
          clientId: 1,
          loggedMeal: LoggedMeal(
            clientId: 1,
            meal: Meal(
              name: 'Favorite Apple',
              quantity: '1',
              type: MealType.SNACK,
              macros: MealMacro(
                calories: 95,
                protein: 0,
                carbs: 25,
                fat: 0,
                fiber: 4,
              ),
              health: MealHealth(
                healthScore: HealthScore.HEALTHY,
              ),
            ),
            createdAt: dateTimeToIso8601String(DateTime.now()),
          ),
          favoriteAt: dateTimeToIso8601String(DateTime.now()),
          lastUsedAt: dateTimeToIso8601String(DateTime.now()),
        ),
      ];

      when(
        () => mockDatabaseInterface.watchAllFavoriteMeals(),
      ).thenAnswer((_) => Stream.value(mockFavorites));

      for (final locale in goldenTestLocales) {
        for (final device in testDevices) {
          await tester.pumpWidgetBuilder(
            const FavoritesScreen(),
            wrapper: goldenWrapper(locale: locale),
            surfaceSize: device.size,
          );
          await screenMatchesGolden(
            tester,
            'favorites_screen_with_items_${locale.name}_${device.name}',
          );
        }
      }
    });

    testGoldens('Empty state', (WidgetTester tester) async {
      when(
        () => mockDatabaseInterface.watchAllFavoriteMeals(),
      ).thenAnswer((_) => Stream.value([]));

      for (final locale in goldenTestLocales) {
        for (final device in testDevices) {
          await tester.pumpWidgetBuilder(
            const FavoritesScreen(),
            wrapper: goldenWrapper(locale: locale),
            surfaceSize: device.size,
          );
          await screenMatchesGolden(
            tester,
            'favorites_screen_empty_${locale.name}_${device.name}',
          );
        }
      }
    });
  });
}
