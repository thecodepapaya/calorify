import 'package:calorify/core/models/ai_summary_result.dart';
import 'package:calorify/core/repositories/food_repository.dart';
import 'package:calorify/shared_widgets/app_card.dart';
import 'package:calorify/shared_widgets/section_header.dart';
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
        // Don't show card while loading — only show when we have data
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SizedBox.shrink();
        }

        // Log errors for debugging but don't surface them to the user
        if (snapshot.hasError) {
          debugPrint('[AiSummaryCard] Failed to load AI summary: ${snapshot.error}');
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
