import 'dart:math' as math;

import 'package:flutter/material.dart';

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

class _CatPeekEasterEggState extends State<CatPeekEasterEgg>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _translateYAnimation;
  late double _randomX;

  late String _randomCatImage;

  @override
  void initState() {
    super.initState();

    // Random X position within the grass area
    final random = math.Random();
    _randomX =
        (random.nextDouble() - 0.5) * 200; // Random position ±100px from center

    // Randomly select one of the 7 cat images
    final catNumber = random.nextInt(7) + 1; // 1-7
    _randomCatImage = 'assets/images/cat$catNumber.png';

    debugPrint('🐱 Cute cat easter egg activated! Cat: $_randomCatImage');

    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    // Float up from behind grass, then sink down
    _translateYAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(
          begin: widget.grassHeight + 50, // Start below grass
          end: -40, // Float up to smaller height above grass
        ),
        weight: 0.3, // Float up (0-0.4)
      ),
      TweenSequenceItem(
        tween: Tween<double>(
          begin: -40,
          end: -50, // Stay at top
        ),
        weight: 0.5, // Stay visible (0.4-0.7)
      ),
      TweenSequenceItem(
        tween: Tween<double>(
          begin: -40,
          end: widget.grassHeight + 50, // Sink back down
        ),
        weight: 0.2, // Sink down (0.7-1.0)
      ),
    ]).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    // Fade animation: fade in as it floats up, fade out as it sinks

    _controller.forward().then((_) {
      widget.onComplete();
    });
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
          child: Center(
            child: Image.asset(
              _randomCatImage,
              width: CatPeekEasterEgg._catImageWidth,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                debugPrint('❌ Failed to load cat image: $_randomCatImage');
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
            ),
          ),
        );
      },
    );
  }
}
