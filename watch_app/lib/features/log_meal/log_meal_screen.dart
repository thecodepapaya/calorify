import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:calorify_watch/core/repositories/food_repository.dart';
import 'package:calorify_watch/core/router/app_router.dart';
import 'package:calorify_watch/core/services/watch_speech_service.dart';
import 'package:calorify_watch/features/log_meal/log_meal_controller.dart';
import 'package:calorify_watch/widgets/watch_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:widgets/widgets.dart';

@RoutePage()
class LogMealScreen extends StatefulWidget {
  const LogMealScreen({super.key, this.speechService});

  @visibleForTesting
  final WatchSpeechService? speechService;

  @override
  State<LogMealScreen> createState() => _LogMealScreenState();
}

class _LogMealScreenState extends State<LogMealScreen>
    with WidgetsBindingObserver {
  late final LogMealController _controller;

  @override
  void initState() {
    super.initState();
    _controller = LogMealController(
      speech: widget.speechService ?? WatchSpeechService.instance,
      detectText: const WatchFoodRepository().detectText,
      onMealDetected: (result) async {
        if (!mounted) return;
        await context.router.push(MealResultRoute(result: result));
      },
      onFeedback: (feedback) {
        switch (feedback) {
          case LogMealFeedback.medium:
            unawaited(HapticFeedback.mediumImpact());
          case LogMealFeedback.heavy:
            unawaited(HapticFeedback.heavyImpact());
        }
      },
    )..addListener(_onControllerChanged);
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _controller
      ..removeListener(_onControllerChanged)
      ..dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _controller.handleAppLifecycleState(state);
  }

  void _onControllerChanged() {
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: SafeArea(
        child:
            _controller.isProcessing
                ? const _ProcessingView()
                : _controller.isListening
                ? _ListeningView(
                  transcript: _controller.transcript,
                  levelsListenable: _controller.levels,
                  secondsLeft: _controller.secondsLeft,
                  onStop: () => unawaited(_controller.finishListening()),
                )
                : _IdleView(
                  error: _controller.error,
                  isStarting: _controller.isStarting,
                  onTap: () => unawaited(_controller.toggleRecording()),
                ),
      ),
    );
  }
}

class _ProcessingView extends StatefulWidget {
  const _ProcessingView();

  @override
  State<_ProcessingView> createState() => _ProcessingViewState();
}

class _ProcessingViewState extends State<_ProcessingView>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2600),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder:
                (_, _) => MacroIconCycleLoader(
                  progress: _controller.value,
                  haloBaseColor: colors.primary,
                  iconSize: 32,
                  haloDiameter: 64,
                ),
          ),
          const SizedBox(height: 10),
          Text(
            'Checking your meal…',
            style: theme.textTheme.titleSmall?.copyWith(
              fontSize: 11,
              fontWeight: FontWeight.w700,
              color: colors.onSurface,
            ),
          ),
          const SizedBox(height: 3),
          Text(
            'Estimating portions and nutrition',
            style: theme.textTheme.labelSmall?.copyWith(
              fontSize: 8,
              color: colors.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

// ── Listening layout ──────────────────────────────────────────────────────────

class _ListeningView extends StatelessWidget {
  const _ListeningView({
    required this.transcript,
    required this.levelsListenable,
    required this.secondsLeft,
    required this.onStop,
  });
  final String transcript;
  final ValueListenable<List<double>> levelsListenable;
  final int secondsLeft;
  final VoidCallback onStop;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      children: [
        const SizedBox(height: 5),
        Text(
          'Listening',
          style: theme.textTheme.labelMedium?.copyWith(
            color: colorScheme.onSurface,
            fontSize: 11,
            fontWeight: FontWeight.w700,
          ),
        ),
        // Waveform + timer
        ValueListenableBuilder<List<double>>(
          valueListenable: levelsListenable,
          builder: (context, levels, _) {
            return Container(
              height: 32,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ...List.generate(5, (i) {
                    final h = 4.0 + 18.0 * levels[i];
                    return Container(
                      width: 3,
                      height: h,
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        color: colorScheme.error.withValues(
                          alpha: 0.5 + 0.5 * levels[i],
                        ),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    );
                  }),
                  const SizedBox(width: 10),
                  Text(
                    '${secondsLeft}s',
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: colorScheme.onSurfaceVariant.withValues(
                        alpha: 0.6,
                      ),
                      fontSize: 9,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        // Transcript
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: WatchSurface(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              borderColor: colorScheme.primary.withValues(alpha: 0.16),
              child:
                  transcript.isEmpty
                      ? Center(
                        child: Text(
                          'Listening…',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontSize: 12,
                            color: colorScheme.onSurfaceVariant.withValues(
                              alpha: 0.55,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                      : SingleChildScrollView(
                        child: Text(
                          transcript,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontSize: 12,
                            color: colorScheme.onSurface,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
            ),
          ),
        ),
        // Stop button
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Semantics(
            label: 'Stop recording',
            button: true,
            child: GestureDetector(
              onTap: onStop,
              child: Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  color: colorScheme.error,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: colorScheme.error.withValues(alpha: 0.35),
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Icon(
                  LucideIcons.square,
                  size: 16,
                  color: colorScheme.onError,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// ── Idle layout ───────────────────────────────────────────────────────────────

class _IdleView extends StatelessWidget {
  const _IdleView({
    required this.error,
    required this.isStarting,
    required this.onTap,
  });
  final String? error;
  final bool isStarting;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Voice meal log',
            style: theme.textTheme.titleSmall?.copyWith(
              color: colorScheme.onSurface,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 10),
          Semantics(
            label: 'Tap to start recording',
            button: true,
            enabled: !isStarting,
            child: GestureDetector(
              key: const Key('watch_voice_record_button'),
              onTap: isStarting ? null : onTap,
              child: Container(
                width: 76,
                height: 76,
                decoration: BoxDecoration(
                  color: colorScheme.primary.withValues(alpha: 0.12),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Container(
                    width: 58,
                    height: 58,
                    decoration: BoxDecoration(
                      color: colorScheme.primary,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: colorScheme.primary.withValues(alpha: 0.3),
                          blurRadius: 12,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child:
                        isStarting
                            ? Padding(
                              padding: const EdgeInsets.all(18),
                              child: CircularProgressIndicator(
                                strokeWidth: 2.5,
                                color: colorScheme.onPrimary,
                              ),
                            )
                            : Icon(
                              LucideIcons.mic,
                              size: 25,
                              color: colorScheme.onPrimary,
                            ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 9),
          Text(
            isStarting
                ? 'Starting microphone…'
                : error == null
                ? 'Tap, then describe your meal'
                : 'Tap to retry',
            style: theme.textTheme.labelSmall?.copyWith(
              color: colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
              fontSize: 10,
              fontWeight: FontWeight.w600,
            ),
          ),
          if (error == null) ...[
            const SizedBox(height: 7),
            WatchSurface(
              padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 5),
              child: Text(
                'Try “2 rotis with dal”',
                style: theme.textTheme.labelSmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                  fontSize: 8,
                ),
              ),
            ),
          ],
          if (error != null) ...[
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                error!,
                style: theme.textTheme.labelSmall?.copyWith(
                  color: colorScheme.error,
                  fontSize: 9,
                ),
                textAlign: TextAlign.center,
                maxLines: 4,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
