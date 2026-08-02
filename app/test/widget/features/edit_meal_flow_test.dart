import 'dart:async';

import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/features/edit_meal/edit_meal_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:i18n/i18n.dart';
import 'package:mocktail/mocktail.dart';
import 'package:models/models.dart';

import '../../helpers/test_helpers.dart';
import '../../setup/all_tests.dart';

class _MockDatabaseInterface extends Mock implements DatabaseInterface {}

void main() {
  late _MockDatabaseInterface database;

  setUpAll(() {
    setupAllTests();
    registerFallbackValue(LoggedMeal());
  });

  setUp(() {
    database = _MockDatabaseInterface();
    DatabaseService.setMockInterface(database);
  });

  testWidgets('creating a custom favorite does not log it as a meal', (
    tester,
  ) async {
    when(() => database.addToFavorites(any())).thenAnswer((_) async {});

    await tester.pumpWidget(
      wrapWithProviders(
        EditMealScreen(
          saveAsFavorite: true,
          initialDateTime: DateTime(2026, 8, 2, 12),
        ),
        withFlushbar: true,
      ),
    );
    await tester.enterText(find.byType(TextField).first, 'Custom oats');
    await tester.tap(find.text(t.meal.save));
    await tester.pumpAndSettle();

    verify(() => database.addToFavorites(any())).called(1);
    verifyNever(() => database.upsertMeal(any()));
  });

  testWidgets('blank meal names are rejected without writing', (tester) async {
    await tester.pumpWidget(
      wrapWithProviders(
        EditMealScreen(
          saveAsFavorite: true,
          initialDateTime: DateTime(2026, 8, 2, 12),
        ),
        withFlushbar: true,
      ),
    );

    await tester.tap(find.text(t.meal.save));
    await tester.pump();

    expect(find.text(t.meal.nameRequired), findsOneWidget);
    verifyNever(() => database.addToFavorites(any()));
    verifyNever(() => database.upsertMeal(any()));
  });

  testWidgets('rapid save taps execute only one favorite write', (
    tester,
  ) async {
    final write = Completer<void>();
    when(() => database.addToFavorites(any())).thenAnswer((_) => write.future);

    await tester.pumpWidget(
      wrapWithProviders(
        EditMealScreen(
          saveAsFavorite: true,
          initialDateTime: DateTime(2026, 8, 2, 12),
        ),
        withFlushbar: true,
      ),
    );
    await tester.enterText(find.byType(TextField).first, 'Custom oats');

    await tester.tap(find.text(t.meal.save));
    await tester.tap(find.text(t.meal.save));
    await tester.pump();

    verify(() => database.addToFavorites(any())).called(1);
    write.complete();
    await tester.pumpAndSettle();
  });
}
