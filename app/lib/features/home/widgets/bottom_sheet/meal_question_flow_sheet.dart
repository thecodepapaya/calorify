import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/router/route_names.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_question_flow_widgets.dart';
import 'package:calorify/shared_widgets/app_button.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';
import 'package:intl/intl.dart';

/// Collects answers for the clarification steps emitted by the V2 meal pipeline.
Future<List<MealClarificationAnswer>?> showMealQuestionFlowFromPipeline({
  required BuildContext context,
  required List<PipelineClarification> clarifications,
}) {
  return showModalBottomSheet<List<MealClarificationAnswer>>(
    context: context,
    useRootNavigator: true,
    isDismissible: true,
    showDragHandle: true,
    isScrollControlled: true,
    routeSettings: const RouteSettings(name: RouteNames.mealQuestionFlowSheet),
    builder: (_) => MealQuestionFlowSheet(clarifications: clarifications),
  );
}

class MealQuestionFlowSheet extends StatefulWidget {
  const MealQuestionFlowSheet({super.key, required this.clarifications});

  final List<PipelineClarification> clarifications;

  @override
  State<MealQuestionFlowSheet> createState() => _MealQuestionFlowSheetState();
}

class _MealQuestionFlowSheetState extends State<MealQuestionFlowSheet>
    with TickerProviderStateMixin {
  int _currentQuestionIndex = 0;
  final Map<int, int> _selectedOptions = <int, int>{};

  late final AnimationController _fadeController;
  late final Animation<double> _fadeAnimation;
  late final List<MealQuestionFlowUiStep> _steps;
  bool _flowCompletedSuccessfully = false;

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
    _steps = widget.clarifications
        .map(
          (clarification) => MealQuestionFlowUiStep(
            question: _questionFor(clarification.portionKind),
            optionLabels: clarification.options
                .map((option) => _labelFor(option.optionId))
                .toList(growable: false),
            optionDetails: clarification.options
                .map(
                  (option) =>
                      '${NumberFormat.decimalPattern().format(option.grams)} g',
                )
                .toList(growable: false),
          ),
        )
        .toList(growable: false);
    _fadeController.forward();
    Analytics.instance.logEvent(AnalyticsEvent.mealQuestionFlowShown);
  }

  String _questionFor(PortionKind kind) => switch (kind) {
    PortionKind.COUNT_QUESTION => t.meal.questionFlow.countQuestion,
    PortionKind.COUNT => t.meal.questionFlow.itemSizeQuestion,
    _ => t.meal.questionFlow.portionSizeQuestion,
  };

  String _labelFor(String optionId) {
    final numeric = int.tryParse(optionId);
    if (numeric != null) return NumberFormat.decimalPattern().format(numeric);
    return switch (optionId) {
      '6plus' => t.meal.questionFlow.option6plus,
      'small' => t.meal.questionFlow.optionSmall,
      'regular' => t.meal.questionFlow.optionRegular,
      'large' => t.meal.questionFlow.optionLarge,
      'thin' => t.meal.questionFlow.optionThin,
      'thick' => t.meal.questionFlow.optionThick,
      'mini' => t.meal.questionFlow.optionMini,
      'stuffed' => t.meal.questionFlow.optionStuffed,
      'heavy' => t.meal.questionFlow.optionHeavy,
      'smaller' => t.meal.questionFlow.optionSmaller,
      'typical' => t.meal.questionFlow.optionTypical,
      'larger' => t.meal.questionFlow.optionLarger,
      _ => optionId,
    };
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

  List<MealClarificationAnswer> get _answers {
    return List.generate(widget.clarifications.length, (index) {
      final clarification = widget.clarifications[index];
      final defaultIndex = clarification.options.indexWhere(
        (option) => option.optionId == clarification.defaultOptionId,
      );
      final selectedIndex =
          _selectedOptions[index] ?? (defaultIndex >= 0 ? defaultIndex : 0);
      final selectedOption = clarification.options[selectedIndex];
      return MealClarificationAnswer(
        clarificationId: clarification.clarificationId,
        selectedOptionId: selectedOption.optionId,
      );
    });
  }

  void _selectOption(int optionIndex) {
    setState(() => _selectedOptions[_currentQuestionIndex] = optionIndex);
  }

  void _back() {
    if (_currentQuestionIndex <= 0) return;
    Analytics.instance.logEvent(AnalyticsEvent.mealQuestionFlowBack);
    _fadeThen(() => setState(() => _currentQuestionIndex--));
  }

  void _skip() {
    setState(() => _selectedOptions.remove(_currentQuestionIndex));
    Analytics.instance.logEvent(AnalyticsEvent.mealQuestionFlowSkip);
    _advanceOrComplete();
  }

  void _continue() {
    if (!_selectedOptions.containsKey(_currentQuestionIndex)) return;
    _advanceOrComplete();
  }

  void _advanceOrComplete() {
    if (_currentQuestionIndex == widget.clarifications.length - 1) {
      _flowCompletedSuccessfully = true;
      Navigator.of(context).pop(_answers);
      return;
    }
    _fadeThen(() => setState(() => _currentQuestionIndex++));
  }

  @override
  Widget build(BuildContext context) {
    final step = _steps[_currentQuestionIndex];
    final isLast = _currentQuestionIndex == _steps.length - 1;
    final hasSelection = _selectedOptions.containsKey(_currentQuestionIndex);

    return BaseBottomSheet(
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            MealQuestionFlowProgressRow(
              current: _currentQuestionIndex + 1,
              total: _steps.length,
              onBack: _currentQuestionIndex > 0 ? _back : null,
              trailing: TextButton.icon(
                onPressed: _skip,
                icon: const Icon(LucideIcons.skipForward, size: 16),
                label: Text(t.meal.skip),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 4,
                  ),
                  minimumSize: const Size(0, 32),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ),
            ),
            const SizedBox(height: mealQuestionFlowProgressToHeadingGap),
            MealQuestionHeadingRow(question: step.question),
            const SizedBox(height: mealQuestionFlowHeadingToOptionsGap),
            MealQuestionOptionsWrap(
              optionLabels: step.optionLabels,
              optionDetails: step.optionDetails,
              selectedOptionIndex: _selectedOptions[_currentQuestionIndex],
              onOptionSelected: _selectOption,
            ),
            const SizedBox(height: mealQuestionFlowOptionsTrailingGap),
            AppButton(
              variant: AppButtonVariant.primary,
              analyticsEvent: AnalyticsEvent.mealQuestionFlowContinue,
              onPressed: hasSelection ? _continue : null,
              text:
                  isLast
                      ? t.meal.questionFlow.continueLabel
                      : t.meal.questionFlow.next,
            ),
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
