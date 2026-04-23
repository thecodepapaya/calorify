import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/features/home/widgets/home_skeletons.dart';
import 'package:calorify/shared_widgets/app_card.dart';
import 'package:calorify/shared_widgets/error_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';

class DailySummaryCard extends ConsumerWidget {
  const DailySummaryCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final mealsAsync = ref.watch(todaysMealsProvider);

    if (mealsAsync.isLoading) {
      return const DailySummarySkeleton();
    }

    if (mealsAsync.hasError) {
      return AppCard(
        child: ErrorView(
          error: mealsAsync.error!,
          onRetry: () => ref.invalidate(todaysMealsProvider),
        ),
      );
    }

    final List<LoggedMeal> loggedMeals =
        mealsAsync.value ?? const <LoggedMeal>[];
    double protein = 0, carbs = 0, fat = 0, fiber = 0;

    for (final loggedMeal in loggedMeals) {
      protein += loggedMeal.meal.macros.protein;
      carbs += loggedMeal.meal.macros.carbs;
      fat += loggedMeal.meal.macros.fat;
      fiber += loggedMeal.meal.macros.fiber;
    }

    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            t.home.dailySummary.title,
            style: textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w600,
              color: colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 8,
            children: [
              Expanded(
                child: NutrientTile(
                  icon: LucideIcons.wheat,
                  label: t.home.dailySummary.carbs,
                  value: carbs,
                  unit: 'g',
                  iconColor: carbsIconColor,
                ),
              ),
              Expanded(
                child: NutrientTile(
                  icon: LucideIcons.drumstick,
                  label: t.home.dailySummary.protein,
                  value: protein,
                  unit: 'g',
                  iconColor: proteinIconColor,
                ),
              ),
              Expanded(
                child: NutrientTile(
                  icon: LucideIcons.egg,
                  label: t.home.dailySummary.fat,
                  value: fat,
                  unit: 'g',
                  iconColor: fatIconColor,
                ),
              ),
              Expanded(
                child: NutrientTile(
                  icon: LucideIcons.leaf,
                  label: t.home.dailySummary.fiber,
                  value: fiber,
                  unit: 'g',
                  iconColor: fiberIconColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NutrientTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final double value;
  final String unit;
  final Color iconColor;
  final double? width;

  const NutrientTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    required this.unit,
    required this.iconColor,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Container(
      constraints: width == null ? null : BoxConstraints(minWidth: width!),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: iconColor.withValues(alpha: 0.1),
        borderRadius: globalRadius,
        border: Border.all(color: iconColor.withValues(alpha: 0.2)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 28, color: iconColor),
          const SizedBox(height: 6),
          Text(
            label,
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 2),
          Text(
            '${value.toStringAsFixed(0)}$unit',
            style: textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: iconColor,
            ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
