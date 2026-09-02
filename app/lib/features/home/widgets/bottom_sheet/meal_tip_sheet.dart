import 'dart:typed_data';

import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:models/models.dart';
import 'package:calorify/core/providers/home_providers.dart'
    hide databaseInterfaceProvider;
import 'package:calorify/core/router/route_names.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/features/edit_meal/edit_meal_screen.dart';
import 'package:calorify/features/history/widgets/meal_quantity.dart';
import 'package:calorify/features/history/widgets/meal_timestamp.dart';
import 'package:calorify/features/history/widgets/meal_type_indicator.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:calorify/features/home/widgets/daily_summary.dart';
import 'package:calorify/features/home/widgets/meal_image.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:calorify/shared_widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:widgets/widgets.dart';

enum MealDetailsSheetPurpose {
  mealAddition,
  historyEdit,
  favorites,
  debugPreview,
}

const _calorieRangeSpreadThresholdFactor = 10;

bool _shouldShowCalorieRange(MealAnalysisV3CompleteResult result) {
  final calorieRange = result.macroRanges.calories;
  final spread = calorieRange.max - calorieRange.min;
  final calorieEstimate = result.macros.calories;

  // A range at or below 10% of the point estimate adds visual noise without
  // communicating meaningful uncertainty. Multiplication keeps this exact and
  // avoids floating-point boundary behaviour.
  return calorieEstimate > 0 &&
      spread * _calorieRangeSpreadThresholdFactor > calorieEstimate;
}

Future<void> showMealTip({
  required BuildContext context,
  required MealDetailsSheetPurpose purpose,
  MealDetectionResult? mealDetectionResult,
  LoggedMeal? loggedMeal,
  int? favoriteId,
  Uint8List? imageBytes,
  MealAnalysisPipelineSessionContext? pipelineContext,
  MealAnalysisV3CompleteResult? v3Result,
  String? v3AnalysisId,
  bool previewOnly = false,
}) {
  final parentContext = context;
  return showModalBottomSheet(
    context: context,
    useRootNavigator: true,
    isDismissible: true,
    showDragHandle: true,
    enableDrag: true,
    isScrollControlled: true,
    routeSettings: const RouteSettings(name: RouteNames.mealTipSheet),
    builder:
        (sheetContext) => _MealTip(
          parentContext: parentContext,
          purpose: purpose,
          mealDetectionResult: mealDetectionResult,
          loggedMeal: loggedMeal,
          favoriteId: favoriteId,
          imageBytes: imageBytes,
          pipelineContext: pipelineContext,
          v3Result: v3Result,
          v3AnalysisId: v3AnalysisId,
          previewOnly: previewOnly,
        ),
  );
}

class _MealTip extends StatefulWidget {
  const _MealTip({
    required this.parentContext,
    required this.purpose,
    this.mealDetectionResult,
    this.loggedMeal,
    this.favoriteId,
    this.imageBytes,
    this.pipelineContext,
    this.v3Result,
    this.v3AnalysisId,
    this.previewOnly = false,
  }) : assert(mealDetectionResult != null || loggedMeal != null);

  final BuildContext parentContext;
  final MealDetailsSheetPurpose purpose;
  final MealDetectionResult? mealDetectionResult;
  final LoggedMeal? loggedMeal;
  final int? favoriteId;
  final Uint8List? imageBytes;
  final MealAnalysisPipelineSessionContext? pipelineContext;
  final MealAnalysisV3CompleteResult? v3Result;
  final String? v3AnalysisId;
  final bool previewOnly;

  @override
  State<_MealTip> createState() => _MealTipState();
}

class _MealTipState extends State<_MealTip> {
  MealDetectionResult? _mealDetectionResult;
  MealAnalysisPipelineSessionContext? _pipelineContext;
  bool _isSaving = false;
  bool _isFeedbackSubmitting = false;
  bool? _feedbackValue;

  Meal get meal =>
      _mealDetectionResult?.meal ?? widget.loggedMeal?.meal ?? Meal();

  MealMetadata get metadata =>
      _mealDetectionResult?.metadata ??
      widget.loggedMeal?.metadata ??
      MealMetadata();

  bool get _canShowFeedback =>
      widget.purpose == MealDetailsSheetPurpose.mealAddition &&
      widget.v3AnalysisId != null &&
      _mealDetectionResult != null &&
      widget.loggedMeal == null &&
      _hasServerAnalysisSession;

  bool get _hasServerAnalysisSession {
    if (widget.v3AnalysisId != null) return true;
    final result = _pipelineContext?.result;
    return result != null &&
        (!result.hasReceipt() ||
            result.receipt.calculationOrigin !=
                CalculationOrigin.CALCULATION_ORIGIN_LOCAL_DETERMINISTIC);
  }

  bool get _isLoggedMealFlow => widget.loggedMeal != null;
  bool get _showFavoriteHeaderAction =>
      _isLoggedMealFlow &&
      widget.purpose == MealDetailsSheetPurpose.historyEdit;
  bool get _showHistoryActions =>
      _isLoggedMealFlow &&
      widget.purpose == MealDetailsSheetPurpose.historyEdit;
  bool get _showFavoritesActions =>
      _isLoggedMealFlow &&
      widget.favoriteId != null &&
      widget.purpose == MealDetailsSheetPurpose.favorites;

  @override
  void initState() {
    super.initState();
    _mealDetectionResult = widget.mealDetectionResult;
    _pipelineContext = widget.pipelineContext;
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
          Icon(AppIcons.searchX, color: colorScheme.onSurface, size: 28),
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
      if ((widget.imageBytes?.isNotEmpty ?? false) ||
          metadata.imageUrl.isNotEmpty) ...[
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
        (widget.imageBytes?.isNotEmpty ?? false) ||
        metadata.imageUrl.isNotEmpty;
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
          if (_showFavoriteHeaderAction || _canShowFeedback)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (_showFavoriteHeaderAction)
                  _FavoriteMealStar(loggedMeal: widget.loggedMeal!),
                if (_canShowFeedback) ...[
                  IconButton(
                    onPressed:
                        _isFeedbackSubmitting || _feedbackValue != null
                            ? null
                            : _submitPositiveFeedback,
                    icon: Icon(
                      AppIcons.thumbsUp,
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
                      AppIcons.thumbsDown,
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
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  AppIcons.flame,
                  color: colorScheme.calorieIconColor,
                  size: 32,
                ),
                const SizedBox(width: 4),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: (widget.v3Result?.macros.calories ??
                                meal.macros.calories)
                            .toStringAsFixed(0),
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
            if (widget.v3Result case final result?
                when _shouldShowCalorieRange(result)) ...[
              const SizedBox(height: 4),
              Text(
                t.meal.analysis.calorieRange(
                  min: result.macroRanges.calories.min.toStringAsFixed(0),
                  max: result.macroRanges.calories.max.toStringAsFixed(0),
                ),
                key: const ValueKey('v3-calorie-range'),
                style: textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurface.withValues(alpha: 0.65),
                ),
              ),
            ],
            const SizedBox(height: 16),
            Row(
              spacing: 8,
              children: [
                Expanded(
                  child: NutrientTile(
                    icon: AppIcons.wheat,
                    label: t.home.dailySummary.carbs,
                    value: meal.macros.carbs.toDouble(),
                    unit: 'g',
                    iconColor: carbsIconColor,
                  ),
                ),
                Expanded(
                  child: NutrientTile(
                    icon: AppIcons.drumstick,
                    label: t.home.dailySummary.protein,
                    value: meal.macros.protein.toDouble(),
                    unit: 'g',
                    iconColor: proteinIconColor,
                  ),
                ),
                Expanded(
                  child: NutrientTile(
                    icon: AppIcons.egg,
                    label: t.home.dailySummary.fat,
                    value: meal.macros.fat.toDouble(),
                    unit: 'g',
                    iconColor: fatIconColor,
                  ),
                ),
                Expanded(
                  child: NutrientTile(
                    icon: AppIcons.leaf,
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
                  icon: Icon(AppIcons.x, size: 20),
                  label: Text(t.common.close),
                ),
              )
              : AppButton(
                variant: AppButtonVariant.primary,
                analyticsEvent: AnalyticsEvent.mealSave,
                onPressed: _isSaving ? null : _saveDetectedMeal,
                isLoading: _isSaving,
                text: t.meal.saveMeal,
                leadingIcon: AppIcons.save,
              ))
          : _buildLoggedMealActions(context),
    ];
  }

  Future<void> _saveDetectedMeal() async {
    final detectedMeal = _mealDetectionResult;
    if (_isSaving || detectedMeal == null) return;
    setState(() => _isSaving = true);

    try {
      await logMeal(
        context,
        detectedMeal.meal,
        parentContext: widget.parentContext,
        analysisId: widget.v3AnalysisId ?? _pipelineContext?.result.analysisId,
        analysisSnapshot: _pipelineContext?.result,
      );
      if (!mounted) return;
      Navigator.of(context).pop();
    } catch (error) {
      if (!mounted) return;
      showFlushbar('$error', context: context);
      setState(() => _isSaving = false);
    }
  }

  Widget _buildLoggedMealActions(BuildContext context) {
    if (_showFavoritesActions) {
      return Row(
        children: [
          Expanded(
            child: AppButton(
              variant: AppButtonVariant.secondary,
              onPressed: _removeFromFavorites,
              text: t.meal.unfavorite,
              leadingIcon: AppIcons.starOff,
              analyticsEvent: AnalyticsEvent.favoriteRemove,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: AppButton(
              variant: AppButtonVariant.primary,
              onPressed: () => _openEditMealSheet(context),
              text: t.meal.editMeal,
              leadingIcon: AppIcons.pencil,
              analyticsEvent: AnalyticsEvent.mealEdit,
            ),
          ),
        ],
      );
    }

    if (_showHistoryActions) {
      return Row(
        children: [
          Expanded(
            child: AppButton(
              variant: AppButtonVariant.secondary,
              onPressed: () {
                _showDeleteConfirmation(context, widget.loggedMeal!.clientId);
              },
              text: t.meal.delete,
              leadingIcon: AppIcons.trash2,
              analyticsEvent: AnalyticsEvent.mealDelete,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: AppButton(
              variant: AppButtonVariant.primary,
              onPressed: () => _openEditMealSheet(context),
              text: t.meal.editMeal,
              leadingIcon: AppIcons.pencil,
              analyticsEvent: AnalyticsEvent.mealEdit,
            ),
          ),
        ],
      );
    }

    return SizedBox(
      width: double.infinity,
      child: OutlinedButton.icon(
        onPressed: () => Navigator.of(context).pop(),
        icon: Icon(AppIcons.x, size: 20),
        label: Text(t.common.close),
      ),
    );
  }

  void _openEditMealSheet(BuildContext context) {
    final navigator = Navigator.of(context);
    final parentContext = navigator.context;
    navigator.pop();
    showEditMealSheet(
      parentContext,
      meal: meal,
      loggedMeal: widget.loggedMeal,
      favoriteId: widget.favoriteId,
      saveAsFavorite: _showFavoritesActions,
    );
  }

  Future<void> _removeFromFavorites() async {
    final favoriteId = widget.favoriteId;
    if (favoriteId == null) return;

    try {
      await ProviderScope.containerOf(
        context,
        listen: false,
      ).read(databaseInterfaceProvider).removeFavoriteMeal(favoriteId);
      if (!mounted) return;
      Analytics.instance.logEvent(AnalyticsEvent.favoriteRemove);
      showFlushbar(t.meal.removedFromFavorites, context: context);
      Navigator.of(context).pop();
    } on Exception catch (error) {
      if (!mounted) return;
      showFlushbar(
        t.meal.couldNotUpdateFavorite(error: error),
        context: context,
      );
    }
  }

  Future<void> _submitPositiveFeedback() async {
    await _submitV3Feedback(positive: true);
  }

  Future<void> _submitNegativeFeedback() async {
    Analytics.instance.logEvent(AnalyticsEvent.mealFeedbackThumbsDownOpened);
    await _submitV3Feedback(positive: false);
  }

  Future<void> _submitV3Feedback({required bool positive}) async {
    final analysisId = widget.v3AnalysisId;
    if (analysisId == null || analysisId.isEmpty) return;
    setState(() => _isFeedbackSubmitting = true);
    try {
      await ProviderScope.containerOf(context, listen: false)
          .read(foodRepositoryProvider)
          .submitFeedbackV3(analysisId: analysisId, positive: positive);
      if (!mounted) return;
      Analytics.instance.logEvent(
        positive
            ? AnalyticsEvent.mealFeedbackThumbsUp
            : AnalyticsEvent.mealFeedbackThumbsDownSubmitted,
      );
      showFlushbar(t.meal.feedbackThanks, context: context);
      setState(() => _feedbackValue = positive);
    } on Exception catch (error) {
      if (!mounted) return;
      showFlushbar('$error', context: context);
    } finally {
      if (mounted) {
        setState(() => _isFeedbackSubmitting = false);
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
                final container = ProviderScope.containerOf(
                  context,
                  listen: false,
                );
                await container
                    .read(databaseInterfaceProvider)
                    .deleteMeal(mealId);
                try {
                  await container
                      .read(mealLogSyncServiceProvider)
                      .syncPending();
                } catch (_) {
                  // The analysis-log tombstone stays queued for startup retry.
                }
                try {
                  await container
                      .read(healthConnectSyncServiceProvider)
                      .syncPending();
                } catch (_) {
                  // The delete tombstone stays queued for the next retry.
                }
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
      icon: FavoriteIcon(
        key: const ValueKey('favorite-meal-star-icon'),
        isFavorite: _isFavorite,
        color:
            _isFavorite ? null : colorScheme.onSurface.withValues(alpha: 0.5),
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
        await database.removeFavoriteMealBySourceMealId(
          widget.loggedMeal.clientId,
        );
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
