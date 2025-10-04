import 'dart:typed_data';

import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/models/meal_detection_result.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/features/edit_meal/edit_meal_screen.dart';
import 'package:calorify/features/history/widgets/meal_quantity.dart';
import 'package:calorify/features/history/widgets/meal_timestamp.dart';
import 'package:calorify/features/history/widgets/meal_type_indicator.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:calorify/features/home/widgets/daily_summary.dart';
import 'package:calorify/features/home/widgets/meal_image.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

Future<void> showMealTip({
  required BuildContext context,
  Uint8List? imageData,
  required MealDetectionResult mealDetectionResult,
  required bool allowEdit,
}) {
  return showModalBottomSheet(
    context: context,
    isDismissible: true,
    showDragHandle: true,
    enableDrag: true,
    isScrollControlled: true,
    builder:
        (context) => _MealTip(
          mealDetectionResult: mealDetectionResult,
          imageData: imageData,
          allowEdit: allowEdit,
        ),
  );
}

class _MealTip extends StatefulWidget {
  const _MealTip({
    required this.mealDetectionResult,
    required this.imageData,
    this.allowEdit = false,
  });

  final MealDetectionResult mealDetectionResult;
  final Uint8List? imageData;
  final bool allowEdit;

  @override
  State<_MealTip> createState() => _MealTipState();
}

class _MealTipState extends State<_MealTip> {
  bool _isFavorite = false;

  @override
  void initState() {
    super.initState();
    if (widget.mealDetectionResult.mealIdentified) {
      _checkIfFavorite();
    }
  }

  Future<void> _checkIfFavorite() async {
    final mealId = widget.mealDetectionResult.mealInfo.id;
    if (mealId == null) return;
    final isFavorite = await DatabaseService.databaseInterface.isFavoriteMeal(
      mealId,
    );
    if (mounted) {
      setState(() {
        _isFavorite = isFavorite;
      });
    }
  }

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
          if (widget.mealDetectionResult.mealIdentified)
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
        widget.mealDetectionResult.tip,
        style: textTheme.bodyMedium?.copyWith(color: colorScheme.onSurface),
      ),
      SizedBox(height: 12),
      MealImage(imageBytes: widget.imageData),
    ];
  }

  List<Widget> _mealIdentified(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;
    final MealInfo mealInfo = widget.mealDetectionResult.mealInfo;

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
                  MealTimestamp(timestamp: mealInfo.timestamp),
                ],
              ),
            ],
          ),
          SizedBox(width: 12),
          Row(
            children: [
              IconButton(
                onPressed:
                    widget.mealDetectionResult.mealInfo.id == null
                        ? null
                        : _toggleFavorite,
                padding: EdgeInsets.zero,
                visualDensity: VisualDensity.compact,
                icon: Icon(
                  LucideIcons.star,
                  size: 24,
                  color:
                      _isFavorite
                          ? colorScheme.tertiary
                          : colorScheme.onSurface.withValues(alpha: 0.5),
                ),
              ),
              if (widget.allowEdit)
                IconButton(
                  onPressed: () {
                    final navigator = Navigator.of(context);
                    final parentContext = navigator.context;
                    navigator.pop();
                    showEditMealSheet(
                      parentContext,
                      mealInfo: mealInfo,
                      imageData: widget.imageData,
                    );
                  },
                  padding: EdgeInsets.zero,
                  visualDensity: VisualDensity.compact,
                  icon: Icon(
                    LucideIcons.pencil,
                    size: 24,
                    color: colorScheme.onSurface.withValues(alpha: 0.5),
                  ),
                ),
            ],
          ),
        ],
      ),
      SizedBox(height: 16),
      MealImage(imageBytes: widget.imageData, imageUrl: mealInfo.imageUrl),
      if (widget.mealDetectionResult.tip.isNotEmpty) ...[
        SizedBox(height: 16),
        Text(
          widget.mealDetectionResult.tip,
          style: textTheme.bodyMedium?.copyWith(color: colorScheme.onSurface),
        ),
      ],
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
      if (widget.allowEdit && widget.mealDetectionResult.mealIdentified) ...[
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () async {
            await logMeal(context, widget.mealDetectionResult.mealInfo);
            if (!context.mounted) return;
            Navigator.of(context).pop();
          },
          style: ButtonStyle(
            minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50)),
            backgroundColor: WidgetStatePropertyAll(colorScheme.primary),
            foregroundColor: WidgetStatePropertyAll(colorScheme.onPrimary),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: globalRadius),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(LucideIcons.save),
              SizedBox(width: 6),
              Text(
                'Save Meal',
                style: textTheme.bodyLarge?.copyWith(
                  color: colorScheme.onPrimary,
                ),
              ),
            ],
          ),
        ),
      ],
      SizedBox(height: 20),
    ];
  }

  Future<void> _toggleFavorite() async {
    final mealInfo = widget.mealDetectionResult.mealInfo;
    try {
      if (_isFavorite) {
        await DatabaseService.databaseInterface.removeFavoriteMeal(
          mealInfo.id!,
        );
        if (!mounted) return;
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(snack('Removed from favorites!'));
      } else {
        await DatabaseService.databaseInterface.addToFavorites(mealInfo);
        if (!mounted) return;
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(snack('Meal saved as favorite!'));
      }

      setState(() {
        _isFavorite = !_isFavorite;
      });
    } on Exception catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(snack('Could not update favorite: $e'));
      }
    }
  }
}
