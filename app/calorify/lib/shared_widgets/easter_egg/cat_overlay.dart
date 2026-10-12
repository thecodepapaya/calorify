import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:calorify/shared_widgets/easter_egg/cat_assets.dart';
import 'package:calorify/shared_widgets/easter_egg/cat_peek_easter_egg.dart';

class CatOverlay extends StatefulWidget {
  const CatOverlay({required this.child, super.key});

  final Widget child;

  static CatOverlayState? of(BuildContext context) =>
      context.findAncestorStateOfType<CatOverlayState>();

  @override
  CatOverlayState createState() => CatOverlayState();
}

class CatOverlayState extends State<CatOverlay> {
  final GlobalKey<OverlayState> _overlayKey = GlobalKey<OverlayState>();
  static final _random = math.Random();
  OverlayEntry? _activeCatEntry;

  OverlayState? get _overlay => _overlayKey.currentState;

  void showCat({
    Cat? preferredCat,
    CatAnimationType? preferredAnimation,
    Edge? edgeHint,
    CatAnimationOverrides? overrides,
  }) {
    // Avoid stacking cats on rapid/repeated taps. Overlapping entries made
    // both their spacing and their motion look broken.
    if (_activeCatEntry != null) return;

    final edge = _resolveEdge(
      edgeHint: edgeHint,
      preferredAnimation: preferredAnimation,
      overrideSide: overrides?.sideHint,
    );

    final forEdge = edge.eligibleAnimations;
    final pool =
        forEdge.where((a) => eligibleCatsForAnimation(a).isNotEmpty).toList();
    if (pool.isEmpty) {
      debugPrint('🐱 No animations eligible for edge: $edge');
      return;
    }

    final animationType =
        preferredAnimation != null && pool.contains(preferredAnimation)
            ? preferredAnimation
            : (List<CatAnimationType>.from(pool)..shuffle()).first;

    final eligible = eligibleCatsForAnimation(animationType);
    if (eligible.isEmpty) {
      debugPrint('🐱 No cat supports animation: $animationType');
      return;
    }
    final chosenCat =
        preferredCat != null &&
                catSupportsAnimation(preferredCat, animationType)
            ? preferredCat
            : eligible[_random.nextInt(eligible.length)];

    // Continuous placement avoids the visibly repetitive left/center/right
    // grid while retaining a comfortable margin from corners and system UI.
    final hBias = _random.nextDouble() * 1.6 - 0.8;
    final vBias = _random.nextDouble() * 1.6 - 0.8;
    final resolvedOverrides = CatAnimationOverrides(
      horizontalBias: overrides?.horizontalBias ?? hBias,
      sideHint:
          overrides?.sideHint ??
          (edge is LeftEdge || edge is RightEdge ? edge : null),
      peekEdge: overrides?.peekEdge ?? edge,
      peekOffset:
          overrides?.peekOffset ??
          (edge is TopEdge || edge is BottomEdge ? hBias : vBias),
    );

    OverlayEntry? entryRef;
    entryRef = OverlayEntry(
      builder: (ctx) {
        void removeEntry() {
          final entry = entryRef;
          if (entry?.mounted ?? false) entry?.remove();
          if (identical(_activeCatEntry, entry)) _activeCatEntry = null;
        }

        final size = MediaQuery.sizeOf(ctx);
        final content = CatAnimationWidget(
          cat: chosenCat,
          animationType: animationType,
          onComplete: removeEntry,
          overrides: resolvedOverrides,
        );
        return IgnorePointer(
          child: SizedBox(
            width: size.width,
            height: size.height,
            child: content,
          ),
        );
      },
    );

    final overlay = _overlay;
    if (overlay == null) return;
    _activeCatEntry = entryRef;
    overlay.insert(entryRef);
  }

  Edge _resolveEdge({
    required Edge? edgeHint,
    required CatAnimationType? preferredAnimation,
    required Edge? overrideSide,
  }) {
    if (edgeHint != null) return edgeHint;

    if (preferredAnimation == CatAnimationType.sidePeek) {
      if (overrideSide is LeftEdge || overrideSide is RightEdge) {
        return overrideSide!;
      }
      return _random.nextBool() ? Edge.left : Edge.right;
    }
    if (preferredAnimation == CatAnimationType.topPeek) return Edge.top;
    if (preferredAnimation == CatAnimationType.doublePeek) return Edge.bottom;
    return Edge.auto;
  }

  @override
  Widget build(BuildContext context) {
    return Overlay(
      key: _overlayKey,
      initialEntries: [OverlayEntry(builder: (context) => widget.child)],
    );
  }
}
