import 'dart:typed_data';

import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/router/route_names.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/features/edit_meal/edit_meal_screen.dart';
import 'package:calorify/features/history/widgets/meal_quantity.dart';
import 'package:calorify/features/history/widgets/meal_timestamp.dart';
import 'package:calorify/features/history/widgets/meal_type_indicator.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:calorify/features/home/widgets/daily_summary.dart';
import 'package:calorify/features/home/widgets/meal_image.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:calorify/shared_widgets/primary_button.dart';
import 'package:calorify/shared_widgets/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';

Future<void> showMealTip({
  required BuildContext context,
  MealDetectionResult? mealDetectionResult,
  LoggedMeal? loggedMeal,
  Uint8List? imageBytes,
  bool previewOnly = false,
}) {
  final parentContext = context;
  return showModalBottomSheet(
    context: context,
    isDismissible: true,
    showDragHandle: true,
    enableDrag: true,
    isScrollControlled: true,
    routeSettings: const RouteSettings(name: RouteNames.mealTipSheet),
    builder:
        (sheetContext) => _MealTip(
          parentContext: parentContext,
          mealDetectionResult: mealDetectionResult,
          loggedMeal: loggedMeal,
          imageBytes: imageBytes,
          previewOnly: previewOnly,
        ),
  );
}

class _MealTip extends StatelessWidget {
  _MealTip({
    required this.parentContext,
    this.mealDetectionResult,
    this.loggedMeal,
    this.imageBytes,
    this.previewOnly = false,
  }) : assert(mealDetectionResult != null || loggedMeal != null),
       meal = mealDetectionResult?.meal ?? loggedMeal?.meal ?? Meal(),
       metadata =
           mealDetectionResult?.metadata ??
           loggedMeal?.metadata ??
           MealMetadata();

  final BuildContext parentContext;

  final Meal meal;
  final MealMetadata metadata;
  final MealDetectionResult? mealDetectionResult;
  final LoggedMeal? loggedMeal;
  final Uint8List? imageBytes;
  final bool previewOnly;

  @override
  Widget build(BuildContext context) {
    final isMealUnidentified =
        (mealDetectionResult == null && loggedMeal == null) ||
        mealDetectionResult?.mealIdentified == false;

    return BaseBottomSheet(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isMealUnidentified)
            ..._mealUnidentified(context)
          else
            ..._mealIdentified(context),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  List<Widget> _mealUnidentified(BuildContext context) {
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
      if (mealDetectionResult?.tip.isNotEmpty ?? false) ...[
        Text(
          mealDetectionResult!.tip,
          style: textTheme.bodyMedium?.copyWith(color: colorScheme.onSurface),
        ),
        SizedBox(height: 12),
      ],
      if (imageBytes != null || metadata.imageUrl.isNotEmpty) ...[
        MealImage(imageBytes: imageBytes, imageUrl: metadata.imageUrl),
        const SizedBox(height: 12),
      ],
    ];
  }

  List<Widget> _mealIdentified(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    final canShowMealImage = imageBytes != null || metadata.imageUrl.isNotEmpty;
    final canShowMealTip = mealDetectionResult?.tip.isNotEmpty ?? false;

    final timestamp = loggedMeal?.dateTime ?? DateTime.now();

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
                  meal.name,
                  style: textTheme.titleMedium?.copyWith(
                    color: colorScheme.onSurface,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Wrap(
                  children: [
                    MealTypeIndicator(type: meal.type),
                    SizedBox(width: 8),
                    MealQuantityIndicator(quantity: meal.quantity),
                    SizedBox(width: 8),
                    MealTimestamp(timestamp: timestamp),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 12),
          if (loggedMeal != null) _FavoriteMealStar(loggedMeal: loggedMeal!),
        ],
      ),
      if (canShowMealImage) ...[
        SizedBox(height: 16),
        MealImage(imageBytes: imageBytes, imageUrl: metadata.imageUrl),
      ],
      if (canShowMealTip) ...[
        SizedBox(height: 16),
        Text(
          mealDetectionResult?.tip ?? '',
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
                  text: meal.macros.calories.toStringAsFixed(0),
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
              value: meal.macros.carbs.toDouble(),
              unit: 'g',
              iconColor: carbsIconColor,
            ),
          ),
          Expanded(
            child: NutrientTile(
              icon: LucideIcons.drumstick,
              label: t.home.dailySummary.protein,
              value: meal.macros.protein.toDouble(),
              unit: 'g',
              iconColor: proteinIconColor,
            ),
          ),
          Expanded(
            child: NutrientTile(
              icon: LucideIcons.egg,
              label: t.home.dailySummary.fat,
              value: meal.macros.fat.toDouble(),
              unit: 'g',
              iconColor: fatIconColor,
            ),
          ),
          Expanded(
            child: NutrientTile(
              icon: LucideIcons.leaf,
              label: t.home.dailySummary.fiber,
              value: meal.macros.fiber.toDouble(),
              unit: 'g',
              iconColor: fiberIconColor,
            ),
          ),
        ],
      ),
      SizedBox(height: 20),
      mealDetectionResult != null
          ? (previewOnly
              ? SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: Icon(LucideIcons.x, size: 20),
                  label: Text(t.common.close),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                ),
              )
              : PrimaryButton(
                analyticsEvent: AnalyticsEvent.mealSave,
                onPressed: () async {
                  await logMeal(
                    context,
                    mealDetectionResult!.meal,
                    parentContext: parentContext,
                  );
                  if (!context.mounted) return;
                  Navigator.of(context).pop();
                },
                text: t.meal.saveMeal,
                leadingIcon: LucideIcons.save,
              ))
          : Row(
            children: [
              if (loggedMeal != null)
                Expanded(
                  child: SecondaryButton(
                    onPressed: () {
                      _showDeleteConfirmation(context, loggedMeal!.clientId);
                    },
                    text: t.meal.delete,
                    icon: LucideIcons.trash2,
                    analyticsEvent: AnalyticsEvent.mealDelete,
                  ),
                ),
              const SizedBox(width: 12),
              Expanded(
                child: PrimaryButton(
                  onPressed: () {
                    final navigator = Navigator.of(context);
                    final parentContext = navigator.context;
                    navigator.pop();
                    showEditMealSheet(
                      parentContext,
                      meal: meal,
                      loggedMeal: loggedMeal,
                    );
                  },
                  text: t.meal.editMeal,
                  leadingIcon: LucideIcons.pencil,
                  analyticsEvent: AnalyticsEvent.mealEdit,
                ),
              ),
            ],
          ),
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
}

class _FavoriteMealStar extends StatefulWidget {
  _FavoriteMealStar({required this.loggedMeal})
    : super(key: ValueKey<int>(loggedMeal.clientId));

  final LoggedMeal loggedMeal;

  @override
  State<_FavoriteMealStar> createState() => _FavoriteMealStarState();
}

class _FavoriteMealStarState extends State<_FavoriteMealStar> {
  bool _isFavorite = false;

  @override
  initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _checkIfFavorite();
    });
  }

  Future<void> _checkIfFavorite() async {
    final mealId = widget.loggedMeal.clientId;
    final isFavorite = await DatabaseService.databaseInterface.isFavoriteMeal(
      mealId,
    );

    if (!mounted) return;

    setState(() {
      _isFavorite = isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;

    return IconButton(
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
    );
  }

  Future<void> _toggleFavorite() async {
    try {
      if (_isFavorite) {
        await DatabaseService.databaseInterface.removeFavoriteMeal(
          widget.loggedMeal.clientId,
        );
        Analytics.instance.logEvent(AnalyticsEvent.favoriteRemove);
        if (!mounted) return;
        showFlushbar(t.meal.removedFromFavorites, context: context);
      } else {
        await DatabaseService.databaseInterface.addToFavorites(
          widget.loggedMeal,
        );
        Analytics.instance.logEvent(AnalyticsEvent.favoriteAdd);
        if (!mounted) return;
        showFlushbar(t.meal.savedAsFavorite, context: context);
      }

      setState(() {
        _isFavorite = !_isFavorite;
      });
    } on Exception catch (e) {
      if (mounted) {
        showFlushbar(t.meal.couldNotUpdateFavorite(error: e), context: context);
      }
    }
  }
}
