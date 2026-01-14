import 'package:auto_route/auto_route.dart';
import 'package:models/models.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/core/services/database_service.dart';

class OnboardingGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final profile = await DatabaseService.databaseInterface.getUserProfile();
    final bool isComplete = profile?.isProfileComplete ?? false;
    if (isComplete) {
      resolver.next(true); // Continue navigation
    } else {
      // Redirect to onboarding flow
      await router.replaceAll([const OnboardingRoute()]);
    }
  }
}
