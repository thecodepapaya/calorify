import 'package:calorify/core/config/env_config.dart';
import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:models/models.dart';
import 'package:calorify/core/utilities/profile_localization.dart';
import 'package:calorify/features/onboarding/steps/reinforcement_components.dart';
import 'package:i18n/i18n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class TrackingSuccessReinforcement extends ConsumerStatefulWidget {
  final VoidCallback onContinue;

  const TrackingSuccessReinforcement({super.key, required this.onContinue});

  @override
  ConsumerState<TrackingSuccessReinforcement> createState() =>
      _TrackingSuccessReinforcementState();
}

class _TrackingSuccessReinforcementState
    extends ConsumerState<TrackingSuccessReinforcement>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  late Future<UserProfile?> _profileFuture;

  @override
  void initState() {
    super.initState();
    _profileFuture = ref.read(onboardingServiceProvider).getProfileData();
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
          final age = profile?.age;
          final gender =
              profile != null && profile.hasGender()
                  ? profile.gender.displayName.toLowerCase()
                  : t.onboarding.reinforcement.trackingSuccess.defaultGender;
          final goal =
              profile != null && profile.hasWeightGoal()
                  ? profile.weightGoal.displayName.toLowerCase()
                  : t.onboarding.reinforcement.trackingSuccess.defaultGoal;

          String personalizedMsg =
              t.onboarding.reinforcement.trackingSuccess.genericMessage;
          if (age != null) {
            personalizedMsg = t.onboarding.reinforcement.trackingSuccess
                .personalizedMessage(
                  age: age.toString(),
                  gender: gender,
                  goal: goal,
                );
          }

          return Column(
            children: [
              ReinforcementScrollableContent(
                child: ReinforcementAnimatedContent(
                  fadeAnimation: _fadeAnimation,
                  slideAnimation: _slideAnimation,
                  child: _buildContent(context, personalizedMsg, t),
                ),
              ),
              ReinforcementContinueButton(
                onPressed: widget.onContinue,
                buttonText: t.onboarding.reinforcement.trackingSuccess.button,
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    String personalizedMsg,
    Translations t,
  ) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 48),
        ReinforcementHeader(
          title: t.onboarding.reinforcement.trackingSuccess.title,
          icon: LucideIcons.users,
        ),
        const SizedBox(height: 16),
        Text(
          '$personalizedMsg ${t.onboarding.reinforcement.trackingSuccess.closingMessage(appLabel: t.appLabel(env: EnvConfig.instance.envSuffix))}',
          style: theme.textTheme.bodyLarge?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 32),
        Text(
          t.onboarding.reinforcement.trackingSuccess.getStartedTitle,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: colorScheme.onSurface,
          ),
        ),
        const SizedBox(height: 16),
        ReinforcementFeatureItem(
          text: t.onboarding.reinforcement.trackingSuccess.tipPhoto,
          icon: LucideIcons.camera,
        ),
        const SizedBox(height: 16),
        ReinforcementFeatureItem(
          text: t.onboarding.reinforcement.trackingSuccess.tipConsistency,
          icon: LucideIcons.repeat,
        ),
        const SizedBox(height: 16),
        ReinforcementFeatureItem(
          text: t.onboarding.reinforcement.trackingSuccess.tipProgress,
          icon: LucideIcons.chartBar,
        ),
      ],
    );
  }
}
