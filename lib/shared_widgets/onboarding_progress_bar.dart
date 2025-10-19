import 'package:flutter/material.dart';

class OnboardingProgressBar extends StatefulWidget {
  final int currentStep;
  final int totalSteps;

  const OnboardingProgressBar({
    super.key,
    required this.currentStep,
    required this.totalSteps,
  });

  @override
  State<OnboardingProgressBar> createState() => _OnboardingProgressBarState();
}

class _OnboardingProgressBarState extends State<OnboardingProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _progress =
        (widget.totalSteps > 0) ? widget.currentStep / widget.totalSteps : 0.0;

    _animation = Tween<double>(
      begin: _progress,
      end: _progress,
    ).animate(_controller);
  }

  @override
  void didUpdateWidget(OnboardingProgressBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    final oldProgress =
        (oldWidget.totalSteps > 0)
            ? oldWidget.currentStep / oldWidget.totalSteps
            : 0.0;
    final newProgress =
        (widget.totalSteps > 0) ? widget.currentStep / widget.totalSteps : 0.0;

    if (oldProgress != newProgress) {
      _animation = Tween<double>(
        begin: oldProgress,
        end: newProgress,
      ).animate(_controller);
      _controller
        ..value = 0
        ..forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              value: _animation.value,
              backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
              valueColor: AlwaysStoppedAnimation<Color>(
                Theme.of(context).colorScheme.primary,
              ),
              minHeight: 8,
            ),
          );
        },
      ),
    );
  }
}
