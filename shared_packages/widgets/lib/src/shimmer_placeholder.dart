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
  late AnimationController controller;
  late Animation<double> shimmer;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    )..repeat();
    shimmer = CurvedAnimation(parent: controller, curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

class ShimmerBox extends StatelessWidget {
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
  Widget build(BuildContext context) {
    final shimmer = ShimmerScope.maybeOf(context);
    if (shimmer == null) {
      return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      );
    }

    return AnimatedBuilder(
      animation: shimmer,
      builder: (context, _) {
        final colorScheme = Theme.of(context).colorScheme;
        final base = colorScheme.surfaceContainerHighest;
        final highlight = Color.lerp(base, colorScheme.onSurface, 0.10)!;
        final value = shimmer.value;
        return Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [base, highlight, base],
              stops: [
                (value - 0.3).clamp(0.0, 1.0),
                value.clamp(0.0, 1.0),
                (value + 0.3).clamp(0.0, 1.0),
              ],
            ),
            borderRadius: BorderRadius.circular(borderRadius),
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
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ShimmerBox(width: 70, height: 70, borderRadius: 35),
            const SizedBox(height: 12),
            const ShimmerBox(width: 100, height: 14, borderRadius: 7),
            const SizedBox(height: 6),
            const ShimmerBox(width: 60, height: 10, borderRadius: 5),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ShimmerBox(width: 44, height: 44, borderRadius: 8),
                ShimmerBox(width: 44, height: 44, borderRadius: 8),
                ShimmerBox(width: 44, height: 44, borderRadius: 8),
              ],
            ),
            const SizedBox(height: 20),
            const ShimmerBox(
              width: double.infinity,
              height: 44,
              borderRadius: 8,
            ),
            const SizedBox(height: 8),
            const ShimmerBox(
              width: double.infinity,
              height: 44,
              borderRadius: 8,
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: List.generate(
            itemCount,
            (_) => const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: ShimmerBox(
                width: double.infinity,
                height: 52,
                borderRadius: 10,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
