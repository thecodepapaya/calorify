import 'package:calorify/core/constants/analytics_events.dart';
import 'package:models/models.dart';
import 'package:calorify/core/router/route_names.dart';
import 'package:calorify/core/utilities/profile_localization.dart';
import 'package:calorify/shared_widgets/app_outlined_button.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:calorify/shared_widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';

Future<MealType?> showV2MealTypeSheet({
  required BuildContext context,
  required PipelineMealTypeQuestionData question,
}) {
  return showModalBottomSheet<MealType>(
    context: context,
    useRootNavigator: true,
    isDismissible: true,
    showDragHandle: true,
    isScrollControlled: true,
    routeSettings: const RouteSettings(name: RouteNames.mealTypeSheet),
    builder: (context) => _V2MealTypeSheet(question: question),
  );
}

class _V2MealTypeSheet extends StatefulWidget {
  const _V2MealTypeSheet({required this.question});

  final PipelineMealTypeQuestionData question;

  @override
  State<_V2MealTypeSheet> createState() => _V2MealTypeSheetState();
}

class _V2MealTypeSheetState extends State<_V2MealTypeSheet> {
  MealType? _selectedMealType;
  late final List<MealType> _optionMealTypes;

  @override
  void initState() {
    super.initState();
    _optionMealTypes =
        widget.question.options.where((t) => t != MealType.UNKNOWN).toList();

    if (widget.question.hasInferredMealType() &&
        widget.question.inferredMealType != MealType.UNKNOWN) {
      _selectedMealType = widget.question.inferredMealType;
    } else {
      _selectedMealType =
          _optionMealTypes.isNotEmpty ? _optionMealTypes.first : null;
    }
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
            t.meal.mealType,
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
            children:
                _optionMealTypes.map((mealType) {
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
                child: AppOutlinedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  text: t.meal.deleteConfirmation.cancel,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: PrimaryButton(
                  analyticsEvent: AnalyticsEvent.mealTypeQuestionAnswered,
                  onPressed:
                      _selectedMealType == null
                          ? null
                          : () => Navigator.of(context).pop(_selectedMealType),
                  text: t.common.kContinue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
