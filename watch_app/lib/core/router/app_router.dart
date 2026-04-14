import 'package:auto_route/auto_route.dart';
import 'package:calorify_watch/features/debug/debug_screen.dart';
import 'package:calorify_watch/features/favorites/favorites_screen.dart';
import 'package:calorify_watch/features/history/history_screen.dart';
import 'package:calorify_watch/features/home/home_screen.dart';
import 'package:calorify_watch/features/log_meal/log_meal_screen.dart';
import 'package:calorify_watch/features/log_meal/meal_result_screen.dart';
import 'package:calorify_watch/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
    CustomRoute(
      page: SplashRoute.page,
      initial: true,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: LogMealRoute.page),
    AutoRoute(page: MealResultRoute.page),
    AutoRoute(page: HistoryRoute.page),
    AutoRoute(page: FavoritesRoute.page),
    AutoRoute(page: DebugRoute.page),
  ];
}
