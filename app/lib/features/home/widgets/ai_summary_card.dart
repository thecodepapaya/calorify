import 'package:calorify/core/models/ai_summary_result.dart';
import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/shared_widgets/app_card.dart';
import 'package:calorify/shared_widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class AiSummaryCard extends ConsumerWidget {
  const AiSummaryCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final summaryAsync = ref.watch(aiSummaryProvider);

    return summaryAsync.when(
      loading: () => const _SummaryCardScaffold(child: _LoadingState()),
      error:
          (error, _) => _SummaryCardScaffold(
            child: _ErrorState(
              onRetry: () => ref.invalidate(aiSummaryProvider),
            ),
          ),
      data: (summary) {
        return _SummaryCardScaffold(
          child:
              summary == null
                  ? const _EmptyState()
                  : _SummaryCardContent(summary: summary),
        );
      },
    );
  }
}

class _SummaryCardScaffold extends StatelessWidget {
  const _SummaryCardScaffold({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(
            icon: LucideIcons.sparkles,
            title: t.home.aiSummary.title,
            iconSize: 18,
          ),
          const SizedBox(height: 12),
          child,
        ],
      ),
    );
  }
}

class _SummaryCardContent extends StatelessWidget {
  const _SummaryCardContent({required this.summary});

  final AiSummaryResult summary;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    final localeTag =
        TranslationProvider.of(context).locale.flutterLocale.toLanguageTag();
    final generatedAt =
        DateFormat.MMMd(localeTag).add_jm().format(summary.generatedAt);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            _MetricChip(
              icon: LucideIcons.utensilsCrossed,
              label: t.home.aiSummary.mealCount(count: summary.mealCount),
            ),
            _MetricChip(
              icon: LucideIcons.scale,
              label: t.home.aiSummary.macroBalanceScore(
                score: summary.macroBalanceScore,
              ),
            ),
            _MetricChip(
              icon: _trendIcon(summary.trend),
              label: _trendLabel(summary.trend),
            ),
          ],
        ),
        const SizedBox(height: 14),
        Text(
          summary.summary,
          style: textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurfaceVariant,
            height: 1.5,
          ),
        ),
        if (summary.topFoods.isNotEmpty) ...[
          const SizedBox(height: 14),
          Text(
            t.home.aiSummary.topFoods,
            style: textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.w700,
              color: colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children:
                summary.topFoods
                    .map((food) => Chip(label: Text(food)))
                    .toList(),
          ),
        ],
        const SizedBox(height: 12),
        Text(
          t.home.aiSummary.generatedAt(time: generatedAt),
          style: textTheme.bodySmall?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }

  String _trendLabel(AiSummaryTrend trend) {
    return switch (trend) {
      AiSummaryTrend.up => t.home.aiSummary.trendUp,
      AiSummaryTrend.down => t.home.aiSummary.trendDown,
      AiSummaryTrend.steady => t.home.aiSummary.trendSteady,
    };
  }

  IconData _trendIcon(AiSummaryTrend trend) {
    return switch (trend) {
      AiSummaryTrend.up => LucideIcons.trendingUp,
      AiSummaryTrend.down => LucideIcons.trendingDown,
      AiSummaryTrend.steady => LucideIcons.minus,
    };
  }
}

class _MetricChip extends StatelessWidget {
  const _MetricChip({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999),
        color: colorScheme.surfaceContainerHighest,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 16, color: colorScheme.primary),
              const SizedBox(width: 6),
              Text(label),
            ],
          ),
        ],
      ),
    );
  }
}

class _LoadingState extends StatelessWidget {
  const _LoadingState();

  @override
  Widget build(BuildContext context) {
    return Text(t.home.aiSummary.loading);
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    return Text(t.home.aiSummary.logMore);
  }
}

class _ErrorState extends StatelessWidget {
  const _ErrorState({required this.onRetry});

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(t.errors.somethingWentWrong)),
        TextButton.icon(
          onPressed: onRetry,
          icon: const Icon(LucideIcons.refreshCw, size: 16),
          label: Text(t.errors.retry),
        ),
      ],
    );
  }
}
