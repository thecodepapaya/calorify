import 'package:calorify/shared_widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:specs/specs.dart';

/// Shared header widget for reinforcement screens
class ReinforcementHeader extends StatelessWidget {
  final String title;
  final IconData icon;

  const ReinforcementHeader({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Row(
      children: [
        Container(
          padding: globalInnerPadding,
          decoration: BoxDecoration(
            color: colorScheme.primaryContainer.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(icon, color: colorScheme.primary, size: 24),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            title,
            style: theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

/// Shared feature/tip item widget
class ReinforcementFeatureItem extends StatelessWidget {
  final String text;
  final IconData icon;

  const ReinforcementFeatureItem({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Row(
      children: [
        Container(
          padding: globalInnerPadding,
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

/// Shared continue button widget
class ReinforcementContinueButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const ReinforcementContinueButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: AppButton(
        variant: AppButtonVariant.filled,
        onPressed: onPressed,
        text: buttonText,
      ),
    );
  }
}

/// Shared animated content wrapper
class ReinforcementAnimatedContent extends StatelessWidget {
  final Animation<double> fadeAnimation;
  final Animation<Offset> slideAnimation;
  final Widget child;

  const ReinforcementAnimatedContent({
    super.key,
    required this.fadeAnimation,
    required this.slideAnimation,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: fadeAnimation,
      child: SlideTransition(position: slideAnimation, child: child),
    );
  }
}

/// Shared scrollable content wrapper
class ReinforcementScrollableContent extends StatelessWidget {
  final Widget child;

  const ReinforcementScrollableContent({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: SingleChildScrollView(child: child));
  }
}
