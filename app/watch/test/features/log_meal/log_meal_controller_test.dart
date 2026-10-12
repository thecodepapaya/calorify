import 'dart:async';

import 'package:calorify_watch/core/services/watch_speech_service.dart';
import 'package:calorify_watch/features/log_meal/log_meal_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/widgets.dart' show AppLifecycleState;
import 'package:models/models.dart';

void main() {
  late _FakeSpeechSession speech;
  late _ManualScheduler scheduler;
  late List<LogMealFeedback> feedback;
  late List<MealDetectionResult> detectedMeals;

  setUp(() {
    speech = _FakeSpeechSession();
    scheduler = _ManualScheduler();
    feedback = [];
    detectedMeals = [];
  });

  LogMealController createController({
    bool mealIdentified = true,
    Future<MealDetectionResponse> Function(String)? detect,
  }) {
    return LogMealController(
      speech: speech,
      scheduler: scheduler,
      timing: const LogMealTiming(listenFor: Duration(seconds: 2)),
      detectText: ({required textDescription}) {
        return detect?.call(textDescription) ??
            Future.value(
              MealDetectionResponse(
                result: MealDetectionResult(mealIdentified: mealIdentified),
              ),
            );
      },
      onMealDetected: (result) async => detectedMeals.add(result),
      onFeedback: feedback.add,
    );
  }

  test(
    'final transcript follows one state path into meal submission',
    () async {
      final controller = createController();
      addTearDown(controller.dispose);

      await controller.startListening();
      expect(controller.phase, LogMealPhase.listening);
      expect(controller.secondsLeft, 2);

      speech.emitResult(
        const WatchSpeechResult(words: 'dal rice', isFinal: true),
      );
      expect(controller.transcript, 'dal rice');

      scheduler.fireOnce(const Duration(milliseconds: 250));
      await pumpEventQueue();

      expect(speech.stopCalls, 1);
      expect(controller.phase, LogMealPhase.idle);
      expect(detectedMeals, hasLength(1));
      expect(feedback, [LogMealFeedback.medium, LogMealFeedback.heavy]);
    },
  );

  test(
    'typed speech failure cancels the session with a stable message',
    () async {
      final controller = createController();
      addTearDown(controller.dispose);
      await controller.startListening();

      speech.emitError(WatchSpeechErrorCode.network);
      await pumpEventQueue();

      expect(controller.phase, LogMealPhase.idle);
      expect(controller.error, contains('needs a connection'));
      expect(speech.cancelCalls, 1);
    },
  );

  test(
    'done status waits for the final transcript window before submit',
    () async {
      final controller = createController();
      addTearDown(controller.dispose);
      await controller.startListening();
      speech.emitResult(
        const WatchSpeechResult(words: 'paneer salad', isFinal: false),
      );

      speech.emitStatus(WatchSpeechStatus.done);
      expect(controller.phase, LogMealPhase.listening);
      scheduler.fireOnce(const Duration(milliseconds: 500));
      await pumpEventQueue();

      expect(detectedMeals, hasLength(1));
      expect(controller.phase, LogMealPhase.idle);
    },
  );

  test('startup watchdog returns a silent recognizer to idle', () async {
    speech.listeningAfterStart = false;
    final controller = createController();
    addTearDown(controller.dispose);
    await controller.startListening();

    scheduler.fireOnce(const Duration(milliseconds: 1500));
    await pumpEventQueue();

    expect(controller.phase, LogMealPhase.idle);
    expect(controller.error, contains('Microphone did not start'));
  });

  test('pausing during initialization cannot start a late session', () async {
    speech.initialization = Completer<bool>();
    final controller = createController();
    addTearDown(controller.dispose);

    final starting = controller.startListening();
    expect(controller.phase, LogMealPhase.starting);
    controller.handleAppLifecycleState(AppLifecycleState.paused);
    await pumpEventQueue();
    speech.initialization!.complete(true);
    await starting;

    expect(controller.phase, LogMealPhase.idle);
    expect(speech.startCalls, 0);
    expect(speech.cancelCalls, 1);
  });

  test('countdown owns auto-finish and empty-transcript handling', () async {
    final controller = createController();
    addTearDown(controller.dispose);
    await controller.startListening();

    scheduler.firePeriodic();
    expect(controller.secondsLeft, 1);
    scheduler.firePeriodic();
    await pumpEventQueue();

    expect(speech.stopCalls, 1);
    expect(controller.phase, LogMealPhase.idle);
    expect(controller.error, contains('No speech detected'));
  });

  test('analysis failure leaves a retryable idle state', () async {
    final controller = createController(
      detect: (_) => Future.error(StateError('offline')),
    );
    addTearDown(controller.dispose);
    await controller.startListening();
    speech.emitResult(
      const WatchSpeechResult(words: 'vegetable curry', isFinal: false),
    );

    await controller.finishListening();

    expect(controller.phase, LogMealPhase.idle);
    expect(controller.error, 'Analysis failed. Please try again.');
    expect(feedback.last, LogMealFeedback.heavy);
  });

  test('dispose detaches callbacks and cancels timers', () async {
    final controller = createController();
    await controller.startListening();

    controller.dispose();

    expect(speech.detachCalls, 1);
    expect(scheduler.timers.where((timer) => timer.isActive), isEmpty);
  });
}

class _FakeSpeechSession implements WatchSpeechSession {
  bool ready = true;
  Completer<bool>? initialization;
  bool acceptsStart = true;
  bool listeningAfterStart = true;
  bool _isListening = false;
  int startCalls = 0;
  int stopCalls = 0;
  int cancelCalls = 0;
  int detachCalls = 0;
  WatchSpeechResultCallback? _onResult;
  WatchSpeechStatusCallback? _onStatus;
  WatchSpeechErrorCallback? _onError;

  @override
  bool get isListening => _isListening;

  @override
  Future<bool> initialize() async => initialization?.future ?? ready;

  @override
  Future<bool> start({
    required Object owner,
    required WatchSpeechResultCallback onResult,
    required WatchSpeechStatusCallback onStatus,
    required WatchSpeechErrorCallback onError,
    required WatchSoundLevelCallback onSoundLevel,
    required Duration listenFor,
    required Duration pauseFor,
  }) async {
    startCalls++;
    _onResult = onResult;
    _onStatus = onStatus;
    _onError = onError;
    _isListening = acceptsStart && listeningAfterStart;
    return acceptsStart;
  }

  @override
  Future<void> stop(Object owner) async {
    stopCalls++;
    _isListening = false;
  }

  @override
  Future<void> cancel(Object owner) async {
    cancelCalls++;
    _isListening = false;
  }

  @override
  void detach(Object owner) {
    detachCalls++;
    _isListening = false;
    _onResult = null;
    _onStatus = null;
    _onError = null;
  }

  void emitResult(WatchSpeechResult result) => _onResult?.call(result);

  void emitStatus(WatchSpeechStatus status) => _onStatus?.call(status);

  void emitError(WatchSpeechErrorCode code) => _onError?.call(code);
}

class _ManualScheduler implements LogMealScheduler {
  final List<_ManualTimer> timers = [];
  int _nowMicros = 100000;

  @override
  Future<void> delay(Duration duration) async {}

  @override
  int nowMicros() {
    _nowMicros += 50000;
    return _nowMicros;
  }

  @override
  Timer once(Duration duration, void Function() callback) {
    final timer = _ManualTimer.once(duration, callback);
    timers.add(timer);
    return timer;
  }

  @override
  Timer periodic(Duration duration, void Function(Timer) callback) {
    final timer = _ManualTimer.periodic(duration, callback);
    timers.add(timer);
    return timer;
  }

  void fireOnce(Duration duration) {
    timers
        .firstWhere((timer) => timer.duration == duration && !timer.isPeriodic)
        .fire();
  }

  void firePeriodic() {
    timers.firstWhere((timer) => timer.isPeriodic && timer.isActive).fire();
  }
}

class _ManualTimer implements Timer {
  _ManualTimer.once(this.duration, void Function() callback)
    : isPeriodic = false,
      _callback = ((_) => callback());

  _ManualTimer.periodic(this.duration, void Function(Timer) callback)
    : isPeriodic = true,
      _callback = callback;

  final Duration duration;
  final bool isPeriodic;
  final void Function(Timer) _callback;
  bool _isActive = true;
  int _tick = 0;

  @override
  bool get isActive => _isActive;

  @override
  int get tick => _tick;

  @override
  void cancel() => _isActive = false;

  void fire() {
    if (!_isActive) return;
    _tick++;
    if (!isPeriodic) _isActive = false;
    _callback(this);
  }
}
