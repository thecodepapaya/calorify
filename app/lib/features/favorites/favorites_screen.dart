import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/features/history/widgets/logged_meals.dart';
import 'package:calorify/shared_widgets/error_view.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:models/models.dart';
import 'package:widgets/widgets.dart';

@RoutePage()
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(t.favorites.title)),
      body: Padding(
        padding: globalMargin,
        child: StreamBuilder<List<FavoriteMeal>>(
          stream: DatabaseService.databaseInterface.watchAllFavoriteMeals(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const AppLoader();
            }
            if (snapshot.hasError) {
              return ErrorView(error: snapshot.error!);
            }
            final meals = snapshot.data ?? [];
            if (meals.isEmpty) {
              return Center(child: Text(t.favorites.empty));
            }
            return ListView.builder(
              itemCount: meals.length,
              itemBuilder: (context, index) {
                final favoriteMeal = meals[index];
                return MealLogCard(loggedMeal: favoriteMeal.loggedMeal);
              },
            );
          },
        ),
      ),
    );
  }
}
