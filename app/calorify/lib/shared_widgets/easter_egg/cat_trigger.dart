import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:calorify/shared_widgets/easter_egg/cat_assets.dart';
import 'package:calorify/shared_widgets/easter_egg/cat_overlay.dart';

class CatTrigger extends StatelessWidget {
  const CatTrigger({
    required this.child,
    this.preferredCat,
    this.animationHint,
    this.edgeHint,
    this.triggerProbability = 1.0,
    this.onTrigger,
    this.overrides,
    super.key,
  });

  final Widget child;
  final Cat? preferredCat;
  final CatAnimationType? animationHint;
  final Edge? edgeHint;

  /// Probability that a tap will show a cat (0.0 to 1.0). Default is 1 (always).
  final double triggerProbability;

  /// Called when a cat is about to be shown (e.g. for analytics).
  final VoidCallback? onTrigger;

  /// Optional runtime overrides for this trigger (position, edge).
  final CatAnimationOverrides? overrides;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        if (math.Random().nextDouble() >= triggerProbability) return;
        final overlay = CatOverlay.of(context);
        if (overlay == null) return;
        onTrigger?.call();
        overlay.showCat(
          preferredCat: preferredCat,
          preferredAnimation: animationHint,
          edgeHint: edgeHint,
          overrides: overrides,
        );
      },
      child: child,
    );
  }
}
