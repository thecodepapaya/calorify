import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/models/meal_analysis_v2.dart';
import 'package:calorify/core/router/route_names.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:calorify/shared_widgets/primary_button.dart';
import 'package:flutter/material.dart';

Future<List<V2MealClarificationAnswer>?> showV2MealClarificationSheet({
  required BuildContext context,
  required List<V2MealClarification> clarifications,
}) {
  return showModalBottomSheet<List<V2MealClarificationAnswer>>(
    context: context,
    isDismissible: true,
    showDragHandle: true,
    isScrollControlled: true,
    routeSettings: const RouteSettings(name: RouteNames.mealClarificationSheet),
    builder:
        (context) => _V2MealClarificationSheet(
          clarifications: clarifications,
        ),
  );
}

class _V2MealClarificationSheet extends StatefulWidget {
  const _V2MealClarificationSheet({
    required this.clarifications,
  });

  final List<V2MealClarification> clarifications;

  @override
  State<_V2MealClarificationSheet> createState() =>
      _V2MealClarificationSheetState();
}

class _V2MealClarificationSheetState extends State<_V2MealClarificationSheet> {
  int _currentQuestionIndex = 0;
  final Map<int, int> _selectedOptions = {};

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final clarification = widget.clarifications[_currentQuestionIndex];
    final hasSelection = _selectedOptions.containsKey(_currentQuestionIndex);
    final isLastQuestion =
        _currentQuestionIndex == widget.clarifications.length - 1;

    return BaseBottomSheet(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Quick clarification',
            style: textTheme.titleLarge?.copyWith(
              color: colorScheme.onSurface,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            'Question ${_currentQuestionIndex + 1} of ${widget.clarifications.length}',
            style: textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurface.withValues(alpha: 0.7),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            clarification.question,
            style: textTheme.titleMedium?.copyWith(
              color: colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: List.generate(clarification.options.length, (index) {
              final option = clarification.options[index];
              return ChoiceChip(
                label: Text(option.label),
                selected: _selectedOptions[_currentQuestionIndex] == index,
                onSelected: (_) {
                  setState(() {
                    _selectedOptions[_currentQuestionIndex] = index;
                  });
                },
              );
            }),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              if (_currentQuestionIndex > 0)
                Expanded(
                  child: OutlinedButton(
                    onPressed:
                        () {
                          setState(() {
                            _currentQuestionIndex--;
                          });
                        },
                    child: const Text('Back'),
                  ),
                ),
              if (_currentQuestionIndex > 0) const SizedBox(width: 12),
              Expanded(
                child: PrimaryButton(
                  analyticsEvent: AnalyticsEvent.mealClarificationSubmitted,
                  onPressed:
                      !hasSelection
                          ? null
                          : () {
                            if (!isLastQuestion) {
                              setState(() {
                                _currentQuestionIndex++;
                              });
                              return;
                            }
                            Navigator.of(context).pop(_answers);
                          },
                  text: isLastQuestion ? 'Continue' : 'Next',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<V2MealClarificationAnswer> get _answers {
    return List.generate(
      widget.clarifications.length,
      (index) => V2MealClarificationAnswer(
        ingredientName: widget.clarifications[index].ingredientName,
        selectedOptionIndex:
            _selectedOptions[index] ??
            widget.clarifications[index].defaultOptionIndex,
      ),
    );
  }
}
