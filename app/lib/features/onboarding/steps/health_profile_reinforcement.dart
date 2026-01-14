import 'package:calorify/core/models/profile_models.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/core/utilities/onboarding_utils.dart';
import 'package:calorify/features/onboarding/steps/bmi_scale.dart';
import 'package:calorify/features/onboarding/steps/reinforcement_components.dart';
import 'package:calorify/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class HealthProfileReinforcement extends StatefulWidget {
  final VoidCallback onContinue;

  const HealthProfileReinforcement({super.key, required this.onContinue});

  @override
  State<HealthProfileReinforcement> createState() =>
      _HealthProfileReinforcementState();
}

class _HealthProfileReinforcementState extends State<HealthProfileReinforcement>
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
    final t = Translations.of(context);

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: FutureBuilder<UserProfile?>(
        future: _profileFuture,
        builder: (context, snapshot) {
          final profile = snapshot.data;
          final bmi =
              profile != null
                  ? OnboardingService.instance.calculateBMI(profile) ?? 0.0
                  : 0.0;
          final bmiCategory = OnboardingUtils.getBMICategory(bmi);
          final hasValidBmi = bmi > 0;

          String description =
              profile != null && hasValidBmi
                  ? t.onboarding.reinforcement.healthProfile.bmiDescription(
                    bmi: bmi.toStringAsFixed(1),
                  )
                  : t
                      .onboarding
                      .reinforcement
                      .healthProfile
                      .finalizeDescription;

          if (profile?.targetWeight != null && profile?.weight != null) {
            final diff = (profile!.targetWeight! - profile.weight!).abs();
            final direction =
                profile.targetWeight! > profile.weight!
                    ? t.onboarding.reinforcement.healthProfile.goalGain
                    : t.onboarding.reinforcement.healthProfile.goalLose;
            final unit = profile.weightUnit.isMetric ? 'kg' : 'lbs';
            if (diff > 0) {
              description +=
                  ' ${t.onboarding.reinforcement.healthProfile.goalReach(direction: direction, diff: diff.toStringAsFixed(1), unit: unit)}';
            } else {
              description +=
                  ' ${t.onboarding.reinforcement.healthProfile.goalReached}';
            }
          }

          return Column(
            children: [
              ReinforcementScrollableContent(
                child: ReinforcementAnimatedContent(
                  fadeAnimation: _fadeAnimation,
                  slideAnimation: _slideAnimation,
                  child: _buildContent(
                    context,
                    description,
                    profile,
                    hasValidBmi,
                    bmi,
                    bmiCategory,
                  ),
                ),
              ),
              ReinforcementContinueButton(
                onPressed: widget.onContinue,
                buttonText: t.onboarding.reinforcement.healthProfile.button,
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    String description,
    UserProfile? profile,
    bool hasValidBmi,
    double bmi,
    String bmiCategory,
  ) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = Translations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 48),
        ReinforcementHeader(
          title: t.onboarding.reinforcement.healthProfile.title,
          icon: LucideIcons.activity,
        ),
        const SizedBox(height: 16),
        Text(
          description,
          style: theme.textTheme.bodyLarge?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
        if (profile != null && hasValidBmi) ...[
          const SizedBox(height: 32),
          _buildBMICard(context, bmiCategory, bmi),
        ],
      ],
    );
  }

  Widget _buildBMICard(BuildContext context, String bmiCategory, double bmi) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: colorScheme.outline.withValues(alpha: 0.2)),
      ),
      child: Column(
        children: [
          Text(
            bmiCategory,
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.primary,
            ),
          ),
          const SizedBox(height: 20),
          BMIScale(bmi: bmi),
          const SizedBox(height: 20),
          Text(
            OnboardingUtils.getBMIMessage(bmi),
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
