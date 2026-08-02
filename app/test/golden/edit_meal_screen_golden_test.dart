import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:calorify/features/edit_meal/edit_meal_screen.dart';
import 'package:models/models.dart';
import 'package:utils/utils.dart';
import '../helpers/golden_test_helpers.dart';
import '../setup/all_tests.dart';

void main() {
  setUpAll(() async {
    setupAllTests();
    await loadAppFonts();
  });

  group('EditMealScreen Golden Tests', () {
    testGoldens('Initial view - Add Mode', (WidgetTester tester) async {
      for (final locale in goldenTestLocales) {
        for (final device in testDevices) {
          await tester.pumpWidgetBuilder(
            EditMealScreen(initialDateTime: DateTime(2023, 10, 27, 12, 30)),
            wrapper: goldenWrapper(locale: locale),
            surfaceSize: device.size,
          );
          await screenMatchesGolden(
            tester,
            'edit_meal_add_${locale.name}_${device.name}',
          );
        }
      }
    });

    testGoldens('Initial view - Edit Mode', (WidgetTester tester) async {
      final mockLoggedMeal = LoggedMeal(
        clientId: 1,
        meal: Meal(
          name: 'Pasta',
          quantity: '1 plate',
          type: MealType.DINNER,
          macros: MealMacro(
            calories: 600,
            protein: 15,
            carbs: 80,
            fat: 20,
            fiber: 5,
          ),
          health: MealHealth(healthScore: HealthScore.NEUTRAL),
        ),
        createdAt: dateTimeToIso8601String(DateTime(2023, 10, 27, 19, 30)),
      );

      for (final locale in goldenTestLocales) {
        for (final device in testDevices) {
          await tester.pumpWidgetBuilder(
            EditMealScreen(loggedMeal: mockLoggedMeal),
            wrapper: goldenWrapper(locale: locale),
            surfaceSize: device.size,
          );
          await screenMatchesGolden(
            tester,
            'edit_meal_edit_${locale.name}_${device.name}',
          );
        }
      }
    });
  });
}
