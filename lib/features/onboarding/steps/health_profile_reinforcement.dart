import 'package:calorify/core/models/profile_models.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/core/utilities/onboarding_utils.dart';
import 'package:calorify/features/onboarding/steps/bmi_scale.dart';
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
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );

    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.0, 0.6, curve: Curves.easeIn),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.15),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.2, 1.0, curve: Curves.easeOutBack),
      ),
    );

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.8, curve: Curves.elasticOut),
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

    return Scaffold(
      body: FutureBuilder<UserProfile?>(
        future: OnboardingService.instance.getProfileData(),
        builder: (context, snapshot) {
          final profile = snapshot.data;
          final bmi =
              profile != null
                  ? OnboardingService.instance.calculateBMI(profile) ?? 0.0
                  : 0.0;
          final bmiCategory = OnboardingUtils.getBMICategory(bmi);

          String description =
              profile != null
                  ? 'Based on your metrics, your BMI is ${bmi.toStringAsFixed(1)}.'
                  : 'Let\'s finalize your profile to customize your experience.';

          if (profile?.targetWeight != null && profile?.weight != null) {
            final diff = (profile!.targetWeight! - profile.weight!).abs();
            final direction =
                profile.targetWeight! > profile.weight! ? 'gain' : 'lose';
            final unit = profile.weightUnit.isMetric ? 'kg' : 'lbs';
            if (diff > 0) {
              description +=
                  ' To reach your goal, you\'ll $direction ${diff.toStringAsFixed(1)} $unit.';
            } else {
              description +=
                  ' You\'re at your target weight! We\'ll help you maintain it.';
            }
          }

          return Stack(
            children: [
              Positioned(
                top: -100,
                right: -50,
                child: _CircleDecorator(
                  color: colorScheme.primary.withValues(alpha: 0.05),
                  size: 300,
                ),
              ),
              Positioned(
                bottom: -50,
                left: -50,
                child: _CircleDecorator(
                  color: colorScheme.secondary.withValues(alpha: 0.05),
                  size: 200,
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: FadeTransition(
                          opacity: _fadeAnimation,
                          child: SlideTransition(
                            position: _slideAnimation,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ScaleTransition(
                                  scale: _scaleAnimation,
                                  child: Container(
                                    padding: const EdgeInsets.all(32),
                                    decoration: BoxDecoration(
                                      color: colorScheme.primaryContainer
                                          .withValues(alpha: 0.4),
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: colorScheme.primary.withValues(
                                            alpha: 0.1,
                                          ),
                                          blurRadius: 20,
                                          spreadRadius: 5,
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      LucideIcons.activity,
                                      size: 80,
                                      color: colorScheme.primary,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 48),
                                Text(
                                  'Your Health Profile',
                                  style: theme.textTheme.displaySmall?.copyWith(
                                    fontWeight: FontWeight.w900,
                                    color: colorScheme.onSurface,
                                    letterSpacing: -0.5,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 16),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                  ),
                                  child: Text(
                                    description,
                                    style: theme.textTheme.titleMedium
                                        ?.copyWith(
                                          color: colorScheme.onSurfaceVariant,
                                          height: 1.5,
                                        ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                if (profile != null) ...[
                                  const SizedBox(height: 32),
                                  Container(
                                    padding: const EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      color: colorScheme.surfaceContainerHighest
                                          .withValues(alpha: 0.5),
                                      borderRadius: BorderRadius.circular(24),
                                      border: Border.all(
                                        color: colorScheme.outline.withValues(
                                          alpha: 0.1,
                                        ),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          bmiCategory,
                                          style: theme.textTheme.headlineSmall
                                              ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: colorScheme.primary,
                                              ),
                                        ),
                                        const SizedBox(height: 24),
                                        BMIScale(bmi: bmi),
                                        const SizedBox(height: 24),
                                        Text(
                                          OnboardingUtils.getBMIMessage(bmi),
                                          textAlign: TextAlign.center,
                                          style: theme.textTheme.bodyMedium
                                              ?.copyWith(
                                                fontStyle: FontStyle.italic,
                                                color:
                                                    colorScheme
                                                        .onSurfaceVariant,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: FilledButton(
                            onPressed: widget.onContinue,
                            style: FilledButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 18),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              elevation: 2,
                            ),
                            child: const Text(
                              'Let\'s Go',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _CircleDecorator extends StatelessWidget {
  final Color color;
  final double size;

  const _CircleDecorator({required this.color, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
