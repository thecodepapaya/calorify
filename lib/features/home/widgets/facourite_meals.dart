import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class FavoriteMeals extends StatefulWidget {
  const FavoriteMeals({super.key});

  @override
  State<FavoriteMeals> createState() => _FavoriteMealsState();
}

class _FavoriteMealsState extends State<FavoriteMeals> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Container(
      margin: globalMargin,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: globalRadius,
        border: Border.all(color: colorScheme.outline),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(LucideIcons.star, color: colorScheme.primary),
              SizedBox(width: 8),
              Text(
                'Favorite Meals',
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: colorScheme.onSurface,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Quickly add one of your favorite meals.',
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSecondary.withValues(alpha: 0.7),
            ),
          ),
          SizedBox(height: 20),
          StreamBuilder<List<MealInfo>>(
            stream: appDb.watchAllFavoriteMeals(),
            builder: (context, snapshot) {
              final favoriteMeals = snapshot.data;
              if (favoriteMeals == null || favoriteMeals.isEmpty) {
                return const _NoFavorites();
              }
              return ListView.separated(
                itemCount: favoriteMeals.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder:
                    (context, index) => const SizedBox(height: 10),
                itemBuilder: (context, index) {
                  final meal = favoriteMeals[index];
                  return _MealTile(meal: meal);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class _NoFavorites extends StatelessWidget {
  const _NoFavorites();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 16),
          Text(
            'No favorite meals yet.',
            style: textTheme.bodyLarge?.copyWith(
              color: colorScheme.onSecondary.withValues(alpha: 0.7),
            ),
          ),
          Text(
            'Click the star on a meal to mark it as a favorite.',
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSecondary.withValues(alpha: 0.7),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

class _MealTile extends StatelessWidget {
  const _MealTile({required this.meal});

  final MealInfo meal;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;

    return Container(
      padding: globalInnerPadding,
      decoration: BoxDecoration(
        borderRadius: globalRadius,
        color: colorScheme.secondaryFixed,
      ),
      child: Row(
        children: [
          Column(
            children: [Text(meal.mealName), Text('${meal.calories} kcal')],
          ),
          ElevatedButton(
            onPressed: () async {},
            style: ButtonStyle(
              minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50)),
              backgroundColor: WidgetStatePropertyAll(colorScheme.primary),
              foregroundColor: WidgetStatePropertyAll(colorScheme.onPrimary),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: globalRadius),
              ),
            ),
            child: Icon(LucideIcons.imagePlus),
          ),
        ],
      ),
    );
  }
}
