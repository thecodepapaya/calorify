import 'dart:async';
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
  bool _isLoading = true;

  late final AnimationController _shimmerController;
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
    if (_tips.isEmpty) {
      _tips = [t.meal.analysis.reassurance];
    }
    _flowStopwatch = Stopwatch()..start();
    _shimmerController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    )..repeat();
    _scheduleTipCycle();
    WidgetsBinding.instance.addPostFrameCallback((_) => _loadRemoteTips());
    _beginAnalysis();
  }

  void _scheduleTipCycle() {
    _tipCycleTimer?.cancel();
    final count = _tips.isEmpty ? 1 : _tips.length;
    _tipCycleTimer = Timer.periodic(const Duration(seconds: 5), (_) {
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
        setState(() {
          _tips = List<String>.from(remote);
          _tipIndex = _tipIndex % _tips.length;
        });
        _scheduleTipCycle();
      }),
    );
  }

  @override
  void dispose() {
    _tipCycleTimer?.cancel();
    _shimmerController.dispose();
    _subscription?.cancel();
    super.dispose();
  }

  Widget _shimmerBox({double width = double.infinity, double height = 16}) {
    final colorScheme = Theme.of(context).colorScheme;
    final base = colorScheme.surfaceContainerHighest;
    final highlight = colorScheme.onSurfaceVariant.withValues(alpha: 0.12);
    return AnimatedBuilder(
      animation: _shimmerController,
      builder: (context, _) {
        final t = _shimmerController.value;
        final begin = Alignment(t * 4 - 2, 0);
        final end = Alignment(t * 4 - 1, 0);
        return Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              begin: begin,
              end: end,
              colors: [base, highlight, base],
            ),
          ),
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

  String _statusForStep(PipelineStep? step) {
    final m = t.meal.analysis;
    return switch (step) {
      null => m.stepDefault,
      PipelineStep.STARTED => m.stepStarted,
      PipelineStep.DECOMPOSITION => m.stepDecomposition,
      PipelineStep.INGREDIENTS => m.stepIngredients,
      PipelineStep.UNCERTAINTY => m.stepUncertainty,
      PipelineStep.MEAL_TYPE_QUESTION => m.stepMealTypeQuestion,
      PipelineStep.RESULT => m.stepResult,
      PipelineStep.ERROR => m.stepError,
      _ => m.stepDefault,
    };
  }

  double? _progressValue(PipelineStep? step) {
    if (step == null) return null;
    if (step == PipelineStep.ERROR) return null;
    final idx = switch (step) {
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
    if (idx == null) return null;
    return (idx + 1) / 4;
  }

  int _completedProgressDots(PipelineStep? step) {
    if (step == null) return 0;
    return switch (step) {
      PipelineStep.STARTED ||
      PipelineStep.DECOMPOSITION =>
        0,
      PipelineStep.INGREDIENTS => 1,
      PipelineStep.UNCERTAINTY ||
      PipelineStep.MEAL_TYPE_QUESTION =>
        2,
      PipelineStep.RESULT => 3,
      PipelineStep.ERROR ||
      PipelineStep.PIPELINE_STEP_UNSPECIFIED =>
        0,
      _ => 0,
    };
  }

  String _rotatingTip(int index) {
    if (_tips.isEmpty) return '';
    return _tips[index % _tips.length];
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final step = _lastEvent?.step;
    final statusText = _statusForStep(step);
    final mealName = _lastEvent?.mealName ?? _lastEvent?.result?.mealName;
    final ingredientCount = _ingredientCount(_lastEvent);

    final hasMealName = mealName != null && mealName.isNotEmpty;
    final progressVal = _progressValue(step);
    final doneDots = _completedProgressDots(step);

    final progressLabels = [
      t.meal.analysis.progressUnderstand,
      t.meal.analysis.progressMatch,
      t.meal.analysis.progressCheck,
      t.meal.analysis.progressFinish,
    ];

    return BaseBottomSheet(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(AppIcons.wandSparkles, color: colorScheme.primary),
              const SizedBox(width: 8),
              Text(
                t.meal.analysis.title,
                style: textTheme.titleLarge?.copyWith(
                  color: colorScheme.onSurface,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          if (widget.imageBytes != null && widget.imageBytes!.isNotEmpty) ...[
            const SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.memory(
                widget.imageBytes!,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ] else if (widget.textDescription != null &&
              widget.textDescription!.trim().isNotEmpty) ...[
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                t.meal.analysis.mealPreviewDescription(
                  text: _shortText(widget.textDescription!.trim(), 120),
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurface.withValues(alpha: 0.75),
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
          const SizedBox(height: 20),
          if (progressVal == null)
            LinearProgressIndicator(
              borderRadius: BorderRadius.circular(4),
              color: colorScheme.primary,
              backgroundColor: colorScheme.surfaceContainerHighest,
            )
          else
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: progressVal,
                color: colorScheme.primary,
                backgroundColor: colorScheme.surfaceContainerHighest,
              ),
            ),
          const SizedBox(height: 8),
          Row(
            children: List.generate(4, (i) {
              final active = i <= doneDots;
              return Expanded(
                child: Column(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            active
                                ? colorScheme.primary
                                : colorScheme.outline.withValues(alpha: 0.35),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      progressLabels[i],
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: textTheme.labelSmall?.copyWith(
                        color:
                            active
                                ? colorScheme.onSurface
                                : colorScheme.onSurface.withValues(alpha: 0.45),
                        fontWeight: active ? FontWeight.w600 : FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
          const SizedBox(height: 20),
          if (_isLoading) ...[
            SizedBox(
              width: 28,
              height: 28,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                color: colorScheme.primary,
              ),
            ),
            const SizedBox(height: 16),
          ],
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder:
                (child, animation) =>
                    FadeTransition(opacity: animation, child: child),
            child: Text(
              statusText,
              key: ValueKey<String>(statusText),
              textAlign: TextAlign.center,
              style: textTheme.titleMedium?.copyWith(
                color: colorScheme.onSurface,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            t.meal.analysis.reassurance,
            textAlign: TextAlign.center,
            style: textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurface.withValues(alpha: 0.55),
            ),
          ),
          const SizedBox(height: 6),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 400),
            transitionBuilder:
                (child, animation) =>
                    FadeTransition(opacity: animation, child: child),
            child: Text(
              _rotatingTip(_tipIndex),
              key: ValueKey<int>(_tipIndex),
              textAlign: TextAlign.center,
              style: textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurface.withValues(alpha: 0.5),
                height: 1.35,
              ),
            ),
          ),
          const SizedBox(height: 16),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 400),
            transitionBuilder:
                (child, animation) =>
                    FadeTransition(opacity: animation, child: child),
            child:
                hasMealName
                    ? Text(
                      mealName,
                      key: ValueKey<String>(mealName),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: textTheme.bodyLarge?.copyWith(
                        color: colorScheme.onSurface.withValues(alpha: 0.85),
                        fontWeight: FontWeight.w500,
                      ),
                    )
                    : SizedBox(
                      key: const ValueKey('shimmer-name'),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [_shimmerBox(width: 200, height: 18)],
                      ),
                    ),
          ),
          const SizedBox(height: 8),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 400),
            transitionBuilder:
                (child, animation) =>
                    FadeTransition(opacity: animation, child: child),
            child:
                ingredientCount > 0
                    ? Text(
                      t.meal.analysis.ingredientsLine(count: ingredientCount),
                      key: ValueKey<int>(ingredientCount),
                      textAlign: TextAlign.center,
                      style: textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurface.withValues(alpha: 0.6),
                      ),
                    )
                    : SizedBox(
                      key: const ValueKey('shimmer-ingredients'),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            t.meal.analysis.ingredientsPending,
                            style: textTheme.bodySmall?.copyWith(
                              color: colorScheme.onSurface.withValues(alpha: 0.45),
                            ),
                          ),
                          const SizedBox(height: 6),
                          _shimmerBox(width: 140, height: 13),
                        ],
                      ),
                    ),
          ),
          const SizedBox(height: 8),
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
          if (!mounted) return;
          setState(() {
            _lastEvent = event;
          });

          if (event.step == PipelineStep.ERROR) {
            Analytics.instance.logEvent(AnalyticsEvent.mealAnalysisV2Failed);
            showFlushbar(
              event.errorMessage ?? t.meal.analysis.stepError,
              context: context,
            );
            Navigator.of(context).pop();
            return;
          }

          if (event.uncertainty != null &&
              event.uncertainty!.needsClarification &&
              event.uncertainty!.clarifications.isNotEmpty) {
            Navigator.of(context).pop(
              _MealAnalysisFlowOutcome(
                analysisId: event.analysisId,
                clarifications: event.uncertainty!.clarifications,
              ),
            );
            return;
          }

          if (event.mealTypeQuestion != null) {
            Navigator.of(context).pop(
              _MealAnalysisFlowOutcome(
                analysisId: event.analysisId,
                mealTypeQuestion: event.mealTypeQuestion,
              ),
            );
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
            Navigator.of(context).pop(
              _MealAnalysisFlowOutcome(
                resultContext: MealAnalysisPipelineSessionContext(
                  result: event.result!,
                  imageBytes: widget.imageBytes,
                  imageUrl: widget.imageUrl,
                  textDescription: widget.textDescription,
                ),
              ),
            );
          }
        },
        onDone: () {
          if (!mounted) return;
          setState(() => _isLoading = false);
        },
        onError: (Object error) {
          if (!mounted) return;
          Analytics.instance.logEvent(AnalyticsEvent.mealAnalysisV2Failed);
          showFlushbar(
            error is Exception ? '$error' : t.meal.analysis.stepError,
            context: context,
          );
          Navigator.of(context).pop();
        },
      );
    } on Exception catch (error) {
      if (!mounted) return;
      Analytics.instance.logEvent(AnalyticsEvent.mealAnalysisV2Failed);
      showFlushbar('$error', context: context);
      Navigator.of(context).pop();
    }
  }
}
