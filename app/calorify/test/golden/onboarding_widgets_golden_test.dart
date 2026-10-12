import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:calorify/shared_widgets/onboarding_progress_bar.dart';
import '../helpers/golden_test_helpers.dart';
import '../setup/all_tests.dart';

void main() {
  setUpAll(() async {
    setupAllTests();
    await loadGoldenFonts();
  });

  group('Onboarding Widgets Golden Tests', () {
    testGoldens('OnboardingProgressBar', (WidgetTester tester) async {
      final widget = Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const OnboardingProgressBar(currentStep: 1, totalSteps: 10),
          const SizedBox(height: 16),
          const OnboardingProgressBar(currentStep: 5, totalSteps: 10),
          const SizedBox(height: 16),
          const OnboardingProgressBar(currentStep: 10, totalSteps: 10),
        ],
      );

      for (final locale in goldenTestLocales) {
        for (final device in testDevices) {
          await tester.pumpWidgetBuilder(
            widget,
            wrapper: goldenWrapper(locale: locale),
            surfaceSize: device.size,
          );
          await screenMatchesGolden(
            tester,
            'onboarding_progress_bar_${locale.name}_${device.name}',
          );
        }
      }
    });
  });
}
