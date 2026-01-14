import 'package:auto_route/auto_route.dart';
import 'package:calorify_watch/core/services/sync_service.dart';
import 'package:specs/specs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:services/services.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'dart:math' as math;

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
  String _statusMessage = '';
  String? _errorMessage;
  late AnimationController _pulseController;
  late AnimationController _waveController;
  late Animation<double> _pulseAnimation;
  late Animation<double> _waveAnimation;

  @override
  void initState() {
    super.initState();
    _pulseController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    )..repeat(reverse: true);

    _waveController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    )..repeat();

    _pulseAnimation = Tween<double>(begin: 0.95, end: 1.05).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );

    _waveAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _waveController, curve: Curves.linear));

    _initializeSpeech();
  }

  @override
  void dispose() {
    _speech.cancel();
    _pulseController.dispose();
    _waveController.dispose();
    super.dispose();
  }

  Future<void> _initializeSpeech() async {
    final available = await _speech.initialize();
    if (!available) {
      setState(() {
        _statusMessage = 'Speech recognition not available';
        _errorMessage = 'Speech recognition is not available on this device.';
      });
      HapticFeedback.heavyImpact();
    } else {
      setState(() {
        _statusMessage = 'Ready to log meal';
        _errorMessage = null;
      });
    }
  }

  Future<void> _startListening() async {
    if (!await _speech.initialize()) {
      setState(() {
        _statusMessage = 'Speech recognition not available';
        _errorMessage = 'Speech recognition is not available on this device.';
      });
      HapticFeedback.heavyImpact();
      return;
    }

    HapticFeedback.mediumImpact();
    setState(() {
      _isListening = true;
      _transcribedText = '';
      _statusMessage = 'Listening...';
      _errorMessage = null;
    });

    await _speech.listen(
      onResult: (result) {
        setState(() {
          _transcribedText = result.recognizedWords;
          if (result.finalResult) {
            _isListening = false;
            _statusMessage = 'Processing...';
            _processMealDescription(result.recognizedWords);
          }
        });
      },
      listenFor: const Duration(seconds: 10),
      pauseFor: const Duration(seconds: 2),
      partialResults: true,
      localeId: 'en_US',
    );
  }

  Future<void> _stopListening() async {
    await _speech.stop();
    setState(() {
      _isListening = false;
      if (_transcribedText.isEmpty) {
        _statusMessage = 'No speech detected';
        HapticFeedback.mediumImpact();
      } else {
        _statusMessage = 'Processing...';
        _isProcessing = true;
        _processMealDescription(_transcribedText);
      }
    });
  }

  Future<void> _processMealDescription(String description) async {
    if (description.isEmpty) {
      setState(() {
        _statusMessage = 'No description provided';
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
        final success = await SyncService.instance.sendMeal(result.mealInfo);
        if (success) {
          setState(() {
            _statusMessage = 'Meal logged!';
            _isProcessing = false;
            _transcribedText = '';
            _errorMessage = null;
          });
          HapticFeedback.heavyImpact();
          await Future.delayed(const Duration(seconds: 1));
          if (mounted) context.router.pop();
        } else {
          setState(() {
            _statusMessage = 'Failed to sync';
            _isProcessing = false;
            _errorMessage = 'Could not sync meal with phone.';
          });
          HapticFeedback.heavyImpact();
        }
      } else {
        setState(() {
          _statusMessage = 'Could not identify meal';
          _isProcessing = false;
          _errorMessage = 'AI could not identify the meal.';
        });
        HapticFeedback.mediumImpact();
      }
    } catch (e) {
      setState(() {
        _statusMessage = 'Error processing meal';
        _isProcessing = false;
        _errorMessage = 'An error occurred: $e';
      });
      HapticFeedback.heavyImpact();
    }
  }

  String get _accessibilityLabel {
    if (_isListening) {
      return 'Listening for meal description. $_transcribedText';
    } else if (_isProcessing) {
      return 'Processing meal description: $_transcribedText';
    } else {
      return 'Ready to log meal. Tap microphone to start dictation';
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.background,
      body: SafeArea(
        minimum: circularWatchPadding,
        child: Column(
          children: [
            // Header with back button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      HapticFeedback.lightImpact();
                      context.router.pop();
                    },
                    child: Semantics(
                      label: 'Back button',
                      button: true,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: colorScheme.surfaceVariant.withValues(
                            alpha: 0.5,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.arrow_back,
                          size: 18,
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Main content
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 30),
                      // Status indicator with icon
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (_isListening)
                            Icon(
                              LucideIcons.radio,
                              size: 12,
                              color: colorScheme.error.withValues(alpha: 0.7),
                            )
                          else if (_isProcessing)
                            RotationTransition(
                              turns: _waveController,
                              child: Icon(
                                LucideIcons.loader,
                                size: 12,
                                color: colorScheme.primary.withValues(
                                  alpha: 0.7,
                                ),
                              ),
                            )
                          else if (_errorMessage != null)
                            Icon(
                              Icons.warning_amber_rounded,
                              size: 12,
                              color: colorScheme.error.withValues(alpha: 0.7),
                            )
                          else
                            Icon(
                              LucideIcons.mic,
                              size: 12,
                              color: colorScheme.primary.withValues(alpha: 0.7),
                            ),
                          const SizedBox(width: 4),
                          Flexible(
                            child: Text(
                              _statusMessage,
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: colorScheme.onSurfaceVariant.withValues(
                                  alpha: 0.7,
                                ),
                                fontSize: 9,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      // Microphone Icon with animations
                      Semantics(
                        label: _accessibilityLabel,
                        child:
                            _isListening
                                ? AnimatedBuilder(
                                  animation: _waveAnimation,
                                  builder: (context, child) {
                                    return Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        // Outer wave
                                        Container(
                                          width:
                                              90 +
                                              (12 *
                                                  math.sin(
                                                    _waveAnimation.value *
                                                        2 *
                                                        math.pi,
                                                  )),
                                          height:
                                              90 +
                                              (12 *
                                                  math.sin(
                                                    _waveAnimation.value *
                                                        2 *
                                                        math.pi,
                                                  )),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: colorScheme.error
                                                  .withValues(
                                                    alpha:
                                                        0.2 -
                                                        (0.15 *
                                                            math.sin(
                                                              _waveAnimation
                                                                      .value *
                                                                  2 *
                                                                  math.pi,
                                                            )),
                                                  ),
                                              width: 1.5,
                                            ),
                                          ),
                                        ),
                                        // Inner microphone
                                        ScaleTransition(
                                          scale: _pulseAnimation,
                                          child: GestureDetector(
                                            onTap: _stopListening,
                                            child: Container(
                                              width: 60,
                                              height: 60,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: [
                                                    colorScheme.errorContainer,
                                                    colorScheme.error,
                                                  ],
                                                ),
                                                shape: BoxShape.circle,
                                              ),
                                              child: Icon(
                                                LucideIcons.mic,
                                                size: 28,
                                                color:
                                                    colorScheme
                                                        .onErrorContainer,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                )
                                : _isProcessing
                                ? RotationTransition(
                                  turns: _waveController,
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          colorScheme.primaryContainer,
                                          colorScheme.primary,
                                        ],
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      LucideIcons.loader,
                                      size: 28,
                                      color: colorScheme.onPrimaryContainer,
                                    ),
                                  ),
                                )
                                : _errorMessage != null
                                ? TweenAnimationBuilder<double>(
                                  tween: Tween(begin: 0.0, end: 1.0),
                                  duration: const Duration(milliseconds: 600),
                                  curve: Curves.elasticOut,
                                  builder: (context, value, child) {
                                    return Transform.scale(
                                      scale: value,
                                      child: child,
                                    );
                                  },
                                  child: GestureDetector(
                                    onTap: _startListening,
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            colorScheme.errorContainer,
                                            colorScheme.error,
                                          ],
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.warning_amber_rounded,
                                        size: 28,
                                        color: colorScheme.onErrorContainer,
                                      ),
                                    ),
                                  ),
                                )
                                : TweenAnimationBuilder<double>(
                                  tween: Tween(begin: 0.0, end: 1.0),
                                  duration: const Duration(milliseconds: 600),
                                  curve: Curves.easeOutBack,
                                  builder: (context, value, child) {
                                    return Transform.scale(
                                      scale: value,
                                      child: child,
                                    );
                                  },
                                  child: GestureDetector(
                                    onTap: _startListening,
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            colorScheme.primaryContainer,
                                            colorScheme.primary,
                                          ],
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        LucideIcons.mic,
                                        size: 28,
                                        color: colorScheme.onPrimaryContainer,
                                      ),
                                    ),
                                  ),
                                ),
                      ),
                      const SizedBox(height: 20),
                      // Transcribed Text
                      if (_transcribedText.isNotEmpty) ...[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              LucideIcons.messageSquare,
                              size: 10,
                              color: colorScheme.primary.withValues(alpha: 0.6),
                            ),
                            const SizedBox(width: 4),
                            Flexible(
                              child: Text(
                                'You said:',
                                style: theme.textTheme.labelSmall?.copyWith(
                                  color: colorScheme.onSurfaceVariant
                                      .withValues(alpha: 0.6),
                                  fontSize: 8,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            _transcribedText,
                            style: theme.textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: colorScheme.onSurface,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(height: 12),
                      ],
                      // Error message
                      if (_errorMessage != null) ...[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                LucideIcons.info,
                                size: 10,
                                color: colorScheme.error.withValues(alpha: 0.7),
                              ),
                              const SizedBox(width: 4),
                              Flexible(
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
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                      // Hint text
                      if (!_isProcessing &&
                          !_isListening &&
                          _errorMessage == null) ...[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              LucideIcons.info,
                              size: 10,
                              color: colorScheme.onSurfaceVariant.withValues(
                                alpha: 0.5,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Flexible(
                              child: Text(
                                'Tap to start dictation',
                                style: theme.textTheme.labelSmall?.copyWith(
                                  color: colorScheme.onSurfaceVariant
                                      .withValues(alpha: 0.5),
                                  fontSize: 8,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
