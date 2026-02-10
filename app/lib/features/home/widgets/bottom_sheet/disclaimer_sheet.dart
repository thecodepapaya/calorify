import 'package:calorify/core/config/env_config.dart';
import 'package:calorify/core/router/route_names.dart';
import 'package:i18n/i18n.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

@immutable
class DisclaimerEntry {
  const DisclaimerEntry({required this.title, required this.description});

  final String title;
  final String description;
}

@immutable
class DisclaimerData {
  const DisclaimerData({
    required this.title,
    required this.description,
    required this.bulletPoints,
  });

  final String title;
  final String description;
  final List<DisclaimerEntry> bulletPoints;
}

Future<void> showDisclaimer(BuildContext context, DisclaimerData data) {
  return showModalBottomSheet(
    context: context,
    isDismissible: true,
    showDragHandle: true,
    enableDrag: true,
    isScrollControlled: true,
    routeSettings: const RouteSettings(name: RouteNames.disclaimerSheet),
    builder: (context) => _MealSnapDisclaimer(data),
  );
}

class _MealSnapDisclaimer extends StatelessWidget {
  const _MealSnapDisclaimer(this.data);

  final DisclaimerData data;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return BaseBottomSheet(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                LucideIcons.lightbulb,
                color: colorScheme.onSurface,
                size: 32,
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  data.title,
                  style: textTheme.headlineSmall?.copyWith(
                    color: colorScheme.onSurface,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            data.description,
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurface.withValues(alpha: 0.7),
            ),
          ),
          const SizedBox(height: 20),
          ...data.bulletPoints.map((e) => _BulletPoint(e.title, e.description)),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

class _BulletPoint extends StatelessWidget {
  const _BulletPoint(this.head, this.body);

  final String head;
  final String body;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: RichText(
        text: TextSpan(
          style: textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurface.withValues(alpha: 0.7),
          ),
          children: [
            TextSpan(
              text: head,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: colorScheme.onSurface,
              ),
            ),
            TextSpan(text: '\n'),
            TextSpan(text: body),
          ],
        ),
      ),
    );
  }
}

DisclaimerData getSnapDisclaimer() {
  return DisclaimerData(
    title: t.disclaimer.pleaseNote,
    description: t.disclaimer.snap.description(
      appLabel: t.appLabel(env: EnvConfig.instance.envSuffix),
    ),
    bulletPoints: [
      DisclaimerEntry(
        title: t.disclaimer.snap.portionSize.title,
        description: t.disclaimer.snap.portionSize.description,
      ),
      DisclaimerEntry(
        title: t.disclaimer.snap.preparationMethods.title,
        description: t.disclaimer.snap.preparationMethods.description(
          appLabel: t.appLabel(env: EnvConfig.instance.envSuffix),
        ),
      ),
      DisclaimerEntry(
        title: t.disclaimer.snap.ingredients.title,
        description: t.disclaimer.snap.ingredients.description,
      ),
      DisclaimerEntry(
        title: t.disclaimer.snap.databaseLimitations.title,
        description: t.disclaimer.snap.databaseLimitations.description(
          appLabel: t.appLabel(env: EnvConfig.instance.envSuffix),
        ),
      ),
    ],
  );
}

// getWeightEstimateDisclaimer removed — use `getHealthMetricsDisclaimer` or specific disclaimers as needed.

DisclaimerData getHealthMetricsDisclaimer() {
  return DisclaimerData(
    title: t.profile.healthMetrics,
    description: t.disclaimer.healthMetrics.description,
    bulletPoints: [
      DisclaimerEntry(
        title: t.disclaimer.healthMetrics.bmr.title,
        description: t.disclaimer.healthMetrics.bmr.description,
      ),
      DisclaimerEntry(
        title: t.disclaimer.healthMetrics.tdee.title,
        description: t.disclaimer.healthMetrics.tdee.description,
      ),
      DisclaimerEntry(
        title: t.disclaimer.healthMetrics.dailyGoal.title,
        description: t.disclaimer.healthMetrics.dailyGoal.description,
      ),
    ],
  );
}

DisclaimerData getCalorieExpenditureDisclaimer({
  required bool usedFallback,
  bool isHealthConnectAvailable = false,
  bool hasCaloriesData = false,
}) {
  // Base info always included
  final bullets = <DisclaimerEntry>[
    DisclaimerEntry(
      title: t.disclaimer.weightEstimate.title,
      description: t.disclaimer.weightEstimate.description,
    ),
  ];

  if (usedFallback) {
    // Explain how fallback estimate is calculated and its limitations
    bullets.addAll([
      DisclaimerEntry(
        title: t.disclaimer.calorieExpenditure.howCalculated.title,
        description: t.disclaimer.calorieExpenditure.howCalculated.description,
      ),
      DisclaimerEntry(
        title: t.disclaimer.weightEstimate.calorieAccuracy.title,
        description: t.disclaimer.weightEstimate.calorieAccuracy.description,
      ),
      DisclaimerEntry(
        title: t.disclaimer.weightEstimate.biologicalFactors.title,
        description: t.disclaimer.weightEstimate.biologicalFactors.description(
          appLabel: t.appLabel(env: EnvConfig.instance.envSuffix),
        ),
      ),
      DisclaimerEntry(
        title: t.disclaimer.weightEstimate.waterWeight.title,
        description: t.disclaimer.weightEstimate.waterWeight.description,
      ),
      DisclaimerEntry(
        title: t.disclaimer.weightEstimate.professionalGuidance.title,
        description: t.disclaimer.weightEstimate.professionalGuidance.description,
      ),
    ]);
  } else {
    // Health Connect is available / data-backed path
    if (isHealthConnectAvailable && hasCaloriesData) {
      bullets.add(
        DisclaimerEntry(
          title: t.disclaimer.healthMetrics.dailyGoal.title,
          description: t.disclaimer.healthMetrics.dailyGoal.description,
        ),
      );
      bullets.add(
        DisclaimerEntry(
          title: t.disclaimer.weightEstimate.calorieAccuracy.title,
          description: t.disclaimer.weightEstimate.calorieAccuracy.description,
        ),
      );
    } else if (isHealthConnectAvailable && !hasCaloriesData) {
      bullets.addAll([
        DisclaimerEntry(
          title: t.disclaimer.weightEstimate.calorieAccuracy.title,
          description: t.disclaimer.weightEstimate.calorieAccuracy.description,
        ),
        DisclaimerEntry(
          title: t.disclaimer.weightEstimate.calorieAccuracy.title,
          description: t.disclaimer.weightEstimate.calorieAccuracy.description,
        ),
      ]);
    } else {
      // Generic fallback if nothing else applies
      bullets.add(
        DisclaimerEntry(
          title: t.disclaimer.weightEstimate.calorieAccuracy.title,
          description: t.disclaimer.weightEstimate.calorieAccuracy.description,
        ),
      );
    }
  }

  return DisclaimerData(
    title: t.disclaimer.calorieExpenditure.title,
    description: t.disclaimer.calorieExpenditure.description,
    bulletPoints: bullets,
  );
}
