import 'package:calorify/features/home/widgets/bottom_sheet/meal_question_option_tile.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

/// Matches [MealQuestionFlowSheet] spacing.
const double mealQuestionFlowProgressToHeadingGap = 24;
const double mealQuestionFlowHeadingToOptionsGap = 20;
const double mealQuestionFlowOptionsTrailingGap = 16;

/// Top row: back (optional), "Question X of Y", spacer, optional trailing (e.g. Skip).
class MealQuestionFlowProgressRow extends StatelessWidget {
  const MealQuestionFlowProgressRow({
    super.key,
    required this.current,
    required this.total,
    this.onBack,
    this.trailing,
  });

  final int current;
  final int total;
  final VoidCallback? onBack;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final canGoBack = onBack != null;

    return Row(
      children: [
        if (canGoBack)
          IconButton(
            onPressed: onBack,
            icon: Icon(LucideIcons.arrowLeft, size: 20),
            color: colorScheme.onSurface,
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            visualDensity: VisualDensity.compact,
          ),
        if (canGoBack) const SizedBox(width: 8),
        Text(
          t.meal.questionFlow.progress(current: current, total: total),
          style: textTheme.bodySmall?.copyWith(
            color: colorScheme.onSurface.withValues(alpha: 0.6),
          ),
        ),
        const Spacer(),
        trailing ?? const SizedBox.shrink(),
      ],
    );
  }
}

/// Info icon + bold question title for a V3 question step.
class MealQuestionHeadingRow extends StatelessWidget {
  const MealQuestionHeadingRow({super.key, required this.question});

  final String question;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(LucideIcons.info, color: colorScheme.primary, size: 22),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            question,
            style: textTheme.titleMedium?.copyWith(
              color: colorScheme.onSurface,
              fontWeight: FontWeight.w600,
              height: 1.3,
              letterSpacing: -0.2,
            ),
          ),
        ),
      ],
    );
  }
}

/// One row of selectable option tiles.
class MealQuestionOptionsWrap extends StatelessWidget {
  const MealQuestionOptionsWrap({
    super.key,
    required this.optionLabels,
    this.optionDetails = const <String?>[],
    required this.selectedOptionIndex,
    required this.onOptionSelected,
  });

  final List<String> optionLabels;
  final List<String?> optionDetails;
  final int? selectedOptionIndex;
  final ValueChanged<int> onOptionSelected;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      alignment: WrapAlignment.start,
      children: List.generate(
        optionLabels.length,
        (index) => MealQuestionOptionTile(
          label: optionLabels[index],
          detail: index < optionDetails.length ? optionDetails[index] : null,
          isSelected: selectedOptionIndex == index,
          onTap: () => onOptionSelected(index),
        ),
      ),
    );
  }
}
