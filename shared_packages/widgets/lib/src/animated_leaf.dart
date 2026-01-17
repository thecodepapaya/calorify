import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class AnimatedLeaf extends StatefulWidget {
  const AnimatedLeaf({super.key, required this.size});

  final double size;

  @visibleForTesting
  static bool disableAnimation = false;

  @override
  State<AnimatedLeaf> createState() => _AnimatedLeafState();
}

class _AnimatedLeafState extends State<AnimatedLeaf>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    );

    if (!AnimatedLeaf.disableAnimation) {
      _controller.repeat(reverse: true);
    }


    final double maxRotationRadians = 10 * (pi / 180);

    _animation = Tween<double>(
      begin: -maxRotationRadians,
      end: maxRotationRadians,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOutSine),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return RepaintBoundary(
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Transform.rotate(
            angle: _animation.value,
            alignment: Alignment.bottomCenter,
            child: Icon(
              LucideIcons.leaf,
              color: colorScheme.primary,
              size: widget.size,
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
