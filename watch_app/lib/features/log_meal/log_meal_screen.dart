import 'package:calorify_watch/core/services/sync_service.dart';
import 'package:flutter/material.dart';
import 'package:services/services.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class LogMealScreen extends StatefulWidget {
  const LogMealScreen({super.key});

  @override
  State<LogMealScreen> createState() => _LogMealScreenState();
}

class _LogMealScreenState extends State<LogMealScreen> {
  final stt.SpeechToText _speech = stt.SpeechToText();
  bool _isListening = false;
  bool _isProcessing = false;
  String _transcribedText = '';
  String _statusMessage = 'Tap to start dictation';

  @override
  void initState() {
    super.initState();
    _initializeSpeech();
  }

  Future<void> _initializeSpeech() async {
    final available = await _speech.initialize();
    if (!available) {
      setState(() {
        _statusMessage = 'Speech recognition not available';
      });
    }
  }

  Future<void> _startListening() async {
    if (!await _speech.initialize()) {
      setState(() {
        _statusMessage = 'Speech recognition not available';
      });
      return;
    }

    setState(() {
      _isListening = true;
      _transcribedText = '';
      _statusMessage = 'Listening...';
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
    );
  }

  Future<void> _stopListening() async {
    await _speech.stop();
    setState(() {
      _isListening = false;
    });

    if (_transcribedText.isNotEmpty) {
      _processMealDescription(_transcribedText);
    }
  }

  Future<void> _processMealDescription(String description) async {
    if (description.trim().isEmpty) {
      setState(() {
        _statusMessage = 'No description provided';
        _isProcessing = false;
      });
      return;
    }

    setState(() {
      _isProcessing = true;
      _statusMessage = 'Analyzing meal...';
    });

    try {
      final result = await FoodAnalysisService.instance.analyzeFoodDescription(
        description: description,
      );

      if (!mounted) return;

      if (result.mealIdentified) {
        // Send meal to main app via sync service
        final success = await SyncService.instance.sendMeal(result.mealInfo);

        if (!mounted) return;

        if (success) {
          setState(() {
            _statusMessage = 'Meal logged successfully!';
            _transcribedText = '';
            _isProcessing = false;
          });

          // Show success and navigate back after a delay
          Future.delayed(const Duration(seconds: 2), () {
            if (mounted) {
              Navigator.of(context).pop();
            }
          });
        } else {
          setState(() {
            _statusMessage = 'Failed to sync meal';
            _isProcessing = false;
          });
        }
      } else {
        setState(() {
          _statusMessage = 'Could not identify meal';
          _isProcessing = false;
        });
      }
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _statusMessage = 'Error: ${e.toString()}';
        _isProcessing = false;
      });
    }
  }

  @override
  void dispose() {
    _speech.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.background,
      appBar: AppBar(
        title: const Text('Log Meal'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              _isListening ? Icons.mic : Icons.mic_none,
              size: 64,
              color:
                  _isListening
                      ? colorScheme.error
                      : colorScheme.onSurfaceVariant,
            ),
            const SizedBox(height: 24),
            Text(
              _statusMessage,
              style: theme.textTheme.titleMedium?.copyWith(
                color: colorScheme.onSurface,
              ),
              textAlign: TextAlign.center,
            ),
            if (_transcribedText.isNotEmpty) ...[
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: colorScheme.surfaceVariant,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  _transcribedText,
                  style: theme.textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
            const SizedBox(height: 32),
            if (!_isProcessing && !_isListening)
              ElevatedButton.icon(
                onPressed: _startListening,
                icon: const Icon(Icons.mic),
                label: const Text('Start Dictation'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                ),
              )
            else if (_isListening)
              ElevatedButton.icon(
                onPressed: _stopListening,
                icon: const Icon(Icons.stop),
                label: const Text('Stop & Process'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: colorScheme.error,
                  foregroundColor: colorScheme.onError,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                ),
              )
            else
              const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
