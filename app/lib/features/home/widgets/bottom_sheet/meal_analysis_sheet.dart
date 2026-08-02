import 'dart:async';
import 'dart:typed_data';

import 'package:calorify/core/constants/analytics_events.dart';
import 'package:models/models.dart';
import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/core/router/route_names.dart';
import 'package:calorify/core/services/analytics.dart';
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
import 'package:widgets/widgets.dart';

Future<bool> showV2MealAnalysisFlow({
  required BuildContext context,
  required Future<Stream<MealAnalysisPipelineEvent>> Function() startAnalysis,
  Uint8List? imageBytes,
  String? imageUrl,
  String? textDescription,
}) async {
  final finalContext = await resolveV2MealAnalysisFlow(
    context: context,
    startAnalysis: startAnalysis,
    imageBytes: imageBytes,
    imageUrl: imageUrl,
    textDescription: textDescription,
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
  required Future<Stream<MealAnalysisPipelineEvent>> Function() startAnalysis,
  Uint8List? imageBytes,
  String? imageUrl,
  String? textDescription,
}) async {
  var nextAnalysis = startAnalysis;
  String? seedMealName;

  while (context.mounted) {
    final repository = ProviderScope.containerOf(
      context,
      listen: false,
    ).read(foodRepositoryProvider);
    final outcome = await showModalBottomSheet<_MealAnalysisFlowOutcome>(
      context: context,
      isDismissible: true,
      showDragHandle: true,
      isScrollControlled: true,
      routeSettings: const RouteSettings(name: RouteNames.mealAnalysisSheet),
      builder:
          (context) => _MealAnalysisPipelineSheet(
            startAnalysis: nextAnalysis,
            imageBytes: imageBytes,
            imageUrl: imageUrl,
            textDescription: textDescription,
            seedMealName: seedMealName,
          ),
    );

    if (outcome == null || !context.mounted) {
      return null;
    }

    if (outcome.resultContext != null) {
      return outcome.resultContext;
    }

    seedMealName = outcome.lastMealName ?? seedMealName;

    if (!context.mounted || outcome.analysisId == null) {
      return null;
    }

    if (outcome.clarifications.isNotEmpty) {
      final answers = await showMealQuestionFlowFromPipeline(
        context: context,
        clarifications: outcome.clarifications,
      );
      if (answers == null || !context.mounted) {
        return null;
      }
      nextAnalysis =
          () => repository.clarifyV2(
            analysisId: outcome.analysisId!,
            answers: answers,
          );
      continue;
    }

    if (outcome.mealTypeQuestion != null) {
      Analytics.instance.logEvent(AnalyticsEvent.mealTypeQuestionShown);
      final selectedMealType = await showV2MealTypeSheet(
        context: context,
        question: outcome.mealTypeQuestion!,
      );
      if (selectedMealType == null || !context.mounted) {
        Analytics.instance.logEvent(AnalyticsEvent.mealTypeQuestionDismissed);
        return null;
      }
      nextAnalysis =
          () => repository.submitMealTypeV2(
            analysisId: outcome.analysisId!,
            mealType: selectedMealType,
          );
      continue;
    }

    return null;
  }

  return null;
}

/// Debug / UI review: opens the same loading sheet as V2 analysis with a caller-supplied stream.
///
/// Does not attach [resolveV2MealAnalysisFlow]; use fake [MealAnalysisPipelineEvent] sequences.
Future<void> showDebugMealAnalysisPipelineSheet({
  required BuildContext context,
  required Future<Stream<MealAnalysisPipelineEvent>> Function() startAnalysis,
  Uint8List? imageBytes,
  String? imageUrl,
  String? textDescription,
  String? seedMealName,
}) async {
  await showModalBottomSheet<void>(
    context: context,
    isDismissible: true,
    showDragHandle: true,
    isScrollControlled: true,
    routeSettings: const RouteSettings(name: RouteNames.mealAnalysisSheet),
    builder:
        (context) => _MealAnalysisPipelineSheet(
          startAnalysis: startAnalysis,
          imageBytes: imageBytes,
          imageUrl: imageUrl,
          textDescription: textDescription,
          seedMealName: seedMealName,
        ),
  );
}

class _MealAnalysisFlowOutcome {
  const _MealAnalysisFlowOutcome({
    this.resultContext,
    this.analysisId,
    this.clarifications = const [],
    this.mealTypeQuestion,
    this.lastMealName,
  });

  final MealAnalysisPipelineSessionContext? resultContext;
  final String? analysisId;
  final List<PipelineClarification> clarifications;
  final PipelineMealTypeQuestionData? mealTypeQuestion;
  final String? lastMealName;
}

class _MealAnalysisPipelineSheet extends StatefulWidget {
  const _MealAnalysisPipelineSheet({
    required this.startAnalysis,
    this.imageBytes,
    this.imageUrl,
    this.textDescription,
    this.seedMealName,
  });

  final Future<Stream<MealAnalysisPipelineEvent>> Function() startAnalysis;
  final Uint8List? imageBytes;
  final String? imageUrl;
  final String? textDescription;
  final String? seedMealName;

  @override
  State<_MealAnalysisPipelineSheet> createState() =>
      _MealAnalysisPipelineSheetState();
}

enum _IngredientStage { none, decomposition, resolved }

class _MealAnalysisPipelineSheetState extends State<_MealAnalysisPipelineSheet>
    with SingleTickerProviderStateMixin {
  StreamSubscription<MealAnalysisPipelineEvent>? _subscription;
  MealAnalysisPipelineEvent? _lastEvent;
  _IngredientStage _ingredientStage = _IngredientStage.none;
  List<String> _ingredientNames = const [];
  bool _headerResolvedLogged = false;

  bool _sheetDismissed = false;
  late final AnimationController _placeholderPulseController;
  late final Stopwatch _flowStopwatch;

  @override
  void initState() {
    super.initState();
    _flowStopwatch = Stopwatch()..start();
    _placeholderPulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 4000),
    )..repeat();
    _maybeLogHeaderResolved(fromSeed: true);
    _beginAnalysis();
  }

  @override
  void dispose() {
    _placeholderPulseController.dispose();
    _subscription?.cancel();
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

  int _ingredientCount(MealAnalysisPipelineEvent? e) {
    if (e == null) return 0;
    final d = e.decomposition?.ingredients.length ?? 0;
    if (d > 0) return d;
    final i = e.ingredientsStep?.ingredients.length ?? 0;
    if (i > 0) return i;
    return e.result?.ingredients.length ?? 0;
  }

  /// Fixed viewport for the ingredient list (heading + scroll slot); keeps layout stable.
  static const double _kIngredientListViewportHeight = 172;

  String _labelResolved(PipelineResolvedIngredient i) {
    final canon = i.canonicalName.trim();
    if (canon.isNotEmpty) return canon;
    return i.rawName.trim();
  }

  String _labelDecomposed(PipelineDecomposedIngredient i) {
    final raw = i.rawName.trim();
    if (raw.isNotEmpty) return raw;
    return i.canonicalHint.trim();
  }

  /// Names from the latest pipeline step that has ingredient data (resolved preferred).
  List<String> _detectedIngredientNames(MealAnalysisPipelineEvent? e) {
    if (e == null) return [];
    if (e.ingredientsStep != null &&
        e.ingredientsStep!.ingredients.isNotEmpty) {
      return e.ingredientsStep!.ingredients
          .map(_labelResolved)
          .where((s) => s.isNotEmpty)
          .toList();
    }
    if (e.result != null && e.result!.ingredients.isNotEmpty) {
      return e.result!.ingredients
          .map(_labelResolved)
          .where((s) => s.isNotEmpty)
          .toList();
    }
    if (e.decomposition != null && e.decomposition!.ingredients.isNotEmpty) {
      return e.decomposition!.ingredients
          .map(_labelDecomposed)
          .where((s) => s.isNotEmpty)
          .toList();
    }
    return [];
  }

  List<String> _resolvedIngredientNames(MealAnalysisPipelineEvent e) {
    if (e.ingredientsStep != null &&
        e.ingredientsStep!.ingredients.isNotEmpty) {
      return e.ingredientsStep!.ingredients
          .map(_labelResolved)
          .where((s) => s.isNotEmpty)
          .toList();
    }
    if (e.result != null && e.result!.ingredients.isNotEmpty) {
      return e.result!.ingredients
          .map(_labelResolved)
          .where((s) => s.isNotEmpty)
          .toList();
    }
    return const [];
  }

  List<String> _decompositionIngredientNames(MealAnalysisPipelineEvent e) {
    if (e.decomposition != null && e.decomposition!.ingredients.isNotEmpty) {
      return e.decomposition!.ingredients
          .map(_labelDecomposed)
          .where((s) => s.isNotEmpty)
          .toList();
    }
    return const [];
  }

  void _updateIngredientAccumulator(MealAnalysisPipelineEvent event) {
    // Resolved-frame ingredients (INGREDIENTS, RESULT) always take precedence and
    // always refresh — clarification answers can refine totals or add/remove rows,
    // and the RESULT frame can carry a refined list. Freezing on the first
    // resolved frame would hide those updates.
    final resolvedNames = _resolvedIngredientNames(event);
    if (resolvedNames.isNotEmpty) {
      _ingredientStage = _IngredientStage.resolved;
      _ingredientNames = resolvedNames;
      return;
    }

    // Decomposition labels are placeholders shown only until the first resolved
    // frame arrives. Once we've seen resolved data, ignore later decomposition
    // frames (they shouldn't appear for V2, but guard anyway).
    if (_ingredientStage == _IngredientStage.resolved) return;

    final decompositionNames = _decompositionIngredientNames(event);
    if (_ingredientStage == _IngredientStage.none &&
        decompositionNames.isNotEmpty) {
      _ingredientStage = _IngredientStage.decomposition;
      _ingredientNames = decompositionNames;
    }
  }

  String _mealNameFromEvent(MealAnalysisPipelineEvent? event) =>
      (event?.mealName ?? '').trim();

  String get _currentMealName {
    final eventName = _mealNameFromEvent(_lastEvent);
    if (eventName.isNotEmpty) return eventName;
    return (widget.seedMealName ?? '').trim();
  }

  String _headerPhaseForEvent(MealAnalysisPipelineEvent? event) {
    if (event == null) return 'seed';
    return switch (event.step) {
      PipelineStep.DECOMPOSITION => 'decomposition',
      PipelineStep.RESULT => 'result',
      PipelineStep.STARTED ||
      PipelineStep.INGREDIENTS ||
      PipelineStep.UNCERTAINTY ||
      PipelineStep.MEAL_TYPE_QUESTION => 'ingredients',
      _ => 'ingredients',
    };
  }

  void _maybeLogHeaderResolved({
    MealAnalysisPipelineEvent? event,
    bool fromSeed = false,
  }) {
    if (_headerResolvedLogged) return;
    final mealName =
        fromSeed
            ? (widget.seedMealName ?? '').trim()
            : _mealNameFromEvent(event);
    if (mealName.isEmpty) return;
    _headerResolvedLogged = true;
    Analytics.instance.logEvent(
      AnalyticsEvent.mealAnalysisHeaderResolvedToName,
      parameters: <String, Object>{
        'phaseAtResolution': fromSeed ? 'seed' : _headerPhaseForEvent(event),
      },
    );
  }

  int? _pipelinePhaseIndex(PipelineStep? step) {
    if (step == null) return null;
    if (step == PipelineStep.ERROR) return null;
    return switch (step) {
      PipelineStep.PIPELINE_STEP_UNSPECIFIED ||
      PipelineStep.STARTED ||
      PipelineStep.DECOMPOSITION => 0,
      PipelineStep.INGREDIENTS => 1,
      PipelineStep.UNCERTAINTY => 2,
      PipelineStep.MEAL_TYPE_QUESTION => 2,
      PipelineStep.RESULT => 3,
      _ => null,
    };
  }

  double? _effectiveProgressValue(MealAnalysisPipelineEvent? e) {
    final step = e?.step;
    var i = _pipelinePhaseIndex(step);
    if (i == null) return null;
    // Servers often omit a standalone INGREDIENTS frame; decomposition may already list foods.
    if (i == 0 &&
        step == PipelineStep.DECOMPOSITION &&
        e != null &&
        _detectedIngredientNames(e).isNotEmpty) {
      i = 1;
    }
    return (i + 1) / 4;
  }

  /// Maps backend [PipelineStep] to the four UX phases shown as "n/4".
  ///
  /// Phase index 1 ([progressMatch]) maps to [PipelineStep.INGREDIENTS]. Many backends
  /// stream DECOMPOSITION with ingredient names but skip INGREDIENTS; we treat that as
  /// phase 1 so users still see step 2 while ingredients are listed.
  int _effectiveDisplayPhase(MealAnalysisPipelineEvent? e) {
    final step = e?.step;
    var i = _pipelinePhaseIndex(step) ?? 0;
    if (i == 0 &&
        step == PipelineStep.DECOMPOSITION &&
        e != null &&
        _detectedIngredientNames(e).isNotEmpty) {
      return 1;
    }
    return i;
  }

  String _progressPhaseLabel({
    required List<String> progressLabels,
    required MealAnalysisPipelineEvent? event,
    required int displayPhase,
  }) {
    if (event?.step == PipelineStep.MEAL_TYPE_QUESTION) {
      return t.meal.analysis.progressMealType;
    }
    return progressLabels[displayPhase.clamp(0, 3)];
  }

  bool _shouldRebuildForDisplay(
    MealAnalysisPipelineEvent? previous,
    MealAnalysisPipelineEvent next,
    String previousMealName,
    List<String> previousIngredientNames,
    _IngredientStage previousIngredientStage,
  ) {
    if (previous == null) return true;
    final nName = _mealNameFromEvent(next);
    return previous.step != next.step ||
        previousMealName != (nName.isNotEmpty ? nName : _currentMealName) ||
        _ingredientCount(previous) != _ingredientCount(next) ||
        previousIngredientStage != _ingredientStage ||
        !listEquals(previousIngredientNames, _ingredientNames);
  }

  void _runAfterFrame(VoidCallback fn) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      fn();
    });
  }

  NavigatorState? _navigatorForSheet() {
    return Navigator.maybeOf(context) ??
        Navigator.maybeOf(context, rootNavigator: true);
  }

  void _safePopSheet([Object? result]) {
    if (!mounted || _sheetDismissed) return;
    final nav = _navigatorForSheet();
    if (nav == null || !nav.canPop()) return;
    _sheetDismissed = true;
    _subscription?.cancel();
    _subscription = null;
    if (result != null) {
      nav.pop(result);
    } else {
      nav.pop();
    }
  }

  void _dismissSheetAndShowMessage(String message) {
    if (!mounted || _sheetDismissed) return;
    final rootNav = Navigator.maybeOf(context, rootNavigator: true);
    final overlayCtx = rootNav?.overlay?.context;
    _safePopSheet();
    final ctx = overlayCtx;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (ctx != null && ctx.mounted) {
        showFlushbar(message, context: ctx);
      }
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
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final mealName = _currentMealName;
    final hasHeaderMealName = mealName.trim().isNotEmpty;
    final headerTitle = hasHeaderMealName ? mealName : t.meal.analysis.title;
    final ingredientNames = _ingredientNames;
    final ingredientCount =
        ingredientNames.isNotEmpty
            ? ingredientNames.length
            : _ingredientCount(_lastEvent);

    final progressVal = _effectiveProgressValue(_lastEvent);
    final displayPhase = _effectiveDisplayPhase(_lastEvent);

    final progressLabels = [
      t.meal.analysis.progressUnderstand,
      t.meal.analysis.progressMatch,
      t.meal.analysis.progressCheck,
      t.meal.analysis.progressFinish,
    ];
    final phaseLabel = _progressPhaseLabel(
      progressLabels: progressLabels,
      event: _lastEvent,
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
          if (widget.imageBytes != null && widget.imageBytes!.isNotEmpty) ...[
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
            value: progressVal,
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
  }

  String _shortText(String value, int maxChars) {
    if (value.length <= maxChars) return value;
    return '${value.substring(0, maxChars).trim()}…';
  }

  Future<void> _beginAnalysis() async {
    Analytics.instance.logEvent(AnalyticsEvent.mealAnalysisV2Started);

    try {
      final stream = await widget.startAnalysis();
      _subscription = stream.listen(
        (event) {
          if (!mounted || _sheetDismissed) return;

          if (event.step == PipelineStep.ERROR) {
            Analytics.instance.logEvent(AnalyticsEvent.mealAnalysisV2Failed);
            _runAfterFrame(() {
              if (!mounted || _sheetDismissed) return;
              final msg = event.errorMessage ?? t.meal.analysis.stepError;
              _dismissSheetAndShowMessage(
                msg.isNotEmpty ? msg : t.meal.analysis.stepError,
              );
            });
            return;
          }

          final previousMealName = _currentMealName;
          final previousIngredientNames = List<String>.of(_ingredientNames);
          final previousIngredientStage = _ingredientStage;
          _updateIngredientAccumulator(event);
          _maybeLogHeaderResolved(event: event);
          final eventMealName = _mealNameFromEvent(event);
          final lastMealName =
              eventMealName.isNotEmpty ? eventMealName : _currentMealName;

          if (event.uncertainty != null &&
              event.uncertainty!.needsClarification &&
              event.uncertainty!.clarifications.isNotEmpty) {
            _runAfterFrame(() {
              if (!mounted || _sheetDismissed) return;
              _safePopSheet(
                _MealAnalysisFlowOutcome(
                  analysisId: event.analysisId,
                  clarifications: event.uncertainty!.clarifications,
                  lastMealName: lastMealName.isNotEmpty ? lastMealName : null,
                ),
              );
            });
            return;
          }

          if (event.mealTypeQuestion != null) {
            _runAfterFrame(() {
              if (!mounted || _sheetDismissed) return;
              _safePopSheet(
                _MealAnalysisFlowOutcome(
                  analysisId: event.analysisId,
                  mealTypeQuestion: event.mealTypeQuestion,
                  lastMealName: lastMealName.isNotEmpty ? lastMealName : null,
                ),
              );
            });
            return;
          }

          if (event.result != null) {
            Analytics.instance.logEvent(
              AnalyticsEvent.mealAnalysisV2Completed,
              parameters: <String, Object>{
                'duration_ms': _flowStopwatch.elapsedMilliseconds,
                'source':
                    widget.imageBytes != null && widget.imageBytes!.isNotEmpty
                        ? 'image'
                        : 'text',
              },
            );
            _runAfterFrame(() {
              if (!mounted || _sheetDismissed) return;
              _safePopSheet(
                _MealAnalysisFlowOutcome(
                  lastMealName: lastMealName.isNotEmpty ? lastMealName : null,
                  resultContext: MealAnalysisPipelineSessionContext(
                    result: event.result!,
                    imageBytes: widget.imageBytes,
                    imageUrl: widget.imageUrl,
                    textDescription: widget.textDescription,
                  ),
                ),
              );
            });
            return;
          }

          if (_shouldRebuildForDisplay(
            _lastEvent,
            event,
            previousMealName,
            previousIngredientNames,
            previousIngredientStage,
          )) {
            setState(() => _lastEvent = event);
          } else {
            _lastEvent = event;
          }
        },
        onError: (Object error) {
          if (!mounted || _sheetDismissed) return;
          Analytics.instance.logEvent(AnalyticsEvent.mealAnalysisV2Failed);
          _runAfterFrame(() {
            if (!mounted || _sheetDismissed) return;
            final msg =
                error is Exception ? '$error' : t.meal.analysis.stepError;
            _dismissSheetAndShowMessage(msg);
          });
        },
      );
    } on Exception catch (error) {
      if (!mounted || _sheetDismissed) return;
      Analytics.instance.logEvent(AnalyticsEvent.mealAnalysisV2Failed);
      _runAfterFrame(() {
        if (!mounted || _sheetDismissed) return;
        _dismissSheetAndShowMessage('$error');
      });
    }
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
