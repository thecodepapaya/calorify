import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:calorify/shared_widgets/primary_button.dart';
import 'package:calorify/shared_widgets/selection_card.dart';
import 'package:calorify/core/constants/analytics_events.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import '../helpers/golden_test_helpers.dart';
import '../setup/all_tests.dart';

void main() {
  setUpAll(() async {
    setupAllTests();
    await loadAppFonts();
  });

  group('Shared Widgets Golden Tests', () {
    testGoldens('PrimaryButton states', (WidgetTester tester) async {
      final widget = Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PrimaryButton(
            onPressed: () {},
            text: 'Continue',
            analyticsEvent: AnalyticsEvent.onboardingStart,
          ),
          const SizedBox(height: 16),
          PrimaryButton(
            onPressed: () {},
            text: 'Continue',
            isLoading: true,
            analyticsEvent: AnalyticsEvent.onboardingStart,
          ),
        ],
      );

      for (final device in testDevices) {
        await tester.pumpWidgetBuilder(
          widget,
          wrapper: goldenWrapper(),
          surfaceSize: device.size,
        );
        await screenMatchesGolden(tester, 'primary_button_states_${device.name}');
      }
    });

    testGoldens('SelectionCard states', (WidgetTester tester) async {
      final widget = Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SelectionCard(
            title: 'Lose Weight',
            description: 'Deficit',
            icon: LucideIcons.trendingDown,
            color: Colors.blue,
            isSelected: false,
            onTap: () {},
          ),
          const SizedBox(height: 16),
          SelectionCard(
            title: 'Gain Weight',
            description: 'Surplus',
            icon: LucideIcons.trendingUp,
            color: Colors.orange,
            isSelected: true,
            onTap: () {},
          ),
        ],
      );

      for (final device in testDevices) {
        await tester.pumpWidgetBuilder(
          widget,
          wrapper: goldenWrapper(),
          surfaceSize: device.size,
        );
        await screenMatchesGolden(tester, 'selection_card_states_${device.name}');
      }
    });
  });
}
