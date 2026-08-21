import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/core/services/onboarding_service.dart';

class OnboardingGuard extends AutoRouteGuard {
  const OnboardingGuard(this._onboardingService);

  final OnboardingService _onboardingService;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final isComplete = await _onboardingService.isOnboardingCompleted();
    if (isComplete) {
      resolver.next(true); // Continue navigation
    } else {
      // Redirect to onboarding flow
      await router.replaceAll([const OnboardingRoute()]);
    }
  }
}
