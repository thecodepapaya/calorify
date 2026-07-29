import 'package:calorify_watch/widgets/watch_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:specs/specs.dart';

void main() {
  Future<void> useSmallWatchSurface(WidgetTester tester) async {
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(192, 192);
    addTearDown(tester.view.reset);
  }

  testWidgets('watch controls fit a small round-watch viewport', (
    tester,
  ) async {
    await useSmallWatchSurface(tester);
    var primaryPressed = false;

    await tester.pumpWidget(
      MaterialApp(
        theme: AppThemes.darkTheme,
        home: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  WatchPageHeader(
                    title: 'Favorites',
                    icon: LucideIcons.star,
                    onBack: () {},
                    trailing: WatchIconButton(
                      icon: LucideIcons.refreshCw,
                      semanticLabel: 'Refresh',
                      onPressed: () {},
                    ),
                  ),
                  const Spacer(),
                  WatchPillButton(
                    label: 'Log a meal',
                    icon: LucideIcons.mic,
                    primary: true,
                    onPressed: () => primaryPressed = true,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    expect(tester.takeException(), isNull);
    expect(tester.getSize(find.byType(WatchIconButton).first).height, 44);
    expect(tester.getSize(find.byType(WatchPillButton)).height, 52);

    await tester.tap(find.text('Log a meal'));
    await tester.pump();
    expect(primaryPressed, isTrue);
  });

  testWidgets('empty and error content stays readable on watch', (
    tester,
  ) async {
    await useSmallWatchSurface(tester);

    await tester.pumpWidget(
      MaterialApp(
        theme: AppThemes.lightTheme,
        home: const Scaffold(
          body: WatchStateView(
            icon: LucideIcons.star,
            title: 'No favorites yet',
            message: 'Star meals in the phone app for one-tap logging here.',
          ),
        ),
      ),
    );

    expect(tester.takeException(), isNull);
    expect(find.text('No favorites yet'), findsOneWidget);
    expect(find.textContaining('phone app'), findsOneWidget);
  });

  testWidgets('nutrition glance cards fit the watch viewport', (tester) async {
    await useSmallWatchSurface(tester);

    await tester.pumpWidget(
      MaterialApp(
        theme: AppThemes.darkTheme,
        home: const Scaffold(
          body: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WatchCalorieProgressCard(totalCalories: 1240, goal: 2100),
                SizedBox(height: 8),
                WatchMacroSummary(protein: 72, carbs: 148, fat: 51),
              ],
            ),
          ),
        ),
      ),
    );

    expect(tester.takeException(), isNull);
    expect(find.textContaining('1240', findRichText: true), findsOneWidget);
    expect(find.text('Protein'), findsOneWidget);
  });
}
