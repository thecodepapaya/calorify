import 'package:auto_route/auto_route.dart';
import 'package:models/models.dart';
import 'package:calorify/core/router/guards/onboarding_guard.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/features/favorites/favorites_screen.dart';
import 'package:calorify/features/history/meal_history_screen.dart';
import 'package:calorify/features/home/home_screen.dart';
import 'package:calorify/features/log/log_screen.dart';
import 'package:calorify/features/main/main_screen.dart';
import 'package:calorify/features/onboarding/onboarding_screen.dart';
import 'package:calorify/features/profile/about_screen.dart';
import 'package:calorify/features/debug/debug_options_screen.dart';
import 'package:calorify/features/profile/edit_profile_screen.dart';
import 'package:calorify/features/profile/edit_reminder_screen.dart';
import 'package:calorify/features/profile/health_connect_permissions_screen.dart';
import 'package:calorify/features/profile/profile_screen.dart';
import 'package:calorify/features/profile/settings_screen.dart';
import 'package:calorify/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter({required OnboardingService onboardingService})
    : _onboardingGuard = OnboardingGuard(onboardingService);

  final OnboardingGuard _onboardingGuard;

  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
    CustomRoute(
      page: SplashRoute.page,
      initial: true,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    AutoRoute(page: OnboardingRoute.page),
    CustomRoute(
      page: MainRoute.page,
      guards: [_onboardingGuard],
      transitionsBuilder: TransitionsBuilders.fadeIn,
      children: [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: LogRoute.page),
        AutoRoute(page: MealHistoryRoute.page),
      ],
    ),
    AutoRoute(page: ProfileRoute.page, guards: [_onboardingGuard]),
    AutoRoute(page: FavoritesRoute.page, guards: [_onboardingGuard]),
    AutoRoute(page: EditProfileRoute.page, guards: [_onboardingGuard]),
    AutoRoute(page: EditReminderRoute.page, guards: [_onboardingGuard]),
    AutoRoute(page: SettingsRoute.page, guards: [_onboardingGuard]),
    AutoRoute(
      page: HealthConnectPermissionsRoute.page,
      guards: [_onboardingGuard],
    ),
    AutoRoute(page: AboutRoute.page, guards: [_onboardingGuard]),
    AutoRoute(page: DebugOptionsRoute.page, guards: [_onboardingGuard]),
  ];
}
