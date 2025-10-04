import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/models/meal_detection_result.dart';
import 'package:calorify/core/services/food_analysis.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/disclaimer_sheet.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_tip_sheet.dart';
import 'package:calorify/features/home/widgets/disclaimer_button.dart';
import 'package:calorify/shared_widgets/loading_indicator.dart';
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
          padding: EdgeInsets.all(16),
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
                    'Quick Add with AI',
                    style: textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                'Describe your meal, and let AI handle the details.',
                style: textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSecondary.withValues(alpha: 0.7),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _textController,
                enabled: !_isLoading,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: globalRadius,
                    borderSide: BorderSide(color: colorScheme.outline),
                  ),
                  hintText:
                      'eg. For breakfast I had a large bowl of '
                      'oatmeal with a sliced banana and a scoop of whey ...',
                  hintStyle: textTheme.bodyLarge?.copyWith(
                    color: colorScheme.onSurface.withValues(alpha: 0.6),
                  ),
                ),
                minLines: 2,
                maxLines: 3,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed:
                    _isLoading ? null : () => _onProcessMealDescription(),
                style: ButtonStyle(
                  minimumSize: WidgetStatePropertyAll(
                    Size(double.infinity, 50),
                  ),
                  backgroundColor: WidgetStatePropertyAll(
                    _isLoading ? colorScheme.secondary : colorScheme.primary,
                  ),
                  foregroundColor: WidgetStatePropertyAll(
                    colorScheme.onPrimary,
                  ),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(borderRadius: globalRadius),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _isLoading
                        ? AppLoader(color: colorScheme.onPrimary)
                        : Icon(LucideIcons.wandSparkles),
                    SizedBox(width: 6),
                    Text(
                      'Analyze meal',
                      style: textTheme.bodyLarge?.copyWith(
                        color: colorScheme.onPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: 12,
          child: DisclaimerButton(data: snapDisclaimer),
        ),
      ],
    );
  }

  Future<void> _onProcessMealDescription() async {
    setState(() {
      _isLoading = true;
    });

    late final MealDetectionResult mealDetectionResult;
    try {
      mealDetectionResult = await FoodAnalysisService.instance
          .analyzeFoodDescription(description: _textController.text);
    } on Exception catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(snack('Failed to process: $e'));
      return;
    } finally {
      _reset();
    }

    if (!mounted) return;
    await showMealTip(
      context: context,
      mealDetectionResult: mealDetectionResult,
      allowEdit: true,
    );
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
