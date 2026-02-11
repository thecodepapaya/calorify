import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:calorify/shared_widgets/easter_egg/cat_assets.dart';
import 'package:calorify/shared_widgets/easter_egg/cat_overlay.dart';

class CatTrigger extends StatelessWidget {
  const CatTrigger({
    required this.child,
    this.preferredAsset,
    this.animationHint,
    this.xRange,
    this.yRange,
    this.edgeHint,
    this.triggerProbability = 1.0,
    super.key,
  });

  final Widget child;
  final CatAsset? preferredAsset;
  final CatAnimationType? animationHint;
  final double? xRange;
  final double? yRange;
  final Edge? edgeHint;

  /// Probability that a tap will show a cat (0.0 to 1.0). Default is 1 (always).
  final double triggerProbability;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        if (math.Random().nextDouble() >= triggerProbability) return;
        final overlay = CatOverlay.of(context);
        overlay?.showCat(
          asset: preferredAsset,
          preferredAnimation: animationHint,
          edgeHint: edgeHint,
          overrides:
              xRange == null && yRange == null
                  ? null
                  : CatAnimParams(xRange: xRange ?? 0, yRange: yRange ?? 0),
        );
      },
      child: child,
    );
  }
}
