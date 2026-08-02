import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/features/history/meal_history_screen.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:models/models.dart';
import 'package:utils/utils.dart';
import '../../helpers/test_helpers.dart';
import '../../setup/all_tests.dart';

class MockDatabaseInterface extends Mock implements DatabaseInterface {}

LoggedMeal _buildLoggedMeal({
  required int clientId,
  required String name,
  required int calories,
}) {
  return LoggedMeal(
    clientId: clientId,
    meal: Meal(
      name: name,
      quantity: '1',
      type: MealType.SNACK,
      macros: MealMacro(
        calories: calories,
        protein: 0,
        carbs: 25,
        fat: 0,
        fiber: 4,
      ),
      health: MealHealth(
        healthScore: HealthScore.HEALTHY,
        healthScoreReason: 'Good',
      ),
    ),
    createdAt: dateTimeToIso8601String(DateTime.now()),
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
    when(
      () => mockDatabaseInterface.watchAllMealsForLast7Days(),
    ).thenAnswer((_) => const Stream<List<LoggedMeal>>.empty());
  });

  group('MealHistoryScreen Widget', () {
    testWidgets('renders empty view when no meals', (
      WidgetTester tester,
    ) async {
      when(
        () => mockDatabaseInterface.paginatedMealsHistory(
          offset: any(named: 'offset'),
        ),
      ).thenAnswer((_) async => []);

      await tester.pumpWidget(wrapWithProviders(const MealHistoryScreen()));
      await tester.pumpAndSettle();

      expect(find.textContaining('No meals'), findsWidgets);
    });

    testWidgets('renders meals list', (WidgetTester tester) async {
      final mockMeals = [
        _buildLoggedMeal(clientId: 1, name: 'Apple', calories: 95),
      ];

      when(
        () => mockDatabaseInterface.paginatedMealsHistory(
          offset: any(named: 'offset'),
        ),
      ).thenAnswer((_) async => mockMeals);

      await tester.pumpWidget(wrapWithProviders(const MealHistoryScreen()));
      await tester.pumpAndSettle();

      expect(find.text('Apple'), findsOneWidget);
      expect(find.text('95'), findsWidgets); // Calorie value
    });

    testWidgets('refreshes when the meal table changes', (
      WidgetTester tester,
    ) async {
      final changes = StreamController<List<LoggedMeal>>.broadcast();
      addTearDown(changes.close);
      var meals = [_buildLoggedMeal(clientId: 1, name: 'Apple', calories: 95)];

      when(
        () => mockDatabaseInterface.watchAllMealsForLast7Days(),
      ).thenAnswer((_) => changes.stream);
      when(
        () => mockDatabaseInterface.paginatedMealsHistory(
          offset: any(named: 'offset'),
        ),
      ).thenAnswer((_) async => meals);

      await tester.pumpWidget(wrapWithProviders(const MealHistoryScreen()));
      await tester.pumpAndSettle();
      expect(find.text('Apple'), findsOneWidget);

      changes.add(meals);
      await tester.pumpAndSettle();
      meals = [
        _buildLoggedMeal(clientId: 2, name: 'Banana', calories: 105),
        ...meals,
      ];
      changes.add(meals);
      await tester.pumpAndSettle();

      expect(find.text('Banana'), findsOneWidget);
    });

    testWidgets('loads more meals when scrolled near the bottom', (
      WidgetTester tester,
    ) async {
      final firstPage = List.generate(
        30,
        (index) => _buildLoggedMeal(
          clientId: index + 1,
          name: 'Meal ${index + 1}',
          calories: 100 + index,
        ),
      );
      final secondPage = [
        _buildLoggedMeal(clientId: 31, name: 'Meal 31', calories: 131),
      ];

      when(
        () => mockDatabaseInterface.paginatedMealsHistory(
          offset: any(named: 'offset'),
        ),
      ).thenAnswer((invocation) async {
        final offset = invocation.namedArguments[#offset] as int? ?? 0;
        if (offset == 0) return firstPage;
        if (offset == 30) return secondPage;
        return <LoggedMeal>[];
      });

      await tester.pumpWidget(wrapWithProviders(const MealHistoryScreen()));
      await tester.pumpAndSettle();

      expect(find.text('Meal 31'), findsNothing);

      await tester.drag(find.byType(ListView), const Offset(0, -4000));
      await tester.pump();
      await tester.pumpAndSettle();

      expect(find.text('Meal 31'), findsOneWidget);
      verify(
        () => mockDatabaseInterface.paginatedMealsHistory(offset: 30),
      ).called(1);
    });

    testWidgets('shows a retry action when pagination fails', (
      WidgetTester tester,
    ) async {
      final firstPage = List.generate(
        30,
        (index) => _buildLoggedMeal(
          clientId: index + 1,
          name: 'Meal ${index + 1}',
          calories: 100 + index,
        ),
      );
      final secondPage = [
        _buildLoggedMeal(clientId: 31, name: 'Meal 31', calories: 131),
      ];
      var loadMoreAttempts = 0;

      when(
        () => mockDatabaseInterface.paginatedMealsHistory(
          offset: any(named: 'offset'),
        ),
      ).thenAnswer((invocation) async {
        final offset = invocation.namedArguments[#offset] as int? ?? 0;
        if (offset == 0) return firstPage;
        if (offset == 30) {
          if (loadMoreAttempts++ == 0) {
            throw Exception('temporary pagination failure');
          }
          return secondPage;
        }
        return <LoggedMeal>[];
      });

      await tester.pumpWidget(wrapWithProviders(const MealHistoryScreen()));
      await tester.pumpAndSettle();

      await tester.drag(find.byType(ListView), const Offset(0, -4000));
      await tester.pump();
      await tester.pumpAndSettle();

      expect(find.text('Meal 31'), findsNothing);
      expect(find.text('Retry'), findsOneWidget);

      await tester.drag(find.byType(ListView), const Offset(0, -600));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Retry'));
      await tester.pump();
      await tester.pumpAndSettle();

      expect(find.text('Meal 31'), findsOneWidget);
      verify(
        () => mockDatabaseInterface.paginatedMealsHistory(offset: 30),
      ).called(2);
    });
  });
}
