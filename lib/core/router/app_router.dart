import 'package:auto_route/auto_route.dart';
import 'package:calorify/features/auth/login_screen.dart';
import 'package:calorify/features/favorites/favorites_screen.dart';
import 'package:calorify/features/history/meal_history_screen.dart';
import 'package:calorify/features/home/home_screen.dart';
import 'package:calorify/features/splash/splash_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: FavoritesRoute.page),
    AutoRoute(page: MealHistoryRoute.page),
  ];
}
