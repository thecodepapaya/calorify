import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/core/utilities/onboarding_utils.dart';
import 'package:calorify/shared_widgets/onboarding_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:calorify/features/onboarding/activity_level_screen.dart';
import 'package:calorify/features/onboarding/health_connect_screen.dart';
import 'package:calorify/features/onboarding/reminder_notifications_screen.dart';
import 'package:calorify/features/onboarding/weight_goal_screen.dart';
import 'package:calorify/features/onboarding/welcome_screen.dart';
import 'package:calorify/features/onboarding/steps/age_step.dart';
import 'package:calorify/features/onboarding/steps/bmi_scale.dart';
import 'package:calorify/features/onboarding/steps/gender_step.dart';
import 'package:calorify/features/onboarding/steps/height_step.dart';
import 'package:calorify/features/onboarding/steps/reinforcement_screen.dart';
import 'package:calorify/features/onboarding/steps/weight_step.dart';

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
                  ReinforcementScreen(
                    title: 'Excellent Start!',
                    description: 'You\'ve taken the first step towards a healthier you. With Calorify, achieving your goals becomes a seamless part of your day.',
                    icon: LucideIcons.thumbsUp,
                    features: const [
                      'AI-powered meal detection',
                      'Personalized calorie targets',
                      'Detailed macro-nutrient breakdowns',
                    ],
                    onContinue: _nextPage,
                  ),
                  GenderStepScreen(onContinue: _nextPage),
                  HeightStepScreen(onContinue: _nextPage),
                  WeightStepScreen(onContinue: _nextPage),
                  FutureBuilder(
                    future: OnboardingService.instance.getProfileData(),
                    builder: (context, snapshot) {
                      final profile = snapshot.data;
                      final bmi = profile != null ? OnboardingUtils.calculateBMI(profile.height ?? 0, profile.weight ?? 0) : 0.0;
                      final bmiCategory = OnboardingUtils.getBMICategory(bmi);
                      
                      return ReinforcementScreen(
                        title: 'Your Health Profile',
                        description: profile != null 
                          ? 'Based on your metrics, your BMI is ${bmi.toStringAsFixed(1)}.'
                          : 'Let\'s finalize your profile to customize your experience.',
                        icon: LucideIcons.activity,
                        extraContent: profile != null ? Column(
                          children: [
                            Text(
                              bmiCategory,
                              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            const SizedBox(height: 24),
                            BMIScale(bmi: bmi),
                            const SizedBox(height: 24),
                            Text(
                              OnboardingUtils.getBMIMessage(bmi),
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontStyle: FontStyle.italic,
                                color: Theme.of(context).colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ) : null,
                        onContinue: _nextPage,
                      );
                    },
                  ),
                  WeightStepScreen(onContinue: _nextPage, isTargetWeight: true),
                  AgeStepScreen(onContinue: _nextPage),
                  ReinforcementScreen(
                    title: 'You\'re Not Alone',
                    description: 'Research shows that consistent tracking is the #1 predictor of long-term success. Calorify makes it 10x easier than doing it manually.',
                    icon: LucideIcons.users,
                    features: const [
                      'Instant photo analysis',
                      'Automatic nutritional logging',
                      'Progress visualizations that keep you motivated',
                    ],
                    onContinue: _nextPage,
                  ),
                  HealthConnectScreen(onContinue: _nextPage),
                  ReminderNotificationsScreen(onContinue: _finishOnboarding),
                ],
              ),
            ),
          ],
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
