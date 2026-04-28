import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/disclaimer_sheet.dart'
    show getSnapDisclaimer;
import 'package:calorify/features/home/widgets/bottom_sheet/meal_analysis_sheet.dart';
import 'package:calorify/features/home/widgets/disclaimer_button.dart';
import 'package:i18n/i18n.dart';
import 'package:calorify/shared_widgets/meal_analysis_tip_line.dart';
import 'package:calorify/shared_widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
          padding: EdgeInsets.all(12),
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
                  Text(
                    t.home.mealDescription.title,
                    style: textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14),
              TextFormField(
                controller: _textController,
                enabled: !_isLoading,
                decoration: InputDecoration(
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
                textAlign: TextAlign.start,
                textStyle: textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                  height: 1.35,
                ),
              ),
              SizedBox(height: 10),
              PrimaryButton(
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
    setState(() {
      _isLoading = true;
    });

    try {
      final repository = ProviderScope.containerOf(
        context,
        listen: false,
      ).read(foodRepositoryProvider);
      await showV2MealAnalysisFlow(
        context: context,
        startAnalysis:
            () => repository.analyzeTextV2(
              textDescription: _textController.text.trim(),
            ),
        textDescription: _textController.text.trim(),
      );
    } on Exception catch (e) {
      Analytics.instance.logEvent(AnalyticsEvent.mealDetectionFailure);
      if (!mounted) return;
      showFlushbar(t.meal.failedToProcess(error: e), context: context);
      return;
    } finally {
      _reset();
    }

    if (!mounted) return;
  }

  void _reset() {
    setState(() {
      _isLoading = false;
      _textController.text = '';
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
