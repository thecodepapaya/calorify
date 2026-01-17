import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:calorify/shared_widgets/onboarding_progress_bar.dart';
import '../../helpers/test_helpers.dart';
import '../../setup/all_tests.dart';

void main() {
  setUpAll(() {
    setupAllTests();
  });

  group('OnboardingProgressBar Widget', () {
    testWidgets('renders progress indicator', (WidgetTester tester) async {
      await tester.pumpWidget(wrapWithProviders(
        const OnboardingProgressBar(currentStep: 1, totalSteps: 10),
      ));

      expect(find.byType(LinearProgressIndicator), findsOneWidget);
    });

    testWidgets('updates progress when steps change', (WidgetTester tester) async {
      await tester.pumpWidget(wrapWithProviders(
        const OnboardingProgressBar(currentStep: 1, totalSteps: 10),
      ));

      final indicator1 = tester.widget<LinearProgressIndicator>(find.byType(LinearProgressIndicator));
      expect(indicator1.value, 0.1);

      await tester.pumpWidget(wrapWithProviders(
        const OnboardingProgressBar(currentStep: 5, totalSteps: 10),
      ));

      // Need to pump for animation
      await tester.pumpAndSettle();

      final indicator2 = tester.widget<LinearProgressIndicator>(find.byType(LinearProgressIndicator));
      expect(indicator2.value, 0.5);
    });
  });
}
