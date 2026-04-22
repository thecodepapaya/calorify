import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/providers/favorites_providers.dart';
import 'package:calorify/features/history/widgets/logged_meals.dart';
import 'package:calorify/shared_widgets/error_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:widgets/widgets.dart';

@RoutePage()
class FavoritesScreen extends ConsumerWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritesAsync = ref.watch(favoriteMealsProvider);

    return Scaffold(
      appBar: AppBar(title: Text(t.favorites.title)),
      body: Padding(
        padding: globalMargin,
        child: favoritesAsync.when(
          loading: () => const AppLoader(),
          error:
              (error, _) => ErrorView(
                error: error,
                onRetry: () => ref.invalidate(favoriteMealsProvider),
              ),
          data: (meals) {
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
