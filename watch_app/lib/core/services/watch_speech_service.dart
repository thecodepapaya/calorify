import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

typedef WatchSpeechResultCallback = void Function(SpeechRecognitionResult);
typedef WatchSpeechStatusCallback = void Function(String);
typedef WatchSpeechErrorCallback = void Function(SpeechRecognitionError);
typedef WatchSoundLevelCallback = void Function(double);

/// Owns the process-wide speech recognizer used by the watch.
///
/// `SpeechToText` is a singleton on Android. Keeping its platform callbacks in
/// this service prevents them from remaining attached to a disposed meal-log
/// screen when the user opens voice input for a second time.
class WatchSpeechService {
  WatchSpeechService._(this._speech);

  @visibleForTesting
  WatchSpeechService.forTesting(this._speech);

  static final WatchSpeechService instance = WatchSpeechService._(
    stt.SpeechToText(),
  );

  final stt.SpeechToText _speech;

  Future<bool>? _initialization;
  bool _ready = false;
  String? _localeId;
  Object? _owner;
  WatchSpeechResultCallback? _resultCallback;
  WatchSpeechStatusCallback? _statusCallback;
  WatchSpeechErrorCallback? _errorCallback;
  WatchSoundLevelCallback? _soundLevelCallback;

  bool get isListening => _speech.isListening;

  Future<bool> initialize() {
    if (_ready) return Future.value(true);
    return _initialization ??= _initialize().whenComplete(() {
      _initialization = null;
    });
  }

  Future<bool> _initialize() async {
    try {
      final ready = await _speech.initialize(
        onStatus: _handleStatus,
        onError: _handleError,
        finalTimeout: const Duration(milliseconds: 750),
        options: [
          // The watch uses its own microphone. Avoid requesting the unrelated
          // Android Bluetooth permission during voice setup.
          stt.SpeechToText.androidNoBluetooth,
          // Some Wear OS builds do not advertise a default recognizer and need
          // the installed RecognitionService to be selected explicitly.
          stt.SpeechToText.androidIntentLookup,
        ],
      );
      if (!ready) return false;

      _ready = true;
      try {
        _localeId =
            (await _speech.systemLocale().timeout(
              const Duration(seconds: 1),
            ))?.localeId;
      } catch (error) {
        // Recognition can still use the system default when locale discovery
        // is missing or does not answer on a particular Wear OS recognizer.
        if (kDebugMode) {
          debugPrint('Watch speech locale lookup failed: $error');
        }
      }
      return true;
    } catch (error) {
      if (kDebugMode) debugPrint('Watch speech initialization failed: $error');
      return false;
    }
  }

  Future<bool> start({
    required Object owner,
    required WatchSpeechResultCallback onResult,
    required WatchSpeechStatusCallback onStatus,
    required WatchSpeechErrorCallback onError,
    required WatchSoundLevelCallback onSoundLevel,
    required Duration listenFor,
    required Duration pauseFor,
  }) async {
    if (!await initialize()) return false;

    if (_speech.isListening) {
      await _speech.cancel();
    }

    _owner = owner;
    _resultCallback = onResult;
    _statusCallback = onStatus;
    _errorCallback = onError;
    _soundLevelCallback = onSoundLevel;

    // SpeechToText.listen intentionally has no useful return value. Awaiting
    // it only means the platform accepted the invocation; listening state is
    // delivered through the status callback and `isListening`.
    await _speech.listen(
      onResult: _handleResult,
      onSoundLevelChange: _handleSoundLevel,
      listenFor: listenFor,
      pauseFor: pauseFor,
      localeId: _localeId,
      listenOptions: stt.SpeechListenOptions(
        listenMode: stt.ListenMode.dictation,
        cancelOnError: true,
        partialResults: true,
      ),
    );
    return true;
  }

  Future<void> stop(Object owner) async {
    if (!identical(_owner, owner)) return;
    await _speech.stop();
  }

  Future<void> cancel(Object owner) async {
    if (!identical(_owner, owner)) return;
    await _speech.cancel();
  }

  void detach(Object owner) {
    if (!identical(_owner, owner)) return;
    _owner = null;
    _resultCallback = null;
    _statusCallback = null;
    _errorCallback = null;
    _soundLevelCallback = null;
    unawaited(_speech.cancel());
  }

  void _handleResult(SpeechRecognitionResult result) {
    _resultCallback?.call(result);
  }

  void _handleStatus(String status) {
    _statusCallback?.call(status);
  }

  void _handleError(SpeechRecognitionError error) {
    _errorCallback?.call(error);
  }

  void _handleSoundLevel(double level) {
    _soundLevelCallback?.call(level);
  }
}
