import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:calorify/core/network/network_client.dart';
import 'package:calorify/core/network/network_request_cancellation.dart';
import 'package:calorify/core/repositories/food_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

void main() {
  late _RecordingAdapter adapter;
  late FoodRepository repository;

  setUp(() {
    adapter = _RecordingAdapter();
    final dio = Dio(BaseOptions(baseUrl: 'https://api.example.test'))
      ..httpClientAdapter = adapter;
    repository = FoodRepository(networkClient: NetworkClient.forTesting(dio));
  });

  test('detectText sends proto JSON and decodes the response', () async {
    adapter.respondWithJson({
      'result': {
        'mealIdentified': true,
        'meal': {
          'name': 'Dal and rice',
          'quantity': '1 plate',
          'macros': {'calories': 520},
        },
      },
    });

    final response = await repository.detectText(
      textDescription: 'one plate dal rice',
    );

    expect(adapter.lastRequest?.method, 'POST');
    expect(adapter.lastRequest?.path, '/api/v1/food/detect-text');
    expect(adapter.lastRequest?.data, {
      'textDescription': 'one plate dal rice',
    });
    expect(response.result.mealIdentified, isTrue);
    expect(response.result.meal.name, 'Dal and rice');
    expect(response.result.meal.macros.calories, 520);
  });

  test('analyzeTextV2 parses split NDJSON and ignores blank lines', () async {
    adapter.respondWithText(
      '${jsonEncode({
        'step': 'STARTED',
        'data': {'analysisId': 'analysis-1'},
      })}\n\n${jsonEncode({
        'step': 'ERROR',
        'data': {'analysisId': 'analysis-1', 'message': 'try again'},
      })}\n',
      contentType: 'application/x-ndjson',
    );

    final stream = await repository.analyzeTextV2(
      analysisId: 'analysis-1',
      textDescription: 'a bowl of poha',
    );
    final events = await stream.toList();

    expect(adapter.lastRequest?.path, '/api/v2/food/analyze-text');
    expect(adapter.lastRequest?.data, {
      'analysisId': 'analysis-1',
      'textDescription': 'a bowl of poha',
    });
    expect(adapter.lastRequest?.headers['Accept'], 'application/x-ndjson');
    expect(events, hasLength(2));
    expect(events.first.step, PipelineStep.STARTED);
    expect(events.last.step, PipelineStep.ERROR);
    expect(events.last.errorMessage, 'try again');
  });

  test('resumeV2 sends the canonical proto request', () async {
    adapter.respondWithText(
      '${jsonEncode({
        'step': 'RESULT',
        'data': {'analysisId': 'analysis-7'},
      })}\n',
      contentType: 'application/x-ndjson',
    );

    final stream = await repository.resumeV2(analysisId: 'analysis-7');
    await stream.drain<void>();

    expect(adapter.lastRequest?.path, '/api/v2/food/resume');
    expect(adapter.lastRequest?.data, {'analysisId': 'analysis-7'});
  });

  test('reanalyzeV2 sends a distinct idempotent child analysis id', () async {
    adapter.respondWithText(
      '${jsonEncode({
        'step': 'STARTED',
        'data': {'analysisId': 'analysis-child'},
      })}\n',
      contentType: 'application/x-ndjson',
    );

    final stream = await repository.reanalyzeV2(
      analysisId: 'analysis-parent',
      newAnalysisId: 'analysis-child',
      issues: [MealReanalyzeFeedbackIssue.PORTION_SIZE],
    );
    await stream.drain<void>();

    expect(adapter.lastRequest?.path, '/api/v2/food/reanalyze');
    expect(adapter.lastRequest?.data, {
      'analysisId': 'analysis-parent',
      'issues': ['PORTION_SIZE'],
      'newAnalysisId': 'analysis-child',
    });
  });

  test('analyzeImageFromUrlV2 sends the client analysis id', () async {
    adapter.respondWithText(
      '${jsonEncode({
        'step': 'STARTED',
        'data': {'analysisId': 'analysis-image'},
      })}\n',
      contentType: 'application/x-ndjson',
    );

    final stream = await repository.analyzeImageFromUrlV2(
      analysisId: 'analysis-image',
      imageUrl: 'https://storage.example.test/owned-image',
    );
    await stream.drain<void>();

    expect(adapter.lastRequest?.path, '/api/v2/food/analyze-image');
    expect(adapter.lastRequest?.data, {
      'analysisId': 'analysis-image',
      'imageUrl': 'https://storage.example.test/owned-image',
    });
  });

  test('stream cancellation aborts a request waiting for headers', () async {
    adapter.waitForCancellation();
    final cancellation = NetworkRequestCancellation();

    final request = repository.analyzeTextV2(
      analysisId: 'analysis-cancel',
      textDescription: 'a bowl of poha',
      cancellation: cancellation,
    );
    await adapter.requestStarted;
    cancellation.cancel();

    await expectLater(
      request,
      throwsA(
        isA<DioException>().having(
          (error) => error.type,
          'type',
          DioExceptionType.cancel,
        ),
      ),
    );
    expect(adapter.cancellationObserved, isTrue);
  });

  test(
    'meal analysis tips are trimmed and empty values are discarded',
    () async {
      adapter.respondWithJson({
        'tips': ['  First tip  ', '', '   ', 'Second tip'],
      });

      final tips = await repository.getMealAnalysisTips(count: 2);

      expect(adapter.lastRequest?.method, 'GET');
      expect(
        adapter.lastRequest?.path,
        '/api/v1/food/meal-analysis-tips?count=2',
      );
      expect(tips, ['First tip', 'Second tip']);
    },
  );

  test('meal analysis tips fail closed on transport errors', () async {
    adapter.respondWithStatus(503, {'message': 'unavailable'});

    expect(await repository.getMealAnalysisTips(), isEmpty);
  });

  test('positive feedback submits the expected analysis signal', () async {
    adapter.respondWithJson({'ok': true});

    await repository.submitPositiveFeedbackV2(analysisId: 'analysis-9');

    expect(adapter.lastRequest?.path, '/api/v2/food/feedback');
    expect(adapter.lastRequest?.data, {
      'analysisId': 'analysis-9',
      'signal': 'UP',
    });
  });
}

class _RecordingAdapter implements HttpClientAdapter {
  RequestOptions? lastRequest;
  int _statusCode = 200;
  String _body = '{}';
  String _contentType = 'application/json';
  Completer<void>? _requestStarted;
  bool _waitForCancellation = false;
  bool cancellationObserved = false;

  Future<void> get requestStarted => _requestStarted!.future;

  void waitForCancellation() {
    _waitForCancellation = true;
    _requestStarted = Completer<void>();
  }

  void respondWithJson(Object body) {
    _statusCode = 200;
    _body = jsonEncode(body);
    _contentType = 'application/json';
  }

  void respondWithText(String body, {required String contentType}) {
    _statusCode = 200;
    _body = body;
    _contentType = contentType;
  }

  void respondWithStatus(int statusCode, Object body) {
    _statusCode = statusCode;
    _body = jsonEncode(body);
    _contentType = 'application/json';
  }

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    lastRequest = options;
    _requestStarted?.complete();
    if (_waitForCancellation) {
      await cancelFuture!;
      cancellationObserved = true;
      throw DioException(
        requestOptions: options,
        type: DioExceptionType.cancel,
      );
    }
    return ResponseBody.fromString(
      _body,
      _statusCode,
      headers: {
        Headers.contentTypeHeader: [_contentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}
