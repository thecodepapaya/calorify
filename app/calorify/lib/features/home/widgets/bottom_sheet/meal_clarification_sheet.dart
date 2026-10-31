import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/router/route_names.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_question_flow_widgets.dart';
import 'package:calorify/shared_widgets/app_button.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:widgets/widgets.dart';
import 'package:models/models.dart';

Future<Map<int, int>?> showMealClarificationSheet({
  required BuildContext context,
  required Clarifications clarifications,
}) {
  return showModalBottomSheet<Map<int, int>>(
    context: context,
    useRootNavigator: true,
    isDismissible: true,
    showDragHandle: true,
    isScrollControlled: true,
    routeSettings: const RouteSettings(name: RouteNames.mealClarificationSheet),
    builder: (_) => _MealClarificationSheet(clarifications: clarifications),
  );
}

class _MealClarificationSheet extends StatefulWidget {
  const _MealClarificationSheet({required this.clarifications});

  final Clarifications clarifications;

  @override
  State<_MealClarificationSheet> createState() =>
      _MealClarificationSheetState();
}

class _MealClarificationSheetState extends State<_MealClarificationSheet>
    with TickerProviderStateMixin {
  int _currentQuestionIndex = 0;
  final Map<int, int> _selectedOptions = {};

  late final AnimationController _fadeController;
  late final Animation<double> _fadeAnimation;
  bool _flowCompletedSuccessfully = false;

  List<Clarification> get _questions => widget.clarifications.clarification;

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
    if (_currentQuestionIndex == _questions.length - 1) {
      _flowCompletedSuccessfully = true;
      Analytics.instance.logEvent(AnalyticsEvent.mealClarificationSubmitted);
      Navigator.of(context).pop(_selectedOptions);
      return;
    }
    _fadeThen(() => setState(() => _currentQuestionIndex++));
  }

  @override
  Widget build(BuildContext context) {
    if (_questions.isEmpty) return const SizedBox.shrink();

    final clarification = _questions[_currentQuestionIndex];
    final isLast = _currentQuestionIndex == _questions.length - 1;
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
              total: _questions.length,
              onBack: _currentQuestionIndex > 0 ? _back : null,
              trailing: TextButton.icon(
                onPressed: _skip,
                icon: const Icon(AppIcons.skipForward, size: 16),
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
            MealQuestionHeadingRow(question: clarification.question),
            const SizedBox(height: mealQuestionFlowHeadingToOptionsGap),
            MealQuestionOptionsWrap(
              optionLabels: clarification.options
                  .map((o) => o.text)
                  .toList(growable: false),
              selectedOptionIndex: _selectedOptions[_currentQuestionIndex],
              onOptionSelected: _selectOption,
            ),
            const SizedBox(height: mealQuestionFlowOptionsTrailingGap),
            AppButton(
              variant: AppButtonVariant.primary,
              analyticsEvent: AnalyticsEvent.mealQuestionFlowContinue,
              onPressed: hasSelection ? _continue : null,
              text: isLast
                  ? t.meal.questionFlow.continueLabel
                  : t.meal.questionFlow.next,
            ),
          ],
        ),
      ),
    );
  }
}
