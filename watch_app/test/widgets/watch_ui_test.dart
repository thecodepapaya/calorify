import 'package:calorify_watch/app.dart';
import 'package:calorify_watch/features/splash/splash_screen.dart';
import 'package:calorify_watch/widgets/watch_scroll_view.dart';
import 'package:calorify_watch/widgets/watch_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:i18n/i18n.dart';
import 'package:specs/specs.dart';
import 'package:widgets/widgets.dart';

void main() {
  setUpAll(() => LocaleSettings.setLocale(AppLocale.en));

  Widget localized(Widget child) => TranslationProvider(child: child);

  Future<void> useWatchSurface(WidgetTester tester, Size size) async {
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = size;
    addTearDown(tester.view.reset);
  }

  Future<void> useSmallWatchSurface(WidgetTester tester) =>
      useWatchSurface(tester, const Size(192, 192));

  testWidgets('watch controls fit a small round-watch viewport', (
    tester,
  ) async {
    await useSmallWatchSurface(tester);
    var primaryPressed = false;

    await tester.pumpWidget(
      localized(
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
                      icon: AppIcons.star,
                      onBack: () {},
                      trailing: WatchIconButton(
                        icon: AppIcons.refreshCw,
                        semanticLabel: 'Refresh',
                        onPressed: () {},
                      ),
                    ),
                    const Spacer(),
                    WatchPillButton(
                      label: 'Log a meal',
                      icon: AppIcons.mic,
                      primary: true,
                      onPressed: () => primaryPressed = true,
                    ),
                  ],
                ),
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
      localized(
        MaterialApp(
          theme: AppThemes.lightTheme,
          home: Scaffold(
            body: WatchStateView(
              icon: AppIcons.star,
              title: 'No favorites yet',
              message: 'Star meals in the phone app for one-tap logging here.',
            ),
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
      localized(
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
      ),
    );

    expect(tester.takeException(), isNull);
    expect(find.textContaining('1240', findRichText: true), findsOneWidget);
    expect(find.text('Protein'), findsOneWidget);
  });

  test(
    'watch theme uses AMOLED-black foundations and near-black elevation',
    () {
      final theme = buildWatchTheme(AppThemes.lightTheme);

      expect(theme.scaffoldBackgroundColor, Colors.black);
      expect(theme.canvasColor, Colors.black);
      expect(theme.colorScheme.surface, Colors.black);
      expect(theme.colorScheme.surfaceDim, Colors.black);
      expect(theme.colorScheme.surfaceContainerLowest, Colors.black);
      expect(theme.colorScheme.surfaceContainerLow, const Color(0xFF070809));
      expect(theme.colorScheme.surfaceContainer, const Color(0xFF0A0C0E));
    },
  );

  testWidgets('scrollable views show a scrollbar during interaction', (
    tester,
  ) async {
    await useSmallWatchSurface(tester);

    await tester.pumpWidget(
      localized(
        MaterialApp(
          scrollBehavior: const WatchScrollBehavior(),
          home: Scaffold(
            body: ListView(children: const [SizedBox(height: 400)]),
          ),
        ),
      ),
    );

    await tester.drag(find.byType(ListView), const Offset(0, -100));
    await tester.pump();

    expect(find.byType(Scrollbar), findsOneWidget);
  });

  testWidgets('startup frame shows the launcher icon on black', (tester) async {
    await useSmallWatchSurface(tester);

    await tester.pumpWidget(
      localized(
        MaterialApp(
          theme: buildWatchTheme(AppThemes.darkTheme),
          home: const WatchStartupIcon(),
        ),
      ),
    );

    final scaffold = tester.widget<Scaffold>(find.byType(Scaffold));
    final image = tester.widget<Image>(find.byType(Image));
    expect(scaffold.backgroundColor, Colors.black);
    expect(image.image, isA<AssetImage>());
    expect(
      (image.image as AssetImage).assetName,
      'android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.webp',
    );
    expect(tester.getSize(find.byType(Image)), const Size(48, 48));
  });

  testWidgets('fixed list controls stay inside a 192dp round display', (
    tester,
  ) async {
    await useSmallWatchSurface(tester);

    await tester.pumpWidget(
      localized(
        MaterialApp(
          theme: AppThemes.darkTheme,
          home: WatchListScaffold(
            title: 'Favorites',
            icon: AppIcons.star,
            onBack: () {},
            trailing: WatchIconButton(
              icon: AppIcons.refreshCw,
              semanticLabel: 'Refresh',
              onPressed: () {},
            ),
            body: const SizedBox.shrink(),
          ),
        ),
      ),
    );

    const displayCenter = Offset(96, 96);
    const displayRadius = 96.0;
    for (final button in tester.widgetList<WatchIconButton>(
      find.byType(WatchIconButton),
    )) {
      final rect = tester.getRect(find.byWidget(button));
      final buttonRadius = rect.shortestSide / 2;
      expect(
        (rect.center - displayCenter).distance + buttonRadius,
        lessThanOrEqualTo(displayRadius),
      );
    }
  });

  testWidgets('fixed list controls also fit a 192dp square display', (
    tester,
  ) async {
    await useWatchSurface(tester, const Size(192, 192));

    await tester.pumpWidget(
      localized(
        MaterialApp(
          theme: buildWatchTheme(AppThemes.darkTheme),
          home: WatchListScaffold(
            title: 'Favorites',
            icon: AppIcons.star,
            onBack: () {},
            trailing: WatchIconButton(
              icon: AppIcons.refreshCw,
              semanticLabel: 'Refresh',
              onPressed: () {},
            ),
            body: const SizedBox.shrink(),
          ),
        ),
      ),
    );

    const displayBounds = Rect.fromLTWH(0, 0, 192, 192);
    for (final button in tester.widgetList<WatchIconButton>(
      find.byType(WatchIconButton),
    )) {
      final rect = tester.getRect(find.byWidget(button));
      expect(displayBounds.contains(rect.topLeft), isTrue);
      expect(
        displayBounds.contains(rect.bottomRight - const Offset(0.01, 0.01)),
        isTrue,
      );
    }
    expect(tester.takeException(), isNull);
  });

  testWidgets('first-run skeletons fit a 192dp watch without overflow', (
    tester,
  ) async {
    await useSmallWatchSurface(tester);

    await tester.pumpWidget(
      localized(
        MaterialApp(
          theme: buildWatchTheme(AppThemes.darkTheme),
          home: const MediaQuery(
            data: MediaQueryData(padding: EdgeInsets.symmetric(vertical: 16)),
            child: Scaffold(body: SafeArea(child: HomeScreenSkeleton())),
          ),
        ),
      ),
    );
    await tester.pump();
    expect(tester.takeException(), isNull);

    await tester.pumpWidget(
      localized(
        MaterialApp(
          theme: buildWatchTheme(AppThemes.darkTheme),
          home: WatchListScaffold(
            title: 'Loading',
            icon: AppIcons.listChecks,
            onBack: () {},
            body: const ListScreenSkeleton(),
          ),
        ),
      ),
    );
    await tester.pump();
    expect(tester.takeException(), isNull);
  });

  testWidgets('watch lists keep items direct and free of fade wrappers', (
    tester,
  ) async {
    await useSmallWatchSurface(tester);

    await tester.pumpWidget(
      localized(
        MaterialApp(
          home: Scaffold(
            body: WatchScrollView(
              children: const [Text('One'), Text('Two'), Text('Three')],
            ),
          ),
        ),
      ),
    );

    final listView = tester.widget<ListView>(find.byType(ListView));
    final delegate = listView.childrenDelegate as SliverChildListDelegate;
    expect(delegate.children, everyElement(isA<Text>()));
    expect(find.byType(Opacity), findsNothing);
  });

  test('watch supporting type never drops below 10sp', () {
    expect(watchLabelFontSize, greaterThanOrEqualTo(10));
    expect(watchBodyFontSize, greaterThanOrEqualTo(watchLabelFontSize));
    expect(watchTitleFontSize, greaterThanOrEqualTo(watchBodyFontSize));
  });
}
