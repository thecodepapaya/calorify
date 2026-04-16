import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:calorify_watch/core/repositories/food_repository.dart';
import 'package:calorify_watch/core/router/app_router.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:widgets/widgets.dart';

@RoutePage()
class LogMealScreen extends StatefulWidget {
  const LogMealScreen({super.key});

  @override
  State<LogMealScreen> createState() => _LogMealScreenState();
}

class _LogMealScreenState extends State<LogMealScreen>
    with TickerProviderStateMixin {
  final _speech = stt.SpeechToText();
  bool _isListening = false;
  bool _isProcessing = false;
  String _transcript = '';
  String? _error;

  // Waveform
  Timer? _waveTimer;
  List<double> _levels = List.filled(5, 0.0);

  // Auto-stop countdown
  static const _listenTimeout = 15;
  Timer? _countdownTimer;
  int _secondsLeft = _listenTimeout;

  @override
  void initState() {
    super.initState();
    unawaited(_initSpeech());
  }

  @override
  void dispose() {
    _speech.cancel();
    _waveTimer?.cancel();
    _countdownTimer?.cancel();
    super.dispose();
  }

  Future<void> _initSpeech() async {
    final ok = await _speech.initialize();
    if (!ok && mounted) {
      setState(() => _error = 'Speech recognition unavailable on this device.');
      unawaited(HapticFeedback.heavyImpact());
    }
  }

  Future<void> _toggleRecording() async {
    _isListening ? await _stopListening() : await _startListening();
  }

  Future<void> _startListening() async {
    if (!await _speech.initialize()) {
      setState(() => _error = 'Speech recognition unavailable.');
      unawaited(HapticFeedback.heavyImpact());
      return;
    }

    unawaited(HapticFeedback.mediumImpact());
    setState(() {
      _isListening = true;
      _transcript = '';
      _error = null;
      _levels = List.filled(5, 0.0);
      _secondsLeft = _listenTimeout;
    });

    _startCountdown();
    _startWaveform();

    try {
      await _speech.listen(
        onResult: (r) {
          if (!mounted) return;
          setState(() {
            _transcript = r.recognizedWords;
            if (_transcript.isNotEmpty) {
              final boost = 0.3 +
                  0.4 * (_transcript.length / 50.0).clamp(0.0, 1.0);
              for (var i = 0; i < 5; i++) {
                _levels[i] = (_levels[i] * 0.7 + boost * 0.3).clamp(0.0, 1.0);
              }
            }
          });
        },
        listenFor: const Duration(seconds: _listenTimeout),
        pauseFor: const Duration(seconds: 4),
        listenOptions: stt.SpeechListenOptions(
          listenMode: stt.ListenMode.dictation,
          cancelOnError: false,
          autoPunctuation: true,
          enableHapticFeedback: true,
          partialResults: true,
        ),
        localeId: 'en_US',
      );
    } catch (e) {
      if (!mounted) return;
      _stopWaveform();
      _countdownTimer?.cancel();
      setState(() {
        _isListening = false;
        _error = 'Could not start recording. Check microphone permissions.';
      });
      unawaited(HapticFeedback.heavyImpact());
    }
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
        if (_isListening) _stopListening();
      }
    });
  }

  void _startWaveform() {
    _waveTimer?.cancel();
    _waveTimer = Timer.periodic(const Duration(milliseconds: 150), (_) {
      if (!_isListening || !mounted) return;
      final t = DateTime.now().millisecondsSinceEpoch * 0.003;
      setState(() {
        for (var i = 0; i < 5; i++) {
          final phase = (t + i * 0.3) % (2 * 3.14159);
          _levels[i] = 0.3 +
              0.7 *
                  (0.5 +
                      0.5 *
                          (phase < 3.14159
                              ? phase / 3.14159
                              : (6.28318 - phase) / 3.14159));
        }
      });
    });
  }

  void _stopWaveform() {
    _waveTimer?.cancel();
    _waveTimer = null;
    if (mounted) setState(() => _levels = List.filled(5, 0.0));
  }

  Future<void> _stopListening() async {
    _countdownTimer?.cancel();
    _stopWaveform();
    try {
      await _speech.stop();
    } catch (_) {}
    if (!mounted) return;
    setState(() => _isListening = false);

    if (_transcript.isEmpty) {
      setState(() => _error = 'No speech detected. Tap the mic to try again.');
      unawaited(HapticFeedback.mediumImpact());
    } else {
      setState(() => _isProcessing = true);
      await _processMeal(_transcript);
    }
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
          _error = "Couldn't identify that meal. Try describing it differently.";
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
        child: _isProcessing
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const AppLoader(size: 36),
                    const SizedBox(height: 14),
                    Text(
                      'Identifying meal…',
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontSize: 11,
                        color: colorScheme.onSurfaceVariant,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
            : _isListening
                ? _ListeningView(
                    transcript: _transcript,
                    levels: _levels,
                    secondsLeft: _secondsLeft,
                    onStop: _stopListening,
                  )
                : _IdleView(
                    error: _error,
                    onTap: _toggleRecording,
                  ),
      ),
    );
  }
}

// ── Listening layout ──────────────────────────────────────────────────────────

class _ListeningView extends StatelessWidget {
  const _ListeningView({
    required this.transcript,
    required this.levels,
    required this.secondsLeft,
    required this.onStop,
  });
  final String transcript;
  final List<double> levels;
  final int secondsLeft;
  final VoidCallback onStop;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      children: [
        // Waveform + timer
        Container(
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
                    color: colorScheme.error
                        .withValues(alpha: 0.5 + 0.5 * levels[i]),
                    borderRadius: BorderRadius.circular(2),
                  ),
                );
              }),
              const SizedBox(width: 10),
              Text(
                '${secondsLeft}s',
                style: theme.textTheme.labelSmall?.copyWith(
                  color: colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
                  fontSize: 9,
                ),
              ),
            ],
          ),
        ),
        // Transcript
        Expanded(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: transcript.isEmpty
                ? Center(
                    child: Text(
                      'Listening…',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontSize: 12,
                        color: colorScheme.onSurfaceVariant
                            .withValues(alpha: 0.55),
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
        // Stop button
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Semantics(
            label: 'Stop recording',
            button: true,
            child: GestureDetector(
              onTap: onStop,
              child: Container(
                width: 44,
                height: 44,
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
                child:
                    Icon(LucideIcons.square, size: 16, color: colorScheme.onError),
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
  const _IdleView({required this.error, required this.onTap});
  final String? error;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Semantics(
            label: 'Tap to start recording',
            button: true,
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: colorScheme.primary,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: colorScheme.primary.withValues(alpha: 0.3),
                      blurRadius: 14,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Icon(LucideIcons.mic,
                    size: 26, color: colorScheme.onPrimary),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            error == null ? 'Tap to record' : '',
            style: theme.textTheme.labelSmall?.copyWith(
              color: colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
              fontSize: 10,
            ),
          ),
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
