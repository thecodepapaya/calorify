import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/models/profile_models.dart';
import 'package:calorify/core/router/guards/onboarding_guard.dart';
import 'package:calorify/features/auth/login_screen.dart';
import 'package:calorify/features/favorites/favorites_screen.dart';
import 'package:calorify/features/history/meal_history_screen.dart';
import 'package:calorify/features/home/home_screen.dart';
import 'package:calorify/features/onboarding/onboarding_screen.dart';
import 'package:calorify/features/profile/debug_options_screen.dart';
import 'package:calorify/features/profile/edit_profile_screen.dart';
import 'package:calorify/features/profile/edit_reminder_screen.dart';
import 'package:calorify/features/profile/profile_screen.dart';
import 'package:calorify/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: LoginRoute.page),

    // Onboarding routes (no guard needed)
    AutoRoute(page: OnboardingRoute.page),

    // Protected routes (require onboarding completion)
    AutoRoute(page: HomeRoute.page, guards: [OnboardingGuard()]),
    AutoRoute(page: FavoritesRoute.page, guards: [OnboardingGuard()]),
    AutoRoute(page: MealHistoryRoute.page, guards: [OnboardingGuard()]),
    AutoRoute(page: ProfileRoute.page, guards: [OnboardingGuard()]),
    AutoRoute(page: EditProfileRoute.page, guards: [OnboardingGuard()]),
    AutoRoute(page: EditReminderRoute.page, guards: [OnboardingGuard()]),
    AutoRoute(page: DebugOptionsRoute.page, guards: [OnboardingGuard()]),
  ];
}
