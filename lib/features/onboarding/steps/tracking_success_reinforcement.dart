import 'package:calorify/core/models/profile_models.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/core/utilities/profile_localization.dart';
import 'package:calorify/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class TrackingSuccessReinforcement extends StatefulWidget {
  final VoidCallback onContinue;

  const TrackingSuccessReinforcement({super.key, required this.onContinue});

  @override
  State<TrackingSuccessReinforcement> createState() =>
      _TrackingSuccessReinforcementState();
}

class _TrackingSuccessReinforcementState
    extends State<TrackingSuccessReinforcement>
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
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: FutureBuilder<UserProfile?>(
        future: _profileFuture,
        builder: (context, snapshot) {
          final profile = snapshot.data;
          final t = Translations.of(context);
          final age = profile?.age;
          final gender =
              profile?.gender?.displayName.toLowerCase() ??
              t.onboarding.reinforcement.trackingSuccess.defaultGender;
          final goal =
              profile?.weightGoal?.displayName.toLowerCase() ??
              t.onboarding.reinforcement.trackingSuccess.defaultGoal;

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
              Expanded(
                child: SingleChildScrollView(
                  child: FadeTransition(
                    opacity: _fadeAnimation,
                    child: SlideTransition(
                      position: _slideAnimation,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 48),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: colorScheme.primaryContainer
                                      .withValues(alpha: 0.5),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Icon(
                                  LucideIcons.users,
                                  color: colorScheme.primary,
                                  size: 24,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Text(
                                  t
                                      .onboarding
                                      .reinforcement
                                      .trackingSuccess
                                      .title,
                                  style: theme.textTheme.headlineMedium
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Text(
                            '$personalizedMsg ${t.onboarding.reinforcement.trackingSuccess.closingMessage}',
                            style: theme.textTheme.bodyLarge?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                          const SizedBox(height: 32),
                          Text(
                            t
                                .onboarding
                                .reinforcement
                                .trackingSuccess
                                .getStartedTitle,
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: colorScheme.onSurface,
                            ),
                          ),
                          const SizedBox(height: 16),
                          _buildTipItem(
                            context,
                            t.onboarding.reinforcement.trackingSuccess.tipPhoto,
                            LucideIcons.camera,
                          ),
                          const SizedBox(height: 16),
                          _buildTipItem(
                            context,
                            t
                                .onboarding
                                .reinforcement
                                .trackingSuccess
                                .tipConsistency,
                            LucideIcons.repeat,
                          ),
                          const SizedBox(height: 16),
                          _buildTipItem(
                            context,
                            t
                                .onboarding
                                .reinforcement
                                .trackingSuccess
                                .tipProgress,
                            LucideIcons.chartBar,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 0.0, top: 8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: widget.onContinue,
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text(
                      t.onboarding.reinforcement.trackingSuccess.button,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildTipItem(BuildContext context, String text, IconData icon) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: colorScheme.primaryContainer.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(icon, color: colorScheme.primary, size: 24),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            text,
            style: theme.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
