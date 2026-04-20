import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/models/meal_analysis_v2.dart';
import 'package:calorify/core/router/route_names.dart';
import 'package:calorify/shared_widgets/app_outlined_button.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:calorify/shared_widgets/primary_button.dart';
import 'package:flutter/material.dart';

class V2MealFeedbackInput {
  const V2MealFeedbackInput({
    required this.issues,
    this.otherText,
  });

  final List<V2MealFeedbackIssue> issues;
  final String? otherText;
}

Future<V2MealFeedbackInput?> showV2MealFeedbackSheet(BuildContext context) {
  return showModalBottomSheet<V2MealFeedbackInput>(
    context: context,
    isDismissible: true,
    isScrollControlled: true,
    showDragHandle: true,
    routeSettings: const RouteSettings(name: RouteNames.mealFeedbackSheet),
    builder: (context) => const _V2MealFeedbackSheet(),
  );
}

class _V2MealFeedbackSheet extends StatefulWidget {
  const _V2MealFeedbackSheet();

  @override
  State<_V2MealFeedbackSheet> createState() => _V2MealFeedbackSheetState();
}

class _V2MealFeedbackSheetState extends State<_V2MealFeedbackSheet> {
  final Set<V2MealFeedbackIssue> _selectedIssues = <V2MealFeedbackIssue>{};
  final TextEditingController _otherController = TextEditingController();

  bool get _showOtherField =>
      _selectedIssues.contains(V2MealFeedbackIssue.other);

  bool get _canSubmit {
    if (_selectedIssues.isEmpty) {
      return false;
    }
    if (_showOtherField) {
      return _otherController.text.trim().isNotEmpty;
    }
    return true;
  }

  @override
  void dispose() {
    _otherController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return BaseBottomSheet(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'What looks wrong?',
            style: textTheme.titleLarge?.copyWith(
              color: colorScheme.onSurface,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Help us improve the analysis by selecting one or more issues.',
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurface.withValues(alpha: 0.7),
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children:
                V2MealFeedbackIssue.values.map((issue) {
                  final isSelected = _selectedIssues.contains(issue);
                  return FilterChip(
                    label: Text(issue.label),
                    selected: isSelected,
                    onSelected: (_) {
                      setState(() {
                        if (isSelected) {
                          _selectedIssues.remove(issue);
                        } else {
                          _selectedIssues.add(issue);
                        }
                      });
                    },
                  );
                }).toList(),
          ),
          if (_showOtherField) ...[
            const SizedBox(height: 16),
            TextField(
              controller: _otherController,
              minLines: 3,
              maxLines: 4,
              onChanged: (_) => setState(() {}),
              decoration: const InputDecoration(
                labelText: 'Tell us more',
                hintText: 'Describe what was incorrect',
              ),
            ),
          ],
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: AppOutlinedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  text: 'Cancel',
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: PrimaryButton(
                  analyticsEvent: AnalyticsEvent.mealFeedbackThumbsDownSubmitted,
                  onPressed:
                      _canSubmit
                          ? () {
                            Navigator.of(context).pop(
                              V2MealFeedbackInput(
                                issues: _selectedIssues.toList(),
                                otherText:
                                    _showOtherField
                                        ? _otherController.text.trim()
                                        : null,
                              ),
                            );
                          }
                          : null,
                  text: 'Submit',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
