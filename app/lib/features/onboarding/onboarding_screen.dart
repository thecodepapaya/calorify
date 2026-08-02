import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/shared_widgets/onboarding_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:calorify/features/onboarding/activity_level_screen.dart';
import 'package:calorify/features/onboarding/health_connect_screen.dart';
import 'package:calorify/features/onboarding/reminder_notifications_screen.dart';
import 'package:calorify/features/onboarding/weight_goal_screen.dart';
import 'package:calorify/features/onboarding/welcome_screen.dart';
import 'package:calorify/features/onboarding/steps/age_step.dart';
import 'package:calorify/features/onboarding/steps/gender_step.dart';
import 'package:calorify/features/onboarding/steps/goal_lifestyle_reinforcement.dart';
import 'package:calorify/features/onboarding/steps/health_profile_reinforcement.dart';
import 'package:calorify/features/onboarding/steps/height_step.dart';
import 'package:calorify/features/onboarding/steps/tracking_success_reinforcement.dart';
import 'package:calorify/features/onboarding/steps/weight_step.dart';
import 'package:calorify/shared_widgets/responsive_layout.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  void _nextPage() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  void _previousPage() {
    _pageController.previousPage(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  void _finishOnboarding() {
    context.router.pushAndPopUntil(
      const HomeRoute(),
      predicate: (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ResponsiveContent(
          maxWidth: 720,
          child: Column(
            children: [
              if (_currentPage > 0)
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(LucideIcons.chevronLeft),
                        onPressed: _previousPage,
                      ),
                      Expanded(
                        child: OnboardingProgressBar(
                          currentStep: _currentPage,
                          totalSteps: 13, // Total number of pages
                        ),
                      ),
                      const SizedBox(width: 48), // Balance for back button
                    ],
                  ),
                ),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    WelcomeScreen(onContinue: _nextPage),
                    WeightGoalScreen(onContinue: _nextPage),
                    ActivityLevelScreen(onContinue: _nextPage),
                    GoalLifestyleReinforcement(onContinue: _nextPage),
                    GenderStepScreen(onContinue: _nextPage),
                    HeightStepScreen(onContinue: _nextPage),
                    WeightStepScreen(onContinue: _nextPage),
                    HealthProfileReinforcement(onContinue: _nextPage),
                    WeightStepScreen(
                      onContinue: _nextPage,
                      isTargetWeight: true,
                    ),
                    AgeStepScreen(onContinue: _nextPage),
                    TrackingSuccessReinforcement(onContinue: _nextPage),
                    HealthConnectScreen(onContinue: _nextPage),
                    ReminderNotificationsScreen(onContinue: _finishOnboarding),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
