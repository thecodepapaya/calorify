import 'dart:math' as math;

import 'package:flutter/material.dart';

class ShimmerScope extends StatefulWidget {
  const ShimmerScope({super.key, required this.child});

  final Widget child;

  @override
  State<ShimmerScope> createState() => _ShimmerScopeState();

  static Animation<double>? maybeOf(BuildContext context) =>
      context.findAncestorStateOfType<_ShimmerScopeState>()?.shimmer;
}

class _ShimmerScopeState extends State<ShimmerScope>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  int _activePlaceholders = 0;

  /// Constant-speed sweep (controller uses linear tick); reads smoother than easeInOut.
  Animation<double> get shimmer => controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 1600),
      vsync: this,
    );
  }

  void attachPlaceholder() {
    _activePlaceholders++;
    if (_activePlaceholders == 1) controller.repeat();
  }

  void detachPlaceholder() {
    assert(_activePlaceholders > 0);
    _activePlaceholders--;
    if (_activePlaceholders == 0) {
      controller
        ..stop()
        ..value = 0;
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

class ShimmerBox extends StatefulWidget {
  const ShimmerBox({
    super.key,
    required this.width,
    required this.height,
    this.borderRadius = 8,
  });

  final double width;
  final double height;
  final double borderRadius;

  @override
  State<ShimmerBox> createState() => _ShimmerBoxState();
}

class _ShimmerBoxState extends State<ShimmerBox> {
  _ShimmerScopeState? _scope;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final nextScope = context.findAncestorStateOfType<_ShimmerScopeState>();
    if (identical(nextScope, _scope)) return;
    _scope?.detachPlaceholder();
    _scope = nextScope;
    _scope?.attachPlaceholder();
  }

  @override
  void dispose() {
    _scope?.detachPlaceholder();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final shimmer = _scope?.shimmer;
    if (shimmer == null) {
      return Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
      );
    }

    return AnimatedBuilder(
      animation: shimmer,
      builder: (context, _) {
        final colorScheme = Theme.of(context).colorScheme;
        final base = colorScheme.surfaceContainerHighest;
        final peak = Color.lerp(base, colorScheme.onSurface, 0.07)!;
        final edge = Color.lerp(base, peak, 0.35)!;
        // Map linear 0→1 animation to a periodic phase so the frame at t=0 matches
        // t=1 (no discontinuity when [AnimationController.repeat] wraps).
        final phase = shimmer.value * 2 * math.pi - math.pi / 2;
        final center = (math.sin(phase) + 1) / 2;
        return Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [base, edge, peak, edge, base],
              stops: [
                (center - 0.5).clamp(0.0, 1.0),
                (center - 0.2).clamp(0.0, 1.0),
                center.clamp(0.0, 1.0),
                (center + 0.2).clamp(0.0, 1.0),
                (center + 0.5).clamp(0.0, 1.0),
              ],
            ),
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
        );
      },
    );
  }
}

class HomeScreenSkeleton extends StatelessWidget {
  const HomeScreenSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return ShimmerScope(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ShimmerBox(width: 36, height: 36, borderRadius: 18),
            const SizedBox(height: 4),
            const ShimmerBox(width: 92, height: 8, borderRadius: 4),
            const SizedBox(height: 3),
            const ShimmerBox(width: 58, height: 8, borderRadius: 4),
            const SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ShimmerBox(width: 28, height: 28, borderRadius: 14),
                ShimmerBox(width: 28, height: 28, borderRadius: 14),
                ShimmerBox(width: 28, height: 28, borderRadius: 14),
              ],
            ),
            const SizedBox(height: 6),
            const ShimmerBox(
              width: double.infinity,
              height: 36,
              borderRadius: 18,
            ),
          ],
        ),
      ),
    );
  }
}

class ListScreenSkeleton extends StatelessWidget {
  const ListScreenSkeleton({super.key, this.itemCount = 3});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return ShimmerScope(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        itemCount: itemCount,
        itemBuilder:
            (_, _) => const Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: ShimmerBox(
                width: double.infinity,
                height: 48,
                borderRadius: 18,
              ),
            ),
      ),
    );
  }
}
