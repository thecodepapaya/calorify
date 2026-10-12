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
import 'package:i18n/i18n.dart';
import 'package:specs/specs.dart';
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

  Future<void> _close() async {
    await _controller.cancelListening();
    if (mounted) await context.router.maybePop();
  }

  @override
  Widget build(BuildContext context) {
    final strings = Translations.of(context).watch;

    return WatchListScaffold(
      title:
          _controller.isListening
              ? strings.voice.listening
              : strings.voice.title,
      icon: AppIcons.mic,
      onBack: () => unawaited(_close()),
      safeAreaMinimum: const EdgeInsets.fromLTRB(8, 6, 8, 6),
      headerPadding: const EdgeInsets.symmetric(horizontal: 4),
      body:
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
    final strings = Translations.of(context).watch.voice;
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
            strings.processing,
            style: theme.textTheme.titleSmall?.copyWith(
              fontSize: watchBodyFontSize,
              fontWeight: FontWeight.w700,
              color: colors.onSurface,
            ),
          ),
          const SizedBox(height: 3),
          Text(
            strings.processingDescription,
            style: theme.textTheme.labelSmall?.copyWith(
              fontSize: watchLabelFontSize,
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
    final strings = Translations.of(context).watch.voice;

    return Column(
      children: [
        // Waveform + timer
        ValueListenableBuilder<List<double>>(
          valueListenable: levelsListenable,
          builder: (context, levels, _) {
            return Container(
              height: 28,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
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
                    strings.secondsLeft(seconds: secondsLeft),
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: colorScheme.onSurfaceVariant.withValues(
                        alpha: 0.85,
                      ),
                      fontSize: watchLabelFontSize,
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
                          strings.listening,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontSize: watchBodyFontSize,
                            color: colorScheme.onSurfaceVariant.withValues(
                              alpha: 0.85,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                      : SingleChildScrollView(
                        child: Text(
                          transcript,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontSize: watchBodyFontSize,
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
          padding: const EdgeInsets.only(top: 6, bottom: 6),
          child: Semantics(
            label: strings.stop,
            button: true,
            child: GestureDetector(
              onTap: onStop,
              child: Container(
                width: 48,
                height: 48,
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
                  AppIcons.square,
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
    final strings = Translations.of(context).watch.voice;

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Semantics(
              label: strings.start,
              button: true,
              enabled: !isStarting,
              child: GestureDetector(
                key: const Key('watch_voice_record_button'),
                onTap: isStarting ? null : onTap,
                child: Container(
                  width: 68,
                  height: 68,
                  decoration: BoxDecoration(
                    color: colorScheme.primary.withValues(alpha: 0.12),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Container(
                      width: 52,
                      height: 52,
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
                                padding: const EdgeInsets.all(16),
                                child: CircularProgressIndicator(
                                  strokeWidth: 2.5,
                                  color: colorScheme.onPrimary,
                                ),
                              )
                              : Icon(
                                AppIcons.mic,
                                size: 23,
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
                  ? strings.starting
                  : error == null
                  ? strings.prompt
                  : strings.tapToRetry,
              style: theme.textTheme.labelSmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
                fontSize: watchLabelFontSize,
                fontWeight: FontWeight.w600,
              ),
            ),
            if (error == null) ...[
              const SizedBox(height: 7),
              WatchSurface(
                padding: const EdgeInsets.symmetric(
                  horizontal: 11,
                  vertical: 5,
                ),
                child: Text(
                  strings.example,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                    fontSize: watchLabelFontSize,
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
                    fontSize: watchLabelFontSize,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 4,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
