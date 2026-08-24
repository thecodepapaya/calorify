import 'package:calorify/core/config/env_config.dart';
import 'package:calorify/shared_widgets/app_button.dart';
import 'package:calorify/shared_widgets/language_picker_sheet.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:specs/specs.dart';
import 'package:widgets/widgets.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key, required this.onContinue});

  final VoidCallback onContinue;

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

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
      begin: const Offset(0, 0.2),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.2, 1.0, curve: Curves.easeOutBack),
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
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: FadeTransition(
                    opacity: _fadeAnimation,
                    child: SlideTransition(
                      position: _slideAnimation,
                      child: Column(
                        children: [
                          const SizedBox(height: 48),
                          const AnimatedLeaf(size: 120),
                          const SizedBox(height: 32),
                          Text(
                            t.onboarding.welcome(
                              appLabel: t.appLabel(
                                env: EnvConfig.instance.envSuffix,
                              ),
                            ),
                            style: Theme.of(context).textTheme.headlineMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            t.onboarding.subtitle,
                            style: Theme.of(
                              context,
                            ).textTheme.bodyLarge?.copyWith(
                              color:
                                  Theme.of(
                                    context,
                                  ).colorScheme.onSurfaceVariant,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 48),
                          _buildFeatureItem(
                            context,
                            index: 0,
                            icon: LucideIcons.camera,
                            title: t.onboarding.features.foodRecognition.title,
                            description:
                                t
                                    .onboarding
                                    .features
                                    .foodRecognition
                                    .description,
                          ),
                          const SizedBox(height: 24),
                          _buildFeatureItem(
                            context,
                            index: 1,
                            icon: LucideIcons.wandSparkles,
                            title: t.onboarding.features.aiAnalysis.title,
                            description:
                                t.onboarding.features.aiAnalysis.description,
                          ),
                          const SizedBox(height: 24),
                          _buildFeatureItem(
                            context,
                            index: 2,
                            icon: LucideIcons.activity,
                            title:
                                t.onboarding.features.healthIntegration.title,
                            description:
                                t
                                    .onboarding
                                    .features
                                    .healthIntegration
                                    .description,
                          ),
                          const SizedBox(height: 48),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: FadeTransition(
                opacity: _fadeAnimation,
                child: AppButton(
                  variant: AppButtonVariant.filled,
                  onPressed: widget.onContinue,
                  text: t.onboarding.getStarted,
                ),
              ),
            ),
          ],
        ),
        Positioned(top: 16, right: 16, child: _buildLanguageButton(context)),
      ],
    );
  }

  Widget _buildLanguageButton(BuildContext context) {
    final currentLocale = TranslationProvider.of(context).locale;

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ActionChip(
        avatar: Icon(
          LucideIcons.languages,
          size: 16,
          color: Theme.of(context).colorScheme.primary,
        ),
        label: Text(
          currentLocale.translations.language,
          style: TextStyle(
            fontSize: 12,
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () => LanguagePickerSheet.show(context),
        backgroundColor: Theme.of(
          context,
        ).colorScheme.primaryContainer.withValues(alpha: 0.4),
        side: BorderSide.none,
        shape: RoundedSuperellipseBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  Widget _buildFeatureItem(
    BuildContext context, {
    required int index,
    required IconData icon,
    required String title,
    required String description,
  }) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final start = 0.4 + (index * 0.1);
        final animation = CurvedAnimation(
          parent: _controller,
          curve: Interval(
            start.clamp(0.0, 1.0),
            (start + 0.4).clamp(0.0, 1.0),
            curve: Curves.easeOut,
          ),
        );

        return FadeTransition(
          opacity: animation,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0.2, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
      },
      child: Row(
        children: [
          Container(
            padding: globalInnerPadding,
            decoration: BoxDecoration(
              color: Theme.of(
                context,
              ).colorScheme.primaryContainer.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(
              icon,
              color: Theme.of(context).colorScheme.primary,
              size: 24,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
