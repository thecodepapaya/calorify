import 'package:calorify/core/models/ai_summary_result.dart';
import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/shared_widgets/app_card.dart';
import 'package:calorify/shared_widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class AiSummaryCard extends ConsumerWidget {
  const AiSummaryCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final summaryAsync = ref.watch(aiSummaryProvider);

    return summaryAsync.when(
      loading: () => const SizedBox.shrink(),
      error: (error, _) {
        debugPrint('[AiSummaryCard] Failed to load AI summary: $error');
        return const SizedBox.shrink();
      },
      data: (summary) {
        if (summary == null) {
          return const SizedBox.shrink();
        }

        return _SummaryCardContent(summary: summary);
      },
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
          Text(
            summary.summary,
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
