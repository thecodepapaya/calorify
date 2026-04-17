import 'package:flutter/material.dart';

/// A lightweight shimmer skeleton widget for loading states.
/// Uses a single shared [AnimationController] via an [InheritedWidget] so
/// multiple placeholders animate in perfect sync with minimal overhead.
class ShimmerScope extends StatefulWidget {
  const ShimmerScope({super.key, required this.child});

  final Widget child;

  @override
  // ignore: library_private_types_in_public_api
  State<ShimmerScope> createState() => _ShimmerScopeState();

  // ignore: library_private_types_in_public_api
  static _ShimmerScopeState? of(BuildContext context) =>
      context.findAncestorStateOfType<_ShimmerScopeState>();
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

/// Renders a single shimmer placeholder rectangle.
/// Must be a descendant of [ShimmerScope].
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
    final scope = ShimmerScope.of(context);
    if (scope == null) {
      // Fallback: static grey box
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
      animation: scope.shimmer,
      builder: (context, _) {
        final colorScheme = Theme.of(context).colorScheme;
        final base = colorScheme.surfaceContainerHighest;
        final highlight = Color.lerp(base, colorScheme.onSurface, 0.10)!;
        final t = scope.shimmer.value;
        return Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [base, highlight, base],
              stops: [
                (t - 0.3).clamp(0.0, 1.0),
                t.clamp(0.0, 1.0),
                (t + 0.3).clamp(0.0, 1.0),
              ],
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        );
      },
    );
  }
}

/// Skeleton for the home screen while data loads.
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
            // Calorie ring placeholder
            const ShimmerBox(width: 70, height: 70, borderRadius: 35),
            const SizedBox(height: 12),
            const ShimmerBox(width: 100, height: 14, borderRadius: 7),
            const SizedBox(height: 6),
            const ShimmerBox(width: 60, height: 10, borderRadius: 5),
            const SizedBox(height: 20),
            // Macro row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ShimmerBox(width: 44, height: 44, borderRadius: 8),
                ShimmerBox(width: 44, height: 44, borderRadius: 8),
                ShimmerBox(width: 44, height: 44, borderRadius: 8),
              ],
            ),
            const SizedBox(height: 20),
            // Meal item placeholders
            const ShimmerBox(width: double.infinity, height: 44, borderRadius: 8),
            const SizedBox(height: 8),
            const ShimmerBox(width: double.infinity, height: 44, borderRadius: 8),
          ],
        ),
      ),
    );
  }
}

/// Skeleton for the history / favorites screen while data loads.
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
            (i) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: const ShimmerBox(
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
