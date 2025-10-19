import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/config/app_config.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/features/home/widgets/connect_health.dart';
import 'package:calorify/features/home/widgets/daily_goal.dart';
import 'package:calorify/features/home/widgets/daily_summary.dart';
import 'package:calorify/features/home/widgets/favorite_meals.dart';
import 'package:calorify/features/home/widgets/home_screen_menu.dart';
import 'package:calorify/features/home/widgets/intake_progress.dart';
import 'package:calorify/features/home/widgets/meal_description.dart';
import 'package:calorify/features/home/widgets/meal_log.dart';
import 'package:calorify/features/home/widgets/meal_snap.dart';
import 'package:calorify/shared_widgets/animated_leaf.dart';
import 'package:flutter/material.dart';
import 'package:health/health.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isHealthConnectUnsupported =
        HealthService.instance.status == HealthConnectSdkStatus.sdkUnavailable;
    final isHealthConnectAuthorized = HealthService.instance.isAuthorized;

    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            AnimatedLeaf(size: 36),
            SizedBox(width: 6),
            Text(
              AppConfig.instance.title,
              style: textTheme.displaySmall?.copyWith(
                color: colorScheme.primary,
              ),
            ),
          ],
        ),
        actions: const [HomeScreenMenu()],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (!isHealthConnectUnsupported && !isHealthConnectAuthorized) ...[
              SizedBox(height: 10),
              HealthConnectPromptCard(),
              SizedBox(height: 10),
            ],
            SizedBox(height: 10),
            SetDailyGoal(),
            SizedBox(height: 20),
            DescribeMeal(),
            SizedBox(height: 20),
            FavoriteMeals(),
            SizedBox(height: 20),
            MealSnap(),
            SizedBox(height: 20),
            DailySummaryCard(),
            SizedBox(height: 20),
            IntakeProgress(),
            SizedBox(height: 20),
            MealLog(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
