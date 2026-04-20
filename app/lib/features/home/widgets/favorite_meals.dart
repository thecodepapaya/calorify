import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_tip_sheet.dart';
import 'package:calorify/shared_widgets/app_card.dart';
import 'package:calorify/shared_widgets/empty_state_widget.dart';
import 'package:calorify/shared_widgets/error_view.dart';
import 'package:calorify/shared_widgets/primary_button.dart';
import 'package:calorify/shared_widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';

class FavoriteMeals extends StatefulWidget {
  const FavoriteMeals({super.key});

  @override
  State<FavoriteMeals> createState() => _FavoriteMealsState();
}

class _FavoriteMealsState extends State<FavoriteMeals> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppCard(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(
            icon: LucideIcons.star,
            title: t.home.favoriteMeals.title,
          ),
          SizedBox(height: 6),
          Text(
            t.home.favoriteMeals.description,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 14),
          StreamBuilder<List<FavoriteMeal>>(
            stream:
                DatabaseService.databaseInterface.watchLastUsedFavoriteMeals(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return ErrorView(error: snapshot.error!);
              }
              final favoriteMeals = snapshot.data;
              if (favoriteMeals == null || favoriteMeals.isEmpty) {
                return EmptyStateWidget(
                  icon: LucideIcons.star,
                  title: t.home.favoriteMeals.noFavorites,
                  subtitle: t.home.favoriteMeals.addFavoriteHint,
                );
              }
              return Column(
                children: [
                  ListView.separated(
                    itemCount: favoriteMeals.length.clamp(0, 3),
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder:
                        (context, index) => const SizedBox(height: 8),
                    itemBuilder: (context, index) {
                      final meal = favoriteMeals[index];
                      return _MealTile(favoriteMeal: meal);
                    },
                  ),
                  if (favoriteMeals.length > 3) ...[
                    SizedBox(height: 6),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        style: ButtonStyle(
                          padding: WidgetStatePropertyAll(EdgeInsets.zero),
                          visualDensity: VisualDensity.compact,
                        ),
                        onPressed: () {
                          Analytics.instance.logEvent(
                            AnalyticsEvent.viewFavorites,
                          );
                          context.router.push(const FavoritesRoute());
                        },
                        child: Text(t.home.favoriteMeals.seeAll),
                      ),
                    ),
                  ],
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class _MealTile extends StatelessWidget {
  const _MealTile({required this.favoriteMeal});

  final FavoriteMeal favoriteMeal;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    final meal = favoriteMeal.loggedMeal.meal;

    return InkWell(
      onTap:
          () => showMealTip(
            context: context,
            loggedMeal: favoriteMeal.loggedMeal,
          ),

      borderRadius: globalRadius,
      child: Container(
        padding: globalInnerPadding,
        decoration: BoxDecoration(
          borderRadius: globalRadius,
          color: colorScheme.secondaryFixedDim.withValues(alpha: 0.5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    meal.name,
                    style: textTheme.titleMedium,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Text(
                    '${meal.macros.calories} kcal',
                    style: textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurface.withValues(alpha: 0.7),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 8),
            PrimaryButton(
              analyticsEvent: AnalyticsEvent.addMealFromFavorites,
              onPressed: () async {
                try {
                  await logMeal(context, meal, parentContext: context);
                  final favMealId = favoriteMeal.clientId;
                  await DatabaseService.databaseInterface
                      .updateFavoriteLastUsedAt(favMealId);
                  if (context.mounted) {
                    showFlushbar(t.meal.addedToLog, context: context);
                  }
                } on Exception catch (e) {
                  if (context.mounted) {
                    showFlushbar(t.meal.couldNotAdd(error: e), context: context);
                  }
                }
              },
              text: t.home.favoriteMeals.add,
              leadingIcon: LucideIcons.plus,
              minimumSize: const Size(40, 40),
              padding: const EdgeInsets.symmetric(horizontal: 12),
            ),
          ],
        ),
      ),
    );
  }
}
