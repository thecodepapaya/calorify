import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_tip_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:models/models.dart';
import 'package:widgets/widgets.dart';

import '../../helpers/test_helpers.dart';
import '../../setup/all_tests.dart';

class _MockDatabaseInterface extends Mock implements DatabaseInterface {}

void main() {
  setUpAll(setupAllTests);

  testWidgets('selected favourite uses a filled yellow star', (tester) async {
    final database = _MockDatabaseInterface();
    DatabaseService.setMockInterface(database);
    when(() => database.isFavoriteMeal(42)).thenAnswer((_) async => true);

    final loggedMeal = LoggedMeal(
      clientId: 42,
      meal: Meal(
        name: 'Dal and rice',
        quantity: '1 bowl',
        type: MealType.LUNCH,
        macros: MealMacro(
          calories: 520,
          protein: 18,
          carbs: 82,
          fat: 12,
          fiber: 9,
        ),
      ),
      createdAt: dateTimeToIso8601String(DateTime(2026, 9, 2)),
    );

    await tester.pumpWidget(
      wrapWithProviders(
        Builder(
          builder:
              (context) => TextButton(
                onPressed:
                    () => showMealTip(
                      context: context,
                      purpose: MealDetailsSheetPurpose.historyEdit,
                      loggedMeal: loggedMeal,
                    ),
                child: const Text('Open'),
              ),
        ),
      ),
    );
    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();

    final star = tester.widget<FavoriteIcon>(
      find.byKey(const ValueKey('favorite-meal-star-icon')),
    );
    expect(star.isFavorite, isTrue);
    expect(star.color, isNull);
    expect(find.byIcon(Icons.star), findsNothing);
  });
}
