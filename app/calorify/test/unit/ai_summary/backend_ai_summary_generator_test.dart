import 'dart:convert';
import 'dart:typed_data';

import 'package:calorify/core/ai_summary/ai_summary_models.dart';
import 'package:calorify/core/ai_summary/backend_ai_summary_generator.dart';
import 'package:calorify/core/network/network_client.dart';
import 'package:calorify/core/services/auth_service.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _AuthService extends Mock implements AuthService {}

class _User extends Mock implements User {}

class _RecordingAdapter implements HttpClientAdapter {
  _RecordingAdapter({required this.statusCode, required this.headers});

  final int statusCode;
  final Map<String, List<String>> headers;
  RequestOptions? request;

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    request = options;
    return ResponseBody.fromString(
      jsonEncode({'code': 'summary_processing'}),
      statusCode,
      headers: {
        Headers.contentTypeHeader: ['application/json'],
        ...headers,
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

const _snapshot = AiSummarySnapshot(
  summaryLocalDate: '2026-08-25',
  timezone: 'Asia/Kolkata',
  locale: 'en',
  meals: [],
  context: {},
);

void main() {
  late _AuthService auth;

  setUp(() {
    auth = _AuthService();
    when(() => auth.currentUser).thenReturn(_User());
  });

  test(
    'missing Firebase token reports generator unavailable without a request',
    () async {
      final adapter = _RecordingAdapter(statusCode: 200, headers: {});
      final dio = Dio()..httpClientAdapter = adapter;
      when(() => auth.resolveAuthToken()).thenAnswer((_) async => null);
      final generator = BackendAiSummaryGenerator(
        networkClient: NetworkClient.forTesting(dio),
        authService: auth,
      );

      await expectLater(
        generator.generate(_snapshot),
        throwsA(isA<AiSummaryGeneratorUnavailable>()),
      );
      expect(adapter.request, isNull);
    },
  );

  test(
    '202 response honors Retry-After and sends the resolved token',
    () async {
      final adapter = _RecordingAdapter(
        statusCode: 202,
        headers: {
          'retry-after': ['42'],
        },
      );
      final dio = Dio()..httpClientAdapter = adapter;
      when(
        () => auth.resolveAuthToken(),
      ).thenAnswer((_) async => 'firebase-token');
      final generator = BackendAiSummaryGenerator(
        networkClient: NetworkClient.forTesting(dio),
        authService: auth,
      );

      await expectLater(
        generator.generate(_snapshot),
        throwsA(
          isA<AiSummaryRetryException>().having(
            (error) => error.retryAfter,
            'retryAfter',
            const Duration(seconds: 42),
          ),
        ),
      );
      expect(
        adapter.request?.headers['Authorization'],
        'Bearer firebase-token',
      );
    },
  );
}
