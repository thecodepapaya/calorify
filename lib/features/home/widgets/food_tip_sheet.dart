import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:flutter/material.dart';

Future<void> showMealTip(BuildContext context, MealInfo mealInfo) {
  return showModalBottomSheet(
    context: context,
    isDismissible: true,
    showDragHandle: true,
    enableDrag: true,
    builder: (context) => _UnidentifiedMealTip(mealInfo: mealInfo),
  );
}

class _UnidentifiedMealTip extends StatelessWidget {
  const _UnidentifiedMealTip({required this.mealInfo});

  final MealInfo mealInfo;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: globalRadius,
        color: colorScheme.surface,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (!mealInfo.mealIdentified)
            Text(
              'Oh no!',
              style: textTheme.titleLarge?.copyWith(
                color: colorScheme.onSurface,
              ),
            ),
          SizedBox(height: 8),
          Text(
            mealInfo.tip,
            style: textTheme.bodyMedium?.copyWith(color: colorScheme.onSurface),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
