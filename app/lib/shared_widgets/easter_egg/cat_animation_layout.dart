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

  static Rect visibleRect({
    required Cat cat,
    required double catExtent,
    required double rotationDegrees,
  }) {
    final bounds = cat.visibleBounds;
    final scale =
        catExtent *
        CatEasterEggConfig.visibleScaleWithinExtent /
        bounds.longestSide;
    final visibleWidth = bounds.width * scale;
    final visibleHeight = bounds.height * scale;
    final unrotated = Rect.fromLTWH(
      (catExtent - visibleWidth) / 2,
      catExtent - visibleHeight,
      visibleWidth,
      visibleHeight,
    );
    if (rotationDegrees % 360 == 0) return unrotated;

    final center = Offset(catExtent / 2, catExtent / 2);
    final radians = rotationDegrees * math.pi / 180;
    final cosine = math.cos(radians);
    final sine = math.sin(radians);
    Offset rotate(Offset point) {
      final translated = point - center;
      return Offset(
            translated.dx * cosine - translated.dy * sine,
            translated.dx * sine + translated.dy * cosine,
          ) +
          center;
    }

    final corners = [
      rotate(unrotated.topLeft),
      rotate(unrotated.topRight),
      rotate(unrotated.bottomLeft),
      rotate(unrotated.bottomRight),
    ];
    final left = corners.map((point) => point.dx).reduce(math.min);
    final top = corners.map((point) => point.dy).reduce(math.min);
    final right = corners.map((point) => point.dx).reduce(math.max);
    final bottom = corners.map((point) => point.dy).reduce(math.max);
    return Rect.fromLTRB(left, top, right, bottom);
  }

  static double _visibleAxisPosition({
    required double viewportExtent,
    required double visibleLeading,
    required double visibleTrailing,
    required double bias,
    required double leadingInset,
    required double trailingInset,
  }) {
    final minimum =
        leadingInset + CatEasterEggConfig.edgePadding - visibleLeading;
    final maximum = math.max(
      minimum,
      viewportExtent -
          trailingInset -
          CatEasterEggConfig.edgePadding -
          visibleTrailing,
    );
    final normalized = ((bias.clamp(-1.0, 1.0) + 1) / 2).toDouble();
    return minimum + (maximum - minimum) * normalized;
  }

  static CatPeekLayout peek({
    required Size viewport,
    required Edge edge,
    required Cat cat,
    required double catExtent,
    required double axisBias,
    required double peekYOffset,
    EdgeInsets safeInsets = EdgeInsets.zero,
  }) {
    final reveal = revealFraction(peekYOffset);
    final edgeRotation = switch (edge) {
      BottomEdge() => 0.0,
      TopEdge() => 180.0,
      LeftEdge() => 90.0,
      RightEdge() => -90.0,
    };
    final rotationDegrees = edgeRotation + cat.rotationOffsetDegrees;
    final visible = visibleRect(
      cat: cat,
      catExtent: catExtent,
      rotationDegrees: rotationDegrees,
    );
    final horizontal = _visibleAxisPosition(
      viewportExtent: viewport.width,
      visibleLeading: visible.left,
      visibleTrailing: visible.right,
      bias: axisBias,
      leadingInset: safeInsets.left,
      trailingInset: safeInsets.right,
    );
    final vertical = _visibleAxisPosition(
      viewportExtent: viewport.height,
      visibleLeading: visible.top,
      visibleTrailing: visible.bottom,
      bias: axisBias,
      leadingInset: safeInsets.top,
      trailingInset: safeInsets.bottom,
    );

    return switch (edge) {
      BottomEdge() => CatPeekLayout(
        hidden: Offset(horizontal, viewport.height + 2 - visible.top),
        revealed: Offset(
          horizontal,
          viewport.height -
              safeInsets.bottom -
              visible.height * reveal -
              visible.top,
        ),
        rotationDegrees: rotationDegrees,
      ),
      TopEdge() => CatPeekLayout(
        hidden: Offset(horizontal, -2 - visible.bottom),
        revealed: Offset(
          horizontal,
          safeInsets.top - visible.height * (1 - reveal) - visible.top,
        ),
        rotationDegrees: rotationDegrees,
      ),
      LeftEdge() => CatPeekLayout(
        hidden: Offset(-2 - visible.right, vertical),
        revealed: Offset(
          safeInsets.left - visible.width * (1 - reveal) - visible.left,
          vertical,
        ),
        rotationDegrees: rotationDegrees,
      ),
      RightEdge() => CatPeekLayout(
        hidden: Offset(viewport.width + 2 - visible.left, vertical),
        revealed: Offset(
          viewport.width -
              safeInsets.right -
              visible.width * reveal -
              visible.left,
          vertical,
        ),
        rotationDegrees: rotationDegrees,
      ),
    };
  }
}
