import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/models/meal_analysis_v2.dart';
import 'package:calorify/core/router/route_names.dart';
import 'package:calorify/core/utilities/profile_localization.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:calorify/shared_widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';

Future<MealType?> showV2MealTypeSheet({
  required BuildContext context,
  required V2MealTypeQuestion question,
}) {
  return showModalBottomSheet<MealType>(
    context: context,
    isDismissible: true,
    showDragHandle: true,
    isScrollControlled: true,
    routeSettings: const RouteSettings(name: RouteNames.mealTypeSheet),
    builder: (context) => _V2MealTypeSheet(question: question),
  );
}

class _V2MealTypeSheet extends StatefulWidget {
  const _V2MealTypeSheet({required this.question});

  final V2MealTypeQuestion question;

  @override
  State<_V2MealTypeSheet> createState() => _V2MealTypeSheetState();
}

class _V2MealTypeSheetState extends State<_V2MealTypeSheet> {
  MealType? _selectedMealType;

  @override
  void initState() {
    super.initState();
    _selectedMealType = widget.question.inferredMealType;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return BaseBottomSheet(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Confirm meal type',
            style: textTheme.titleLarge?.copyWith(
              color: colorScheme.onSurface,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            widget.question.question,
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurface.withValues(alpha: 0.75),
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: widget.question.options.map((mealType) {
              return ChoiceChip(
                label: Text(mealType.displayName),
                selected: _selectedMealType == mealType,
                onSelected: (_) {
                  setState(() {
                    _selectedMealType = mealType;
                  });
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Cancel'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: PrimaryButton(
                  analyticsEvent: AnalyticsEvent.mealTypeQuestionAnswered,
                  onPressed: _selectedMealType == null
                      ? null
                      : () => Navigator.of(context).pop(_selectedMealType),
                  text: 'Continue',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
