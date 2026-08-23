import 'package:calorify/shared_widgets/easter_egg/cat_animation_layout.dart';
import 'package:calorify/shared_widgets/easter_egg/cat_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CatAnimationLayout', () {
    test('uses compact, proportional, and capped cat sizes', () {
      expect(CatAnimationLayout.catExtent(const Size(320, 700)), 120);
      expect(CatAnimationLayout.catExtent(const Size(400, 800)), 136);
      expect(CatAnimationLayout.catExtent(const Size(1000, 700)), 152);
    });

    test('axis positions are centered and respect safe edge spacing', () {
      const viewport = 400.0;
      const extent = 136.0;
      final left = CatAnimationLayout.axisPosition(
        viewportExtent: viewport,
        catExtent: extent,
        bias: -1,
        leadingInset: 8,
        trailingInset: 12,
      );
      final center = CatAnimationLayout.axisPosition(
        viewportExtent: viewport,
        catExtent: extent,
        bias: 0,
        leadingInset: 8,
        trailingInset: 12,
      );
      final right = CatAnimationLayout.axisPosition(
        viewportExtent: viewport,
        catExtent: extent,
        bias: 1,
        leadingInset: 8,
        trailingInset: 12,
      );

      expect(left, 24);
      expect(right, 236);
      expect(center, (left + right) / 2);
    });

    test('bottom peek starts off-screen and stops at a partial reveal', () {
      const viewport = Size(400, 800);
      const extent = 136.0;
      const safeInsets = EdgeInsets.only(bottom: 24);
      final cat = CuriousBlepCat();
      final layout = CatAnimationLayout.peek(
        viewport: viewport,
        edge: Edge.bottom,
        cat: cat,
        catExtent: extent,
        axisBias: 0,
        peekYOffset: -40,
        safeInsets: safeInsets,
      );

      final hiddenVisible = CatAnimationLayout.visibleRect(
        cat: cat,
        catExtent: extent,
        rotationDegrees: layout.rotationDegrees,
      ).shift(layout.hidden);
      expect(hiddenVisible.top, greaterThan(viewport.height));
      expect(layout.revealed.dx, closeTo(132, 0.001));
      expect(layout.revealed.dy, greaterThan(viewport.height - 24 - extent));
      expect(layout.revealed.dy, lessThan(viewport.height - 24));
      expect(layout.rotationDegrees, 0);
    });

    test('all source bounds are valid and contained by their assets', () {
      for (final asset in CatAsset.values) {
        final bounds = asset.visibleBounds;
        expect(bounds.left, greaterThanOrEqualTo(0), reason: asset.name);
        expect(bounds.top, greaterThanOrEqualTo(0), reason: asset.name);
        expect(
          bounds.right,
          lessThanOrEqualTo(CatEasterEggConfig.sourceAssetExtent),
          reason: asset.name,
        );
        expect(
          bounds.bottom,
          lessThanOrEqualTo(CatEasterEggConfig.sourceAssetExtent),
          reason: asset.name,
        );
        expect(bounds.width, greaterThan(0), reason: asset.name);
        expect(bounds.height, greaterThan(0), reason: asset.name);
      }
    });

    test('visible artwork respects safe-area padding on every edge', () {
      const viewport = Size(400, 800);
      const safeInsets = EdgeInsets.fromLTRB(12, 28, 18, 24);
      final extent = CatAnimationLayout.catExtent(viewport);

      for (final cat in allCats) {
        for (final edge in [Edge.bottom, Edge.top, Edge.left, Edge.right]) {
          final layout = CatAnimationLayout.peek(
            viewport: viewport,
            edge: edge,
            cat: cat,
            catExtent: extent,
            axisBias: -1,
            peekYOffset: -40,
            safeInsets: safeInsets,
          );
          final visible = CatAnimationLayout.visibleRect(
            cat: cat,
            catExtent: extent,
            rotationDegrees: layout.rotationDegrees,
          ).shift(layout.revealed);

          if (edge is BottomEdge || edge is TopEdge) {
            expect(
              visible.left,
              closeTo(safeInsets.left + CatEasterEggConfig.edgePadding, 0.001),
              reason: '${cat.displayName} on $edge',
            );
          } else {
            expect(
              visible.top,
              closeTo(safeInsets.top + CatEasterEggConfig.edgePadding, 0.001),
              reason: '${cat.displayName} on $edge',
            );
          }
        }
      }
    });
  });
}
