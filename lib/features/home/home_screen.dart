import 'package:calorify/features/home/widgets/connect_health.dart';
import 'package:calorify/features/home/widgets/daily_goal.dart';
import 'package:calorify/features/home/widgets/daily_summary.dart';
import 'package:calorify/features/home/widgets/intake_progress.dart';
import 'package:calorify/features/home/widgets/meal_log.dart';
import 'package:calorify/features/home/widgets/meal_snap.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calorify')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HealthConnectPromptCard(),
            SizedBox(height: 20),
            SetGoal(),
            SizedBox(height: 20),
            MealSnap(),
            SizedBox(height: 20),
            DailySummaryCard(
              calories: 1850,
              protein: 75.5,
              carbs: 220.2,
              fiber: 30.1,
            ),
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
