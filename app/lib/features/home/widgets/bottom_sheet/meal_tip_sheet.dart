import 'dart:typed_data';

import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/router/route_names.dart';
import 'package:models/models.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/features/edit_meal/edit_meal_screen.dart';
import 'package:calorify/features/history/widgets/meal_quantity.dart';
import 'package:calorify/features/history/widgets/meal_timestamp.dart';
import 'package:calorify/features/history/widgets/meal_type_indicator.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:calorify/features/home/widgets/daily_summary.dart';
import 'package:calorify/features/home/widgets/meal_image.dart';
import 'package:i18n/i18n.dart';
import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:calorify/shared_widgets/primary_button.dart';
import 'package:calorify/shared_widgets/secondary_button.dart';
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
    routeSettings: const RouteSettings(name: RouteNames.mealTipSheet),
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
    final mealId = widget.mealDetectionResult.mealInfo.localIdValue;
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
    return BaseBottomSheet(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget.mealDetectionResult.mealIdentified)
            ..._mealIdentified(context)
          else
            ..._mealUnIdentified(context),
          const SizedBox(height: 30),
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
            t.meal.ohNo,
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

    final canShowMealImage =
        widget.imageData != null ||
        (mealInfo.imageUrl != null && mealInfo.imageUrl!.isNotEmpty);

    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mealInfo.mealName,
                  style: textTheme.titleMedium?.copyWith(
                    color: colorScheme.onSurface,
                  ),
                ),
                Wrap(
                  children: [
                    MealTypeIndicator(mealType: mealInfo.mealType),
                    SizedBox(width: 8),
                    MealQuantityIndicator(quantity: mealInfo.mealQuantity),
                    SizedBox(width: 8),
                    MealTimestamp(
                      timestamp: mealInfo.timestampDateTime ?? DateTime.now(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 12),
          Row(
            children: [
              if (widget.mealDetectionResult.mealInfo.localIdValue != null)
                IconButton(
                  onPressed: _toggleFavorite,
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
            ],
          ),
        ],
      ),
      if (canShowMealImage) ...[
        SizedBox(height: 16),
        MealImage(imageBytes: widget.imageData, imageUrl: mealInfo.imageUrl),
      ],
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
          Icon(
            LucideIcons.flame,
            color: colorScheme.calorieIconColor,
            size: 32,
          ),
          SizedBox(width: 4),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: mealInfo.calories.toStringAsFixed(0),
                  style: textTheme.headlineLarge?.copyWith(
                    color: colorScheme.calorieIconColor,
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
        spacing: 8,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: NutrientTile(
              icon: LucideIcons.wheat,
              label: t.home.dailySummary.carbs,
              value: mealInfo.carbs.toDouble(),
              unit: 'g',
              iconColor: carbsIconColor,
            ),
          ),
          Expanded(
            child: NutrientTile(
              icon: LucideIcons.drumstick,
              label: t.home.dailySummary.protein,
              value: mealInfo.protein.toDouble(),
              unit: 'g',
              iconColor: proteinIconColor,
            ),
          ),
          Expanded(
            child: NutrientTile(
              icon: LucideIcons.egg,
              label: t.home.dailySummary.fat,
              value: mealInfo.fat.toDouble(),
              unit: 'g',
              iconColor: fatIconColor,
            ),
          ),
          Expanded(
            child: NutrientTile(
              icon: LucideIcons.leaf,
              label: t.home.dailySummary.fiber,
              value: mealInfo.fiber.toDouble(),
              unit: 'g',
              iconColor: fiberIconColor,
            ),
          ),
        ],
      ),
      if (widget.allowEdit && widget.mealDetectionResult.mealIdentified) ...[
        SizedBox(height: 20),
        if (mealInfo.localIdValue != null)
          Row(
            children: [
              Expanded(
                child: SecondaryButton(
                  onPressed: () async {
                    await _showDeleteConfirmation(
                      context,
                      mealInfo.localIdValue!,
                    );
                  },
                  text: t.meal.delete,
                  icon: LucideIcons.trash2,
                  analyticsEvent: AnalyticsEvent.mealDelete,
                ),
              ),
              const SizedBox(width: 12),
              if (widget.allowEdit)
                Expanded(
                  child: PrimaryButton(
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
                    text: t.meal.editMeal,
                    leadingIcon: LucideIcons.pencil,
                    analyticsEvent: AnalyticsEvent.mealSave,
                  ),
                ),
            ],
          )
        else
          PrimaryButton(
            analyticsEvent: AnalyticsEvent.mealSave,
            onPressed: () async {
              await logMeal(context, widget.mealDetectionResult.mealInfo);
              if (!context.mounted) return;
              Navigator.of(context).pop();
            },
            text: t.meal.saveMeal,
            leadingIcon: LucideIcons.save,
          ),
      ],
      SizedBox(height: 20),
    ];
  }

  Future<void> _showDeleteConfirmation(BuildContext context, int mealId) {
    final navigator = Navigator.of(context);
    final theme = Theme.of(context);
    return showDialog<void>(
      context: context,
      routeSettings: const RouteSettings(
        name: RouteNames.deleteMealConfirmationDialog,
      ),
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text(t.meal.deleteConfirmation.title),
          content: Text(t.meal.deleteConfirmation.message),
          actions: <Widget>[
            TextButton(
              child: Text(t.meal.deleteConfirmation.cancel),
              onPressed: () {
                Navigator.of(dialogContext).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: theme.colorScheme.error,
              ),
              child: Text(t.meal.deleteConfirmation.delete),
              onPressed: () async {
                await DatabaseService.databaseInterface.deleteMeal(mealId);
                if (!context.mounted) return;
                Navigator.of(dialogContext).pop();
                navigator.pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _toggleFavorite() async {
    final mealInfo = widget.mealDetectionResult.mealInfo;
    try {
      if (_isFavorite) {
        await DatabaseService.databaseInterface.removeFavoriteMeal(
          mealInfo.localIdValue!,
        );
        if (!mounted) return;
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(snack(t.meal.removedFromFavorites));
      } else {
        await DatabaseService.databaseInterface.addToFavorites(mealInfo);
        if (!mounted) return;
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(snack(t.meal.savedAsFavorite));
      }

      setState(() {
        _isFavorite = !_isFavorite;
      });
    } on Exception catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(snack(t.meal.couldNotUpdateFavorite(error: e)));
      }
    }
  }
}
