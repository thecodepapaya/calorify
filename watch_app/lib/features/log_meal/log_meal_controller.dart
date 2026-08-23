import 'dart:async';

import 'package:calorify_watch/core/services/watch_speech_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart' show AppLifecycleState;
import 'package:i18n/i18n.dart';
import 'package:models/models.dart';

typedef MealTextDetector =
    Future<MealDetectionResponse> Function({required String textDescription});
typedef MealDetectedCallback = Future<void> Function(MealDetectionResult);
typedef LogMealFeedbackCallback = void Function(LogMealFeedback);

enum LogMealFeedback { medium, heavy }

enum LogMealPhase { idle, starting, listening, finishing, processing }

abstract interface class LogMealScheduler {
  Timer once(Duration duration, void Function() callback);

  Timer periodic(Duration duration, void Function(Timer) callback);

  Future<void> delay(Duration duration);

  int nowMicros();
}

class SystemLogMealScheduler implements LogMealScheduler {
  const SystemLogMealScheduler();

  @override
  Future<void> delay(Duration duration) => Future<void>.delayed(duration);

  @override
  int nowMicros() => DateTime.now().microsecondsSinceEpoch;

  @override
  Timer once(Duration duration, void Function() callback) {
    return Timer(duration, callback);
  }

  @override
  Timer periodic(Duration duration, void Function(Timer) callback) {
    return Timer.periodic(duration, callback);
  }
}

final class LogMealTiming {
  const LogMealTiming({
    this.listenFor = const Duration(seconds: 15),
    this.pauseFor = const Duration(seconds: 3),
    this.startWatchdog = const Duration(milliseconds: 1500),
    this.finalResultDelay = const Duration(milliseconds: 250),
    this.statusFinishDelay = const Duration(milliseconds: 500),
    this.emptyTranscriptGrace = const Duration(milliseconds: 800),
    this.countdownInterval = const Duration(seconds: 1),
    this.waveformInterval = const Duration(milliseconds: 50),
  });

  final Duration listenFor;
  final Duration pauseFor;
  final Duration startWatchdog;
  final Duration finalResultDelay;
  final Duration statusFinishDelay;
  final Duration emptyTranscriptGrace;
  final Duration countdownInterval;
  final Duration waveformInterval;
}

/// State machine for the complete watch voice-meal session.
///
/// The widget renders this controller and owns navigation/haptic callbacks;
/// speech callbacks, timers, transcript finalization, and analysis submission
/// remain testable without a widget or platform channel.
class LogMealController extends ChangeNotifier {
  LogMealController({
    required WatchSpeechSession speech,
    required MealTextDetector detectText,
    required MealDetectedCallback onMealDetected,
    LogMealFeedbackCallback? onFeedback,
    LogMealScheduler scheduler = const SystemLogMealScheduler(),
    LogMealTiming timing = const LogMealTiming(),
  }) : _speech = speech,
       _detectText = detectText,
       _onMealDetected = onMealDetected,
       _onFeedback = onFeedback,
       _scheduler = scheduler,
       _timing = timing,
       _secondsLeft = timing.listenFor.inSeconds;

  final WatchSpeechSession _speech;
  final MealTextDetector _detectText;
  final MealDetectedCallback _onMealDetected;
  final LogMealFeedbackCallback? _onFeedback;
  final LogMealScheduler _scheduler;
  final LogMealTiming _timing;
  final Object _speechOwner = Object();

  final ValueNotifier<List<double>> levels = ValueNotifier(
    List<double>.filled(5, 0),
  );

  LogMealPhase _phase = LogMealPhase.idle;
  String _transcript = '';
  String? _error;
  int _secondsLeft;
  bool _speechReady = false;
  bool _disposed = false;
  Future<bool>? _speechInitialization;
  Timer? _countdownTimer;
  Timer? _finalizeTimer;
  Timer? _startWatchdogTimer;
  int _lastWaveformUpdateMicros = 0;

  LogMealPhase get phase => _phase;
  String get transcript => _transcript;
  String? get error => _error;
  int get secondsLeft => _secondsLeft;
  bool get isStarting => _phase == LogMealPhase.starting;
  bool get isListening =>
      _phase == LogMealPhase.listening || _phase == LogMealPhase.finishing;
  bool get isProcessing => _phase == LogMealPhase.processing;

  Future<void> toggleRecording() {
    return isListening ? finishListening() : startListening();
  }

  Future<void> startListening() async {
    if (_phase != LogMealPhase.idle) return;

    _phase = LogMealPhase.starting;
    _error = null;
    _notify();

    final ready = await _initializeSpeech();
    if (_disposed || _phase != LogMealPhase.starting) return;
    if (!ready) {
      _setIdleError(t.watch.voice.unavailable);
      _onFeedback?.call(LogMealFeedback.heavy);
      return;
    }

    _onFeedback?.call(LogMealFeedback.medium);
    _phase = LogMealPhase.listening;
    _transcript = '';
    _error = null;
    _secondsLeft = _timing.listenFor.inSeconds;
    _resetWaveform();
    _notify();
    _startCountdown();

    try {
      final accepted = await _speech.start(
        owner: _speechOwner,
        onResult: _onSpeechResult,
        onStatus: _onSpeechStatus,
        onError: _onSpeechError,
        onSoundLevel: _onSoundLevel,
        listenFor: _timing.listenFor,
        pauseFor: _timing.pauseFor,
      );
      if (_disposed || _phase != LogMealPhase.listening) return;
      if (!accepted) {
        _showListeningError(t.watch.voice.unavailable);
        return;
      }
      _startWatchdogTimer?.cancel();
      _startWatchdogTimer = _scheduler.once(_timing.startWatchdog, () {
        if (!_disposed &&
            _phase == LogMealPhase.listening &&
            !_speech.isListening &&
            _transcript.isEmpty) {
          _showListeningError(t.watch.voice.didNotStart);
        }
      });
    } catch (error) {
      if (_disposed) return;
      _showListeningError(
        t.watch.voice.startFailed,
        feedback: LogMealFeedback.heavy,
      );
    }
  }

  Future<bool> _initializeSpeech() async {
    if (_speechReady) return true;
    final pending = _speechInitialization ??= _speech.initialize();
    try {
      final ready = await pending;
      _speechReady = ready;
      return ready;
    } catch (error) {
      if (kDebugMode) debugPrint('Watch speech initialization failed: $error');
      return false;
    } finally {
      if (identical(_speechInitialization, pending)) {
        _speechInitialization = null;
      }
    }
  }

  void _onSpeechResult(WatchSpeechResult result) {
    if (_disposed || _phase != LogMealPhase.listening) return;
    _transcript = result.words;
    _notify();
    if (result.isFinal && result.words.trim().isNotEmpty) {
      _scheduleFinish(_timing.finalResultDelay);
    }
  }

  void _onSpeechStatus(WatchSpeechStatus status) {
    if (_disposed || _phase != LogMealPhase.listening) return;
    if (status == WatchSpeechStatus.done ||
        status == WatchSpeechStatus.notListening) {
      // Android can report completion just before its final transcript.
      _scheduleFinish(_timing.statusFinishDelay);
    }
  }

  void _onSpeechError(WatchSpeechErrorCode code) {
    if (_disposed || _phase != LogMealPhase.listening) return;
    final message = switch (code) {
      WatchSpeechErrorCode.permission => t.watch.voice.allowMicrophone,
      WatchSpeechErrorCode.network => t.watch.voice.needsConnection,
      WatchSpeechErrorCode.audio => t.watch.voice.microphoneUnavailable,
      WatchSpeechErrorCode.busy => t.watch.voice.microphoneBusy,
      WatchSpeechErrorCode.languageUnsupported =>
        t.watch.voice.languageUnsupported,
      WatchSpeechErrorCode.throttled => t.watch.voice.temporarilyBusy,
      WatchSpeechErrorCode.unknown => t.watch.voice.notRecognized,
    };
    _showListeningError(message);
  }

  void _onSoundLevel(double soundLevel) {
    if (_disposed || _phase != LogMealPhase.listening) return;
    final nowMicros = _scheduler.nowMicros();
    if (nowMicros - _lastWaveformUpdateMicros <
        _timing.waveformInterval.inMicroseconds) {
      return;
    }
    _lastWaveformUpdateMicros = nowMicros;
    final normalized = ((soundLevel + 2) / 12).clamp(0.05, 1.0);
    final current = levels.value;
    levels.value = [current[1], current[2], current[3], current[4], normalized];
  }

  void _showListeningError(
    String message, {
    LogMealFeedback feedback = LogMealFeedback.medium,
  }) {
    _cancelTimers();
    _resetWaveform();
    if (_disposed) return;
    _setIdleError(message);
    // Change state before cancellation emits `notListening`, preventing a
    // stale completion callback from scheduling another submission.
    unawaited(_speech.cancel(_speechOwner));
    _onFeedback?.call(feedback);
  }

  void _scheduleFinish(Duration delay) {
    _finalizeTimer?.cancel();
    _finalizeTimer = _scheduler.once(delay, () => unawaited(finishListening()));
  }

  void _startCountdown() {
    _countdownTimer?.cancel();
    _countdownTimer = _scheduler.periodic(_timing.countdownInterval, (timer) {
      if (_disposed || _phase != LogMealPhase.listening) {
        timer.cancel();
        return;
      }
      _secondsLeft--;
      _notify();
      if (_secondsLeft <= 0) {
        timer.cancel();
        unawaited(finishListening());
      }
    });
  }

  Future<void> finishListening() async {
    if (_phase != LogMealPhase.listening) return;
    _phase = LogMealPhase.finishing;
    _cancelTimers();
    _resetWaveform();
    _notify();

    try {
      await _speech.stop(_speechOwner);
    } catch (_) {
      // The recognizer may already have stopped before its status callback.
    }
    if (_transcript.trim().isEmpty) {
      await _scheduler.delay(_timing.emptyTranscriptGrace);
    }
    if (_disposed) return;

    final description = _transcript.trim();
    if (description.isEmpty) {
      _setIdleError(t.watch.voice.noSpeech);
      _onFeedback?.call(LogMealFeedback.medium);
      return;
    }

    _phase = LogMealPhase.processing;
    _notify();
    await _submit(description);
  }

  Future<void> cancelListening() async {
    if (!isListening && !isStarting) return;
    _cancelTimers();
    _resetWaveform();
    _phase = LogMealPhase.idle;
    _notify();
    await _speech.cancel(_speechOwner);
  }

  void handleAppLifecycleState(AppLifecycleState state) {
    if ((state == AppLifecycleState.paused ||
            state == AppLifecycleState.detached) &&
        (isListening || isStarting)) {
      unawaited(cancelListening());
    }
  }

  Future<void> _submit(String description) async {
    late final MealDetectionResponse response;
    try {
      response = await _detectText(textDescription: description);
    } catch (error) {
      if (_disposed) return;
      _setIdleError(t.watch.voice.analysisFailed);
      if (kDebugMode) {
        debugPrint('Meal analysis error: type=${error.runtimeType}');
      }
      _onFeedback?.call(LogMealFeedback.heavy);
      return;
    }

    if (_disposed) return;
    final result = response.result;
    if (!result.mealIdentified) {
      _setIdleError(t.watch.voice.mealNotIdentified);
      _onFeedback?.call(LogMealFeedback.medium);
      return;
    }

    _phase = LogMealPhase.idle;
    _notify();
    _onFeedback?.call(LogMealFeedback.heavy);
    try {
      await _onMealDetected(result);
    } catch (error) {
      if (kDebugMode) debugPrint('Meal result navigation failed: $error');
    }
  }

  void _setIdleError(String message) {
    _phase = LogMealPhase.idle;
    _error = message;
    _notify();
  }

  void _resetWaveform() {
    _lastWaveformUpdateMicros = 0;
    levels.value = List<double>.filled(5, 0);
  }

  void _cancelTimers() {
    _countdownTimer?.cancel();
    _countdownTimer = null;
    _finalizeTimer?.cancel();
    _finalizeTimer = null;
    _startWatchdogTimer?.cancel();
    _startWatchdogTimer = null;
  }

  void _notify() {
    if (!_disposed) notifyListeners();
  }

  @override
  void dispose() {
    _disposed = true;
    _cancelTimers();
    _speech.detach(_speechOwner);
    levels.dispose();
    super.dispose();
  }
}
