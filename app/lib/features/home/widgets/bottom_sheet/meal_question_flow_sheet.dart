import 'dart:typed_data';

import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/router/route_names.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_question_flow_widgets.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_tip_sheet.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:calorify/shared_widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';

/// Post-detection follow-up ([MealDetectionResponse.variations]): non-dismissible, Skip, auto-next.
Future<void> showMealQuestionFlowFromDetection({
  required BuildContext context,
  required MealDetectionResponse response,
  Uint8List? imageBytes,
  bool isDebugPreview = false,
}) {
  return showModalBottomSheet<void>(
    context: context,
    isDismissible: false,
    showDragHandle: true,
    enableDrag: true,
    isScrollControlled: true,
    routeSettings: const RouteSettings(name: RouteNames.mealQuestionFlowSheet),
    builder:
        (_) => MealQuestionFlowSheet._fromDetection(
          detectionResponse: response,
          imageBytes: imageBytes,
          isDebugPreview: isDebugPreview,
        ),
  );
}

/// Mid-pipeline follow-up ([PipelineClarification]): dismissible, Primary advances.
Future<List<MealClarificationAnswer>?> showMealQuestionFlowFromPipeline({
  required BuildContext context,
  required List<PipelineClarification> clarifications,
}) {
  return showModalBottomSheet<List<MealClarificationAnswer>>(
    context: context,
    isDismissible: true,
    showDragHandle: true,
    isScrollControlled: true,
    routeSettings: const RouteSettings(name: RouteNames.mealQuestionFlowSheet),
    builder:
        (_) => MealQuestionFlowSheet._fromPipeline(
          pipelineClarifications: clarifications,
        ),
  );
}

/// Single UI for post-detection [Variation] questions and [PipelineClarification] steps.
class MealQuestionFlowSheet extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables — model args are not const.
  MealQuestionFlowSheet._fromDetection({
    required this.detectionResponse,
    this.imageBytes,
    required this.isDebugPreview,
  }) : pipelineClarifications = null,
       _source = _MealQuestionFlowSource.detection;

  // ignore: prefer_const_constructors_in_immutables
  MealQuestionFlowSheet._fromPipeline({required this.pipelineClarifications})
    : detectionResponse = null,
      imageBytes = null,
      isDebugPreview = false,
      _source = _MealQuestionFlowSource.pipeline;

  final MealDetectionResponse? detectionResponse;
  final List<PipelineClarification>? pipelineClarifications;
  final Uint8List? imageBytes;
  final bool isDebugPreview;
  final _MealQuestionFlowSource _source;

  List<Variation> get _detectionVariations =>
      detectionResponse?.variations ?? const <Variation>[];

  List<PipelineClarification> get _pipelineSteps =>
      pipelineClarifications ?? const <PipelineClarification>[];

  bool get _isDetection => _source == _MealQuestionFlowSource.detection;

  @override
  State<MealQuestionFlowSheet> createState() => _MealQuestionFlowSheetState();
}

enum _MealQuestionFlowSource { detection, pipeline }

class _MealQuestionFlowSheetState extends State<MealQuestionFlowSheet>
    with TickerProviderStateMixin {
  int _currentQuestionIndex = 0;
  final Map<int, int> _selectedOptions = <int, int>{};

  late AnimationController _fadeController;
  late Animation<double> _fadeAnimation;

  /// Set when the sheet exits successfully (detection merge + tip, or pipeline answers).
  bool _flowCompletedSuccessfully = false;

  late final List<MealQuestionFlowUiStep> _steps;

  int get _totalSteps =>
      widget._isDetection
          ? widget._detectionVariations.length
          : widget._pipelineSteps.length;

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeInOut,
    );

    _steps =
        widget._isDetection
            ? widget._detectionVariations
                .map(
                  (v) => MealQuestionFlowUiStep(
                    question: v.question,
                    optionLabels: v.options
                        .map((o) => o.option)
                        .toList(growable: false),
                    optionDetails: const <String?>[],
                  ),
                )
                .toList(growable: false)
            : widget._pipelineSteps
                .map(
                  (c) => MealQuestionFlowUiStep(
                    question: c.question,
                    optionLabels: c.options
                        .map((o) => o.label)
                        .toList(growable: false),
                    optionDetails: c.options
                        .map((o) => o.hasDetail() ? o.detail : null)
                        .toList(growable: false),
                  ),
                )
                .toList(growable: false);

    _fadeController.forward();

    Analytics.instance.logEvent(AnalyticsEvent.mealQuestionFlowShown);
  }

  @override
  void dispose() {
    if (!_flowCompletedSuccessfully) {
      Analytics.instance.logEvent(AnalyticsEvent.mealQuestionFlowDismissed);
    }
    _fadeController.dispose();
    super.dispose();
  }

  void _fadeThen(VoidCallback action) {
    _fadeController.reverse().then((_) {
      if (!mounted) return;
      action();
      _fadeController.forward();
    });
  }

  List<MealClarificationAnswer> get _pipelineAnswers {
    assert(!widget._isDetection);
    return List.generate(widget._pipelineSteps.length, (index) {
      final step = widget._pipelineSteps[index];
      final defaultIndex = step.options.indexWhere(
        (option) => option.optionId == step.defaultOptionId,
      );
      final selectedIndex =
          _selectedOptions[index] ?? (defaultIndex >= 0 ? defaultIndex : 0);
      final selectedOption =
          selectedIndex >= 0 && selectedIndex < step.options.length
              ? step.options[selectedIndex]
              : step.options.first;
      return MealClarificationAnswer(
        clarificationId: step.clarificationId,
        selectedOptionId: selectedOption.optionId,
      );
    });
  }

  void _onDetectionOptionSelected(int optionIndex) {
    setState(() {
      _selectedOptions[_currentQuestionIndex] = optionIndex;
    });

    final isLastQuestion =
        _currentQuestionIndex == widget._detectionVariations.length - 1;

    Future.delayed(const Duration(milliseconds: 300), () {
      if (!mounted) return;
      Analytics.instance.logEvent(AnalyticsEvent.mealQuestionFlowNext);
      if (isLastQuestion) {
        _onDetectionComplete();
      } else {
        _fadeThen(() => setState(() => _currentQuestionIndex++));
      }
    });
  }

  void _onPipelineOptionSelected(int optionIndex) {
    setState(() {
      _selectedOptions[_currentQuestionIndex] = optionIndex;
    });
  }

  void _detectionBack() {
    if (_currentQuestionIndex <= 0) return;
    Analytics.instance.logEvent(AnalyticsEvent.mealQuestionFlowBack);
    _fadeThen(() => setState(() => _currentQuestionIndex--));
  }

  void _pipelineBack() {
    if (_currentQuestionIndex <= 0) return;
    Analytics.instance.logEvent(AnalyticsEvent.mealQuestionFlowBack);
    _fadeThen(() => setState(() => _currentQuestionIndex--));
  }

  void _onDetectionSkip() {
    setState(() {
      _selectedOptions.remove(_currentQuestionIndex);
    });
    Analytics.instance.logEvent(AnalyticsEvent.mealQuestionFlowSkip);

    final isLast =
        _currentQuestionIndex == widget._detectionVariations.length - 1;
    if (isLast) {
      _onDetectionComplete();
      return;
    }
    _fadeThen(() => setState(() => _currentQuestionIndex++));
  }

  void _onPipelineSkip() {
    setState(() {
      _selectedOptions.remove(_currentQuestionIndex);
    });
    Analytics.instance.logEvent(AnalyticsEvent.mealQuestionFlowSkip);

    final isLast = _currentQuestionIndex == widget._pipelineSteps.length - 1;
    if (isLast) {
      _flowCompletedSuccessfully = true;
      Navigator.of(context).pop(_pipelineAnswers);
      return;
    }
    _fadeThen(() => setState(() => _currentQuestionIndex++));
  }

  void _onDetectionComplete() {
    _flowCompletedSuccessfully = true;
    Analytics.instance.logEvent(AnalyticsEvent.mealQuestionFlowComplete);

    final baseMeal = widget.detectionResponse!.result.meal;
    if (!baseMeal.hasMacros()) {
      Navigator.of(context).pop();
      return;
    }

    MealMacro finalMacros = baseMeal.macros;

    for (var i = 0; i < widget._detectionVariations.length; i++) {
      if (_selectedOptions.containsKey(i)) {
        final picked = _selectedOptions[i]!;
        if (picked < widget._detectionVariations[i].options.length) {
          final opt = widget._detectionVariations[i].options[picked];
          if (opt.hasMacroDiff()) {
            finalMacros = finalMacros + opt.macroDiff;
          }
        }
      }
    }

    final updatedMeal = baseMeal.deepCopy();
    updatedMeal.macros = finalMacros;

    final updatedResult = widget.detectionResponse!.result.deepCopy();
    updatedResult.meal = updatedMeal;

    final rootNav = Navigator.of(context, rootNavigator: true);
    final safeCtx = rootNav.overlay?.context ?? context;

    Navigator.of(context).pop();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      showMealTip(
        context: safeCtx,
        purpose:
            widget.isDebugPreview
                ? MealDetailsSheetPurpose.debugPreview
                : MealDetailsSheetPurpose.mealAddition,
        mealDetectionResult: updatedResult,
        imageBytes: widget.imageBytes,
        previewOnly: widget.isDebugPreview,
      );
    });
  }

  void _pipelinePrimaryPressed() {
    if (!_selectedOptions.containsKey(_currentQuestionIndex)) return;

    final isLast = _currentQuestionIndex == widget._pipelineSteps.length - 1;
    if (isLast) {
      _flowCompletedSuccessfully = true;
      Navigator.of(context).pop(_pipelineAnswers);
      return;
    }
    _fadeThen(() => setState(() => _currentQuestionIndex++));
  }

  Widget _skipTrailingButton(VoidCallback onPressed) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(LucideIcons.skipForward, size: 16),
      label: Text(t.meal.skip),
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        minimumSize: const Size(0, 32),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget._isDetection && widget._detectionVariations.isEmpty) {
      return BaseBottomSheet(
        child: Text(t.meal.questionFlow.noQuestionsAvailable),
      );
    }

    final step = _steps[_currentQuestionIndex];

    VoidCallback? onBack;
    if (widget._isDetection) {
      onBack = _currentQuestionIndex > 0 ? _detectionBack : null;
    } else {
      onBack = _currentQuestionIndex > 0 ? _pipelineBack : null;
    }

    final Widget trailing =
        widget._isDetection
            ? _skipTrailingButton(_onDetectionSkip)
            : _skipTrailingButton(_onPipelineSkip);

    final hasPipelinePrimarySelection =
        !widget._isDetection &&
        _selectedOptions.containsKey(_currentQuestionIndex);

    final isLastPipelineStep =
        !widget._isDetection &&
        _currentQuestionIndex == widget._pipelineSteps.length - 1;

    return BaseBottomSheet(
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            MealQuestionFlowProgressRow(
              current: _currentQuestionIndex + 1,
              total: _totalSteps,
              onBack: onBack,
              trailing: trailing,
            ),
            const SizedBox(height: mealQuestionFlowProgressToHeadingGap),
            MealQuestionHeadingRow(question: step.question),
            const SizedBox(height: mealQuestionFlowHeadingToOptionsGap),
            MealQuestionOptionsWrap(
              optionLabels: step.optionLabels,
              optionDetails: step.optionDetails,
              selectedOptionIndex: _selectedOptions[_currentQuestionIndex],
              onOptionSelected:
                  widget._isDetection
                      ? _onDetectionOptionSelected
                      : _onPipelineOptionSelected,
            ),
            const SizedBox(height: mealQuestionFlowOptionsTrailingGap),
            if (!widget._isDetection) ...[
              PrimaryButton(
                analyticsEvent: AnalyticsEvent.mealQuestionFlowContinue,
                onPressed:
                    !hasPipelinePrimarySelection
                        ? null
                        : _pipelinePrimaryPressed,
                text:
                    isLastPipelineStep
                        ? t.meal.questionFlow.continueLabel
                        : t.meal.questionFlow.next,
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class MealQuestionFlowUiStep {
  const MealQuestionFlowUiStep({
    required this.question,
    required this.optionLabels,
    required this.optionDetails,
  });

  final String question;
  final List<String> optionLabels;
  final List<String?> optionDetails;
}
