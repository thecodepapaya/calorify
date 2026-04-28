import 'dart:async';
import 'dart:math' as math;
import 'dart:typed_data';

import 'package:calorify/core/constants/analytics_events.dart';
import 'package:models/models.dart';
import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/core/router/route_names.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_clarification_sheet.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_type_sheet.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_tip_sheet.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:widgets/widgets.dart';

Future<void> showV2MealAnalysisFlow({
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

  if (finalContext == null || !context.mounted) return;

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
}

Future<MealAnalysisPipelineSessionContext?> resolveV2MealAnalysisFlow({
  required BuildContext context,
  required Future<Stream<MealAnalysisPipelineEvent>> Function() startAnalysis,
  Uint8List? imageBytes,
  String? imageUrl,
  String? textDescription,
}) async {
  var nextAnalysis = startAnalysis;

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
          ),
    );

    if (outcome == null || !context.mounted) {
      return null;
    }

    if (outcome.resultContext != null) {
      return outcome.resultContext;
    }

    if (!context.mounted || outcome.analysisId == null) {
      return null;
    }

    if (outcome.clarifications.isNotEmpty) {
      Analytics.instance.logEvent(AnalyticsEvent.mealClarificationShown);
      final answers = await showV2MealClarificationSheet(
        context: context,
        clarifications: outcome.clarifications,
      );
      if (answers == null || !context.mounted) {
        Analytics.instance.logEvent(AnalyticsEvent.mealClarificationDismissed);
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

class _MealAnalysisFlowOutcome {
  const _MealAnalysisFlowOutcome({
    this.resultContext,
    this.analysisId,
    this.clarifications = const [],
    this.mealTypeQuestion,
  });

  final MealAnalysisPipelineSessionContext? resultContext;
  final String? analysisId;
  final List<PipelineClarification> clarifications;
  final PipelineMealTypeQuestionData? mealTypeQuestion;
}

class _MealAnalysisPipelineSheet extends StatefulWidget {
  const _MealAnalysisPipelineSheet({
    required this.startAnalysis,
    this.imageBytes,
    this.imageUrl,
    this.textDescription,
  });

  final Future<Stream<MealAnalysisPipelineEvent>> Function() startAnalysis;
  final Uint8List? imageBytes;
  final String? imageUrl;
  final String? textDescription;

  @override
  State<_MealAnalysisPipelineSheet> createState() =>
      _MealAnalysisPipelineSheetState();
}

class _MealAnalysisPipelineSheetState extends State<_MealAnalysisPipelineSheet>
    with SingleTickerProviderStateMixin {
  StreamSubscription<MealAnalysisPipelineEvent>? _subscription;
  MealAnalysisPipelineEvent? _lastEvent;

  bool _sheetDismissed = false;
  late final AnimationController _placeholderPulseController;
  late final Stopwatch _flowStopwatch;
  Timer? _tipCycleTimer;
  int _tipIndex = 0;
  late List<String> _tips;

  List<String> _localOfflineTips() {
    final m = t.meal.analysis;
    final raw = <String>[
      m.offlineTip0,
      m.offlineTip1,
      m.offlineTip2,
      m.offlineTip3,
      m.offlineTip4,
      m.offlineTip5,
    ];
    return raw.map((s) => s.trim()).where((s) => s.isNotEmpty).toList();
  }

  @override
  void initState() {
    super.initState();
    _tips = _localOfflineTips();
    final reassurance = t.meal.analysis.reassurance.trim();
    if (_tips.isEmpty) {
      _tips = reassurance.isNotEmpty
          ? [reassurance]
          : [t.meal.analysis.stepDefault];
    } else if (reassurance.isNotEmpty) {
      _tips = [reassurance, ..._tips];
    }
    _flowStopwatch = Stopwatch()..start();
    _placeholderPulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2200),
    )..repeat();
    _scheduleTipCycle();
    WidgetsBinding.instance.addPostFrameCallback((_) => _loadRemoteTips());
    _beginAnalysis();
  }

  void _scheduleTipCycle() {
    _tipCycleTimer?.cancel();
    final count = _tips.isEmpty ? 1 : _tips.length;
    _tipCycleTimer = Timer.periodic(const Duration(seconds: 8), (_) {
      if (!mounted) return;
      setState(() => _tipIndex = (_tipIndex + 1) % count);
    });
  }

  void _loadRemoteTips() {
    final repo =
        ProviderScope.containerOf(context, listen: false).read(foodRepositoryProvider);
    unawaited(
      repo.getMealAnalysisTips().then((remote) {
        if (!mounted || remote.isEmpty) return;
        final reassurance = t.meal.analysis.reassurance.trim();
        setState(() {
          _tips = reassurance.isNotEmpty
              ? [reassurance, ...remote]
              : List<String>.from(remote);
          _tipIndex = _tipIndex % _tips.length;
        });
        _scheduleTipCycle();
      }),
    );
  }

  @override
  void dispose() {
    _tipCycleTimer?.cancel();
    _placeholderPulseController.dispose();
    _subscription?.cancel();
    super.dispose();
  }

  Widget _analyzingMotionHero(ColorScheme colorScheme) {
    return SizedBox(
      height: 124,
      width: double.infinity,
      child: AnimatedBuilder(
        animation: _placeholderPulseController,
        builder: (context, _) {
          final u = _placeholderPulseController.value;
          final breathe = 1 + 0.06 * math.sin(u * 2 * math.pi);
          final drift = 0.04 * math.sin(u * 2 * math.pi * 0.65);
          return Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              for (int i = 0; i < 3; i++)
                _rippleRing(colorScheme, u, i),
              Transform.rotate(
                angle: drift,
                child: Transform.scale(
                  scale: breathe,
                  child: Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(
                        colors: [
                          colorScheme.primary.withValues(alpha: 0.2),
                          colorScheme.primary.withValues(alpha: 0.05),
                        ],
                      ),
                      border: Border.all(
                        color: colorScheme.primary.withValues(alpha: 0.28),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color:
                              colorScheme.primary.withValues(alpha: 0.14),
                          blurRadius: 18,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Icon(
                      AppIcons.sparkles,
                      size: 26,
                      color: colorScheme.primary,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _rippleRing(ColorScheme colorScheme, double u, int index) {
    final delayed = (u + index * 0.26) % 1.0;
    final eased = Curves.easeOutCubic.transform(delayed);
    final diameter = 40 + eased * 86;
    final opacity =
        (1.0 - delayed) * (0.22 + 0.2 * math.sin(delayed * math.pi));
    return IgnorePointer(
      child: Opacity(
        opacity: opacity.clamp(0.0, 0.48),
        child: Container(
          width: diameter,
          height: diameter,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: colorScheme.primary.withValues(alpha: 0.5),
              width: 1.35,
            ),
          ),
        ),
      ),
    );
  }

  Widget _analyzingDotsPlaceholder(ColorScheme colorScheme) {
    return AnimatedBuilder(
      animation: _placeholderPulseController,
      builder: (context, _) {
        final t = _placeholderPulseController.value * 2 * math.pi;
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: List<Widget>.generate(3, (i) {
            final wave = math.sin(t - i * 0.65);
            final scale = 0.68 + 0.32 * (wave + 1) / 2;
            final opacity = 0.34 + 0.46 * (wave + 1) / 2;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Transform.scale(
                scale: scale,
                alignment: Alignment.center,
                child: Container(
                  width: 9,
                  height: 9,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: colorScheme.primary.withValues(
                      alpha: opacity.clamp(0.22, 0.92),
                    ),
                  ),
                ),
              ),
            );
          }),
        );
      },
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

  int? _pipelinePhaseIndex(PipelineStep? step) {
    if (step == null) return null;
    if (step == PipelineStep.ERROR) return null;
    return switch (step) {
      PipelineStep.STARTED ||
      PipelineStep.DECOMPOSITION =>
        0,
      PipelineStep.INGREDIENTS => 1,
      PipelineStep.UNCERTAINTY ||
      PipelineStep.MEAL_TYPE_QUESTION =>
        2,
      PipelineStep.RESULT => 3,
      _ => null,
    };
  }

  double? _progressValue(PipelineStep? step) {
    final i = _pipelinePhaseIndex(step);
    if (i == null) return null;
    return (i + 1) / 4;
  }

  int _displayPhaseIndex(PipelineStep? step) => _pipelinePhaseIndex(step) ?? 0;

  String _rotatingTip(int index) {
    if (_tips.isEmpty) return '';
    return _tips[index % _tips.length];
  }

  bool _shouldRebuildForDisplay(
    MealAnalysisPipelineEvent? previous,
    MealAnalysisPipelineEvent next,
  ) {
    if (previous == null) return true;
    final pName = (previous.mealName ?? '').trim();
    final nName = (next.mealName ?? '').trim();
    return previous.step != next.step ||
        pName != nName ||
        _ingredientCount(previous) != _ingredientCount(next);
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
    required bool hasMealName,
    required String? mealName,
    required int ingredientCount,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    if (hasMealName && ingredientCount > 0) {
      final title = mealName!;
      return Column(
        key: ValueKey<String>('$title|$ingredientCount'),
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: textTheme.titleSmall?.copyWith(
              color: colorScheme.onSurface.withValues(alpha: 0.94),
              fontWeight: FontWeight.w600,
              height: 1.25,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            t.meal.analysis.ingredientsLine(count: ingredientCount),
            textAlign: TextAlign.center,
            style: textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
              height: 1.3,
            ),
          ),
        ],
      );
    }
    if (hasMealName) {
      final title = mealName!;
      return Text(
        title,
        key: ValueKey<String>(title),
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: textTheme.titleSmall?.copyWith(
          color: colorScheme.onSurface.withValues(alpha: 0.94),
          fontWeight: FontWeight.w600,
          height: 1.25,
        ),
      );
    }
    if (ingredientCount > 0) {
      return Text(
        t.meal.analysis.ingredientsLine(count: ingredientCount),
        key: ValueKey<int>(ingredientCount),
        textAlign: TextAlign.center,
        style: textTheme.bodyMedium?.copyWith(
          color: colorScheme.onSurfaceVariant,
        ),
      );
    }
    return SizedBox(
      key: const ValueKey<String>('preview-placeholder'),
      height: 32,
      child: Center(child: _analyzingDotsPlaceholder(colorScheme)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final step = _lastEvent?.step;
    final mealName = _lastEvent?.mealName;
    final ingredientCount = _ingredientCount(_lastEvent);

    final hasMealName = mealName != null && mealName.isNotEmpty;
    final progressVal = _progressValue(step);
    final displayPhase = _displayPhaseIndex(step);

    final progressLabels = [
      t.meal.analysis.progressUnderstand,
      t.meal.analysis.progressMatch,
      t.meal.analysis.progressCheck,
      t.meal.analysis.progressFinish,
    ];
    final phaseLabel = progressLabels[displayPhase.clamp(0, 3)];

    return BaseBottomSheet(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colorScheme.primary.withValues(alpha: 0.12),
                ),
                child: Icon(
                  AppIcons.wandSparkles,
                  size: 22,
                  color: colorScheme.primary,
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(
                    t.meal.analysis.title,
                    style: textTheme.titleLarge?.copyWith(
                      color: colorScheme.onSurface,
                      fontWeight: FontWeight.w600,
                      height: 1.2,
                    ),
                  ),
                ),
              ),
            ],
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
                color:
                    colorScheme.surfaceContainerHighest.withValues(alpha: 0.42),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: colorScheme.outlineVariant.withValues(alpha: 0.28),
                ),
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
          const SizedBox(height: 22),
          ClipRRect(
            borderRadius: BorderRadius.circular(999),
            child: LinearProgressIndicator(
              value: progressVal,
              minHeight: 5,
              color: colorScheme.primary,
              backgroundColor:
                  colorScheme.surfaceContainerHighest.withValues(alpha: 0.88),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    phaseLabel,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.labelLarge?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  '${displayPhase + 1}/4',
                  style: textTheme.labelMedium?.copyWith(
                    color: colorScheme.onSurface.withValues(alpha: 0.45),
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.2,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          _analyzingMotionHero(colorScheme),
          const SizedBox(height: 12),
          DecoratedBox(
            decoration: BoxDecoration(
              color: colorScheme.surfaceContainerHigh.withValues(alpha: 0.42),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: colorScheme.outlineVariant.withValues(alpha: 0.22),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 320),
                switchInCurve: Curves.easeOut,
                switchOutCurve: Curves.easeIn,
                transitionBuilder: (child, animation) =>
                    FadeTransition(opacity: animation, child: child),
                child: _emergingPreviewContent(
                  hasMealName: hasMealName,
                  mealName: mealName,
                  ingredientCount: ingredientCount,
                ),
              ),
            ),
          ),
          const SizedBox(height: 18),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Icon(
                  AppIcons.lightbulb,
                  size: 17,
                  color: colorScheme.primary.withValues(alpha: 0.75),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 380),
                  switchInCurve: Curves.easeOut,
                  switchOutCurve: Curves.easeIn,
                  transitionBuilder: (child, animation) =>
                      FadeTransition(opacity: animation, child: child),
                  child: Text(
                    _rotatingTip(_tipIndex),
                    key: ValueKey<int>(_tipIndex),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurface.withValues(alpha: 0.5),
                      height: 1.4,
                    ),
                  ),
                ),
              ),
            ],
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

          if (event.uncertainty != null &&
              event.uncertainty!.needsClarification &&
              event.uncertainty!.clarifications.isNotEmpty) {
            _runAfterFrame(() {
              if (!mounted || _sheetDismissed) return;
              _safePopSheet(
                _MealAnalysisFlowOutcome(
                  analysisId: event.analysisId,
                  clarifications: event.uncertainty!.clarifications,
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

          if (_shouldRebuildForDisplay(_lastEvent, event)) {
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
