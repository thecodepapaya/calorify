import 'dart:typed_data';

import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/features/history/widgets/meal_quantity.dart';
import 'package:calorify/features/history/widgets/meal_timestamp.dart';
import 'package:calorify/features/history/widgets/meal_type_indicator.dart';
import 'package:calorify/features/home/widgets/daily_summary.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

Future<void> showMealTip(
  BuildContext context,
  Uint8List imageData,
  MealInfo mealInfo,
) {
  return showModalBottomSheet(
    context: context,
    isDismissible: true,
    showDragHandle: true,
    enableDrag: true,
    isScrollControlled: true,
    builder:
        (context) =>
            _UnidentifiedMealTip(mealInfo: mealInfo, imageData: imageData),
  );
}

class _UnidentifiedMealTip extends StatelessWidget {
  const _UnidentifiedMealTip({required this.mealInfo, required this.imageData});

  final MealInfo mealInfo;
  final Uint8List imageData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: globalSheetPadding,
      decoration: BoxDecoration(borderRadius: globalRadius),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (mealInfo.mealIdentified)
            ..._mealIdentified(context)
          else
            ..._mealUnIdentified(context),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  List<Widget> _mealUnIdentified(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return [
      Row(
        children: [
          Icon(LucideIcons.searchX, color: colorScheme.onSurface, size: 28),
          SizedBox(width: 6),
          Text(
            'Oh no!',
            style: textTheme.headlineSmall?.copyWith(
              color: colorScheme.onSurface,
            ),
          ),
        ],
      ),
      SizedBox(height: 16),
      Text(
        mealInfo.tip,
        style: textTheme.bodyMedium?.copyWith(color: colorScheme.onSurface),
      ),
      SizedBox(height: 12),
      Container(
        decoration: BoxDecoration(
          borderRadius: globalRadius,
          image: DecorationImage(
            image: MemoryImage(imageData),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        height: 200,
      ),
    ];
  }

  List<Widget> _mealIdentified(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return [
      Text(
        mealInfo.mealName,
        style: textTheme.titleMedium?.copyWith(color: colorScheme.onSurface),
      ),
      Row(
        children: [
          MealTypeIndicator(mealType: mealInfo.mealType),
          SizedBox(width: 8),
          MealQuantityIndicator(quantity: mealInfo.mealQuantity),
          SizedBox(width: 8),
          MealTimestamp(timestamp: DateTime.now()),
        ],
      ),
      SizedBox(height: 16),
      Container(
        decoration: BoxDecoration(
          borderRadius: globalRadius,
          image: DecorationImage(
            image: MemoryImage(imageData),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        height: 200,
      ),
      SizedBox(height: 16),
      Text(
        mealInfo.tip,
        style: textTheme.bodyMedium?.copyWith(color: colorScheme.onSurface),
      ),
      SizedBox(height: 16),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(LucideIcons.flame, color: calorieIconColor, size: 32),
          SizedBox(width: 4),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: mealInfo.calories.toStringAsFixed(0),
                  style: textTheme.headlineLarge?.copyWith(
                    color: calorieIconColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' kcal',
                  style: textTheme.titleLarge?.copyWith(
                    color: colorScheme.onSurface.withValues(alpha: 0.7),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      SizedBox(height: 16),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NutrientTile(
            icon: LucideIcons.wheat,
            label: 'Carbs',
            value: mealInfo.carbs.toDouble(),
            unit: 'g',
            iconColor: carbsIconColor,
            width: 85,
          ),
          NutrientTile(
            icon: LucideIcons.drumstick,
            label: 'Protein',
            value: mealInfo.protein.toDouble(),
            unit: 'g',
            iconColor: proteinIconColor,
            width: 85,
          ),
          NutrientTile(
            icon: LucideIcons.egg,
            label: 'Fat',
            value: mealInfo.fat.toDouble(),
            unit: 'g',
            iconColor: fatIconColor,
            width: 85,
          ),
          NutrientTile(
            icon: LucideIcons.leaf,
            label: 'Fiber',
            value: mealInfo.fiber.toDouble(),
            unit: 'g',
            iconColor: fiberIconColor,
            width: 85,
          ),
        ],
      ),
    ];
  }
}
