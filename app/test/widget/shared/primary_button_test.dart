import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:calorify/shared_widgets/primary_button.dart';
import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/services/analytics.dart';
import '../../helpers/test_helpers.dart';
import '../../setup/all_tests.dart';

void main() {
  setUpAll(() {
    setupAllTests();
  });

  group('PrimaryButton Widget', () {
    testWidgets('renders correctly with text', (WidgetTester tester) async {
      final mockAnalytics = Analytics.instance;
      when(() => mockAnalytics.logEvent(any())).thenAnswer((_) async {});

      await tester.pumpWidget(wrapWithProviders(
        PrimaryButton(
          onPressed: () {},
          text: 'Click Me',
          analyticsEvent: AnalyticsEvent.onboardingStart,
        ),
      ));

      expect(find.text('Click Me'), findsOneWidget);
      expect(find.byType(ElevatedButton), findsOneWidget);
    });

    testWidgets('calls onPressed and logs analytics when tapped', (WidgetTester tester) async {
      final mockAnalytics = Analytics.instance;
      when(() => mockAnalytics.logEvent(any())).thenAnswer((_) async {});

      bool pressed = false;
      await tester.pumpWidget(wrapWithProviders(
        PrimaryButton(
          onPressed: () => pressed = true,
          text: 'Click Me',
          analyticsEvent: AnalyticsEvent.onboardingStart,
        ),
      ));

      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();

      expect(pressed, isTrue);
      verify(() => mockAnalytics.logEvent(AnalyticsEvent.onboardingStart)).called(1);
    });

    testWidgets('shows loading state and is disabled', (WidgetTester tester) async {
      await tester.pumpWidget(wrapWithProviders(
        PrimaryButton(
          onPressed: () {},
          text: 'Click Me',
          isLoading: true,
          analyticsEvent: AnalyticsEvent.onboardingStart,
        ),
      ));

      // Assuming AppLoader is rendered when isLoading is true
      // From code: if (isLoading) ...[ AppLoader(...) ]
      expect(find.byType(ElevatedButton), findsOneWidget);
      final button = tester.widget<ElevatedButton>(find.byType(ElevatedButton));
      expect(button.onPressed, isNull);
    });

    testWidgets('is disabled when onPressed is null', (WidgetTester tester) async {
      await tester.pumpWidget(wrapWithProviders(
        PrimaryButton(
          onPressed: null,
          text: 'Click Me',
          analyticsEvent: AnalyticsEvent.onboardingStart,
        ),
      ));

      final button = tester.widget<ElevatedButton>(find.byType(ElevatedButton));
      expect(button.onPressed, isNull);
    });
  });
}
