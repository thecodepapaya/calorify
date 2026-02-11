import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:calorify/shared_widgets/easter_egg/cat_assets.dart';

/// Public wrapper that renders the requested cat animation.
class CatAnimationWidget extends StatelessWidget {
  const CatAnimationWidget({
    super.key,
    required this.asset,
    required this.animationType,
    required this.params,
    required this.onComplete,
    this.grassHeight = 120,
  });

  final CatAsset asset;
  final CatAnimationType animationType;
  final CatAnimParams params;
  final VoidCallback onComplete;
  final double grassHeight;

  @override
  Widget build(BuildContext context) {
    switch (animationType) {
      case CatAnimationType.peekPop:
        return _PeekPopAnimation(
          grassHeight: grassHeight,
          catAsset: asset,
          params: params,
          onComplete: onComplete,
        );
      case CatAnimationType.leaping:
        return _LeapingAnimation(
          grassHeight: grassHeight,
          catAsset: asset,
          params: params,
          onComplete: onComplete,
        );
      case CatAnimationType.pounce:
        return _PounceAnimation(
          grassHeight: grassHeight,
          catAsset: asset,
          params: params,
          onComplete: onComplete,
        );
      case CatAnimationType.jumpAtYou:
        return _JumpAtYouAnimation(
          grassHeight: grassHeight,
          catAsset: asset,
          params: params,
          onComplete: onComplete,
        );
      case CatAnimationType.sidePeek:
        return _SidePeekAnimation(
          grassHeight: grassHeight,
          catAsset: asset,
          params: params,
          onComplete: onComplete,
        );
      case CatAnimationType.topPeek:
        return _TopPeekAnimation(
          grassHeight: grassHeight,
          catAsset: asset,
          params: params,
          onComplete: onComplete,
        );
    }
  }
}

// catAnimationEligibility is provided by cat_assets.dart

class CatPeekEasterEgg extends StatefulWidget {
  static const double _catImageWidth = 200;
  const CatPeekEasterEgg({
    super.key,
    required this.grassHeight,
    required this.onComplete,
  });

  final double grassHeight;
  final VoidCallback onComplete;

  @override
  State<CatPeekEasterEgg> createState() => _CatPeekEasterEggState();
}

class _CatPeekEasterEggState extends State<CatPeekEasterEgg> {
  late final CatAsset _catImage;
  late final CatAnimationType _animationType;

  @override
  void initState() {
    super.initState();

    final random = math.Random();
    final entries = catAnimationEligibility.entries.toList(growable: false);
    final selectedEntry = entries[random.nextInt(entries.length)];

    _catImage = selectedEntry.key;

    final eligibleAnimations = selectedEntry.value;
    _animationType =
        eligibleAnimations[random.nextInt(eligibleAnimations.length)];

    debugPrint(
      '🐱 Cute cat easter egg activated! Cat: ${_catImage.path}, '
      'animation: $_animationType',
    );
  }

  @override
  Widget build(BuildContext context) {
    // Use the public CatAnimationWidget to render the selected animation
    final params = catAnimParams[_catImage] ?? const CatAnimParams();
    return CatAnimationWidget(
      asset: _catImage,
      animationType: _animationType,
      params: params,
      onComplete: widget.onComplete,
      grassHeight: widget.grassHeight,
    );
  }
}

/// Cat peeking from the top of the screen, then hiding again.
class _TopPeekAnimation extends StatefulWidget {
  const _TopPeekAnimation({
    required this.grassHeight,
    required this.catAsset,
    required this.params,
    required this.onComplete,
  });

  final double grassHeight;
  final CatAsset catAsset;
  final CatAnimParams params;
  final VoidCallback onComplete;

  @override
  State<_TopPeekAnimation> createState() => _TopPeekAnimationState();
}

class _TopPeekAnimationState extends State<_TopPeekAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final double _randomX;

  @override
  void initState() {
    super.initState();
    final random = math.Random();
    _randomX = (random.nextDouble() - 0.5) * widget.params.xRange;

    _controller = AnimationController(
      duration: widget.params.sidePeekDuration,
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
        final offscreen = -height / 2 - CatPeekEasterEgg._catImageWidth;
        final allowed = widget.params.allowedCropFraction.clamp(0.0, 1.0);
        final visibleHeight = (1.0 - allowed) * CatPeekEasterEgg._catImageWidth;
        final targetY = -(height / 2 - visibleHeight / 2);

        return AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            final t = _controller.value.clamp(0.0, 1.0);
            double phase;
            if (t < 0.3) {
              phase = t / 0.3;
            } else if (t < 0.7) {
              phase = 1.0;
            } else {
              phase = (1.0 - (t - 0.7) / 0.3).clamp(0.0, 1.0);
            }

            final startY = offscreen;
            final phaseClamped = phase.clamp(0.0, 1.0);
            final dy =
                startY + (targetY - startY) * Curves.easeInOut.transform(phaseClamped);
            final opacity = Curves.easeInOut.transform(phaseClamped);

            return Opacity(
              opacity: opacity,
              child: Transform.translate(
                offset: Offset(_randomX, dy),
                child: child,
              ),
            );
          },
          child: _CatImage(
            widget.catAsset,
            // From top: show as is (no rotation). Rule: only left/right get ±90°.
            rotationDegrees: 0,
          ),
        );
      },
    );
  }
}

class _CatImage extends StatelessWidget {
  const _CatImage(this.asset, {this.rotationDegrees = 0});

  final CatAsset asset;
  final double rotationDegrees;

  @override
  Widget build(BuildContext context) {
    final img = Image.asset(
      asset.path,
      width: CatPeekEasterEgg._catImageWidth,
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) {
        debugPrint('❌ Failed to load cat image: ${asset.path}');
        debugPrint('Error: $error');
        // Show a placeholder if image fails to load
        return Container(
          width: CatPeekEasterEgg._catImageWidth,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(Icons.error, size: 50),
        );
      },
    );

    if (rotationDegrees == 0) {
      return Center(child: img);
    }
    return Center(
      child: Transform.rotate(
        angle: rotationDegrees * (math.pi / 180.0),
        child: img,
      ),
    );
  }
}

/// Original "pop from the grass" animation.
class _PeekPopAnimation extends StatefulWidget {
  const _PeekPopAnimation({
    required this.grassHeight,
    required this.catAsset,
    required this.params,
    required this.onComplete,
  });

  final double grassHeight;
  final CatAsset catAsset;
  final CatAnimParams params;
  final VoidCallback onComplete;

  @override
  State<_PeekPopAnimation> createState() => _PeekPopAnimationState();
}

class _PeekPopAnimationState extends State<_PeekPopAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _translateYAnimation;
  late final double _randomX;

  @override
  void initState() {
    super.initState();

    final random = math.Random();
    _randomX = (random.nextDouble() - 0.5) * widget.params.xRange * 2;

    _controller = AnimationController(
      duration: widget.params.peekPopDuration,
      vsync: this,
    );

    _translateYAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(
          begin: widget.grassHeight + 50, // Start below grass
          end: widget.params.peekYOffset, // Float up to target peek Y
        ),
        weight: 0.3, // Float up (0–30%)
      ),
      TweenSequenceItem(
        tween: Tween<double>(
          begin: widget.params.peekYOffset,
          end: widget.params.peekYOffset - 10, // Slight change while holding
        ),
        weight: 0.5, // Stay visible (30–80%)
      ),
      TweenSequenceItem(
        tween: Tween<double>(
          begin:
              widget.params.peekYOffset -
              10, // Match previous item's end for smooth transition
          end: widget.grassHeight + 50, // Sink back down
        ),
        weight: 0.2, // Sink down (80–100%)
      ),
    ]).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.forward().then((_) => widget.onComplete());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(_randomX, _translateYAnimation.value),
          child: child,
        );
      },
      child: _CatImage(
        widget.catAsset,
        // From bottom: show as is (no rotation).
        rotationDegrees: 0,
      ),
    );
  }
}

/// Cat leaping in an arc above the grass.
class _LeapingAnimation extends StatefulWidget {
  const _LeapingAnimation({
    required this.grassHeight,
    required this.catAsset,
    required this.params,
    required this.onComplete,
  });

  final double grassHeight;
  final CatAsset catAsset;
  final CatAnimParams params;
  final VoidCallback onComplete;

  @override
  State<_LeapingAnimation> createState() => _LeapingAnimationState();
}

class _LeapingAnimationState extends State<_LeapingAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final bool _fromLeft;
  late final double _baseXOffset;
  late final double _jumpHeight;
  late final double _horizontalTravel;

  @override
  void initState() {
    super.initState();

    final random = math.Random();
    _fromLeft = random.nextBool();
    _baseXOffset =
        (random.nextDouble() - 0.5) *
        widget.params.xRange; // small random offset

    _jumpHeight = widget.params.leapHeight;
    _horizontalTravel = widget.params.horizontalTravel;

    _controller = AnimationController(
      duration: widget.params.leapDuration,
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
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final t = Curves.easeInOut.transform(_controller.value.clamp(0.0, 1.0)).clamp(0.0, 1.0);

        // Horizontal: move left -> right or right -> left.
        final direction = _fromLeft ? 1.0 : -1.0;
        final dx = _baseXOffset + direction * _horizontalTravel * t;

        // Vertical: simple jump arc using sine.
        final baseY = widget.grassHeight + 20;
        final dy = baseY - math.sin(t * math.pi) * _jumpHeight;

        return Transform.translate(offset: Offset(dx, dy), child: child);
      },
      child: _CatImage(
        widget.catAsset,
        // From bottom: show as is (no rotation).
        rotationDegrees: 0,
      ),
    );
  }
}

/// Quick pounce / jump-in animation: cat launches from off-screen (top or side)
/// and lands near the grass with a little squash/stretch (scale) effect.
class _PounceAnimation extends StatefulWidget {
  const _PounceAnimation({
    required this.grassHeight,
    required this.catAsset,
    required this.params,
    required this.onComplete,
  });

  final double grassHeight;
  final CatAsset catAsset;
  final CatAnimParams params;
  final VoidCallback onComplete;

  @override
  State<_PounceAnimation> createState() => _PounceAnimationState();
}

class _PounceAnimationState extends State<_PounceAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final bool _fromTop;
  late final bool _fromLeft; // used when not fromTop
  late final double _randomOffset;

  @override
  void initState() {
    super.initState();
    final random = math.Random();
    _fromTop = random.nextBool();
    _fromLeft = random.nextBool();
    _randomOffset = (random.nextDouble() - 0.5) * widget.params.xRange;

    _controller = AnimationController(
      duration: widget.params.leapDuration,
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
    return LayoutBuilder(builder: (context, constraints) {
      final width = constraints.maxWidth;

      // Offscreen positions
      final offscreenTop = -CatPeekEasterEgg._catImageWidth - 50;
      final offscreenSide = width / 2 + CatPeekEasterEgg._catImageWidth + 50;

      final baseY = widget.grassHeight + 10;

      return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          final rawT = _controller.value.clamp(0.0, 1.0);
          final t = Curves.easeOut.transform(rawT).clamp(0.0, 1.0);

          double dx = 0.0;
          double dy = baseY;
          double scale = 1.0;
          double rotation = 0.0;

          if (_fromTop) {
            // From top: drop down with a little overshoot and settle
            final startY = offscreenTop;
            final overshoot = baseY - widget.params.leapHeight * 0.15;
            if (t < 0.7) {
              final localT = (t / 0.7).clamp(0.0, 1.0);
              dy = startY + (overshoot - startY) * localT;
            } else {
              final localT = ((t - 0.7) / 0.3).clamp(0.0, 1.0);
              dy = overshoot + (baseY - overshoot) * Curves.easeIn.transform(localT);
            }
            dx = _randomOffset;
            // scale: squash on landing. From top: no base rotation (rule: as is).
            scale = 1.0 + 0.12 * math.sin(t * math.pi);
            rotation = 0;
          } else {
            // From side: quick horizontal launch into a small arc
            final direction = _fromLeft ? 1.0 : -1.0;
            final startX = _fromLeft ? -offscreenSide : offscreenSide;
            final endX = direction * (width * 0.0) + _randomOffset; // center-ish
            dx = startX + (endX - startX) * t;

            // Vertical arc for pounce
            final jump = math.sin(t * math.pi) * widget.params.leapHeight * 0.6;
            dy = baseY - jump;

            // scale and rotation for snappy pounce
            scale = 1.0 + 0.14 * math.sin(t * math.pi);
            rotation = (direction * 0.15) * (1 - (t * 0.8));
          }

          return Transform.translate(
            offset: Offset(dx, dy),
            child: Transform.rotate(
              angle: rotation,
              child: Transform.scale(
                scale: scale,
                child: child,
              ),
            ),
          );
        },
        child: _CatImage(
          widget.catAsset,
          // From top or bottom: as is (0). From left: 90°. From right: -90°.
          rotationDegrees: _fromTop ? 0 : (_fromLeft ? 90.0 : -90.0),
        ),
      );
    });
  }
}

/// Jump-at-you: cat starts on screen and scales up with a small arc,
/// as if leaping toward the viewer from inside the screen.
class _JumpAtYouAnimation extends StatefulWidget {
  const _JumpAtYouAnimation({
    required this.grassHeight,
    required this.catAsset,
    required this.params,
    required this.onComplete,
  });

  final double grassHeight;
  final CatAsset catAsset;
  final CatAnimParams params;
  final VoidCallback onComplete;

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
    _randomX = (random.nextDouble() - 0.5) * widget.params.xRange;

    _controller = AnimationController(
      duration: widget.params.leapDuration,
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
    final baseY = widget.grassHeight + 10;
    // Small upward arc (jump toward you): peak at ~25% of leapHeight
    final jumpHeight = widget.params.leapHeight * 0.4;

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final t = Curves.easeOut.transform(_controller.value.clamp(0.0, 1.0)).clamp(0.0, 1.0);
        // Arc: up then settle (sine 0 -> pi)
        final arc = math.sin(t * math.pi);
        final dy = baseY - arc * jumpHeight;
        // Scale from 1.0 to 1.55 so the cat appears to jump toward the camera
        final scale = 1.0 + 0.55 * t;
        // Slight rotation for dynamism (settles back by end)
        final rotation = 0.08 * math.sin(t * math.pi);

        return Transform.translate(
          offset: Offset(_randomX, dy),
          child: Transform.rotate(
            angle: rotation,
            child: Transform.scale(
              scale: scale,
              alignment: Alignment.bottomCenter,
              child: child,
            ),
          ),
        );
      },
      child: _CatImage(
        widget.catAsset,
        // From bottom: show as is (no rotation).
        rotationDegrees: 0,
      ),
    );
  }
}

/// Cat peeking from the side of the screen, then hiding again.
class _SidePeekAnimation extends StatefulWidget {
  const _SidePeekAnimation({
    required this.grassHeight,
    required this.catAsset,
    required this.params,
    required this.onComplete,
  });

  final double grassHeight;
  final CatAsset catAsset;
  final CatAnimParams params;
  final VoidCallback onComplete;

  @override
  State<_SidePeekAnimation> createState() => _SidePeekAnimationState();
}

class _SidePeekAnimationState extends State<_SidePeekAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final bool _fromLeft;
  late final double _randomY;

  @override
  void initState() {
    super.initState();
    final random = math.Random();
    _fromLeft = random.nextBool();
    // Vertical variation so cats don't all appear at the same height on the edge.
    _randomY = (random.nextDouble() - 0.5) * widget.params.yRange * 2;

    _controller = AnimationController(
      duration: widget.params.sidePeekDuration,
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

        // Position calculations relative to the center.
        final offscreen =
            width / 2 + CatPeekEasterEgg._catImageWidth; // fully offscreen

        return AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            final t = _controller.value.clamp(0.0, 1.0);

            double phase;
            if (t < 0.3) {
              // Slide in
              phase = t / 0.3;
            } else if (t < 0.7) {
              // Hold
              phase = 1.0;
            } else {
              // Slide out
              phase = (1.0 - (t - 0.7) / 0.3).clamp(0.0, 1.0);
            }

            final startX = _fromLeft ? -offscreen : offscreen;
            final allowed = (widget.params.allowedCropFraction).clamp(0.0, 1.0);
            final visibleWidth =
                (1.0 - allowed) * CatPeekEasterEgg._catImageWidth;
            final targetX =
                _fromLeft
                    ? -(width / 2 - visibleWidth / 2)
                    : (width / 2 - visibleWidth / 2);
            final phaseClamped = phase.clamp(0.0, 1.0);
            final dx =
                startX + (targetX - startX) * Curves.easeInOut.transform(phaseClamped);

            // Slightly above the grass line using per-cat factor, plus random vertical variation.
            final dy =
                -widget.grassHeight * widget.params.sidePeekYOffsetFactor + _randomY;

            // Fade in/out subtly with the motion.
            final opacity = Curves.easeInOut.transform(phaseClamped);

            return Opacity(
              opacity: opacity,
              child: Transform.translate(offset: Offset(dx, dy), child: child),
            );
          },
          child: _CatImage(
            widget.catAsset,
            // Left edge: clockwise pi/2; right edge: anticlockwise pi/2.
            rotationDegrees: _fromLeft ? 90.0 : -90.0,
          ),
        );
      },
    );
  }
}
