import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:calorify/shared_widgets/easter_egg/cat_animation_layout.dart';
import 'package:calorify/shared_widgets/easter_egg/cat_assets.dart';

/// Clamp curve parameter to [0, 1] to avoid floating-point assertion in Curves.
double _clampT(double t) => t.clamp(0.0, 1.0);

/// Public wrapper that renders the requested cat animation.
/// Takes a [Cat] and [CatAnimationType]; the cat must implement the interface for that animation.
class CatAnimationWidget extends StatelessWidget {
  const CatAnimationWidget({
    super.key,
    required this.cat,
    required this.animationType,
    required this.onComplete,
    this.overrides,
  });

  final Cat cat;
  final CatAnimationType animationType;
  final VoidCallback onComplete;
  final CatAnimationOverrides? overrides;

  @override
  Widget build(BuildContext context) {
    final o = overrides;
    switch (animationType) {
      case CatAnimationType.peek:
        return _PeekAnimation(
          cat: cat,
          peek: cat as PeekAnimation,
          onComplete: onComplete,
          peekEdge: o?.peekEdge ?? Edge.bottom,
          peekOffset: (o?.peekOffset ?? 0.0).clamp(-1.0, 1.0),
        );
      case CatAnimationType.sidePeek:
        return _PeekAnimation(
          cat: cat,
          peek: cat as PeekAnimation,
          onComplete: onComplete,
          peekEdge: o?.sideHint ?? o?.peekEdge ?? Edge.left,
          peekOffset: (o?.peekOffset ?? 0.0).clamp(-1.0, 1.0),
        );
      case CatAnimationType.topPeek:
        return _PeekAnimation(
          cat: cat,
          peek: cat as PeekAnimation,
          onComplete: onComplete,
          peekEdge: Edge.top,
          peekOffset: (o?.peekOffset ?? 0.0).clamp(-1.0, 1.0),
        );
      case CatAnimationType.doublePeek:
        return _DoublePeekAnimation(
          cat: cat,
          doublePeek: cat as DoublePeekAnimation,
          onComplete: onComplete,
          horizontalBias: o?.horizontalBias ?? 0,
        );
    }
  }
}

/// Picks a random cat and animation, then builds [CatAnimationWidget].
class CatPeekEasterEgg extends StatefulWidget {
  const CatPeekEasterEgg({super.key, required this.onComplete});

  final VoidCallback onComplete;

  @override
  State<CatPeekEasterEgg> createState() => _CatPeekEasterEggState();
}

class _CatPeekEasterEggState extends State<CatPeekEasterEgg> {
  late final Cat _cat;
  late final CatAnimationType _animationType;

  @override
  void initState() {
    super.initState();
    final random = math.Random();
    final typesWithCats =
        CatAnimationType.values
            .where((t) => eligibleCatsForAnimation(t).isNotEmpty)
            .toList();
    final type = typesWithCats[random.nextInt(typesWithCats.length)];
    final eligible = eligibleCatsForAnimation(type);
    _animationType = type;
    _cat = eligible[random.nextInt(eligible.length)];
    debugPrint(
      '🐱 Cute cat easter egg activated! Cat: ${_cat.path}, animation: $_animationType',
    );
  }

  @override
  Widget build(BuildContext context) {
    return CatAnimationWidget(
      cat: _cat,
      animationType: _animationType,
      onComplete: widget.onComplete,
    );
  }
}

Widget _positionedCat(Offset position, Widget cat) {
  return Stack(
    fit: StackFit.expand,
    clipBehavior: Clip.none,
    children: [Positioned(left: position.dx, top: position.dy, child: cat)],
  );
}

class _CatImage extends StatelessWidget {
  const _CatImage(this.cat, {required this.extent, this.rotationDegrees = 0});

  final Cat cat;
  final double extent;
  final double rotationDegrees;

  @override
  Widget build(BuildContext context) {
    final bounds = cat.visibleBounds;
    final sourceScale =
        extent *
        CatEasterEggConfig.visibleScaleWithinExtent /
        bounds.longestSide;
    final sourceExtent = CatEasterEggConfig.sourceAssetExtent * sourceScale;
    final visibleWidth = bounds.width * sourceScale;
    final visibleHeight = bounds.height * sourceScale;
    final imageLeft = (extent - visibleWidth) / 2 - bounds.left * sourceScale;
    final imageTop = extent - visibleHeight - bounds.top * sourceScale;
    final img = Image.asset(
      cat.path,
      width: sourceExtent,
      height: sourceExtent,
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) {
        debugPrint('❌ Failed to load cat image: ${cat.path}');
        debugPrint('Error: $error');
        return Container(
          width: sourceExtent,
          height: sourceExtent,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(Icons.error, size: 50),
        );
      },
    );

    final normalized = SizedBox(
      width: extent,
      height: extent,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: imageLeft,
            top: imageTop,
            width: sourceExtent,
            height: sourceExtent,
            child: img,
          ),
        ],
      ),
    );
    if (rotationDegrees == 0) return normalized;
    return Transform.rotate(
      angle: rotationDegrees * (math.pi / 180.0),
      child: normalized,
    );
  }
}

class _PeekAnimation extends StatefulWidget {
  const _PeekAnimation({
    required this.cat,
    required this.peek,
    required this.onComplete,
    required this.peekEdge,
    required this.peekOffset,
  });

  final Cat cat;
  final PeekAnimation peek;
  final VoidCallback onComplete;
  final Edge peekEdge;
  final double peekOffset;

  @override
  State<_PeekAnimation> createState() => _PeekAnimationState();
}

class _PeekAnimationState extends State<_PeekAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.peek.peekDuration,
      vsync: this,
    )..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        widget.onComplete();
      }
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final viewport = Size(constraints.maxWidth, constraints.maxHeight);
        final extent = CatAnimationLayout.catExtent(viewport);
        final layout = CatAnimationLayout.peek(
          viewport: viewport,
          edge: widget.peekEdge,
          cat: widget.cat,
          catExtent: extent,
          axisBias: widget.peekOffset,
          peekYOffset: widget.peek.peekYOffset,
          safeInsets: MediaQuery.paddingOf(context),
        );

        return AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            final t = _clampT(_controller.value);
            double phase;
            if (t < 0.28) {
              phase = Curves.easeOutCubic.transform(_clampT(t / 0.28));
            } else if (t < 0.72) {
              phase = 1.0;
            } else {
              phase =
                  1.0 -
                  Curves.easeInCubic.transform(_clampT((t - 0.72) / 0.28));
            }
            final position =
                Offset.lerp(layout.hidden, layout.revealed, _clampT(phase))!;
            return _positionedCat(position, child!);
          },
          child: _CatImage(
            widget.cat,
            extent: extent,
            rotationDegrees: layout.rotationDegrees,
          ),
        );
      },
    );
  }
}

class _DoublePeekAnimation extends StatefulWidget {
  const _DoublePeekAnimation({
    required this.cat,
    required this.doublePeek,
    required this.onComplete,
    required this.horizontalBias,
  });

  final Cat cat;
  final DoublePeekAnimation doublePeek;
  final VoidCallback onComplete;
  final double horizontalBias;

  @override
  State<_DoublePeekAnimation> createState() => _DoublePeekAnimationState();
}

class _DoublePeekAnimationState extends State<_DoublePeekAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.doublePeek.peekDuration * 1.3,
      vsync: this,
    )..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        widget.onComplete();
      }
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final viewport = Size(constraints.maxWidth, constraints.maxHeight);
        final extent = CatAnimationLayout.catExtent(viewport);
        final safeInsets = MediaQuery.paddingOf(context);
        final firstLayout = CatAnimationLayout.peek(
          viewport: viewport,
          edge: Edge.bottom,
          cat: widget.cat,
          catExtent: extent,
          axisBias: widget.horizontalBias,
          peekYOffset: widget.doublePeek.peekYOffset,
          safeInsets: safeInsets,
        );
        final secondLayout = CatAnimationLayout.peek(
          viewport: viewport,
          edge: Edge.bottom,
          cat: widget.cat,
          catExtent: extent,
          axisBias: -widget.horizontalBias * 0.55,
          peekYOffset: widget.doublePeek.peekYOffset,
          safeInsets: safeInsets,
        );
        final belowY = firstLayout.hidden.dy;
        final peekY = firstLayout.revealed.dy;

        return AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            final t = _clampT(_controller.value);
            double y;
            if (t < 0.2) {
              y =
                  belowY +
                  (peekY - belowY) * Curves.easeOut.transform(_clampT(t / 0.2));
            } else if (t < 0.35) {
              y = peekY;
            } else if (t < 0.5) {
              y =
                  peekY +
                  (belowY - peekY) *
                      Curves.easeInOut.transform(_clampT((t - 0.35) / 0.15));
            } else if (t < 0.65) {
              y =
                  belowY +
                  (peekY - belowY) *
                      Curves.easeOut.transform(_clampT((t - 0.5) / 0.15));
            } else if (t < 0.85) {
              y = peekY;
            } else {
              y =
                  peekY +
                  (belowY - peekY) *
                      Curves.easeIn.transform(_clampT((t - 0.85) / 0.15));
            }
            final x =
                t < 0.5 ? firstLayout.revealed.dx : secondLayout.revealed.dx;
            return _positionedCat(Offset(x, y), child!);
          },
          child: _CatImage(
            widget.cat,
            extent: extent,
            rotationDegrees: firstLayout.rotationDegrees,
          ),
        );
      },
    );
  }
}
