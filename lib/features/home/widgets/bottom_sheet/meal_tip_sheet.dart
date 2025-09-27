import 'dart:typed_data';
import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/models/meal_detection_result.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/features/history/widgets/meal_quantity.dart';
import 'package:calorify/features/history/widgets/meal_timestamp.dart';
import 'package:calorify/features/history/widgets/meal_type_indicator.dart';
import 'package:calorify/features/home/widgets/daily_summary.dart';
import 'package:calorify/features/home/widgets/meal_image.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

Future<void> showMealTip(
  BuildContext context,
  Uint8List? imageData,
  MealDetectionResult mealDetectionResult,
) {
  return showModalBottomSheet(
    context: context,
    isDismissible: true,
    showDragHandle: true,
    enableDrag: true,
    isScrollControlled: true,
    builder:
        (context) => _UnidentifiedMealTip(
          mealDetectionResult: mealDetectionResult,
          imageData: imageData,
        ),
  );
}

class _UnidentifiedMealTip extends StatelessWidget {
  const _UnidentifiedMealTip({
    required this.mealDetectionResult,
    required this.imageData,
  });

  final MealDetectionResult mealDetectionResult;
  final Uint8List? imageData;

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
          if (mealDetectionResult.mealIdentified)
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
        mealDetectionResult.tip,
        style: textTheme.bodyMedium?.copyWith(color: colorScheme.onSurface),
      ),
      SizedBox(height: 12),
      MealImage(imageBytes: imageData),
    ];
  }

  List<Widget> _mealIdentified(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;
    final MealInfo mealInfo = mealDetectionResult.mealInfo;

    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mealInfo.mealName,
                style: textTheme.titleMedium?.copyWith(
                  color: colorScheme.onSurface,
                ),
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
            ],
          ),
          SizedBox(width: 12),
          IconButton(
            onPressed: () {},
            padding: EdgeInsets.zero,
            visualDensity: VisualDensity.compact,
            icon: Icon(LucideIcons.star, size: 24, color: colorScheme.tertiary),
          ),
        ],
      ),
      SizedBox(height: 16),
      MealImage(imageBytes: imageData),
      SizedBox(height: 16),
      Text(
        mealDetectionResult.tip,
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
      SizedBox(height: 20),
      Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                context.router.push(
                  EditMealRoute(mealInfo: mealInfo, imageData: imageData),
                );
              },
              child: Text('Edit'),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: ElevatedButton(
              onPressed: () async {
                try {
                  await appDb
                      .into(appDb.favoriteMealTable)
                      .insert(
                        FavoriteMealTableCompanion.insert(
                          mealName: mealInfo.mealName,
                          mealQuantity: mealInfo.mealQuantity,
                          mealType: mealInfo.mealType.toString(),
                          calories: mealInfo.calories.round(),
                          protein: mealInfo.protein.round(),
                          carbs: mealInfo.carbs.round(),
                          fat: mealInfo.fat.round(),
                          fiber: mealInfo.fiber.round(),
                          timestamp: DateTime.now(),
                        ),
                      );
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Meal saved as favorite!')),
                    );
                    Navigator.of(context).pop();
                  }
                } on Exception catch (e) {
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Could not save favorite: $e')),
                    );
                  }
                }
              },
              child: Text('Save as Favorite'),
            ),
          ),
        ],
      ),
    ];
  }
}
