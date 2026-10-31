import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/shared_widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/test_helpers.dart';
import '../../setup/all_tests.dart';

void main() {
  setUpAll(setupAllTests);

  group('AppButton', () {
    testWidgets('logs analytics before invoking the callback', (tester) async {
      final mockAnalytics = Analytics.instance;
      when(() => mockAnalytics.logEvent(any())).thenAnswer((_) {});
      final calls = <String>[];
      when(
        () => mockAnalytics.logEvent(AnalyticsEvent.onboardingStart),
      ).thenAnswer((_) => calls.add('analytics'));

      await tester.pumpWidget(
        wrapWithProviders(
          AppButton(
            variant: AppButtonVariant.primary,
            onPressed: () => calls.add('callback'),
            text: 'Click Me',
            analyticsEvent: AnalyticsEvent.onboardingStart,
          ),
        ),
      );

      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();

      expect(calls, ['analytics', 'callback']);
      verify(
        () => mockAnalytics.logEvent(AnalyticsEvent.onboardingStart),
      ).called(1);
    });
  });
}
