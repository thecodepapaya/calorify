import 'dart:async';

import 'package:calorify_watch/core/services/watch_speech_service.dart';
import 'package:calorify_watch/features/log_meal/log_meal_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:speech_to_text_platform_interface/speech_to_text_platform_interface.dart';

class _FakeSpeechPlatform extends SpeechToTextPlatform {
  bool permissionGranted = true;
  bool localeLookupHangs = false;
  bool listening = false;
  int listenCalls = 0;

  @override
  Future<bool> hasPermission() async => permissionGranted;

  @override
  Future<bool> initialize({debugLogging = false, options}) async {
    return permissionGranted;
  }

  @override
  Future<bool> listen({
    String? localeId,
    partialResults = true,
    onDevice = false,
    int listenMode = 0,
    sampleRate = 0,
    SpeechListenOptions? options,
  }) async {
    listenCalls++;
    listening = true;
    onStatus?.call(SpeechToText.listeningStatus);
    return true;
  }

  @override
  Future<void> stop() async {
    listening = false;
    onStatus?.call(SpeechToText.notListeningStatus);
  }

  @override
  Future<void> cancel() async {
    listening = false;
    onStatus?.call(SpeechToText.notListeningStatus);
  }

  @override
  Future<List<dynamic>> locales() {
    if (localeLookupHangs) return Completer<List<dynamic>>().future;
    return Future.value(const ['en_US:English (United States)']);
  }
}

void main() {
  late SpeechToTextPlatform originalPlatform;
  late _FakeSpeechPlatform fakePlatform;
  late WatchSpeechService speechService;

  setUp(() {
    originalPlatform = SpeechToTextPlatform.instance;
    fakePlatform = _FakeSpeechPlatform();
    SpeechToTextPlatform.instance = fakePlatform;
    speechService = WatchSpeechService.forTesting(
      SpeechToText.withMethodChannel(),
    );
  });

  tearDown(() {
    SpeechToTextPlatform.instance = originalPlatform;
  });

  Future<void> pumpVoiceScreen(WidgetTester tester) {
    return tester.pumpWidget(
      MaterialApp(home: LogMealScreen(speechService: speechService)),
    );
  }

  testWidgets('record button starts and keeps a speech session active', (
    tester,
  ) async {
    await pumpVoiceScreen(tester);

    await tester.tap(find.byKey(const Key('watch_voice_record_button')));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 100));

    expect(fakePlatform.listenCalls, 1);
    expect(find.text('Listening'), findsOneWidget);
    expect(find.text('Could not start recording.'), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('speech callbacks remain usable after reopening voice input', (
    tester,
  ) async {
    await pumpVoiceScreen(tester);
    await tester.tap(find.byKey(const Key('watch_voice_record_button')));
    await tester.pump(const Duration(milliseconds: 100));

    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pump();
    await pumpVoiceScreen(tester);
    await tester.tap(find.byKey(const Key('watch_voice_record_button')));
    await tester.pump(const Duration(milliseconds: 100));

    expect(fakePlatform.listenCalls, 2);
    expect(find.text('Listening'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('recording starts when Wear locale discovery never answers', (
    tester,
  ) async {
    fakePlatform.localeLookupHangs = true;
    await pumpVoiceScreen(tester);

    await tester.tap(find.byKey(const Key('watch_voice_record_button')));
    await tester.pump();
    expect(find.text('Starting microphone…'), findsOneWidget);

    await tester.pump(const Duration(milliseconds: 1100));

    expect(fakePlatform.listenCalls, 1);
    expect(find.text('Listening'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
