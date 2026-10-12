import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/shared_widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:widgets/widgets.dart';

import '../../helpers/test_helpers.dart';
import '../../setup/all_tests.dart';

void main() {
  setUpAll(setupAllTests);

  group('AppButton', () {
    testWidgets('renders the primary variant', (tester) async {
      await tester.pumpWidget(
        wrapWithProviders(
          AppButton(
            variant: AppButtonVariant.primary,
            onPressed: () {},
            text: 'Click Me',
            analyticsEvent: AnalyticsEvent.onboardingStart,
          ),
        ),
      );

      expect(find.text('Click Me'), findsOneWidget);
      expect(find.byType(ElevatedButton), findsOneWidget);
    });

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

    testWidgets('primary loading state keeps its label and is disabled', (
      tester,
    ) async {
      await tester.pumpWidget(
        wrapWithProviders(
          AppButton(
            variant: AppButtonVariant.primary,
            onPressed: () {},
            text: 'Click Me',
            leadingIcon: Icons.add,
            trailingIcon: Icons.arrow_forward,
            isLoading: true,
          ),
        ),
      );

      final button = tester.widget<ElevatedButton>(find.byType(ElevatedButton));
      expect(button.onPressed, isNull);
      expect(find.byType(AppLoader), findsOneWidget);
      expect(find.text('Click Me'), findsOneWidget);
      expect(find.byIcon(Icons.add), findsNothing);
      expect(find.byIcon(Icons.arrow_forward), findsNothing);
    });

    testWidgets('filled loading state replaces its label and is disabled', (
      tester,
    ) async {
      await tester.pumpWidget(
        wrapWithProviders(
          AppButton(
            variant: AppButtonVariant.filled,
            onPressed: () {},
            text: 'Sign in',
            leadingIcon: Icons.login,
            isLoading: true,
          ),
        ),
      );

      final button = tester.widget<FilledButton>(find.byType(FilledButton));
      expect(button.onPressed, isNull);
      expect(find.byType(AppLoader), findsOneWidget);
      expect(find.text('Sign in'), findsNothing);
      expect(find.byIcon(Icons.login), findsNothing);
    });

    testWidgets('is disabled when onPressed is null', (tester) async {
      await tester.pumpWidget(
        wrapWithProviders(
          const AppButton(
            variant: AppButtonVariant.outlined,
            onPressed: null,
            text: 'Cancel',
          ),
        ),
      );

      final button = tester.widget<OutlinedButton>(find.byType(OutlinedButton));
      expect(button.onPressed, isNull);
    });

    testWidgets('secondary is full width while outlined remains compact', (
      tester,
    ) async {
      await tester.pumpWidget(
        wrapWithProviders(
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppButton(
                key: const Key('secondary'),
                variant: AppButtonVariant.secondary,
                onPressed: () {},
                text: 'Skip',
                leadingIcon: Icons.skip_next,
              ),
              AppButton(
                key: const Key('outlined'),
                variant: AppButtonVariant.outlined,
                onPressed: () {},
                text: 'Cancel',
                leadingIcon: Icons.close,
              ),
            ],
          ),
        ),
      );

      final secondary = find.descendant(
        of: find.byKey(const Key('secondary')),
        matching: find.byType(OutlinedButton),
      );
      final outlined = find.descendant(
        of: find.byKey(const Key('outlined')),
        matching: find.byType(OutlinedButton),
      );

      expect(tester.getSize(secondary).width, greaterThan(700));
      expect(
        tester.getSize(outlined).width,
        lessThan(tester.getSize(secondary).width),
      );
      expect(find.byIcon(Icons.skip_next), findsOneWidget);
      expect(find.byIcon(Icons.close), findsOneWidget);
    });
  });
}
