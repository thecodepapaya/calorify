import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/features/favorites/favorites_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:i18n/i18n.dart';
import 'package:mocktail/mocktail.dart';
import 'package:models/models.dart';
import 'package:utils/utils.dart';

import '../../helpers/test_helpers.dart';
import '../../setup/all_tests.dart';

class MockDatabaseInterface extends Mock implements DatabaseInterface {}

FavoriteMeal _buildFavoriteMeal({
  required int favoriteId,
  required int clientId,
  required String name,
}) {
  final now = DateTime.now();
  return FavoriteMeal(
    clientId: favoriteId,
    loggedMeal: LoggedMeal(
      clientId: clientId,
      meal: Meal(
        name: name,
        quantity: '1 bowl',
        type: MealType.LUNCH,
        macros: MealMacro(
          calories: 420,
          protein: 18,
          carbs: 52,
          fat: 14,
          fiber: 6,
        ),
        health: MealHealth(
          healthScore: HealthScore.HEALTHY,
          healthScoreReason: 'Balanced meal',
        ),
      ),
      createdAt: dateTimeToIso8601String(now),
    ),
    favoriteAt: dateTimeToIso8601String(now),
    lastUsedAt: dateTimeToIso8601String(now),
  );
}

void main() {
  late MockDatabaseInterface mockDatabaseInterface;

  setUpAll(() {
    setupAllTests();
  });

  setUp(() {
    mockDatabaseInterface = MockDatabaseInterface();
    DatabaseService.setMockInterface(mockDatabaseInterface);
  });

  group('FavoritesScreen Widget', () {
    testWidgets('renders empty view when there are no favorites', (
      WidgetTester tester,
    ) async {
      when(
        () => mockDatabaseInterface.watchAllFavoriteMeals(),
      ).thenAnswer((_) => Stream.value([]));

      await tester.pumpWidget(wrapWithProviders(const FavoritesScreen()));
      await tester.pumpAndSettle();

      expect(find.text(t.favorites.empty), findsOneWidget);
    });

    testWidgets('renders favorite meals list', (WidgetTester tester) async {
      final favorites = [
        _buildFavoriteMeal(favoriteId: 1, clientId: 10, name: 'Paneer Bowl'),
      ];

      when(
        () => mockDatabaseInterface.watchAllFavoriteMeals(),
      ).thenAnswer((_) => Stream.value(favorites));

      await tester.pumpWidget(wrapWithProviders(const FavoritesScreen()));
      await tester.pumpAndSettle();

      expect(find.text('Paneer Bowl'), findsOneWidget);
      expect(find.text('420'), findsWidgets);
    });
  });
}
