import 'dart:async';

import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/core/repositories/food_repository.dart';
import 'package:calorify/shared_widgets/meal_analysis_tip_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/test_helpers.dart';

class _MockFoodRepository extends Mock implements FoodRepository {}

void main() {
  testWidgets('fades the tip in after it resolves', (tester) async {
    final repository = _MockFoodRepository();
    final response = Completer<List<String>>();
    when(
      () => repository.getMealAnalysisTips(count: 1),
    ).thenAnswer((_) => response.future);

    await tester.pumpWidget(
      wrapWithProviders(
        const MealAnalysisTipLine(),
        overrides: [foodRepositoryProvider.overrideWithValue(repository)],
      ),
    );
    await tester.pump();

    response.complete(['Choose colorful vegetables.']);
    await tester.pump();
    await tester.pump();

    final tip = find.text('Choose colorful vegetables.');
    expect(tip, findsOneWidget);
    final fade = tester.widget<FadeTransition>(
      find.ancestor(
        of: tip,
        matching: find.byWidgetPredicate(
          (widget) =>
              widget is FadeTransition &&
              widget.child?.key == const ValueKey('meal-analysis-tip-resolved'),
        ),
      ),
    );
    expect(fade.opacity.value, 0);

    await tester.pump(const Duration(milliseconds: 200));
    expect(fade.opacity.value, greaterThan(0));
    expect(fade.opacity.value, lessThan(1));

    await tester.pump(const Duration(milliseconds: 200));
    expect(fade.opacity.value, 1);
  });
}
