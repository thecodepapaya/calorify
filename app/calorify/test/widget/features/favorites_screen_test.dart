import 'dart:async';

import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/features/favorites/favorites_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:i18n/i18n.dart';
import 'package:widgets/widgets.dart';
import 'package:mocktail/mocktail.dart';
import 'package:models/models.dart';

import '../../helpers/test_helpers.dart';
import '../../setup/all_tests.dart';

class MockDatabaseInterface extends Mock implements DatabaseInterface {}

FavoriteMeal _buildFavoriteMeal({
  required int favoriteId,
  required int clientId,
  required String name,
  int calories = 420,
  DateTime? favoriteAt,
  DateTime? lastUsedAt,
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
          calories: calories,
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
    favoriteAt: dateTimeToIso8601String(favoriteAt ?? now),
    lastUsedAt: dateTimeToIso8601String(lastUsedAt ?? now),
  );
}

void main() {
  late MockDatabaseInterface mockDatabaseInterface;

  setUpAll(() {
    setupAllTests();
    registerFallbackValue(
      _buildFavoriteMeal(
        favoriteId: 999,
        clientId: 999,
        name: 'Fallback Meal',
      ).loggedMeal,
    );
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

    testWidgets('filters favorites using the search field', (
      WidgetTester tester,
    ) async {
      final favorites = [
        _buildFavoriteMeal(favoriteId: 1, clientId: 10, name: 'Paneer Bowl'),
        _buildFavoriteMeal(favoriteId: 2, clientId: 11, name: 'Apple Oats'),
      ];

      when(
        () => mockDatabaseInterface.watchAllFavoriteMeals(),
      ).thenAnswer((_) => Stream.value(favorites));

      await tester.pumpWidget(wrapWithProviders(const FavoritesScreen()));
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextField), 'paneer');
      await tester.pumpAndSettle();

      expect(find.text('Paneer Bowl'), findsOneWidget);
      expect(find.text('Apple Oats'), findsNothing);
    });

    testWidgets('sorts favorites by calories', (WidgetTester tester) async {
      final favorites = [
        _buildFavoriteMeal(
          favoriteId: 1,
          clientId: 10,
          name: 'Zucchini Pasta',
          calories: 320,
          lastUsedAt: DateTime.now().subtract(const Duration(days: 1)),
        ),
        _buildFavoriteMeal(
          favoriteId: 2,
          clientId: 11,
          name: 'Apple Bowl',
          calories: 480,
          lastUsedAt: DateTime.now().subtract(const Duration(days: 2)),
        ),
      ];

      when(
        () => mockDatabaseInterface.watchAllFavoriteMeals(),
      ).thenAnswer((_) => Stream.value(favorites));

      await tester.pumpWidget(wrapWithProviders(const FavoritesScreen()));
      await tester.pumpAndSettle();

      await tester.tap(find.text(t.favorites.sortOptions.recent));
      await tester.pumpAndSettle();
      await tester.tap(find.text(t.favorites.sortOptions.calories).last);
      await tester.pumpAndSettle();

      expect(
        tester.getTopLeft(find.text('Apple Bowl')).dy,
        lessThan(tester.getTopLeft(find.text('Zucchini Pasta')).dy),
      );
    });

    testWidgets('swipe delete shows undo and restores the favorite', (
      WidgetTester tester,
    ) async {
      final favoritesController = StreamController<List<FavoriteMeal>>();
      final favorite = _buildFavoriteMeal(
        favoriteId: 1,
        clientId: 10,
        name: 'Paneer Bowl',
      );
      var favorites = [favorite];

      when(
        () => mockDatabaseInterface.watchAllFavoriteMeals(),
      ).thenAnswer((_) => favoritesController.stream);
      when(() => mockDatabaseInterface.removeFavoriteMeal(any())).thenAnswer((
        invocation,
      ) async {
        final mealId = invocation.positionalArguments.first as int;
        favorites = favorites.where((item) => item.clientId != mealId).toList();
        favoritesController.add(favorites);
      });
      when(() => mockDatabaseInterface.addToFavorites(any())).thenAnswer((
        invocation,
      ) async {
        final meal = invocation.positionalArguments.first as LoggedMeal;
        favorites = [
          ...favorites,
          FavoriteMeal(
            clientId: meal.clientId,
            loggedMeal: meal,
            favoriteAt: dateTimeToIso8601String(DateTime.now()),
            lastUsedAt: dateTimeToIso8601String(DateTime.now()),
          ),
        ];
        favoritesController.add(favorites);
      });

      await tester.pumpWidget(wrapWithProviders(const FavoritesScreen()));
      favoritesController.add(favorites);
      await tester.pumpAndSettle();

      await tester.drag(find.text('Paneer Bowl'), const Offset(-600, 0));
      await tester.pumpAndSettle();

      expect(
        find.text(t.favorites.removed(name: 'Paneer Bowl')),
        findsOneWidget,
      );
      expect(find.text('Paneer Bowl'), findsNothing);
      verify(() => mockDatabaseInterface.removeFavoriteMeal(1)).called(1);

      await tester.tap(find.text(t.favorites.undo));
      await tester.pumpAndSettle();

      expect(find.text('Paneer Bowl'), findsOneWidget);
      verify(() => mockDatabaseInterface.addToFavorites(any())).called(1);

      await favoritesController.close();
    });

    testWidgets('renders macro chips for favorite meals', (
      WidgetTester tester,
    ) async {
      final favorites = [
        _buildFavoriteMeal(favoriteId: 1, clientId: 10, name: 'Paneer Bowl'),
      ];

      when(
        () => mockDatabaseInterface.watchAllFavoriteMeals(),
      ).thenAnswer((_) => Stream.value(favorites));

      await tester.pumpWidget(wrapWithProviders(const FavoritesScreen()));
      await tester.pumpAndSettle();

      expect(find.text('Paneer Bowl'), findsOneWidget);
      expect(find.text('420'), findsOneWidget);
      expect(find.byIcon(AppIcons.flame), findsOneWidget);
      expect(find.byIcon(AppIcons.arrowUpDown), findsOneWidget);
    });
  });
}
