import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/services/onboarding_service.dart';

class OnboardingGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final bool hasProfile =
        await DatabaseService.databaseInterface.hasUserProfile();
    if (hasProfile) {
      resolver.next(true); // Continue navigation
    } else {
      // Redirect to onboarding flow
      router.replaceAll([const OnboardingRoute()]);
    }
  }
}
