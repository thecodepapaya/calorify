import 'package:calorify/core/constants/styles.dart';
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
    this.title = 'Please Note',
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
    routeSettings: RouteSettings(name: 'disclaimer_sheet'),
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

    return Container(
      width: double.infinity,
      padding: globalSheetPadding,
      decoration: BoxDecoration(borderRadius: globalRadius),
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
              SizedBox(width: 6),
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
          SizedBox(height: 20),
          Text(
            data.description,
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurface.withValues(alpha: 0.7),
            ),
          ),
          SizedBox(height: 20),
          ...data.bulletPoints.map((e) => _BulletPoint(e.title, e.description)),
          SizedBox(height: 30),
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

final snapDisclaimer = DisclaimerData(
  title: 'Please Note',
  description:
      'Calorify provides estimated nutritional info. '
      'Accuracy depends on your input & food variations. '
      'Use as a guide, not a definitive source. Consult a professional '
      'for personalized dietary advice.',
  bulletPoints: [
    DisclaimerEntry(
      title: 'Portion Size',
      description:
          'The accuracy of the estimates heavily relies on '
          'your correct assessment of the portion size.',
    ),
    DisclaimerEntry(
      title: 'Preparation Methods',
      description:
          'Cooking methods can significantly alter the nutritional '
          "content of food. Calorify's estimates may not always "
          'account for these variations.',
    ),
    DisclaimerEntry(
      title: 'Ingredients',
      description:
          'Complex dishes with many hidden ingredients '
          'may lead to less accurate estimations.',
    ),
    DisclaimerEntry(
      title: 'Database Limitations',
      description:
          "Calorify's food database is extensive but may not "
          'include every single food item or variation.',
    ),
  ],
);

final weightEstimateDisclaimer = DisclaimerData(
  title: 'About Weight Estimate',
  description:
      'The projected weight change is a theoretical estimate based on '
      'the simple calorie-in vs. calorie-out model. It is intended '
      'for motivational guidance only, not as a prediction of your '
      'actual weight.',
  bulletPoints: [
    DisclaimerEntry(
      title: 'Calorie Accuracy',
      description:
          'This estimate is only as accurate as your tracked calorie '
          'intake and expenditure. Inaccurate logging will result '
          'in an inaccurate projection.',
    ),
    DisclaimerEntry(
      title: 'Biological Factors',
      description:
          'Actual weight loss/gain is influenced by metabolism, hormones, '
          'sleep, stress, hydration, and other individual factors '
          'that Calorify cannot measure.',
    ),
    DisclaimerEntry(
      title: 'Water Weight & Fluctuations',
      description:
          'Normal daily weight can fluctuate significantly due to '
          'water retention, digestion, and timing. The estimate '
          'does not account for these daily changes.',
    ),
    DisclaimerEntry(
      title: 'Professional Guidance',
      description:
          'Do not use this estimate to make medical decisions. '
          'Always consult a healthcare professional or registered '
          'dietitian for personalized weight management advice.',
    ),
  ],
);
