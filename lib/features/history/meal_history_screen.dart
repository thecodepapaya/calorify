import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/features/history/widgets/icon_nutrition.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class MealHistoryScreen extends StatelessWidget {
  const MealHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('History')),
      body: Padding(
        padding: globalMargin,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _DateDivider(),
              // MealLogCard(),
              // MealLogCard(),
              // _DateDivider(),
              // MealLogCard(),
              // MealLogCard(),
              // MealLogCard(),
              // _DateDivider(),
              // MealLogCard(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class _DateDivider extends StatelessWidget {
  const _DateDivider();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Text(' 26 Jan', style: textTheme.titleMedium?.copyWith(fontSize: 18)),
          SizedBox(width: 8),
          Expanded(child: Divider()),
          SizedBox(width: 8),
          NutrientIconWithValue(
            icon: LucideIcons.flame,
            value: 8000,
            unit: '',
            iconColor: calorieIconColor,
          ),
        ],
      ),
    );
  }
}
