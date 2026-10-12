import 'dart:ui';

import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:calorify/shared_widgets/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  tearDown(() {
    TestWidgetsFlutterBinding.instance.platformDispatcher.clearAllTestValues();
  });

  testWidgets('compact content continues to use the full available width', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: ResponsiveContent(child: ColoredBox(color: Colors.green)),
        ),
      ),
    );

    expect(
      tester.getSize(find.byKey(const Key('responsive_content_pane'))).width,
      390,
    );
    expect(tester.takeException(), isNull);
  });

  testWidgets('tablet content is centered at a readable maximum width', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(1280, 800);
    tester.view.devicePixelRatio = 1;

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: ResponsiveContent(
            maxWidth: 760,
            child: ColoredBox(color: Colors.green),
          ),
        ),
      ),
    );

    final pane = find.byKey(const Key('responsive_content_pane'));
    expect(tester.getSize(pane), const Size(760, 800));
    expect(tester.getTopLeft(pane).dx, 260);
    expect(tester.takeException(), isNull);
  });

  testWidgets('foldable viewport avoids a separating hinge', (tester) async {
    tester.view.physicalSize = const Size(1000, 800);
    tester.view.devicePixelRatio = 1;

    const mediaQuery = MediaQueryData(
      size: Size(1000, 800),
      displayFeatures: [
        DisplayFeature(
          bounds: Rect.fromLTWH(490, 0, 20, 800),
          type: DisplayFeatureType.hinge,
          state: DisplayFeatureState.unknown,
        ),
      ],
    );

    await tester.pumpWidget(
      const MaterialApp(
        home: MediaQuery(
          data: mediaQuery,
          child: FoldAwareAppViewport(
            child: SizedBox.expand(key: Key('foldable_content')),
          ),
        ),
      ),
    );

    final content = find.byKey(const Key('foldable_content'));
    expect(tester.getSize(content), const Size(490, 800));
    expect(tester.getTopLeft(content), Offset.zero);
    expect(tester.takeException(), isNull);
  });

  testWidgets('bottom sheets do not stretch across a tablet', (tester) async {
    tester.view.physicalSize = const Size(1280, 800);
    tester.view.devicePixelRatio = 1;

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: BaseBottomSheet(
            child: SizedBox(width: double.infinity, height: 300),
          ),
        ),
      ),
    );

    final sheet = find.byKey(const Key('responsive_bottom_sheet'));
    expect(tester.getSize(sheet).width, 720);
    expect(tester.getBottomLeft(sheet).dy, 800);
    expect(tester.takeException(), isNull);
  });
}
