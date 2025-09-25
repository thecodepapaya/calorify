import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/features/home/widgets/connect_health.dart';
import 'package:calorify/features/home/widgets/daily_goal.dart';
import 'package:calorify/features/home/widgets/daily_summary.dart';
import 'package:calorify/features/home/widgets/intake_progress.dart';
import 'package:calorify/features/home/widgets/meal_log.dart';
import 'package:calorify/features/home/widgets/meal_snap.dart';
import 'package:flutter/material.dart';
import 'package:health/health.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isHealthConnectUnsupported =
        HealthService.instance.status == HealthConnectSdkStatus.sdkUnavailable;
    final isHealthConnectAuthorized = HealthService.instance.isAuthorized;

    return Scaffold(
      appBar: AppBar(
        title: Text('Calorify'),
        // actions: [
        //   IconButton(onPressed: () {}, icon: Icon(LucideIcons.moreVertical)),
        //   SizedBox(width: 4),
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (!isHealthConnectUnsupported && !isHealthConnectAuthorized) ...[
              HealthConnectPromptCard(),
              SizedBox(height: 20),
            ],
            SetDailyGoal(),
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
