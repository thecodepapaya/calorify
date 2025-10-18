import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/shared_widgets/onboarding_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:calorify/features/onboarding/activity_level_screen.dart';
import 'package:calorify/features/onboarding/basic_info_screen.dart';
import 'package:calorify/features/onboarding/health_connect_screen.dart';
import 'package:calorify/features/onboarding/reminder_notifications_screen.dart';
import 'package:calorify/features/onboarding/weight_goal_screen.dart';
import 'package:calorify/features/onboarding/welcome_screen.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      WelcomeScreen(onContinue: _nextPage),
      BasicInfoScreen(onContinue: _nextPage),
      WeightGoalScreen(onContinue: _nextPage),
      ActivityLevelScreen(onContinue: _nextPage),
      HealthConnectScreen(onContinue: _nextPage),
      ReminderNotificationsScreen(onFinish: _finishOnboarding),
    ];
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  void _nextPage() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  void _previousPage() {
    _pageController.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
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
            Row(
              children: [
                if (_currentPage > 0)
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: _previousPage,
                  ),
                Expanded(
                  child: OnboardingProgressBar(
                    currentStep: _currentPage,
                    totalSteps: _pages.length,
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: _onPageChanged,
                physics: const NeverScrollableScrollPhysics(),
                children: _pages,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
