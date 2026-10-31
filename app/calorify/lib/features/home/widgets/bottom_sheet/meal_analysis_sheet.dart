import 'dart:convert';
import 'dart:typed_data';

import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:calorify/core/providers/home_providers.dart'
    hide databaseInterfaceProvider;
import 'package:calorify/core/router/route_names.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/features/edit_meal/edit_meal_screen.dart';
import 'package:calorify/features/history/widgets/meal_quantity.dart';
import 'package:calorify/features/history/widgets/meal_timestamp.dart';
import 'package:calorify/features/history/widgets/meal_type_indicator.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:calorify/features/home/utils/meal_analysis_flow.dart';
import 'package:calorify/features/home/widgets/daily_summary.dart';
import 'package:calorify/features/home/widgets/meal_image.dart';
import 'package:calorify/shared_widgets/app_button.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:models/models.dart';
import 'package:widgets/widgets.dart';

enum MealDetailsSheetPurpose {
  mealAddition,
  historyEdit,
  favorites,
  debugPreview,
}

const _calorieRangeSpreadThresholdFactor = 10;

bool _shouldShowCalorieRange(
  MealAnalysisV3Range? calorieRange,
  double calorieEstimate,
) {
  if (calorieRange == null) return false;
  final spread = calorieRange.max - calorieRange.min;

  return calorieEstimate > 0 &&
      spread * _calorieRangeSpreadThresholdFactor > calorieEstimate;
}

/// Unified view data object consumed by [MealAnalysisSheet].
class MealAnalysisSheetData {
  MealAnalysisSheetData({
    required this.meal,
    this.loggedMeal,
    this.purpose = MealDetailsSheetPurpose.mealAddition,
    this.imageBytes,
    this.favoriteId,
    this.analysisId,
    this.rawJson,
    this.tip,
    this.calorieRange,
    this.previewOnly = false,
  });

  factory MealAnalysisSheetData.fromMeal({
    required Meal meal,
    MealDetailsSheetPurpose purpose = MealDetailsSheetPurpose.mealAddition,
    Uint8List? imageBytes,
    int? favoriteId,
    bool previewOnly = false,
  }) {
    return MealAnalysisSheetData(
      meal: meal,
      purpose: purpose,
      imageBytes: imageBytes,
      favoriteId: favoriteId,
      previewOnly: previewOnly,
      tip: meal.hasMetadata() ? meal.metadata.tip : null,
    );
  }

  factory MealAnalysisSheetData.fromLoggedMeal({
    required LoggedMeal loggedMeal,
    MealDetailsSheetPurpose purpose = MealDetailsSheetPurpose.historyEdit,
    Uint8List? imageBytes,
    int? favoriteId,
    bool previewOnly = false,
  }) {
    return MealAnalysisSheetData(
      meal: loggedMeal.meal,
      loggedMeal: loggedMeal,
      purpose: purpose,
      imageBytes: imageBytes,
      favoriteId: favoriteId,
      previewOnly: previewOnly,
      tip: loggedMeal.hasMetadata() ? loggedMeal.metadata.tip : null,
    );
  }

  factory MealAnalysisSheetData.fromV3Result({
    required MealAnalysisV3CompleteResult result,
    MealDetailsSheetPurpose purpose = MealDetailsSheetPurpose.mealAddition,
    String? analysisId,
    Uint8List? imageBytes,
    String? textDescription,
    bool previewOnly = false,
  }) {
    final meal = mealFromV3Result(result, textDescription: textDescription);
    return MealAnalysisSheetData(
      meal: meal,
      purpose: purpose,
      analysisId: analysisId,
      imageBytes: imageBytes,
      rawJson: result.rawJson,
      tip:
          result.tip.isNotEmpty
              ? result.tip
              : (meal.hasMetadata() ? meal.metadata.tip : null),
      calorieRange: result.macroRanges.calories,
      previewOnly: previewOnly,
    );
  }

  final Meal meal;
  final LoggedMeal? loggedMeal;
  final MealDetailsSheetPurpose purpose;
  final Uint8List? imageBytes;
  final int? favoriteId;
  final String? analysisId;
  final Map<String, dynamic>? rawJson;
  final String? tip;
  final MealAnalysisV3Range? calorieRange;
  final bool previewOnly;
}

Future<void> showMealAnalysisSheet({
  required BuildContext context,
  required MealAnalysisSheetData data,
}) {
  final parentContext = context;
  return showModalBottomSheet(
    context: context,
    useRootNavigator: true,
    isDismissible: true,
    showDragHandle: true,
    enableDrag: true,
    isScrollControlled: true,
    routeSettings: const RouteSettings(name: RouteNames.mealAnalysisSheet),
    builder:
        (sheetContext) => MealAnalysisSheet(
          parentContext: parentContext,
          data: data,
        ),
  );
}

/// Backward compatibility helper for legacy call sites.
Future<void> showMealTip({
  required BuildContext context,
  required MealDetailsSheetPurpose purpose,
  Meal? meal,
  LoggedMeal? loggedMeal,
  int? favoriteId,
  Uint8List? imageBytes,
  MealAnalysisV3CompleteResult? v3Result,
  String? v3AnalysisId,
  bool previewOnly = false,
}) {
  final data =
      v3Result != null
          ? MealAnalysisSheetData.fromV3Result(
            result: v3Result,
            purpose: purpose,
            analysisId: v3AnalysisId,
            imageBytes: imageBytes,
            previewOnly: previewOnly,
          )
          : loggedMeal != null
          ? MealAnalysisSheetData.fromLoggedMeal(
            loggedMeal: loggedMeal,
            purpose: purpose,
            imageBytes: imageBytes,
            favoriteId: favoriteId,
            previewOnly: previewOnly,
          )
          : MealAnalysisSheetData.fromMeal(
            meal: meal ?? Meal(),
            purpose: purpose,
            imageBytes: imageBytes,
            favoriteId: favoriteId,
            previewOnly: previewOnly,
          );
  return showMealAnalysisSheet(context: context, data: data);
}

class MealAnalysisSheet extends StatefulWidget {
  const MealAnalysisSheet({
    super.key,
    required this.parentContext,
    required this.data,
  });

  factory MealAnalysisSheet.fromMeal({
    Key? key,
    required BuildContext parentContext,
    required Meal meal,
    MealDetailsSheetPurpose purpose = MealDetailsSheetPurpose.mealAddition,
    Uint8List? imageBytes,
    int? favoriteId,
    bool previewOnly = false,
  }) {
    return MealAnalysisSheet(
      key: key,
      parentContext: parentContext,
      data: MealAnalysisSheetData.fromMeal(
        meal: meal,
        purpose: purpose,
        imageBytes: imageBytes,
        favoriteId: favoriteId,
        previewOnly: previewOnly,
      ),
    );
  }

  factory MealAnalysisSheet.fromLoggedMeal({
    Key? key,
    required BuildContext parentContext,
    required LoggedMeal loggedMeal,
    MealDetailsSheetPurpose purpose = MealDetailsSheetPurpose.historyEdit,
    Uint8List? imageBytes,
    int? favoriteId,
    bool previewOnly = false,
  }) {
    return MealAnalysisSheet(
      key: key,
      parentContext: parentContext,
      data: MealAnalysisSheetData.fromLoggedMeal(
        loggedMeal: loggedMeal,
        purpose: purpose,
        imageBytes: imageBytes,
        favoriteId: favoriteId,
        previewOnly: previewOnly,
      ),
    );
  }

  factory MealAnalysisSheet.fromV3Result({
    Key? key,
    required BuildContext parentContext,
    required MealAnalysisV3CompleteResult result,
    MealDetailsSheetPurpose purpose = MealDetailsSheetPurpose.mealAddition,
    String? analysisId,
    Uint8List? imageBytes,
    String? textDescription,
    bool previewOnly = false,
  }) {
    return MealAnalysisSheet(
      key: key,
      parentContext: parentContext,
      data: MealAnalysisSheetData.fromV3Result(
        result: result,
        purpose: purpose,
        analysisId: analysisId,
        imageBytes: imageBytes,
        textDescription: textDescription,
        previewOnly: previewOnly,
      ),
    );
  }

  final BuildContext parentContext;
  final MealAnalysisSheetData data;

  @override
  State<MealAnalysisSheet> createState() => _MealAnalysisSheetState();
}

class _MealAnalysisSheetState extends State<MealAnalysisSheet> {
  Meal? _meal;
  bool _isSaving = false;
  bool _isFeedbackSubmitting = false;
  bool? _feedbackValue;

  Meal get meal => _meal ?? widget.data.loggedMeal?.meal ?? widget.data.meal;

  MealMetadata get metadata =>
      meal.hasMetadata()
          ? meal.metadata
          : (widget.data.loggedMeal?.hasMetadata() ?? false)
          ? widget.data.loggedMeal!.metadata
          : MealMetadata();

  String get tip => widget.data.tip ?? metadata.tip;

  bool get _canShowFeedback =>
      widget.data.purpose == MealDetailsSheetPurpose.mealAddition &&
      widget.data.analysisId != null &&
      _meal != null &&
      widget.data.loggedMeal == null;

  bool get _isLoggedMealFlow => widget.data.loggedMeal != null;
  bool get _showFavoriteHeaderAction =>
      _isLoggedMealFlow &&
      widget.data.purpose == MealDetailsSheetPurpose.historyEdit;
  bool get _showHistoryActions =>
      _isLoggedMealFlow &&
      widget.data.purpose == MealDetailsSheetPurpose.historyEdit;
  bool get _showFavoritesActions =>
      _isLoggedMealFlow &&
      widget.data.favoriteId != null &&
      widget.data.purpose == MealDetailsSheetPurpose.favorites;

  @override
  void initState() {
    super.initState();
    _meal = widget.data.meal;
    if (_canShowFeedback) {
      Analytics.instance.logEvent(AnalyticsEvent.mealFeedbackShown);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isMealUnidentified =
        (_meal == null && widget.data.loggedMeal == null) ||
        (_meal != null && _meal!.name.isEmpty);

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
          const SizedBox(width: 6),
          Text(
            t.meal.ohNo,
            style: textTheme.headlineSmall?.copyWith(
              color: colorScheme.onSurface,
            ),
          ),
        ],
      ),
      const SizedBox(height: 16),
      if (tip.isNotEmpty) ...[
        Text(
          tip,
          style: textTheme.bodyMedium?.copyWith(color: colorScheme.onSurface),
        ),
        const SizedBox(height: 12),
      ],
      if ((widget.data.imageBytes?.isNotEmpty ?? false) ||
          metadata.imageUrl.isNotEmpty) ...[
        MealImage(
          imageBytes: widget.data.imageBytes,
          imageUrl: metadata.imageUrl,
        ),
        const SizedBox(height: 12),
      ],
    ];
  }

  List<Widget> _mealIdentified(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    final canShowMealImage =
        (widget.data.imageBytes?.isNotEmpty ?? false) ||
        metadata.imageUrl.isNotEmpty;
    final canShowMealTip = tip.isNotEmpty;

    final timestamp = widget.data.loggedMeal?.dateTime ?? DateTime.now();

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
          const SizedBox(width: 12),
          if (_showFavoriteHeaderAction || _canShowFeedback)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (_showFavoriteHeaderAction)
                  _FavoriteMealStar(loggedMeal: widget.data.loggedMeal!),
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
        const SizedBox(height: 16),
        MealImage(
          imageBytes: widget.data.imageBytes,
          imageUrl: metadata.imageUrl,
        ),
      ],
      if (canShowMealTip) ...[
        const SizedBox(height: 16),
        Text(
          tip,
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
                        text: meal.macros.calorie.value.toStringAsFixed(0),
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
            if (widget.data.calorieRange case final range?
                when _shouldShowCalorieRange(
                  range,
                  meal.macros.calorie.value.toDouble(),
                )) ...[
              const SizedBox(height: 4),
              Text(
                t.meal.analysis.calorieRange(
                  min: range.min.toStringAsFixed(0),
                  max: range.max.toStringAsFixed(0),
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
                    value: meal.macros.carb.value.toDouble(),
                    unit: 'g',
                    iconColor: carbsIconColor,
                  ),
                ),
                Expanded(
                  child: NutrientTile(
                    icon: AppIcons.drumstick,
                    label: t.home.dailySummary.protein,
                    value: meal.macros.protein.value.toDouble(),
                    unit: 'g',
                    iconColor: proteinIconColor,
                  ),
                ),
                Expanded(
                  child: NutrientTile(
                    icon: AppIcons.egg,
                    label: t.home.dailySummary.fat,
                    value: meal.macros.fat.value.toDouble(),
                    unit: 'g',
                    iconColor: fatIconColor,
                  ),
                ),
                Expanded(
                  child: NutrientTile(
                    icon: AppIcons.leaf,
                    label: t.home.dailySummary.fiber,
                    value: meal.macros.fiber.value.toDouble(),
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
      _meal != null
          ? (widget.data.previewOnly
              ? SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: Icon(AppIcons.x, size: 20),
                  label: Text(t.common.close),
                ),
              )
              : AppButton(
                key: const ValueKey('save-meal-button'),
                variant: AppButtonVariant.primary,
                analyticsEvent: AnalyticsEvent.mealSave,
                onPressed: _isSaving ? null : _saveDetectedMeal,
                isLoading: _isSaving,
                text: t.meal.saveMeal,
              ))
          : _buildLoggedMealActions(context),
    ];
  }

  Future<void> _saveDetectedMeal() async {
    final detectedMeal = _meal;
    if (_isSaving || detectedMeal == null) return;
    setState(() => _isSaving = true);

    try {
      await logMeal(
        context,
        detectedMeal,
        parentContext: widget.parentContext,
        analysisId: widget.data.analysisId,
        v3ResultJson:
            widget.data.rawJson == null
                ? null
                : jsonEncode(widget.data.rawJson),
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
                _showDeleteConfirmation(
                  context,
                  widget.data.loggedMeal!.clientId,
                );
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
      loggedMeal: widget.data.loggedMeal,
      favoriteId: widget.data.favoriteId,
      saveAsFavorite: _showFavoritesActions,
    );
  }

  Future<void> _removeFromFavorites() async {
    final favoriteId = widget.data.favoriteId;
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
    final analysisId = widget.data.analysisId;
    if (analysisId == null || analysisId.isEmpty) return;
    setState(() => _isFeedbackSubmitting = true);
    try {
      await ProviderScope.containerOf(context, listen: false)
          .read(foodRepositoryProvider)
          .submitAnalysisFeedback(analysisId: analysisId, isLiked: positive);
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
