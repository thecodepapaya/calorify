import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/shared_widgets/app_card.dart';
import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';

class HomeDashboardShimmer extends StatelessWidget {
  const HomeDashboardShimmer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShimmerScope(child: child);
  }
}

/// Shimmer placeholder for AI summary metrics and description while loading.
/// The card’s section header is rendered separately without shimmer.
class AiSummarySkeletonBody extends StatelessWidget {
  const AiSummarySkeletonBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 8,
          runSpacing: 6,
          children: [
            _PillSkeleton(width: 96, height: 26),
            _PillSkeleton(width: 104, height: 26),
            _PillSkeleton(width: 100, height: 26),
          ],
        ),
        SizedBox(height: 10),
        ShimmerBox(width: double.infinity, height: 11, borderRadius: 5.5),
        SizedBox(height: 6),
        ShimmerBox(width: double.infinity, height: 11, borderRadius: 5.5),
        SizedBox(height: 6),
        ShimmerBox(width: 196, height: 11, borderRadius: 5.5),
      ],
    );
  }
}

class DailyGoalSkeleton extends StatelessWidget {
  const DailyGoalSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShimmerBox(width: double.infinity, height: 14, borderRadius: 7),
        SizedBox(height: 8),
        ShimmerBox(width: 260, height: 14, borderRadius: 7),
        SizedBox(height: 18),
        Row(
          children: [
            Expanded(child: ShimmerBox(width: double.infinity, height: 46)),
            SizedBox(width: 12),
            ShimmerBox(width: 88, height: 40, borderRadius: 22),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(child: ShimmerBox(width: double.infinity, height: 54)),
            SizedBox(width: 12),
            Expanded(child: ShimmerBox(width: double.infinity, height: 54)),
          ],
        ),
      ],
    );
  }
}

class DailySummarySkeleton extends StatelessWidget {
  const DailySummarySkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return const _HomeCardSkeleton(
      titleWidth: 128,
      body: Row(
        children: [
          Expanded(child: _MetricTileSkeleton()),
          SizedBox(width: 8),
          Expanded(child: _MetricTileSkeleton()),
          SizedBox(width: 8),
          Expanded(child: _MetricTileSkeleton()),
          SizedBox(width: 8),
          Expanded(child: _MetricTileSkeleton()),
        ],
      ),
    );
  }
}

class MacroSplitSkeleton extends StatelessWidget {
  const MacroSplitSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(child: _ChartSkeleton(labelWidth: 54)),
            SizedBox(width: 16),
            Expanded(child: _ChartSkeleton(labelWidth: 62)),
          ],
        ),
      ],
    );
  }
}

class IntakeHistorySkeleton extends StatelessWidget {
  const IntakeHistorySkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ShimmerBox(width: double.infinity, height: 180, borderRadius: 16),
      ],
    );
  }
}

class MealLogSkeleton extends StatelessWidget {
  const MealLogSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _MealLogRowSkeleton(),
        SizedBox(height: 10),
        _MealLogRowSkeleton(),
        SizedBox(height: 10),
        _MealLogRowSkeleton(),
      ],
    );
  }
}

class _HomeCardSkeleton extends StatelessWidget {
  const _HomeCardSkeleton({
    required this.body,
    this.titleWidth = 144,
  });

  final Widget body;
  final double titleWidth;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _TitleRowSkeleton(titleWidth: titleWidth),
          const SizedBox(height: 16),
          body,
        ],
      ),
    );
  }
}

class _TitleRowSkeleton extends StatelessWidget {
  const _TitleRowSkeleton({this.titleWidth = 144});

  final double titleWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ShimmerBox(width: 20, height: 20, borderRadius: 10),
        const SizedBox(width: 8),
        ShimmerBox(width: titleWidth, height: 18, borderRadius: 9),
      ],
    );
  }
}

class _MetricTileSkeleton extends StatelessWidget {
  const _MetricTileSkeleton();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: globalRadius,
        color: Theme.of(
          context,
        ).colorScheme.surfaceContainerHighest.withValues(alpha: 0.35),
      ),
      child: const Column(
        children: [
          ShimmerBox(width: 28, height: 28, borderRadius: 14),
          SizedBox(height: 8),
          ShimmerBox(width: 44, height: 10, borderRadius: 5),
          SizedBox(height: 6),
          ShimmerBox(width: 38, height: 12, borderRadius: 6),
        ],
      ),
    );
  }
}

class _ChartSkeleton extends StatelessWidget {
  const _ChartSkeleton({required this.labelWidth});

  final double labelWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShimmerBox(width: labelWidth, height: 14, borderRadius: 7),
        const SizedBox(height: 12),
        const ShimmerBox(width: 120, height: 120, borderRadius: 60),
      ],
    );
  }
}

class _MealLogRowSkeleton extends StatelessWidget {
  const _MealLogRowSkeleton();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        ShimmerBox(width: 44, height: 44, borderRadius: 12),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShimmerBox(width: double.infinity, height: 14, borderRadius: 7),
              SizedBox(height: 8),
              ShimmerBox(width: 120, height: 12, borderRadius: 6),
            ],
          ),
        ),
      ],
    );
  }
}

class _PillSkeleton extends StatelessWidget {
  const _PillSkeleton({required this.width, this.height = 34});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ShimmerBox(width: width, height: height, borderRadius: height / 2);
  }
}
