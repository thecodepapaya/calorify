import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:calorify/shared_widgets/onboarding_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  static const int _pageCount = 13;

  PageController? _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _restoreProgress();
  }

  Future<void> _restoreProgress() async {
    final onboardingService = ref.read(onboardingServiceProvider);
    final savedPage = await onboardingService.getOnboardingStep();
    final page = savedPage.clamp(0, _pageCount - 1).toInt();

    // Persist page zero as soon as a new flow starts, before profile fields can
    // become complete.
    await onboardingService.saveOnboardingStep(page);
    if (!mounted) return;

    setState(() {
      _currentPage = page;
      _pageController = PageController(initialPage: page);
    });
  }

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  Future<void> _nextPage() async {
    final nextPage = (_currentPage + 1).clamp(0, _pageCount - 1).toInt();
    await ref.read(onboardingServiceProvider).saveOnboardingStep(nextPage);
    if (!mounted) return;

    await _pageController?.nextPage(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  Future<void> _previousPage() async {
    final previousPage = (_currentPage - 1).clamp(0, _pageCount - 1).toInt();
    await ref.read(onboardingServiceProvider).saveOnboardingStep(previousPage);
    if (!mounted) return;

    await _pageController?.previousPage(
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
                child:
                    _pageController == null
                        ? const Center(child: CircularProgressIndicator())
                        : PageView(
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
                            ReminderNotificationsScreen(
                              onContinue: _finishOnboarding,
                            ),
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
    _pageController?.dispose();
    super.dispose();
  }
}
