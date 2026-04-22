import 'dart:async';
import 'dart:typed_data';

import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/models/meal_analysis_v2.dart';
import 'package:calorify/core/repositories/food_repository.dart';
import 'package:calorify/core/router/route_names.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_clarification_sheet.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_type_sheet.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_tip_sheet.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

Future<void> showV2MealAnalysisFlow({
  required BuildContext context,
  required Future<Stream<V2MealAnalysisEvent>> Function() startAnalysis,
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
    imageBytes: finalContext.imageBytes,
    mealDetectionResult: finalContext.toMealDetectionResult(),
    v2Analysis: finalContext,
  );
}

Future<V2MealAnalysisContext?> resolveV2MealAnalysisFlow({
  required BuildContext context,
  required Future<Stream<V2MealAnalysisEvent>> Function() startAnalysis,
  Uint8List? imageBytes,
  String? imageUrl,
  String? textDescription,
}) async {
  var nextAnalysis = startAnalysis;

  while (context.mounted) {
    final outcome = await showModalBottomSheet<_V2MealAnalysisOutcome>(
      context: context,
      isDismissible: true,
      showDragHandle: true,
      isScrollControlled: true,
      routeSettings: const RouteSettings(name: RouteNames.mealAnalysisSheet),
      builder: (context) => _V2MealAnalysisSheet(
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
      nextAnalysis = () => FoodRepository().clarifyV2(
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
      nextAnalysis = () => FoodRepository().submitMealTypeV2(
        analysisId: outcome.analysisId!,
        mealType: selectedMealType,
      );
      continue;
    }

    return null;
  }

  return null;
}

class _V2MealAnalysisOutcome {
  const _V2MealAnalysisOutcome({
    this.resultContext,
    this.analysisId,
    this.clarifications = const [],
    this.mealTypeQuestion,
  });

  final V2MealAnalysisContext? resultContext;
  final String? analysisId;
  final List<V2MealClarification> clarifications;
  final V2MealTypeQuestion? mealTypeQuestion;
}

class _V2MealAnalysisSheet extends StatefulWidget {
  const _V2MealAnalysisSheet({
    required this.startAnalysis,
    this.imageBytes,
    this.imageUrl,
    this.textDescription,
  });

  final Future<Stream<V2MealAnalysisEvent>> Function() startAnalysis;
  final Uint8List? imageBytes;
  final String? imageUrl;
  final String? textDescription;

  @override
  State<_V2MealAnalysisSheet> createState() => _V2MealAnalysisSheetState();
}

class _V2MealAnalysisSheetState extends State<_V2MealAnalysisSheet>
    with SingleTickerProviderStateMixin {
  StreamSubscription<V2MealAnalysisEvent>? _subscription;
  V2MealAnalysisEvent? _lastEvent;
  bool _isLoading = true;

  late final AnimationController _shimmerController;

  @override
  void initState() {
    super.initState();
    _shimmerController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    )..repeat();
    _beginAnalysis();
  }

  @override
  void dispose() {
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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    final statusText = switch (_lastEvent?.step) {
      V2MealAnalysisStep.decomposition => 'Understanding your meal...',
      V2MealAnalysisStep.ingredients => 'Matching ingredients...',
      V2MealAnalysisStep.uncertainty => 'Checking confidence...',
      V2MealAnalysisStep.mealTypeQuestion => 'Waiting for a quick confirmation...',
      V2MealAnalysisStep.result => 'Finalizing result...',
      V2MealAnalysisStep.error => 'Something went wrong',
      null => 'Analyzing your meal...',
    };

    final mealName = _lastEvent?.mealName ?? _lastEvent?.result?.mealName;
    final ingredientCount =
        _lastEvent?.decomposedIngredients.length ??
        _lastEvent?.ingredients.length ??
        _lastEvent?.result?.ingredients.length ??
        0;

    final hasMealName = mealName != null && mealName.isNotEmpty;

    return BaseBottomSheet(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(LucideIcons.wandSparkles, color: colorScheme.primary),
              const SizedBox(width: 8),
              Text(
                'AI meal analysis',
                style: textTheme.titleLarge?.copyWith(
                  color: colorScheme.onSurface,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          if (_isLoading) ...[
            CircularProgressIndicator(color: colorScheme.primary),
            const SizedBox(height: 20),
          ],
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (child, animation) =>
                FadeTransition(opacity: animation, child: child),
            child: Text(
              statusText,
              key: ValueKey<String>(statusText),
              textAlign: TextAlign.center,
              style: textTheme.titleMedium?.copyWith(color: colorScheme.onSurface),
            ),
          ),
          const SizedBox(height: 16),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 400),
            transitionBuilder: (child, animation) =>
                FadeTransition(opacity: animation, child: child),
            child: hasMealName
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
                      children: [
                        _shimmerBox(width: 200, height: 18),
                      ],
                    ),
                  ),
          ),
          const SizedBox(height: 8),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 400),
            transitionBuilder: (child, animation) =>
                FadeTransition(opacity: animation, child: child),
            child: ingredientCount > 0
                ? Text(
                    '$ingredientCount ingredients detected',
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

          if (event.step == V2MealAnalysisStep.error) {
            Analytics.instance.logEvent(AnalyticsEvent.mealAnalysisV2Failed);
            showFlushbar(
              event.errorMessage ?? 'Failed to analyze meal',
              context: context,
            );
            Navigator.of(context).pop();
            return;
          }

          if (event.uncertainty != null &&
              event.uncertainty!.needsClarification &&
              event.uncertainty!.clarifications.isNotEmpty) {
            Navigator.of(context).pop(
              _V2MealAnalysisOutcome(
                analysisId: event.analysisId,
                clarifications: event.uncertainty!.clarifications,
              ),
            );
            return;
          }

          if (event.mealTypeQuestion != null) {
            Navigator.of(context).pop(
              _V2MealAnalysisOutcome(
                analysisId: event.analysisId,
                mealTypeQuestion: event.mealTypeQuestion,
              ),
            );
            return;
          }

          if (event.result != null) {
            Analytics.instance.logEvent(AnalyticsEvent.mealAnalysisV2Completed);
            Navigator.of(context).pop(
              _V2MealAnalysisOutcome(
                resultContext: V2MealAnalysisContext(
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
            error is Exception ? '$error' : 'Failed to analyze meal',
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
