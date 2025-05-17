import 'package:calorify/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class MealLog extends StatelessWidget {
  const MealLog({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Container(
      margin: globalMargin,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        // borderRadius: globalRadius,
        // border: Border.all(color: colorScheme.outline),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(LucideIcons.packageOpen, color: colorScheme.primary),
              SizedBox(width: 8),
              Text(
                'Logged Meals',
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: colorScheme.onSurface,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Divider(),
          const SizedBox(height: 40),
          _MealLogCard(),
          _MealLogCard(),
          _MealLogCard(),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  LucideIcons.listChecks,
                  size: 48,
                  color: colorScheme.onSecondary.withValues(alpha: 0.8),
                ),
                SizedBox(height: 20),

                Text(
                  'No meals recorded for today',
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: colorScheme.onSecondary.withValues(alpha: 0.7),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Add a meal using the form above to see it here',
                  textAlign: TextAlign.center,
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSecondary.withValues(alpha: 0.7),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.bottomCenter,
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                textStyle: WidgetStatePropertyAll(
                  textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              child: Text('See all'),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

class _MealLogCard extends StatelessWidget {
  const _MealLogCard({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    final Color calorieIconColor = colorScheme.surfaceTint;
    final Color proteinIconColor = colorScheme.tertiary;
    final Color carbsIconColor = Color(0xFF4CB3B3);
    final Color fiberIconColor = Color(0xFFE0B341);

    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: globalRadius,
        border: Border.all(color: colorScheme.outline),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  'Chole bhature woth a ve sad asd s af s da d '
                  'asd as dary long name hahahahaahjaha',
                  style: textTheme.titleMedium,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(width: 12),
              Chip(label: Text('dinner')),
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              _NutrientIconWithValue(
                icon: LucideIcons.flame,
                value: 8000,
                unit: '',
                iconColor: calorieIconColor,
              ),
              _NutrientIconWithValue(
                icon: LucideIcons.drumstick,
                value: 80,
                unit: 'g',
                iconColor: proteinIconColor,
              ),
              _NutrientIconWithValue(
                icon: LucideIcons.wheat,
                value: 120,
                unit: 'g',
                iconColor: carbsIconColor,
              ),
              _NutrientIconWithValue(
                icon: LucideIcons.leaf,
                value: 30,
                unit: 'g',
                iconColor: fiberIconColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _NutrientIconWithValue extends StatelessWidget {
  final IconData icon;
  final double value;
  final String unit;
  final Color iconColor;

  const _NutrientIconWithValue({
    required this.icon,
    required this.value,
    required this.unit,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      constraints: BoxConstraints(minWidth: 45),
      margin: EdgeInsets.symmetric(horizontal: 2),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: iconColor.withValues(alpha: 0.1),
        borderRadius: globalRadius,
        border: Border.all(color: iconColor.withValues(alpha: 0.2)),
      ),
      child: Column(
        children: [
          Icon(icon, size: 20, color: iconColor),
          const SizedBox(height: 4),
          Text(
            value.toStringAsFixed(0) + unit,
            style: textTheme.bodySmall?.copyWith(
              color: iconColor,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.clip,
          ),
        ],
      ),
    );
  }
}
