import 'package:calorify/core/config/env_config.dart';
import 'package:models/models.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/core/utilities/profile_localization.dart';
import 'package:calorify/features/onboarding/steps/reinforcement_components.dart';
import 'package:i18n/i18n.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class GoalLifestyleReinforcement extends StatefulWidget {
  final VoidCallback onContinue;

  const GoalLifestyleReinforcement({super.key, required this.onContinue});

  @override
  State<GoalLifestyleReinforcement> createState() =>
      _GoalLifestyleReinforcementState();
}

class _GoalLifestyleReinforcementState extends State<GoalLifestyleReinforcement>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  late Future<UserProfile?> _profileFuture;

  @override
  void initState() {
    super.initState();
    _profileFuture = OnboardingService.instance.getProfileData();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.0, 0.6, curve: Curves.easeIn),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.2, 1.0, curve: Curves.easeOut),
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: FutureBuilder<UserProfile?>(
        future: _profileFuture,
        builder: (context, snapshot) {
          final profile = snapshot.data;
          final t = Translations.of(context);
          final goalText =
              profile?.weightGoal.displayName.toLowerCase() ??
              t.onboarding.reinforcement.goalLifestyle.defaultGoal;
          final activityText =
              profile?.activityLevel.displayName.toLowerCase() ??
              t.onboarding.reinforcement.goalLifestyle.defaultActivity;

          return Column(
            children: [
              ReinforcementScrollableContent(
                child: ReinforcementAnimatedContent(
                  fadeAnimation: _fadeAnimation,
                  slideAnimation: _slideAnimation,
                  child: _buildContent(context, goalText, activityText, t),
                ),
              ),
              ReinforcementContinueButton(
                onPressed: widget.onContinue,
                buttonText: t.onboarding.reinforcement.goalLifestyle.button,
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    String goalText,
    String activityText,
    Translations t,
  ) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 48),
        ReinforcementHeader(
          title: t.onboarding.reinforcement.goalLifestyle.title,
          icon: LucideIcons.target,
        ),
        const SizedBox(height: 16),
        Text(
          t.onboarding.reinforcement.goalLifestyle.description(
            goalText: goalText,
            activityText: activityText,
            appLabel: t.appLabel(env: EnvConfig.instance.envSuffix),
          ),
          style: theme.textTheme.bodyLarge?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 32),
        ReinforcementFeatureItem(
          text: t.onboarding.reinforcement.goalLifestyle.aiMealDetection,
          icon: LucideIcons.camera,
        ),
        const SizedBox(height: 16),
        ReinforcementFeatureItem(
          text: t.onboarding.reinforcement.goalLifestyle.personalizedTargets,
          icon: LucideIcons.settings,
        ),
        const SizedBox(height: 16),
        ReinforcementFeatureItem(
          text: t.onboarding.reinforcement.goalLifestyle.macroBreakdowns,
          icon: LucideIcons.chartPie,
        ),
      ],
    );
  }
}
