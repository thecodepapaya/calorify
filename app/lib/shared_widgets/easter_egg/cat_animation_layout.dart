import 'dart:math' as math;

import 'package:calorify/shared_widgets/easter_egg/cat_assets.dart';
import 'package:flutter/material.dart';

@immutable
class CatPeekLayout {
  const CatPeekLayout({
    required this.hidden,
    required this.revealed,
    required this.rotationDegrees,
  });

  final Offset hidden;
  final Offset revealed;
  final double rotationDegrees;
}

/// Shared, deterministic positioning rules for all cat animations.
abstract final class CatAnimationLayout {
  static double catExtent(Size viewport) =>
      CatEasterEggConfig.catExtentFor(viewport.shortestSide);

  static double axisPosition({
    required double viewportExtent,
    required double catExtent,
    required double bias,
    double leadingInset = 0,
    double trailingInset = 0,
  }) {
    final minimum = leadingInset + CatEasterEggConfig.edgePadding;
    final maximum = math.max(
      minimum,
      viewportExtent -
          trailingInset -
          CatEasterEggConfig.edgePadding -
          catExtent,
    );
    final normalized = ((bias.clamp(-1.0, 1.0) + 1) / 2).toDouble();
    return minimum + (maximum - minimum) * normalized;
  }

  static double revealFraction(double peekYOffset) =>
      (0.64 + (-peekYOffset / 150) * 0.14).clamp(0.62, 0.72);

  static CatPeekLayout peek({
    required Size viewport,
    required Edge edge,
    required double catExtent,
    required double axisBias,
    required double peekYOffset,
    EdgeInsets safeInsets = EdgeInsets.zero,
  }) {
    final reveal = revealFraction(peekYOffset);
    final horizontal = axisPosition(
      viewportExtent: viewport.width,
      catExtent: catExtent,
      bias: axisBias,
      leadingInset: safeInsets.left,
      trailingInset: safeInsets.right,
    );
    final vertical = axisPosition(
      viewportExtent: viewport.height,
      catExtent: catExtent,
      bias: axisBias,
      leadingInset: safeInsets.top,
      trailingInset: safeInsets.bottom,
    );

    return switch (edge) {
      BottomEdge() => CatPeekLayout(
        hidden: Offset(horizontal, viewport.height + 2),
        revealed: Offset(
          horizontal,
          viewport.height - safeInsets.bottom - catExtent * reveal,
        ),
        rotationDegrees: 0,
      ),
      TopEdge() => CatPeekLayout(
        hidden: Offset(horizontal, -catExtent - 2),
        revealed: Offset(horizontal, safeInsets.top - catExtent * (1 - reveal)),
        rotationDegrees: 180,
      ),
      LeftEdge() => CatPeekLayout(
        hidden: Offset(-catExtent - 2, vertical),
        revealed: Offset(safeInsets.left - catExtent * (1 - reveal), vertical),
        rotationDegrees: 90,
      ),
      RightEdge() => CatPeekLayout(
        hidden: Offset(viewport.width + 2, vertical),
        revealed: Offset(
          viewport.width - safeInsets.right - catExtent * reveal,
          vertical,
        ),
        rotationDegrees: -90,
      ),
    };
  }
}
