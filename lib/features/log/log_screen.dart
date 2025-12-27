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
      appBar: AppBar(title: const Text('Log Meal')),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            DescribeMeal(),
            SizedBox(height: 20),
            FavoriteMeals(),
            SizedBox(height: 20),
            MealSnap(),
            SizedBox(height: 120),
          ],
        ),
      ),
    );
  }
}
