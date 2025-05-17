import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/services/picker_service.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class MealSnap extends StatelessWidget {
  const MealSnap({super.key});

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
                  Icon(LucideIcons.camera, color: colorScheme.primary),
                  SizedBox(width: 8),
                  Text(
                    'Snap & Track Your Meal',
                    style: textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                'Use your camera to take a picture of your food for AI analysis.',
                style: textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSecondary.withValues(alpha: 0.7),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  final _ = await ImagePickerService().pickImageFromCamera();
                },
                style: ButtonStyle(
                  minimumSize: WidgetStatePropertyAll(
                    Size(double.infinity, 50),
                  ),
                  backgroundColor: WidgetStatePropertyAll(colorScheme.primary),
                  foregroundColor: WidgetStatePropertyAll(
                    colorScheme.onPrimary,
                  ),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(borderRadius: globalRadius),
                  ),
                ),
                child: Text(
                  'Open Camera & Scan',
                  style: textTheme.bodyLarge?.copyWith(
                    color: colorScheme.onPrimary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: 12,
          child: IconButton(
            icon: Icon(LucideIcons.helpCircle),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
