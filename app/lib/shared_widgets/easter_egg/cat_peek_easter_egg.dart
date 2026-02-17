import 'dart:math' as math;

import 'package:flutter/material.dart';
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
          horizontalBias: o?.horizontalBias ?? 0,
        );
      case CatAnimationType.jumpAtYou:
        return _JumpAtYouAnimation(
          cat: cat,
          jump: cat as JumpAtYouAnimation,
          onComplete: onComplete,
          horizontalBias: o?.horizontalBias ?? 0,
        );
      case CatAnimationType.sidePeek:
        return _PeekAnimation(
          cat: cat,
          peek: cat as PeekAnimation,
          onComplete: onComplete,
          peekEdge: o?.sideHint ?? o?.peekEdge ?? Edge.left,
          peekOffset: (o?.peekOffset ?? 0.0).clamp(-1.0, 1.0),
          horizontalBias: o?.horizontalBias ?? 0,
        );
      case CatAnimationType.topPeek:
        return _PeekAnimation(
          cat: cat,
          peek: cat as PeekAnimation,
          onComplete: onComplete,
          peekEdge: Edge.top,
          peekOffset: (o?.peekOffset ?? 0.0).clamp(-1.0, 1.0),
          horizontalBias: o?.horizontalBias ?? 0,
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

Widget _positionedCat(double left, double top, Widget cat) {
  return Stack(
    fit: StackFit.expand,
    children: [Positioned(left: left, top: top, child: cat)],
  );
}

class _CatImage extends StatelessWidget {
  const _CatImage(this.cat, {this.rotationDegrees = 0});

  final Cat cat;
  final double rotationDegrees;

  @override
  Widget build(BuildContext context) {
    const size = CatEasterEggConfig.catWidth;
    final img = Image.asset(
      cat.path,
      width: size,
      height: size,
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) {
        debugPrint('❌ Failed to load cat image: ${cat.path}');
        debugPrint('Error: $error');
        return Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(Icons.error, size: 50),
        );
      },
    );

    final content =
        rotationDegrees == 0
            ? img
            : Transform.rotate(
              angle: rotationDegrees * (math.pi / 180.0),
              child: img,
            );
    return SizedBox(width: size, height: size, child: content);
  }
}

class _PeekAnimation extends StatefulWidget {
  const _PeekAnimation({
    required this.cat,
    required this.peek,
    required this.onComplete,
    required this.peekEdge,
    required this.peekOffset,
    required this.horizontalBias,
  });

  final Cat cat;
  final PeekAnimation peek;
  final VoidCallback onComplete;
  final Edge peekEdge;
  final double peekOffset;
  final double horizontalBias;

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
        final w = constraints.maxWidth;
        final h = constraints.maxHeight;
        const size = CatEasterEggConfig.catWidth;
        const pad = CatEasterEggConfig.edgePadding;

        final rangeX = (w - size) / 2;
        final rangeY = (h - size) / 2;
        final centerX = (w - size) / 2;
        final centerY = (h - size) / 2;
        final offset = widget.peekOffset;

        double startX, startY, endX, endY, rotationDegrees;

        switch (widget.peekEdge) {
          case BottomEdge():
            startX = centerX + offset * rangeX;
            startY = h;
            endX = startX;
            endY = h - size - pad;
            rotationDegrees = 0;
            break;
          case TopEdge():
            startX = centerX + offset * rangeX;
            startY = -size - pad;
            endX = startX;
            endY = 0;
            rotationDegrees = 180;
            break;
          case LeftEdge():
            startX = -size - 50;
            startY = centerY + offset * rangeY;
            endX = 0;
            endY = startY;
            rotationDegrees = 90;
            break;
          case RightEdge():
            startX = w + 50;
            startY = centerY + offset * rangeY;
            endX = w - size;
            endY = startY;
            rotationDegrees = -90;
            break;
        }

        return AnimatedBuilder(
          animation: _controller,
          builder: (context, _) {
            final t = _clampT(_controller.value);
            double phase;
            if (t < 0.3) {
              phase = t / 0.3;
            } else if (t < 0.7) {
              phase = 1.0;
            } else {
              phase = 1.0 - (t - 0.7) / 0.3;
            }
            final p = _clampT(phase);
            final curve = Curves.easeInOut.transform(p);
            final x = startX + (endX - startX) * curve;
            final y = startY + (endY - startY) * curve;
            return _positionedCat(
              x,
              y,
              _CatImage(widget.cat, rotationDegrees: rotationDegrees),
            );
          },
        );
      },
    );
  }
}

// pounce animation removed

class _JumpAtYouAnimation extends StatefulWidget {
  const _JumpAtYouAnimation({
    required this.cat,
    required this.jump,
    required this.onComplete,
    required this.horizontalBias,
  });

  final Cat cat;
  final JumpAtYouAnimation jump;
  final VoidCallback onComplete;
  final double horizontalBias;

  @override
  State<_JumpAtYouAnimation> createState() => _JumpAtYouAnimationState();
}

class _JumpAtYouAnimationState extends State<_JumpAtYouAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final double _randomX;

  @override
  void initState() {
    super.initState();
    final random = math.Random();
    _randomX = (random.nextDouble() - 0.5) * widget.jump.horizontalBias;

    _controller = AnimationController(
      duration: widget.jump.leapDuration,
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
        final width = constraints.maxWidth;
        final bias = widget.horizontalBias * width * 0.35;
        final baseY =
            constraints.maxHeight -
            CatEasterEggConfig.catWidth -
            CatEasterEggConfig.edgePadding +
            10;
        final jumpHeight = widget.jump.leapHeight * 0.4;

        return AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            final t = Curves.easeOut.transform(_clampT(_controller.value));
            final arc = math.sin(t * math.pi);
            final dy = baseY - arc * jumpHeight;
            final scale = 1.0 + 0.55 * t;
            final rotation = 0.08 * math.sin(t * math.pi);

            final catWidget = _CatImage(widget.cat, rotationDegrees: 0);
            return _positionedCat(
              _randomX + bias,
              dy,
              Transform.rotate(
                angle: rotation,
                child: Transform.scale(
                  scale: scale,
                  alignment: Alignment.bottomCenter,
                  child: catWidget,
                ),
              ),
            );
          },
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
  late final double _randomX;

  @override
  void initState() {
    super.initState();
    final random = math.Random();
    _randomX = (random.nextDouble() - 0.5) * widget.doublePeek.horizontalBias;

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
        final height = constraints.maxHeight;
        final width = constraints.maxWidth;
        final bias = widget.horizontalBias * width * 0.35;
        final bottomY =
            height -
            CatEasterEggConfig.catWidth -
            CatEasterEggConfig.edgePadding;
        final belowY = bottomY + 60;
        final peekY = bottomY + widget.doublePeek.peekYOffset;

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
            return _positionedCat(
              _randomX + bias,
              y,
              _CatImage(widget.cat, rotationDegrees: 0),
            );
          },
        );
      },
    );
  }
}
