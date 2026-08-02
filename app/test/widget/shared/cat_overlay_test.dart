import 'package:calorify/shared_widgets/easter_egg/cat_assets.dart';
import 'package:calorify/shared_widgets/easter_egg/cat_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('rapid triggers keep a single active cat overlay', (
    tester,
  ) async {
    final overlayKey = GlobalKey<CatOverlayState>();
    await tester.pumpWidget(
      MaterialApp(
        home: CatOverlay(
          key: overlayKey,
          child: const Scaffold(body: SizedBox.expand()),
        ),
      ),
    );

    void showCat() => overlayKey.currentState!.showCat(
      preferredCat: BlepCuriousCat(),
      preferredAnimation: CatAnimationType.peek,
      edgeHint: Edge.bottom,
      overrides: const CatAnimationOverrides(horizontalBias: 0, peekOffset: 0),
    );

    showCat();
    showCat();
    await tester.pump(const Duration(milliseconds: 500));

    expect(find.byType(Image), findsOneWidget);

    await tester.pumpAndSettle(const Duration(milliseconds: 100));
    expect(find.byType(Image), findsNothing);
  });
}
