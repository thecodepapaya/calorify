import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/features/home/widgets/favorite_meals.dart';
import 'package:calorify/features/home/widgets/meal_description.dart';
import 'package:calorify/features/home/widgets/meal_snap.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:calorify/shared_widgets/responsive_layout.dart';

@RoutePage()
class LogScreen extends StatelessWidget {
  const LogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Scaffold(
      body: ResponsiveContent(
        maxWidth: 840,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).padding.top + 12),
              Padding(
                padding: globalMargin,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      t.meal.addMeal,
                      style: textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      t.home.mealSnap.description,
                      style: textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              const MealSnap(),
              const SizedBox(height: 12),
              const DescribeMeal(),
              const SizedBox(height: 24),
              const FavoriteMeals(),
              const SizedBox(height: 120),
            ],
          ),
        ),
      ),
    );
  }
}
