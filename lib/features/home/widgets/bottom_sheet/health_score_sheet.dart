import 'package:calorify/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

Future<void> showHealthScoreReason({
  required BuildContext context,
  required int healthScore,
  required String reason,
}) {
  return showModalBottomSheet(
    context: context,
    showDragHandle: true,
    builder: (context) => _HealthScoreSheet(
      healthScore: healthScore,
      reason: reason,
    ),
  );
}

class _HealthScoreSheet extends StatelessWidget {
  const _HealthScoreSheet({
    required this.healthScore,
    required this.reason,
  });

  final int healthScore;
  final String reason;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    Color scoreColor;
    String scoreText;
    IconData scoreIcon;

    switch (healthScore) {
      case 1:
        scoreColor = colorScheme.error;
        scoreText = 'Unhealthy';
        scoreIcon = LucideIcons.frown;
        break;
      case 3:
        scoreColor = Colors.green;
        scoreText = 'Healthy';
        scoreIcon = LucideIcons.smile;
        break;
      case 2:
      default:
        scoreColor = Colors.orange;
        scoreText = 'Neutral';
        scoreIcon = LucideIcons.meh;
        break;
    }

    return Container(
      padding: globalSheetPadding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(scoreIcon, color: scoreColor, size: 32),
              const SizedBox(width: 12),
              Text(
                'Health Score: $scoreText',
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: scoreColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            'Why this score?',
            style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
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
            'Note: This score is an AI estimate based on the identified ingredients and nutritional density. Always consult a professional for dietary advice.',
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

