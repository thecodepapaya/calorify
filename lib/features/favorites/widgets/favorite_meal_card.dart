import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class FavoriteMealCard extends StatelessWidget {
  const FavoriteMealCard({super.key, required this.meal});

  final FavoriteMealTableData meal;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              meal.mealName,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Calories: ${meal.calories}'),
                Text('Protein: ${meal.protein}g'),
                Text('Carbs: ${meal.carbs}g'),
                Text('Fat: ${meal.fat}g'),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(LucideIcons.trash),
                  onPressed: () => _deleteFavorite(context),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () => _logMeal(context),
                  child: const Text('Log Meal'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _logMeal(BuildContext context) async {
    try {
      final mealInfo = MealInfo(
        id: 0,
        mealName: meal.mealName,
        mealQuantity: meal.mealQuantity,
        mealType: meal.mealType,
        calories: meal.calories,
        protein: meal.protein,
        carbs: meal.carbs,
        fat: meal.fat,
        fiber: meal.fiber,
        timestamp: DateTime.now(),
      );

      await appDb.into(appDb.mealInfoTable).insert(
            MealInfoTableCompanion.insert(
              mealName: mealInfo.mealName,
              mealQuantity: mealInfo.mealQuantity,
              mealType: mealInfo.mealType,
              calories: mealInfo.calories,
              protein: mealInfo.protein,
              carbs: mealInfo.carbs,
              fat: mealInfo.fat,
              fiber: mealInfo.fiber,
              timestamp: mealInfo.timestamp,
            ),
          );

      await HealthService.instance.writeMealData(mealInfo);

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Meal logged successfully!')),
        );
      }
    } on Exception catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Could not log meal: $e')),
        );
      }
    }
  }

  Future<void> _deleteFavorite(BuildContext context) async {
    try {
      await (appDb.delete(appDb.favoriteMealTable)
            ..where((tbl) => tbl.id.equals(meal.id)))
          .go();
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Favorite meal deleted!')),
        );
      }
    } on Exception catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Could not delete favorite: $e')),
        );
      }
    }
  }
}