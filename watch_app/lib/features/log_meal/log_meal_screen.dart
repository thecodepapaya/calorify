import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:calorify_watch/core/repositories/food_repository.dart';
import 'package:calorify_watch/core/router/app_router.dart';
import 'package:calorify_watch/core/services/watch_speech_service.dart';
import 'package:calorify_watch/widgets/watch_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
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
    with TickerProviderStateMixin, WidgetsBindingObserver {
  late final WatchSpeechService _speech =
      widget.speechService ?? WatchSpeechService.instance;
  final Object _speechOwner = Object();
  bool _isListening = false;
  bool _isStarting = false;
  bool _isProcessing = false;
  bool _isFinishing = false;
  bool _speechReady = false;
  Future<bool>? _speechInitialization;
  String _transcript = '';
  String? _error;

  // Waveform
  final ValueNotifier<List<double>> _levelsNotifier = ValueNotifier(
    List<double>.filled(5, 0.0),
  );

  // Auto-stop countdown
  static const _listenTimeout = 15;
  Timer? _countdownTimer;
  Timer? _finalizeTimer;
  Timer? _startWatchdogTimer;
  int _secondsLeft = _listenTimeout;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _speech.detach(_speechOwner);
    _countdownTimer?.cancel();
    _finalizeTimer?.cancel();
    _startWatchdogTimer?.cancel();
    _levelsNotifier.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if ((state == AppLifecycleState.paused ||
            state == AppLifecycleState.detached) &&
        _isListening) {
      unawaited(_cancelListening());
    }
  }

  Future<bool> _initSpeech() async {
    if (_speechReady) return true;
    final pending = _speechInitialization ??= _initializeSpeech();
    final ok = await pending;
    if (identical(_speechInitialization, pending)) {
      _speechInitialization = null;
    }
    if (!ok && mounted) {
      setState(
        () =>
            _error =
                'Voice input is unavailable. Check microphone permission in watch settings.',
      );
      unawaited(HapticFeedback.heavyImpact());
    }
    return ok;
  }

  Future<bool> _initializeSpeech() async {
    final ready = await _speech.initialize();
    _speechReady = ready;
    return ready;
  }

  Future<void> _toggleRecording() async {
    _isListening ? await _finishListening() : await _startListening();
  }

  Future<void> _startListening() async {
    if (_isProcessing || _isFinishing || _isStarting || _isListening) return;
    setState(() {
      _isStarting = true;
      _error = null;
    });

    await _initSpeech();
    if (!mounted) return;
    if (!_speechReady) {
      setState(() => _isStarting = false);
      unawaited(HapticFeedback.heavyImpact());
      return;
    }

    unawaited(HapticFeedback.mediumImpact());
    setState(() {
      _isListening = true;
      _isStarting = false;
      _transcript = '';
      _error = null;
      _secondsLeft = _listenTimeout;
    });
    _resetWaveform();

    _startCountdown();

    try {
      final accepted = await _speech.start(
        owner: _speechOwner,
        onResult: _onSpeechResult,
        onStatus: _onSpeechStatus,
        onError: _onSpeechError,
        onSoundLevel: _onSoundLevel,
        listenFor: const Duration(seconds: _listenTimeout),
        pauseFor: const Duration(seconds: 3),
      );
      if (!accepted) {
        _showListeningError(
          'Voice input is unavailable. Check microphone permission in watch settings.',
        );
        return;
      }
      _startWatchdogTimer?.cancel();
      _startWatchdogTimer = Timer(const Duration(milliseconds: 1500), () {
        if (mounted &&
            _isListening &&
            !_speech.isListening &&
            _transcript.isEmpty) {
          _showListeningError('Microphone did not start. Tap to retry.');
        }
      });
    } catch (e) {
      if (!mounted) return;
      _countdownTimer?.cancel();
      setState(() {
        _isListening = false;
        _isStarting = false;
        _error = 'Could not start recording. Check microphone permissions.';
      });
      unawaited(HapticFeedback.heavyImpact());
    }
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    if (!mounted || !_isListening) return;
    final transcript = result.recognizedWords;
    setState(() => _transcript = transcript);
    if (result.finalResult && transcript.trim().isNotEmpty) {
      _scheduleFinish(const Duration(milliseconds: 250));
    }
  }

  void _onSoundLevel(double soundLevel) {
    if (!mounted || !_isListening) return;
    final normalized = ((soundLevel + 2) / 12).clamp(0.05, 1.0);
    final current = _levelsNotifier.value;
    _levelsNotifier.value = [
      current[1],
      current[2],
      current[3],
      current[4],
      normalized,
    ];
  }

  void _onSpeechStatus(String status) {
    if (!mounted || !_isListening || _isFinishing) return;
    if (status == stt.SpeechToText.doneStatus ||
        status == stt.SpeechToText.notListeningStatus) {
      // Android can report "done" just before its final transcript callback.
      _scheduleFinish(const Duration(milliseconds: 500));
    }
  }

  void _onSpeechError(SpeechRecognitionError error) {
    if (!mounted || _isFinishing) return;
    final message = switch (error.errorMsg) {
      'error_permission' => 'Allow microphone access to log meals by voice.',
      'error_network' || 'error_network_timeout' =>
        'Voice recognition needs a connection. Tap to retry.',
      'error_audio' ||
      'error_audio_error' => 'The microphone is unavailable. Tap to retry.',
      'error_busy' => 'The microphone is busy. Wait a moment and retry.',
      'error_language_not_supported' || 'error_language_unavailable' =>
        'Voice input does not support the watch language.',
      'error_too_many_requests' =>
        'Voice input is temporarily busy. Wait a moment and retry.',
      _ => 'I didn\'t catch that. Tap the mic and try again.',
    };
    _showListeningError(message);
  }

  void _showListeningError(String message) {
    _finalizeTimer?.cancel();
    _startWatchdogTimer?.cancel();
    _countdownTimer?.cancel();
    _resetWaveform();
    if (!mounted) return;
    setState(() {
      _isListening = false;
      _isStarting = false;
      _error = message;
    });
    // Clear UI state before cancellation emits `notListening`; otherwise that
    // status can schedule a second, stale finish attempt.
    unawaited(_speech.cancel(_speechOwner));
    unawaited(HapticFeedback.mediumImpact());
  }

  void _scheduleFinish(Duration delay) {
    _finalizeTimer?.cancel();
    _finalizeTimer = Timer(delay, () => unawaited(_finishListening()));
  }

  void _startCountdown() {
    _countdownTimer?.cancel();
    _countdownTimer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (!mounted || !_isListening) {
        t.cancel();
        return;
      }
      setState(() => _secondsLeft--);
      if (_secondsLeft <= 0) {
        t.cancel();
        if (_isListening) unawaited(_finishListening());
      }
    });
  }

  void _resetWaveform() {
    _levelsNotifier.value = List<double>.filled(5, 0.0);
  }

  Future<void> _finishListening() async {
    if (!_isListening || _isFinishing || _isProcessing) return;
    _isFinishing = true;
    _finalizeTimer?.cancel();
    _startWatchdogTimer?.cancel();
    _countdownTimer?.cancel();
    _resetWaveform();
    try {
      await _speech.stop(_speechOwner);
    } catch (_) {}
    // Android may deliver the final words shortly after stop completes. Only
    // wait when no partial transcript has arrived, keeping the normal path fast.
    if (_transcript.trim().isEmpty) {
      await Future<void>.delayed(const Duration(milliseconds: 800));
    }
    if (!mounted) {
      _isFinishing = false;
      return;
    }
    final description = _transcript.trim();
    setState(() {
      _isListening = false;
      _isFinishing = false;
    });

    if (description.isEmpty) {
      setState(() => _error = 'No speech detected. Tap the mic to try again.');
      unawaited(HapticFeedback.mediumImpact());
    } else {
      setState(() => _isProcessing = true);
      await _processMeal(description);
    }
  }

  Future<void> _cancelListening() async {
    _finalizeTimer?.cancel();
    _startWatchdogTimer?.cancel();
    _countdownTimer?.cancel();
    _resetWaveform();
    if (!mounted) return;
    setState(() {
      _isListening = false;
      _isStarting = false;
    });
    await _speech.cancel(_speechOwner);
  }

  Future<void> _processMeal(String description) async {
    if (description.trim().isEmpty) {
      setState(() {
        _isProcessing = false;
        _error = 'Please describe a meal.';
      });
      return;
    }

    try {
      final response = await const WatchFoodRepository().detectText(
        textDescription: description,
      );
      final result = response.result;

      if (!mounted) return;

      if (result.mealIdentified) {
        setState(() => _isProcessing = false);
        unawaited(HapticFeedback.heavyImpact());
        // Navigate to result — meal is NOT sent until user confirms there
        await context.router.push(MealResultRoute(result: result));
      } else {
        setState(() {
          _isProcessing = false;
          _error =
              "Couldn't identify that meal. Try describing it differently.";
        });
        unawaited(HapticFeedback.mediumImpact());
      }
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _isProcessing = false;
        _error = 'Analysis failed. Please try again.';
      });
      if (kDebugMode) debugPrint('Meal analysis error: $e');
      unawaited(HapticFeedback.heavyImpact());
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: SafeArea(
        child:
            _isProcessing
                ? const _ProcessingView()
                : _isListening
                ? _ListeningView(
                  transcript: _transcript,
                  levelsListenable: _levelsNotifier,
                  secondsLeft: _secondsLeft,
                  onStop: _finishListening,
                )
                : _IdleView(
                  error: _error,
                  isStarting: _isStarting,
                  onTap: _toggleRecording,
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
