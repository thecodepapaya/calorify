import 'package:calorify/core/models/health_score.dart';
import 'package:calorify/i18n/strings.g.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:calorify/shared_widgets/health_score_indicator.dart';
import 'package:flutter/material.dart';

Future<void> showHealthScoreReason({
  required BuildContext context,
  required HealthScore healthScore,
  required String reason,
}) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    builder:
        (context) =>
            _HealthScoreSheet(healthScore: healthScore, reason: reason),
  );
}

class _HealthScoreSheet extends StatelessWidget {
  const _HealthScoreSheet({required this.healthScore, required this.reason});

  final HealthScore healthScore;
  final String reason;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final scoreColor = healthScore.color(context);
    final scoreText = healthScore.displayText;

    return BaseBottomSheet(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(healthScore.icon, color: scoreColor, size: 32),
              const SizedBox(width: 12),
              Text(
                '${t.healthScore.title}: $scoreText',
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: scoreColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            t.healthScore.whyThisScore,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            reason,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: colorScheme.onSurface.withValues(alpha: 0.8),
            ),
          ),
          const SizedBox(height: 32),
          Text(
            t.healthScore.note,
            style: theme.textTheme.bodySmall?.copyWith(
              fontStyle: FontStyle.italic,
              color: colorScheme.onSurface.withValues(alpha: 0.6),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
