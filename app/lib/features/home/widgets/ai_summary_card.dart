import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/models/ai_summary_result.dart';
import 'package:calorify/core/repositories/food_repository.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class AiSummaryCard extends StatefulWidget {
  const AiSummaryCard({super.key});

  @override
  State<AiSummaryCard> createState() => _AiSummaryCardState();
}

class _AiSummaryCardState extends State<AiSummaryCard> {
  late final Future<AiSummaryResult?> _summaryFuture;

  @override
  void initState() {
    super.initState();
    _summaryFuture = FoodRepository().getAiSummary();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<AiSummaryResult?>(
      future: _summaryFuture,
      builder: (context, snapshot) {
        // Don't show card while loading or on error — only show when we have data
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SizedBox.shrink();
        }

        // No summary from server → don't show the card
        if (!snapshot.hasData || snapshot.data == null) {
          return const SizedBox.shrink();
        }

        final summary = snapshot.data!;
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
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Container(
      margin: globalMargin,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: globalRadius,
        border: Border.all(color: colorScheme.outline),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: double.infinity),
          Row(
            children: [
              Icon(LucideIcons.sparkles, size: 18, color: colorScheme.primary),
              const SizedBox(width: 8),
              Text(
                t.home.aiSummary.title,
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: colorScheme.onSurface,
                ),
              ),
            ],
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
