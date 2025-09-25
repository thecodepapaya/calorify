import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/features/favorites/widgets/favorite_meal_card.dart';
import 'package:flutter/material.dart';
import 'package:drift/drift.dart' as drift;

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Meals'),
      ),
      body: StreamBuilder<List<FavoriteMealTableData>>(
        stream: (appDb.select(appDb.favoriteMealTable)
              ..orderBy(
                [
                  (t) => drift.OrderingTerm(
                        expression: t.timestamp,
                        mode: drift.OrderingMode.desc,
                      ),
                ],
              ))
            .watch(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          final favoriteMeals = snapshot.data ?? [];
          if (favoriteMeals.isEmpty) {
            return const Center(child: Text('No favorite meals yet.'));
          }
          return ListView.builder(
            itemCount: favoriteMeals.length,
            itemBuilder: (context, index) {
              final meal = favoriteMeals[index];
              return FavoriteMealCard(meal: meal);
            },
          );
        },
      ),
    );
  }
}