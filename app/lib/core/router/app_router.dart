import 'package:auto_route/auto_route.dart';
import 'package:models/models.dart';
import 'package:calorify/core/router/guards/onboarding_guard.dart';
import 'package:calorify/features/auth/login_screen.dart';
import 'package:calorify/features/favorites/favorites_screen.dart';
import 'package:calorify/features/history/meal_history_screen.dart';
import 'package:calorify/features/home/home_screen.dart';
import 'package:calorify/features/log/log_screen.dart';
import 'package:calorify/features/main/main_screen.dart';
import 'package:calorify/features/onboarding/onboarding_screen.dart';
import 'package:calorify/features/profile/debug_options_screen.dart';
import 'package:calorify/features/profile/edit_profile_screen.dart';
import 'package:calorify/features/profile/edit_reminder_screen.dart';
import 'package:calorify/features/profile/profile_screen.dart';
import 'package:calorify/features/profile/settings_screen.dart';
import 'package:calorify/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';

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
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: OnboardingRoute.page),
    CustomRoute(
      page: MainRoute.page,
      guards: [OnboardingGuard()],
      transitionsBuilder: TransitionsBuilders.fadeIn,
      children: [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: LogRoute.page),
        AutoRoute(page: MealHistoryRoute.page),
      ],
    ),
    AutoRoute(page: ProfileRoute.page, guards: [OnboardingGuard()]),
    AutoRoute(page: FavoritesRoute.page, guards: [OnboardingGuard()]),
    AutoRoute(page: EditProfileRoute.page, guards: [OnboardingGuard()]),
    AutoRoute(page: EditReminderRoute.page, guards: [OnboardingGuard()]),
    AutoRoute(page: SettingsRoute.page, guards: [OnboardingGuard()]),
    AutoRoute(page: DebugOptionsRoute.page, guards: [OnboardingGuard()]),
  ];
}
