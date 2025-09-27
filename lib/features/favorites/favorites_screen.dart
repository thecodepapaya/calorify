import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/features/history/widgets/logged_meals.dart';
import 'package:calorify/shared_widgets/error_view.dart';
import 'package:calorify/shared_widgets/loading_indicator.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favorites')),
      body: Padding(
        padding: globalMargin,
        child: StreamBuilder<List<MealInfo>>(
          stream: appDb.watchAllFavoriteMeals(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const AppLoader();
            }
            if (snapshot.hasError) {
              return ErrorView(error: snapshot.error!);
            }
            final meals = snapshot.data ?? [];
            if (meals.isEmpty) {
              return const Center(child: Text('No favorite meals yet.'));
            }
            return ListView.builder(
              itemCount: meals.length,
              itemBuilder: (context, index) {
                final meal = meals[index];
                return MealLogCard(mealInfo: meal, allowEdit: false);
              },
            );
          },
        ),
      ),
    );
  }
}
