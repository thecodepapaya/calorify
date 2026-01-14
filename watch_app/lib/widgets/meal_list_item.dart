import 'package:models/models.dart';
import 'package:utils/utils.dart';
import 'package:flutter/material.dart';

class MealListItem extends StatelessWidget {
  final MealInfo meal;

  const MealListItem({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      margin: const EdgeInsets.only(bottom: 4),
      color: colorScheme.surfaceVariant,
      child: ListTile(
        dense: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 4,
        ),
        title: Text(
          meal.mealName,
          style: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w500,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          '${meal.calories} kcal • ${meal.timestamp.formatted}',
          style: theme.textTheme.labelSmall?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
        trailing: Text(
          '${meal.calories}',
          style: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
