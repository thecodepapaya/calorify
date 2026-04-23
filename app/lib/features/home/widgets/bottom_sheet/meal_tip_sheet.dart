import 'dart:typed_data';

import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/models/meal_analysis_v2.dart';
import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/core/router/route_names.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/features/edit_meal/edit_meal_screen.dart';
import 'package:calorify/features/history/widgets/meal_quantity.dart';
import 'package:calorify/features/history/widgets/meal_timestamp.dart';
import 'package:calorify/features/history/widgets/meal_type_indicator.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_analysis_sheet.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_feedback_sheet.dart';
import 'package:calorify/features/home/widgets/daily_summary.dart';
import 'package:calorify/features/home/widgets/meal_image.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:calorify/shared_widgets/primary_button.dart';
import 'package:calorify/shared_widgets/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';

Future<void> showMealTip({
  required BuildContext context,
  MealDetectionResult? mealDetectionResult,
  LoggedMeal? loggedMeal,
  Uint8List? imageBytes,
  V2MealAnalysisContext? v2Analysis,
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
          v2Analysis: v2Analysis,
          previewOnly: previewOnly,
        ),
  );
}

class _MealTip extends StatefulWidget {
  const _MealTip({
    required this.parentContext,
    this.mealDetectionResult,
    this.loggedMeal,
    this.imageBytes,
    this.v2Analysis,
    this.previewOnly = false,
  }) : assert(mealDetectionResult != null || loggedMeal != null);

  final BuildContext parentContext;
  final MealDetectionResult? mealDetectionResult;
  final LoggedMeal? loggedMeal;
  final Uint8List? imageBytes;
  final V2MealAnalysisContext? v2Analysis;
  final bool previewOnly;

  @override
  State<_MealTip> createState() => _MealTipState();
}

class _MealTipState extends State<_MealTip> {
  MealDetectionResult? _mealDetectionResult;
  V2MealAnalysisContext? _v2Analysis;
  bool _isFeedbackSubmitting = false;
  bool? _feedbackValue;

  Meal get meal =>
      _mealDetectionResult?.meal ?? widget.loggedMeal?.meal ?? Meal();

  MealMetadata get metadata =>
      _mealDetectionResult?.metadata ??
      widget.loggedMeal?.metadata ??
      MealMetadata();

  bool get _canShowFeedback =>
      _v2Analysis != null &&
      _mealDetectionResult != null &&
      widget.loggedMeal == null &&
      !_v2Analysis!.isRevised;

  @override
  void initState() {
    super.initState();
    _mealDetectionResult = widget.mealDetectionResult;
    _v2Analysis = widget.v2Analysis;
    if (_canShowFeedback) {
      Analytics.instance.logEvent(AnalyticsEvent.mealFeedbackShown);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isMealUnidentified =
        (_mealDetectionResult == null && widget.loggedMeal == null) ||
        _mealDetectionResult?.mealIdentified == false;

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
      if (_mealDetectionResult?.tip.isNotEmpty ?? false) ...[
        Text(
          _mealDetectionResult!.tip,
          style: textTheme.bodyMedium?.copyWith(color: colorScheme.onSurface),
        ),
        SizedBox(height: 12),
      ],
      if (widget.imageBytes != null || metadata.imageUrl.isNotEmpty) ...[
        MealImage(imageBytes: widget.imageBytes, imageUrl: metadata.imageUrl),
        const SizedBox(height: 12),
      ],
    ];
  }

  List<Widget> _mealIdentified(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    final canShowMealImage =
        widget.imageBytes != null || metadata.imageUrl.isNotEmpty;
    final canShowMealTip = _mealDetectionResult?.tip.isNotEmpty ?? false;

    final timestamp = widget.loggedMeal?.dateTime ?? DateTime.now();

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
                  style: textTheme.titleLarge?.copyWith(
                    color: colorScheme.onSurface,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: [
                    MealTypeIndicator(type: meal.type),
                    MealQuantityIndicator(quantity: meal.quantity),
                    MealTimestamp(timestamp: timestamp),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 12),
          if (widget.loggedMeal != null || _canShowFeedback)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (widget.loggedMeal != null)
                  _FavoriteMealStar(loggedMeal: widget.loggedMeal!),
                if (_canShowFeedback) ...[
                  IconButton(
                    onPressed:
                        _isFeedbackSubmitting || _feedbackValue != null
                            ? null
                            : _submitPositiveFeedback,
                    icon: Icon(
                      LucideIcons.thumbsUp,
                      size: 22,
                      color:
                          _feedbackValue == true
                              ? colorScheme.primary
                              : colorScheme.onSurface.withValues(alpha: 0.5),
                    ),
                  ),
                  IconButton(
                    onPressed:
                        _isFeedbackSubmitting || _feedbackValue != null
                            ? null
                            : _submitNegativeFeedback,
                    icon: Icon(
                      LucideIcons.thumbsDown,
                      size: 22,
                      color:
                          _feedbackValue == false
                              ? colorScheme.error
                              : colorScheme.onSurface.withValues(alpha: 0.5),
                    ),
                  ),
                ],
              ],
            ),
        ],
      ),
      if (canShowMealImage) ...[
        SizedBox(height: 16),
        MealImage(imageBytes: widget.imageBytes, imageUrl: metadata.imageUrl),
      ],
      if (canShowMealTip) ...[
        SizedBox(height: 16),
        Text(
          _mealDetectionResult?.tip ?? '',
          style: textTheme.bodyMedium?.copyWith(color: colorScheme.onSurface),
        ),
      ],
      const SizedBox(height: 16),
      Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        decoration: BoxDecoration(
          color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
          borderRadius: globalRadius,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  LucideIcons.flame,
                  color: colorScheme.calorieIconColor,
                  size: 32,
                ),
                const SizedBox(width: 4),
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
            const SizedBox(height: 16),
            Row(
              spacing: 8,
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
          ],
        ),
      ),
      const SizedBox(height: 20),
      _mealDetectionResult != null
          ? (widget.previewOnly
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
                    _mealDetectionResult!.meal,
                    parentContext: widget.parentContext,
                    analysisId: _v2Analysis?.result.analysisId,
                  );
                  if (!context.mounted) return;
                  Navigator.of(context).pop();
                },
                text: t.meal.saveMeal,
                leadingIcon: LucideIcons.save,
              ))
          : Row(
            children: [
              if (widget.loggedMeal != null)
                Expanded(
                  child: SecondaryButton(
                    onPressed: () {
                      _showDeleteConfirmation(
                        context,
                        widget.loggedMeal!.clientId,
                      );
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
                      loggedMeal: widget.loggedMeal,
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

  Future<void> _submitPositiveFeedback() async {
    final analysisId = _v2Analysis?.result.analysisId;
    if (analysisId == null || analysisId.isEmpty) return;

    setState(() {
      _isFeedbackSubmitting = true;
    });

    try {
      await ProviderScope.containerOf(
        context,
        listen: false,
      ).read(foodRepositoryProvider).submitPositiveFeedbackV2(
        analysisId: analysisId,
      );
      if (!mounted) return;
      Analytics.instance.logEvent(AnalyticsEvent.mealFeedbackThumbsUp);
      showFlushbar('Thanks for the feedback!', context: context);
      setState(() {
        _feedbackValue = true;
      });
    } on Exception catch (error) {
      if (!mounted) return;
      showFlushbar('$error', context: context);
    } finally {
      if (mounted) {
        setState(() {
          _isFeedbackSubmitting = false;
        });
      }
    }
  }

  Future<void> _submitNegativeFeedback() async {
    final analysisId = _v2Analysis?.result.analysisId;
    if (analysisId == null || analysisId.isEmpty) return;

    Analytics.instance.logEvent(AnalyticsEvent.mealFeedbackThumbsDownOpened);
    final feedbackInput = await showV2MealFeedbackSheet(context);
    if (!mounted || feedbackInput == null) return;

    setState(() {
      _isFeedbackSubmitting = true;
      _feedbackValue = false;
    });

    try {
      final nextContext = await resolveV2MealAnalysisFlow(
        context: context,
        startAnalysis:
            () => ProviderScope.containerOf(
              context,
              listen: false,
            ).read(foodRepositoryProvider).reanalyzeV2(
          analysisId: analysisId,
          issues: feedbackInput.issues,
          otherText: feedbackInput.otherText,
        ),
        imageBytes: widget.imageBytes,
        imageUrl: _v2Analysis?.imageUrl,
        textDescription: _v2Analysis?.textDescription,
      );

      if (!mounted) return;
      if (nextContext == null) {
        throw Exception('No revised result received');
      }

      Analytics.instance.logEvent(AnalyticsEvent.mealFeedbackThumbsDownSubmitted);
      Analytics.instance.logEvent(AnalyticsEvent.mealReanalysisSucceeded);

      final updatedContext = nextContext.copyWith(isRevised: true);

      setState(() {
        _v2Analysis = updatedContext;
        _mealDetectionResult = updatedContext.toMealDetectionResult();
        _feedbackValue = null;
      });

      showFlushbar('Updated the meal analysis based on your feedback.', context: context);
    } on Exception catch (error) {
      if (!mounted) return;
      Analytics.instance.logEvent(AnalyticsEvent.mealReanalysisFailed);
      setState(() {
        _feedbackValue = null;
      });
      showFlushbar('$error', context: context);
    } finally {
      if (mounted) {
        setState(() {
          _isFeedbackSubmitting = false;
        });
      }
    }
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
                await ProviderScope.containerOf(
                  context,
                  listen: false,
                ).read(databaseInterfaceProvider).deleteMeal(mealId);
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
    final isFavorite = await ProviderScope.containerOf(
      context,
      listen: false,
    ).read(databaseInterfaceProvider).isFavoriteMeal(mealId);

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
    final database = ProviderScope.containerOf(
      context,
      listen: false,
    ).read(databaseInterfaceProvider);
    try {
      if (_isFavorite) {
        await database.removeFavoriteMeal(widget.loggedMeal.clientId);
        Analytics.instance.logEvent(AnalyticsEvent.favoriteRemove);
        if (!mounted) return;
        showFlushbar(t.meal.removedFromFavorites, context: context);
      } else {
        await database.addToFavorites(widget.loggedMeal);
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
