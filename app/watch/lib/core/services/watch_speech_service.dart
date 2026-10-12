import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

final class WatchSpeechResult {
  const WatchSpeechResult({required this.words, required this.isFinal});

  final String words;
  final bool isFinal;
}

enum WatchSpeechStatus { listening, done, notListening, other }

enum WatchSpeechErrorCode {
  permission,
  network,
  audio,
  busy,
  languageUnsupported,
  throttled,
  unknown,
}

typedef WatchSpeechResultCallback = void Function(WatchSpeechResult);
typedef WatchSpeechStatusCallback = void Function(WatchSpeechStatus);
typedef WatchSpeechErrorCallback = void Function(WatchSpeechErrorCode);
typedef WatchSoundLevelCallback = void Function(double);

abstract interface class WatchSpeechSession {
  bool get isListening;

  Future<bool> initialize();

  Future<bool> start({
    required Object owner,
    required WatchSpeechResultCallback onResult,
    required WatchSpeechStatusCallback onStatus,
    required WatchSpeechErrorCallback onError,
    required WatchSoundLevelCallback onSoundLevel,
    required Duration listenFor,
    required Duration pauseFor,
  });

  Future<void> stop(Object owner);

  Future<void> cancel(Object owner);

  void detach(Object owner);
}

/// Owns the process-wide speech recognizer used by the watch.
///
/// `SpeechToText` is a singleton on Android. Keeping its platform callbacks in
/// this service prevents them from remaining attached to a disposed meal-log
/// screen when the user opens voice input for a second time.
class WatchSpeechService implements WatchSpeechSession {
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

  @override
  bool get isListening => _speech.isListening;

  @override
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
    if (!await initialize()) return false;

    if (_speech.isListening) {
      await _speech.cancel();
    }

    _owner = owner;
    _resultCallback = onResult;
    _statusCallback = onStatus;
    _errorCallback = onError;
    _soundLevelCallback = onSoundLevel;

    // `SpeechToText.listen` discards the platform's boolean return value. Check
    // its state after the call so a recognizer that rejects startup does not
    // leave the watch showing a recording UI that never captured audio.
    await _speech.listen(
      onResult: _handleResult,
      onSoundLevelChange: _handleSoundLevel,
      listenOptions: stt.SpeechListenOptions(
        listenMode: stt.ListenMode.dictation,
        cancelOnError: true,
        partialResults: true,
        listenFor: listenFor,
        pauseFor: pauseFor,
        localeId: _localeId,
      ),
    );
    return _speech.isListening;
  }

  @override
  Future<void> stop(Object owner) async {
    if (!identical(_owner, owner)) return;
    await _speech.stop();
  }

  @override
  Future<void> cancel(Object owner) async {
    if (!identical(_owner, owner)) return;
    await _speech.cancel();
  }

  @override
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
    _resultCallback?.call(
      WatchSpeechResult(
        words: result.recognizedWords,
        isFinal: result.finalResult,
      ),
    );
  }

  void _handleStatus(String status) {
    _statusCallback?.call(switch (status) {
      stt.SpeechToText.listeningStatus => WatchSpeechStatus.listening,
      stt.SpeechToText.doneStatus => WatchSpeechStatus.done,
      stt.SpeechToText.notListeningStatus => WatchSpeechStatus.notListening,
      _ => WatchSpeechStatus.other,
    });
  }

  void _handleError(SpeechRecognitionError error) {
    _errorCallback?.call(switch (error.errorMsg) {
      'error_permission' => WatchSpeechErrorCode.permission,
      'error_network' ||
      'error_network_timeout' => WatchSpeechErrorCode.network,
      'error_audio' || 'error_audio_error' => WatchSpeechErrorCode.audio,
      'error_busy' => WatchSpeechErrorCode.busy,
      'error_language_not_supported' ||
      'error_language_unavailable' => WatchSpeechErrorCode.languageUnsupported,
      'error_too_many_requests' => WatchSpeechErrorCode.throttled,
      _ => WatchSpeechErrorCode.unknown,
    });
  }

  void _handleSoundLevel(double level) {
    _soundLevelCallback?.call(level);
  }
}
