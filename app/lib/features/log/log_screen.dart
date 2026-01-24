import 'package:auto_route/auto_route.dart';
import 'package:calorify/features/home/widgets/favorite_meals.dart';
import 'package:calorify/features/home/widgets/meal_description.dart';
import 'package:calorify/features/home/widgets/meal_snap.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LogScreen extends StatelessWidget {
  const LogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            // Photo capture is now the primary, most prominent option
            MealSnap(),
            SizedBox(height: 24),
            // Secondary options below
            FavoriteMeals(),
            SizedBox(height: 20),
            DescribeMeal(),
            SizedBox(height: 120),
          ],
        ),
      ),
    );
  }
}
