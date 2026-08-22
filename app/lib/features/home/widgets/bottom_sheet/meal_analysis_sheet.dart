import 'dart:async';
import 'dart:typed_data';

import 'package:calorify/core/errors/app_error.dart';
import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/core/router/route_names.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/features/home/controllers/meal_analysis_controller.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_question_flow_sheet.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_type_sheet.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_tip_sheet.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:calorify/shared_widgets/meal_analysis_tip_line.dart';
import 'package:flutter/foundation.dart' show listEquals;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:models/models.dart';
import 'package:widgets/widgets.dart';

Future<bool> showV2MealAnalysisFlow({
  required BuildContext context,
  required MealAnalysisStarter startAnalysis,
  Uint8List? imageBytes,
  String? imageUrl,
  String? textDescription,
  MealAnalysisContinuationRepository? continuationRepository,
}) async {
  final finalContext = await resolveV2MealAnalysisFlow(
    context: context,
    startAnalysis: startAnalysis,
    imageBytes: imageBytes,
    imageUrl: imageUrl,
    textDescription: textDescription,
    continuationRepository: continuationRepository,
  );

  if (finalContext == null || !context.mounted) return false;

  await showMealTip(
    context: context,
    purpose: MealDetailsSheetPurpose.mealAddition,
    imageBytes:
        finalContext.hasImageBytes() && finalContext.imageBytes.isNotEmpty
            ? Uint8List.fromList(finalContext.imageBytes)
            : null,
    mealDetectionResult: finalContext.toMealDetectionResult(),
    pipelineContext: finalContext,
  );
  return true;
}

Future<MealAnalysisPipelineSessionContext?> resolveV2MealAnalysisFlow({
  required BuildContext context,
  required MealAnalysisStarter startAnalysis,
  Uint8List? imageBytes,
  String? imageUrl,
  String? textDescription,
  MealAnalysisContinuationRepository? continuationRepository,
}) async {
  final controller = _createMealAnalysisController(
    context: context,
    startAnalysis: startAnalysis,
    imageBytes: imageBytes,
    imageUrl: imageUrl,
    textDescription: textDescription,
    continuationRepository: continuationRepository,
  );
  controller.start();

  try {
    while (context.mounted) {
      final stateChanged = await _showMealAnalysisPipelineSheet(
        context: context,
        controller: controller,
        imageBytes: imageBytes,
        textDescription: textDescription,
      );
      if (stateChanged != true || !context.mounted) {
        controller.cancel();
        return null;
      }

      switch (controller.state) {
        case MealAnalysisCompleted(:final resultContext):
          return resultContext;
        case MealAnalysisNeedsClarification(:final clarifications):
          final answers = await showMealQuestionFlowFromPipeline(
            context: context,
            clarifications: clarifications,
          );
          if (answers == null || !context.mounted) {
            controller.cancel();
            return null;
          }
          if (!controller.submitClarifications(answers)) return null;
        case MealAnalysisNeedsMealType(:final question):
          final selectedMealType = await showV2MealTypeSheet(
            context: context,
            question: question,
          );
          if (selectedMealType == null || !context.mounted) {
            controller.dismissMealType();
            return null;
          }
          if (!controller.submitMealType(selectedMealType)) return null;
        case MealAnalysisFailed(:final failure):
          showFlushbar(_userMessageForFailure(failure), context: context);
          return null;
        case MealAnalysisCancelled():
          return null;
        case MealAnalysisIdle() || MealAnalysisLoading():
          return null;
      }
    }
  } finally {
    controller.dispose();
  }

  return null;
}

/// Debug / UI review: opens the same loading sheet as V2 analysis with a caller-supplied stream.
///
/// Does not attach [resolveV2MealAnalysisFlow]; use fake [MealAnalysisPipelineEvent] sequences.
Future<void> showDebugMealAnalysisPipelineSheet({
  required BuildContext context,
  required MealAnalysisStarter startAnalysis,
  Uint8List? imageBytes,
  String? imageUrl,
  String? textDescription,
  String? seedMealName,
}) async {
  final controller = _createMealAnalysisController(
    context: context,
    startAnalysis: startAnalysis,
    imageBytes: imageBytes,
    imageUrl: imageUrl,
    textDescription: textDescription,
    seedMealName: seedMealName,
  );
  controller.start();
  try {
    await _showMealAnalysisPipelineSheet(
      context: context,
      controller: controller,
      imageBytes: imageBytes,
      textDescription: textDescription,
    );
    if (context.mounted) {
      final state = controller.state;
      if (state is MealAnalysisFailed) {
        showFlushbar(_userMessageForFailure(state.failure), context: context);
      }
    }
  } finally {
    controller.dispose();
  }
}

MealAnalysisController _createMealAnalysisController({
  required BuildContext context,
  required MealAnalysisStarter startAnalysis,
  Uint8List? imageBytes,
  String? imageUrl,
  String? textDescription,
  String? seedMealName,
  MealAnalysisContinuationRepository? continuationRepository,
}) {
  final repository = ProviderScope.containerOf(
    context,
    listen: false,
  ).read(foodRepositoryProvider);
  return MealAnalysisController(
    initialAnalysis: startAnalysis,
    repository:
        continuationRepository ??
        FoodRepositoryMealAnalysisContinuation(repository),
    analytics: AppMealAnalysisAnalytics(Analytics.instance),
    imageBytes: imageBytes,
    imageUrl: imageUrl,
    textDescription: textDescription,
    seedMealName: seedMealName,
  );
}

Future<bool?> _showMealAnalysisPipelineSheet({
  required BuildContext context,
  required MealAnalysisController controller,
  Uint8List? imageBytes,
  String? textDescription,
}) {
  return showModalBottomSheet<bool>(
    context: context,
    useRootNavigator: true,
    isDismissible: true,
    showDragHandle: true,
    isScrollControlled: true,
    routeSettings: const RouteSettings(name: RouteNames.mealAnalysisSheet),
    builder:
        (context) => _MealAnalysisPipelineSheet(
          controller: controller,
          imageBytes: imageBytes,
          textDescription: textDescription,
        ),
  );
}

String _userMessageForFailure(MealAnalysisFlowException failure) {
  final backendMessage = (failure.backendMessage ?? '').trim();
  if (backendMessage.isNotEmpty) return backendMessage;
  if (failure.kind == MealAnalysisFailureKind.emptyStream ||
      failure.kind == MealAnalysisFailureKind.incompleteStream) {
    return t.meal.analysis.stepError;
  }

  final appError = AppError.fromException(failure.cause ?? failure);
  return switch (appError) {
    NetworkError() => t.errors.networkError,
    RateLimitError() => t.errors.rateLimitExceeded,
    AuthError() ||
    ServerError() ||
    ValidationError() ||
    ParseError() => appError.message,
    UnknownError() => t.errors.unknownError,
  };
}

class _MealAnalysisPipelineSheet extends StatefulWidget {
  const _MealAnalysisPipelineSheet({
    required this.controller,
    this.imageBytes,
    this.textDescription,
  });

  final MealAnalysisController controller;
  final Uint8List? imageBytes;
  final String? textDescription;

  @override
  State<_MealAnalysisPipelineSheet> createState() =>
      _MealAnalysisPipelineSheetState();
}

class _MealAnalysisPipelineSheetState extends State<_MealAnalysisPipelineSheet>
    with SingleTickerProviderStateMixin {
  bool _sheetDismissed = false;
  late final AnimationController _placeholderPulseController;

  /// Fixed viewport for the ingredient list (heading + scroll slot).
  static const double _kIngredientListViewportHeight = 172;

  @override
  void initState() {
    super.initState();
    _placeholderPulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 4000),
    )..repeat();
    widget.controller.addListener(_handleControllerState);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _handleControllerState();
    });
  }

  @override
  void didUpdateWidget(covariant _MealAnalysisPipelineSheet oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller == widget.controller) return;
    oldWidget.controller.removeListener(_handleControllerState);
    widget.controller.addListener(_handleControllerState);
    _handleControllerState();
  }

  @override
  void dispose() {
    widget.controller.removeListener(_handleControllerState);
    _placeholderPulseController.dispose();
    super.dispose();
  }

  Widget _analyzingMotionHero(ColorScheme colorScheme) {
    return SizedBox(
      height: 112,
      width: double.infinity,
      child: AnimatedBuilder(
        animation: _placeholderPulseController,
        builder: (context, _) {
          return MacroIconCycleLoader(
            progress: _placeholderPulseController.value,
            haloBaseColor: colorScheme.primary,
          );
        },
      ),
    );
  }

  String _progressPhaseLabel({
    required List<String> progressLabels,
    required bool isMealTypePhase,
    required int displayPhase,
  }) {
    if (isMealTypePhase) {
      return t.meal.analysis.progressMealType;
    }
    return progressLabels[displayPhase.clamp(0, 3)];
  }

  void _handleControllerState() {
    if (!mounted || _sheetDismissed) return;
    final state = widget.controller.state;
    if (state is MealAnalysisIdle || state is MealAnalysisLoading) return;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || _sheetDismissed) return;
      final navigator =
          Navigator.maybeOf(context, rootNavigator: true) ??
          Navigator.maybeOf(context);
      if (navigator == null || !navigator.canPop()) return;
      _sheetDismissed = true;
      navigator.pop(true);
    });
  }

  Widget _emergingPreviewContent({
    required int ingredientCount,
    required List<String> ingredientNames,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final hasNames = ingredientNames.isNotEmpty;

    final listViewport = SizedBox(
      height: _kIngredientListViewportHeight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            t.meal.analysis.detectedIngredientHeading,
            textAlign: TextAlign.center,
            style: textTheme.labelSmall?.copyWith(
              color: colorScheme.onSurface.withValues(alpha: 0.52),
              fontWeight: FontWeight.w500,
              letterSpacing: 0.06,
            ),
          ),
          const SizedBox(height: 9),
          if (ingredientCount > 0 && !hasNames)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                t.meal.analysis.ingredientsLine(count: ingredientCount),
                textAlign: TextAlign.center,
                style: textTheme.labelSmall?.copyWith(
                  color: colorScheme.onSurfaceVariant.withValues(alpha: 0.74),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          Expanded(
            child:
                hasNames
                    ? _IngredientNamesSlowScrollList(
                      names: ingredientNames,
                      colorScheme: colorScheme,
                      textTheme: textTheme,
                    )
                    : Center(
                      child: Text(
                        t.meal.analysis.ingredientsPending,
                        textAlign: TextAlign.center,
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurface.withValues(alpha: 0.42),
                          height: 1.4,
                        ),
                      ),
                    ),
          ),
        ],
      ),
    );

    return Column(
      key: ValueKey<String>('${ingredientNames.join(',')}|$ingredientCount'),
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [listViewport],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: widget.controller,
      builder: (context, _) {
        final view = widget.controller.state.view;
        final theme = Theme.of(context);
        final colorScheme = theme.colorScheme;
        final textTheme = theme.textTheme;
        final mealName = view.mealName;
        final headerTitle =
            mealName.isNotEmpty ? mealName : t.meal.analysis.title;
        final ingredientNames = view.ingredientNames;
        final ingredientCount = view.ingredientCount;
        final displayPhase = view.displayPhase;
        final progressLabels = [
          t.meal.analysis.progressUnderstand,
          t.meal.analysis.progressMatch,
          t.meal.analysis.progressCheck,
          t.meal.analysis.progressFinish,
        ];
        final phaseLabel = _progressPhaseLabel(
          progressLabels: progressLabels,
          isMealTypePhase: view.isMealTypePhase,
          displayPhase: displayPhase,
        );

        return BaseBottomSheet(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 320),
                switchInCurve: Curves.easeOut,
                switchOutCurve: Curves.easeIn,
                transitionBuilder:
                    (child, animation) =>
                        FadeTransition(opacity: animation, child: child),
                child: Text(
                  headerTitle,
                  key: ValueKey<String>('header-$headerTitle'),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: textTheme.titleLarge?.copyWith(
                    color: colorScheme.onSurface,
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                  ),
                ),
              ),
              if (widget.imageBytes != null &&
                  widget.imageBytes!.isNotEmpty) ...[
                const SizedBox(height: 18),
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.memory(
                    widget.imageBytes!,
                    height: 112,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    gaplessPlayback: true,
                  ),
                ),
              ] else if (widget.textDescription != null &&
                  widget.textDescription!.trim().isNotEmpty) ...[
                const SizedBox(height: 14),
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: colorScheme.surfaceContainerHighest.withValues(
                      alpha: 0.42,
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
                    child: Text(
                      t.meal.analysis.mealPreviewDescription(
                        text: _shortText(widget.textDescription!.trim(), 110),
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurface.withValues(alpha: 0.78),
                        height: 1.4,
                      ),
                    ),
                  ),
                ),
              ],
              const SizedBox(height: 20),
              LinearProgressIndicator(
                value: view.progressValue,
                minHeight: 6,
                borderRadius: BorderRadius.circular(999),
                color: colorScheme.primary,
                backgroundColor: colorScheme.surfaceContainerHighest.withValues(
                  alpha: 0.88,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        phaseLabel,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: textTheme.titleSmall?.copyWith(
                          color: colorScheme.onSurface.withValues(alpha: 0.75),
                          fontWeight: FontWeight.w600,
                          height: 1.28,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '${displayPhase + 1}/4',
                      style: textTheme.labelLarge?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              _analyzingMotionHero(colorScheme),
              const SizedBox(height: 12),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 320),
                switchInCurve: Curves.easeOut,
                switchOutCurve: Curves.easeIn,
                transitionBuilder:
                    (child, animation) =>
                        FadeTransition(opacity: animation, child: child),
                child: KeyedSubtree(
                  key: ValueKey<Object>(
                    '$ingredientCount|${ingredientNames.join('|')}',
                  ),
                  child: _emergingPreviewContent(
                    ingredientCount: ingredientCount,
                    ingredientNames: ingredientNames,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              MealAnalysisTipLine(
                textAlign: TextAlign.center,
                textStyle: textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurface.withValues(alpha: 0.58),
                  height: 1.45,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String _shortText(String value, int maxChars) {
    if (value.length <= maxChars) return value;
    return '${value.substring(0, maxChars).trim()}…';
  }
}

/// Fully lists ingredient names; when taller than the viewport, scrolls slowly on a loop.
class _IngredientNamesSlowScrollList extends StatefulWidget {
  const _IngredientNamesSlowScrollList({
    required this.names,
    required this.colorScheme,
    required this.textTheme,
  });

  final List<String> names;
  final ColorScheme colorScheme;
  final TextTheme textTheme;

  @override
  State<_IngredientNamesSlowScrollList> createState() =>
      _IngredientNamesSlowScrollListState();
}

class _IngredientNamesSlowScrollListState
    extends State<_IngredientNamesSlowScrollList> {
  late final ScrollController _controller;
  int _scrollEpoch = 0;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((_) => _kickMarquee());
  }

  @override
  void didUpdateWidget(covariant _IngredientNamesSlowScrollList oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!listEquals(oldWidget.names, widget.names)) {
      final shouldReset = _shouldResetForNamesChange(
        oldWidget.names,
        widget.names,
      );
      if (shouldReset && _controller.hasClients) {
        _controller.jumpTo(0);
      }
      WidgetsBinding.instance.addPostFrameCallback((_) => _kickMarquee());
    }
  }

  bool _shouldResetForNamesChange(List<String> oldNames, List<String> names) {
    if (names.length < oldNames.length) return true;
    for (var i = 0; i < oldNames.length; i++) {
      if (oldNames[i] != names[i]) return true;
    }
    return false;
  }

  void _kickMarquee() {
    _scrollEpoch++;
    final epoch = _scrollEpoch;
    unawaited(_marqueeLoop(epoch));
  }

  Future<void> _marqueeLoop(int epoch) async {
    while (mounted && epoch == _scrollEpoch) {
      await WidgetsBinding.instance.endOfFrame;
      if (!mounted || epoch != _scrollEpoch) return;
      if (!_controller.hasClients) {
        await Future<void>.delayed(const Duration(milliseconds: 24));
        continue;
      }
      final max = _controller.position.maxScrollExtent;
      if (max <= 8) return;
      final ms = (max * 42).round().clamp(5200, 24000);
      await _controller.animateTo(
        max,
        duration: Duration(milliseconds: ms),
        curve: Curves.linear,
      );
      if (!mounted || epoch != _scrollEpoch) return;
      await Future<void>.delayed(const Duration(milliseconds: 850));
      if (!mounted || epoch != _scrollEpoch) return;
      _controller.jumpTo(0);
    }
  }

  @override
  void dispose() {
    _scrollEpoch++;
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final names = widget.names;
    final colorScheme = widget.colorScheme;
    final textTheme = widget.textTheme;

    return ClipRect(
      child: SingleChildScrollView(
        controller: _controller,
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: List<Widget>.generate(names.length, (index) {
            final isLast = index == names.length - 1;
            return Padding(
              padding: EdgeInsets.only(bottom: isLast ? 0 : 7),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                    child: Text(
                      '${index + 1}.',
                      textAlign: TextAlign.right,
                      style: textTheme.labelSmall?.copyWith(
                        color: colorScheme.primary.withValues(alpha: 0.52),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: Text(
                        names[index],
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurface.withValues(alpha: 0.66),
                          height: 1.34,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
