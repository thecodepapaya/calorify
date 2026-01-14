import 'package:flutter/material.dart';

class CalorieSummaryCard extends StatelessWidget {
  final int totalCalories;
  final int goal;

  const CalorieSummaryCard({
    super.key,
    required this.totalCalories,
    required this.goal,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final progress = (totalCalories / goal).clamp(0.0, 1.0);

    return Card(
      color: colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Calories',
              style: theme.textTheme.labelMedium?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$totalCalories',
                  style: theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorScheme.primary,
                  ),
                ),
                Text(
                  '/ $goal',
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: progress,
                backgroundColor: colorScheme.surfaceVariant,
                valueColor: AlwaysStoppedAnimation<Color>(
                  progress > 1.0 ? colorScheme.error : colorScheme.primary,
                ),
                minHeight: 6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
