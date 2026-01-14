import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:calorify_watch/core/router/app_router.dart';
import 'package:calorify_watch/core/services/sync_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:services/services.dart';
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
  final stt.SpeechToText _speech = stt.SpeechToText();
  bool _isListening = false;
  bool _isProcessing = false;
  String _transcribedText = '';
  String? _errorMessage;
  late AnimationController _buttonAnimationController;
  late Animation<double> _buttonSizeAnimation;
  late Animation<Offset> _buttonPositionAnimation;
  Timer? _amplitudeTimer;
  List<double> _audioLevels = List.filled(5, 0.0);

  @override
  void initState() {
    super.initState();
    _buttonAnimationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _buttonSizeAnimation = Tween<double>(begin: 48.0, end: 32.0).animate(
      CurvedAnimation(
        parent: _buttonAnimationController,
        curve: Curves.easeInOut,
      ),
    );

    _buttonPositionAnimation = Tween<Offset>(
      begin: const Offset(0, 0),
      end: const Offset(0, 0.3),
    ).animate(
      CurvedAnimation(
        parent: _buttonAnimationController,
        curve: Curves.easeInOut,
      ),
    );

    _initializeSpeech();
  }

  @override
  void dispose() {
    _speech.cancel();
    _amplitudeTimer?.cancel();
    _buttonAnimationController.dispose();
    super.dispose();
  }

  Future<void> _initializeSpeech() async {
    final available = await _speech.initialize();
    if (!available) {
      setState(() {
        _errorMessage = 'Speech recognition is not available on this device.';
      });
      HapticFeedback.heavyImpact();
    }
  }

  Future<void> _toggleRecording() async {
    if (_isListening) {
      await _stopListening();
    } else {
      await _startListening();
    }
  }

  Future<void> _startListening() async {
    if (!await _speech.initialize()) {
      setState(() {
        _errorMessage = 'Speech recognition is not available on this device.';
      });
      HapticFeedback.heavyImpact();
      return;
    }

    HapticFeedback.mediumImpact();
    setState(() {
      _isListening = true;
      _transcribedText = '';
      _errorMessage = null;
      _audioLevels = List.filled(5, 0.0);
    });

    // Auto-stop after 8 seconds if user hasn't stopped manually
    Timer(const Duration(seconds: 8), () {
      if (mounted && _isListening) {
        debugPrint('Auto-stopping after 8 seconds');
        _stopListening();
      }
    });

    try {
      debugPrint('Starting speech recognition...');
      debugPrint(
        'Speech recognition initialized: ${await _speech.initialize()}',
      );
      debugPrint(
        'Speech recognition isListening before: ${_speech.isListening}',
      );

      final listenResult = await _speech.listen(
        onResult: (result) {
          debugPrint('=== onResult callback triggered ===');
          debugPrint('Recognized words: "${result.recognizedWords}"');
          debugPrint('Final result: ${result.finalResult}');
          debugPrint('Has words: ${result.recognizedWords.isNotEmpty}');

          if (!mounted) {
            debugPrint('Widget not mounted, ignoring result');
            return;
          }

          setState(() {
            _transcribedText = result.recognizedWords;
            debugPrint(
              'Transcript updated in state: "$_transcribedText" (final: ${result.finalResult})',
            );

            // Boost waveform when speech is detected
            if (result.recognizedWords.isNotEmpty && mounted) {
              // Increase waveform levels when speech is detected
              final boost =
                  0.3 +
                  (0.4 *
                      (result.recognizedWords.length / 50.0).clamp(0.0, 1.0));
              for (int i = 0; i < 5; i++) {
                final currentLevel = _audioLevels[i];
                _audioLevels[i] = (currentLevel * 0.7) + (boost * 0.3);
              }
            }

            // Animate button when transcript appears
            if (_transcribedText.isNotEmpty &&
                !_buttonAnimationController.isCompleted) {
              _buttonAnimationController.forward();
            } else if (_transcribedText.isEmpty &&
                _buttonAnimationController.isCompleted) {
              _buttonAnimationController.reverse();
            }
            // Don't auto-process on finalResult - wait for user to tap stop
            // Only auto-stop if we've been listening for 8+ seconds
            if (result.finalResult) {
              debugPrint('Final result received, but waiting for user to stop');
              // Keep listening until user taps stop or 8 seconds pass
            }
          });
        },
        listenFor: const Duration(seconds: 8),
        pauseFor: const Duration(
          seconds: 8,
        ), // Don't auto-stop on pause, wait for user
        partialResults: true,
        localeId: 'en_US',
        cancelOnError: false,
        listenMode: stt.ListenMode.dictation,
      );
      debugPrint(
        'Speech recognition listen() completed. Returned: $listenResult',
      );
      debugPrint(
        'Speech recognition isListening property: ${_speech.isListening}',
      );

      // Check if listening actually started (listen() can return null, true, or false)
      final isActuallyListening = listenResult ?? _speech.isListening;
      if (!isActuallyListening) {
        debugPrint(
          'WARNING: Speech recognition did not start - listen() returned: $listenResult, isListening: ${_speech.isListening}',
        );
        if (mounted) {
          setState(() {
            _isListening = false;
            _errorMessage =
                'Failed to start listening. Please check microphone permissions.';
          });
          _stopSimulatedWaveform();
          return;
        }
      } else {
        debugPrint('Speech recognition is active and listening');
      }

      // Don't start audio level monitoring - it conflicts with speech recognition
      // Instead, use a simulated waveform that shows activity
      _startSimulatedWaveform();
    } catch (e) {
      if (!mounted) return;
      debugPrint('Error starting speech recognition: $e');
      _stopSimulatedWaveform();
      setState(() {
        _isListening = false;
        _errorMessage = 'Failed to start recording: $e';
      });
      HapticFeedback.heavyImpact();
    }
  }

  Future<void> _stopListening() async {
    try {
      await _speech.stop();
    } catch (e) {
      debugPrint('Error stopping speech recognition: $e');
    }

    if (!mounted) return;
    _stopSimulatedWaveform();
    setState(() {
      _isListening = false;
      _buttonAnimationController.reverse();
      if (_transcribedText.isEmpty) {
        HapticFeedback.mediumImpact();
        setState(() {
          _errorMessage = 'No speech detected. Please try again.';
        });
      } else {
        _isProcessing = true;
        _processMealDescription(_transcribedText);
      }
    });
  }

  void _startSimulatedWaveform() {
    // Use a timer to animate the waveform while listening
    _amplitudeTimer?.cancel();
    _amplitudeTimer = Timer.periodic(const Duration(milliseconds: 150), (
      timer,
    ) {
      if (!_isListening || !mounted) {
        timer.cancel();
        return;
      }

      // Create animated waveform pattern
      final time = DateTime.now().millisecondsSinceEpoch * 0.003;
      setState(() {
        for (int i = 0; i < 5; i++) {
          final phase = (time + i * 0.3) % (2 * 3.14159);
          final level =
              0.3 +
              (0.7 *
                  (0.5 +
                      0.5 *
                          (phase < 3.14159
                              ? phase / 3.14159
                              : (6.28318 - phase) / 3.14159)));
          _audioLevels[i] = level;
        }
      });
    });
  }

  void _stopSimulatedWaveform() {
    _amplitudeTimer?.cancel();
    _amplitudeTimer = null;
    if (mounted) {
      setState(() {
        _audioLevels = List.filled(5, 0.0);
      });
    }
  }

  Future<void> _processMealDescription(String description) async {
    if (description.isEmpty) {
      setState(() {
        _isProcessing = false;
        _errorMessage = 'Please dictate a meal description.';
      });
      HapticFeedback.mediumImpact();
      return;
    }

    try {
      final result = await FoodAnalysisService.instance.analyzeFoodDescription(
        description: description,
      );

      if (result.mealIdentified) {
        // Send to phone in background
        SyncService.instance.sendMeal(result.mealInfo);

        setState(() {
          _isProcessing = false;
          _errorMessage = null;
        });
        HapticFeedback.heavyImpact();

        // Navigate to result screen
        if (mounted) {
          context.router.push(MealResultRoute(result: result));
        }
      } else {
        setState(() {
          _isProcessing = false;
          _errorMessage = 'AI could not identify the meal.';
        });
        HapticFeedback.mediumImpact();
      }
    } catch (e) {
      setState(() {
        _isProcessing = false;
        _errorMessage = 'An error occurred: $e';
      });
      HapticFeedback.heavyImpact();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isListeningWithLayout = _isListening;

    return Scaffold(
      backgroundColor: colorScheme.background,
      body: SafeArea(
        child:
            isListeningWithLayout
                ? Column(
                  children: [
                    // Transcript area (top 70%)
                    Expanded(
                      flex: 7,
                      child: Column(
                        children: [
                          // Sound meter bar
                          _buildSoundMeter(theme, colorScheme),
                          // Transcript text
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(16),
                              child:
                                  _transcribedText.isEmpty
                                      ? Center(
                                        child: Text(
                                          'Listening...',
                                          style: theme.textTheme.bodyMedium
                                              ?.copyWith(
                                                fontSize: 12,
                                                color: colorScheme
                                                    .onSurfaceVariant
                                                    .withValues(alpha: 0.6),
                                              ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                      : SingleChildScrollView(
                                        child: Text(
                                          _transcribedText,
                                          style: theme.textTheme.bodyMedium
                                              ?.copyWith(
                                                fontSize: 12,
                                                color: colorScheme.onSurface,
                                              ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Bottom area with stop button (bottom 30%)
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: SlideTransition(
                          position: _buttonPositionAnimation,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: GestureDetector(
                              onTap: _toggleRecording,
                              child: Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: colorScheme.error,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  LucideIcons.square,
                                  size: 14,
                                  color: colorScheme.onError,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
                : _isProcessing
                ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const AppLoader(size: 40),
                      const SizedBox(height: 16),
                      Text(
                        'Identifying meal...',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontSize: 12,
                          color: colorScheme.onSurfaceVariant.withValues(
                            alpha: 0.8,
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
                : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Sound meter bar (when listening)
                      if (_isListening) ...[
                        _buildSoundMeter(theme, colorScheme),
                        const SizedBox(height: 16),
                      ],
                      // Recording button (centered when no transcript)
                      AnimatedBuilder(
                        animation: _buttonAnimationController,
                        builder: (context, child) {
                          return GestureDetector(
                            onTap: _toggleRecording,
                            child: Container(
                              width: _buttonSizeAnimation.value,
                              height: _buttonSizeAnimation.value,
                              decoration: BoxDecoration(
                                color:
                                    _isListening
                                        ? colorScheme.error
                                        : colorScheme.primary,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                _isListening
                                    ? LucideIcons.square
                                    : LucideIcons.mic,
                                size: _buttonSizeAnimation.value * 0.42,
                                color:
                                    _isListening
                                        ? colorScheme.onError
                                        : colorScheme.onPrimary,
                              ),
                            ),
                          );
                        },
                      ),
                      // Hint text below button
                      if (!_isListening && _errorMessage == null) ...[
                        const SizedBox(height: 12),
                        Text(
                          'Tap to start recording',
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: colorScheme.onSurfaceVariant.withValues(
                              alpha: 0.6,
                            ),
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                      // Error message
                      if (_errorMessage != null) ...[
                        const SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            _errorMessage!,
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: colorScheme.error,
                              fontSize: 9,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
      ),
    );
  }

  Widget _buildSoundMeter(ThemeData theme, ColorScheme colorScheme) {
    return Container(
      height: 24,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: List.generate(5, (index) {
          // Use real audio levels
          final level = _audioLevels[index];
          final height = 4.0 + (16.0 * level);

          return Container(
            width: 3,
            height: height,
            margin: const EdgeInsets.symmetric(horizontal: 2),
            decoration: BoxDecoration(
              color: colorScheme.error.withValues(alpha: 0.6 + (0.4 * level)),
              borderRadius: BorderRadius.circular(1.5),
            ),
          );
        }),
      ),
    );
  }
}
