import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/features/home/utils/local_text_meal_analysis_flow.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/disclaimer_sheet.dart'
    show getSnapDisclaimer;
import 'package:calorify/features/home/widgets/disclaimer_button.dart';
import 'package:i18n/i18n.dart';
import 'package:calorify/shared_widgets/meal_analysis_tip_line.dart';
import 'package:calorify/shared_widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class DescribeMeal extends StatefulWidget {
  const DescribeMeal({super.key});

  @override
  State<DescribeMeal> createState() => _DescribeMealState();
}

class _DescribeMealState extends State<DescribeMeal> {
  final _textController = TextEditingController();
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Stack(
      children: [
        Container(
          margin: globalMargin,
          padding: globalInnerPadding,
          decoration: BoxDecoration(
            borderRadius: globalRadius,
            border: Border.all(color: colorScheme.outline),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(LucideIcons.wandSparkles, color: colorScheme.primary),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      t.home.mealDescription.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: colorScheme.onSurface,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14),
              TextFormField(
                controller: _textController,
                enabled: !_isLoading,
                maxLength: 2000,
                decoration: InputDecoration(
                  counterText: '',
                  border: OutlineInputBorder(
                    borderRadius: globalRadius,
                    borderSide: BorderSide(color: colorScheme.outline),
                  ),
                  hintText: t.home.mealDescription.hint,
                  hintStyle: textTheme.bodyLarge?.copyWith(
                    color: colorScheme.onSurface.withValues(alpha: 0.6),
                  ),
                ),
                minLines: 2,
                maxLines: 3,
              ),
              SizedBox(height: 10),
              MealAnalysisTipLine(
                loadRemote: false,
                textAlign: TextAlign.start,
                textStyle: textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                  height: 1.35,
                ),
              ),
              SizedBox(height: 10),
              AppButton(
                variant: AppButtonVariant.primary,
                analyticsEvent: AnalyticsEvent.addMealFromDescription,
                onPressed: _onProcessMealDescription,
                text: t.home.mealDescription.analyzeMeal,
                leadingIcon: LucideIcons.wandSparkles,
                isLoading: _isLoading,
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: 12,
          child: DisclaimerButton(data: getSnapDisclaimer()),
        ),
      ],
    );
  }

  Future<void> _onProcessMealDescription() async {
    final description = _textController.text.trim();
    if (description.isEmpty) {
      showFlushbar(t.home.mealDescription.description, context: context);
      return;
    }

    setState(() {
      _isLoading = true;
    });

    var analysisCompleted = false;
    try {
      analysisCompleted = await showRoutedTextMealAnalysisFlow(
        context: context,
        textDescription: description,
      );
    } on Exception catch (e) {
      Analytics.instance.logEvent(AnalyticsEvent.mealDetectionFailure);
      if (!mounted) return;
      showFlushbar(t.meal.failedToProcess(error: e), context: context);
      return;
    } finally {
      _reset(clearDescription: analysisCompleted);
    }

    if (!mounted) return;
  }

  void _reset({required bool clearDescription}) {
    if (!mounted) return;
    setState(() {
      _isLoading = false;
      if (clearDescription) _textController.clear();
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
