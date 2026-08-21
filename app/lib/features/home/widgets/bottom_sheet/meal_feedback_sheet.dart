import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/router/route_names.dart';
import 'package:calorify/shared_widgets/app_button.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:models/models.dart';

class MealFeedbackInput {
  const MealFeedbackInput({required this.issues, this.otherText});

  final List<MealReanalyzeFeedbackIssue> issues;
  final String? otherText;
}

Future<MealFeedbackInput?> showV2MealFeedbackSheet(BuildContext context) {
  return showModalBottomSheet<MealFeedbackInput>(
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
  static final List<MealReanalyzeFeedbackIssue> _issueChoices =
      MealReanalyzeFeedbackIssue.values
          .where((e) => e != MealReanalyzeFeedbackIssue.ISSUE_UNSPECIFIED)
          .toList();

  final Set<MealReanalyzeFeedbackIssue> _selectedIssues =
      <MealReanalyzeFeedbackIssue>{};
  final TextEditingController _otherController = TextEditingController();

  bool get _showOtherField =>
      _selectedIssues.contains(MealReanalyzeFeedbackIssue.OTHER);

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
    final t = context.t;
    final f = t.meal.feedback;

    return BaseBottomSheet(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            f.title,
            style: textTheme.titleLarge?.copyWith(
              color: colorScheme.onSurface,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            f.subtitle,
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurface.withValues(alpha: 0.7),
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children:
                _issueChoices.map((issue) {
                  final isSelected = _selectedIssues.contains(issue);
                  return FilterChip(
                    label: Text(_feedbackIssueLabel(t, issue)),
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
              decoration: InputDecoration(
                labelText: f.tellUsMore,
                hintText: f.describeIncorrect,
              ),
            ),
          ],
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: AppButton(
                  variant: AppButtonVariant.outlined,
                  onPressed: () => Navigator.of(context).pop(),
                  text: t.meal.deleteConfirmation.cancel,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: AppButton(
                  variant: AppButtonVariant.primary,
                  analyticsEvent:
                      AnalyticsEvent.mealFeedbackThumbsDownSubmitted,
                  onPressed:
                      _canSubmit
                          ? () {
                            Navigator.of(context).pop(
                              MealFeedbackInput(
                                issues: _selectedIssues.toList(),
                                otherText:
                                    _showOtherField
                                        ? _otherController.text.trim()
                                        : null,
                              ),
                            );
                          }
                          : null,
                  text: f.submit,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

String _feedbackIssueLabel(Translations t, MealReanalyzeFeedbackIssue issue) {
  final f = t.meal.feedback;
  return switch (issue) {
    MealReanalyzeFeedbackIssue.FOOD_IDENTIFICATION => f.issueFoodIdentification,
    MealReanalyzeFeedbackIssue.PORTION_SIZE => f.issuePortionSize,
    MealReanalyzeFeedbackIssue.CALORIE_DISTRIBUTION =>
      f.issueCalorieDistribution,
    MealReanalyzeFeedbackIssue.MACROS_WRONG => f.issueMacrosWrong,
    MealReanalyzeFeedbackIssue.MISSING_ITEMS => f.issueMissingItems,
    MealReanalyzeFeedbackIssue.EXTRA_ITEMS => f.issueExtraItems,
    MealReanalyzeFeedbackIssue.OTHER => f.issueOther,
    _ => '',
  };
}
