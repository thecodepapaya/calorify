import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:calorify/core/network/network_client.dart';
import 'package:calorify/core/network/network_request_cancellation.dart';
import 'package:calorify/core/repositories/food_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';
import 'package:services/services.dart';

void main() {
  late _RecordingAdapter adapter;
  late FoodRepository repository;

  setUp(() {
    adapter = _RecordingAdapter();
    final dio = Dio(BaseOptions(baseUrl: 'https://api.example.test'))
      ..httpClientAdapter = adapter;
    repository = FoodRepository(networkClient: NetworkClient.forTesting(dio));
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

  test('analyzeTextV2 sends a complete failed-local attempt receipt', () async {
    adapter.respondWithText(
      '${jsonEncode({
        'step': 'STARTED',
        'data': {'analysisId': 'analysis-local-fallback'},
      })}\n',
      contentType: 'application/x-ndjson',
    );
    final startedAt = DateTime.utc(2026, 8, 22, 1, 2, 3);
    final completedAt = startedAt.add(const Duration(milliseconds: 250));

    final stream = await repository.analyzeTextV2(
      analysisId: 'analysis-local-fallback',
      textDescription: 'a bowl of poha',
      localAttempted: true,
      localAttemptId: '00000000-0000-4000-8000-000000000111',
      localAttemptStartedAt: startedAt,
      localAttemptCompletedAt: completedAt,
      fallbackReason:
          MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_BUSY,
    );
    await stream.drain<void>();

    final payload = adapter.lastRequest?.data as Map<String, dynamic>;
    expect(payload['localAttempted'], isTrue);
    expect(payload['localAttemptId'], '00000000-0000-4000-8000-000000000111');
    expect(payload['fallbackReason'], 'MEAL_ANALYSIS_FALLBACK_REASON_BUSY');
    expect(
      payload['localAttemptStartedAtEpochMs'].toString(),
      startedAt.millisecondsSinceEpoch.toString(),
    );
    expect(
      payload['localAttemptCompletedAtEpochMs'].toString(),
      completedAt.millisecondsSinceEpoch.toString(),
    );
  });

  test(
    'analyzeProposalV2 sends identity and portion data for server settlement',
    () async {
      adapter.respondWithText(
        '${jsonEncode({
          'step': 'STARTED',
          'data': {'analysisId': 'analysis-proposal'},
        })}\n',
        contentType: 'application/x-ndjson',
      );
      final proposal = IngredientProposalV2(
        schemaVersion: 2,
        proposalId: 'proposal-1',
        modality: AnalysisModality.ANALYSIS_MODALITY_TEXT,
        mealName: 'Dal and rice',
        outcome: DecompositionOutcome.DECOMPOSITION_OUTCOME_FOOD,
        outcomeReason: 'The input contains food.',
        outcomeConfidence: 0.9,
        inferredMealType: MealType.LUNCH,
        mealTypeReason: 'The context supports lunch.',
        mealTypeConfident: true,
        interpretationOrigin:
            InterpretationOrigin.INTERPRETATION_ORIGIN_LOCAL_NANO,
        items: [
          IngredientProposalItemV2(
            rowId: 'ingredient-1',
            rawName: 'dal',
            isFoodReason: 'Dal belongs to the meal.',
            isFoodConfidence: 0.9,
            usdaLookup: UsdaLookupProposalV2(
              proposedCanonicalName: 'lentils',
              preparationStates: ['cooked'],
            ),
            portion: PortionProposalV2(
              kind: PortionKind.BULK,
              gramsEstimated: 200,
              minGrams: 170,
              maxGrams: 230,
            ),
          ),
        ],
      );
      final startedAt = DateTime.utc(2026, 8, 22, 1, 2, 3);

      final stream = await repository.analyzeProposalV2(
        analysisId: 'analysis-proposal',
        proposal: proposal,
        localAttemptId: '00000000-0000-4000-8000-000000000112',
        localAttemptStartedAt: startedAt,
        localAttemptCompletedAt: startedAt.add(
          const Duration(milliseconds: 120),
        ),
      );
      await stream.drain<void>();

      expect(adapter.lastRequest?.path, '/api/v2/food/analyze-proposal');
      final payload = adapter.lastRequest?.data as Map<String, dynamic>;
      final proposalPayload = payload['proposal'] as Map<String, dynamic>;
      expect(proposalPayload['mealName'], 'Dal and rice');
      expect(proposalPayload, isNot(contains('calories')));
      expect(
        (proposalPayload['items'] as List).single,
        isNot(contains('macros')),
      );
      expect(payload['fallbackReason'], 'MEAL_ANALYSIS_FALLBACK_REASON_NONE');
    },
  );

  test('resolveLocalNutrition uses the bounded structured contract', () async {
    adapter.respondWithJson({
      'analysisId': 'analysis-local-nutrition',
      'records': [
        {
          'rowId': 'row-1',
          'fdcId': '169910',
          'description': 'Bananas, raw',
          'normalizedName': 'bananas raw',
          'dataType': 'sr_legacy_food',
          'nutrientsPer100g': {'calories': 89},
          'datasetVersion': 'fdc-v1',
          'retrievedAtEpochMs': '1700000000000',
          'lookupKeys': ['banana'],
          'matchType': 'alias',
          'matchConfidence': 1,
        },
      ],
      'unresolvedRowIds': [],
    });

    final response = await repository.resolveLocalNutrition(
      analysisId: 'analysis-local-nutrition',
      lookups: [
        LocalNutritionLookup(
          rowId: 'row-1',
          canonicalHint: 'banana',
          preparation: 'raw',
        ),
      ],
    );

    expect(adapter.lastRequest?.path, '/api/v2/food/resolve-local-nutrition');
    expect(response.records.single.fdcId, '169910');
    expect(adapter.lastRequest?.data, {
      'analysisId': 'analysis-local-nutrition',
      'lookups': [
        {'rowId': 'row-1', 'canonicalHint': 'banana', 'preparation': 'raw'},
      ],
    });
  });

  test(
    'local capability policy fails closed through typed proto defaults',
    () async {
      adapter.respondWithJson({'textEnabled': true});

      final policy = await repository.getLocalInferencePolicy();

      expect(adapter.lastRequest?.path, '/api/v2/food/local-capabilities');
      expect(policy.textEnabled, isTrue);
      expect(policy.hasLocalNutritionPackUrl(), isFalse);
    },
  );

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

  test('confirmMealLogV2 sends the complete current meal snapshot', () async {
    adapter.respondWithJson({'ok': true, 'message': ''});
    final loggedAt = DateTime.utc(2026, 8, 24, 12);
    await repository.confirmMealLogV2(
      analysisId: '00000000-0000-4000-8000-000000000701',
      meal: Meal(
        name: 'Banana',
        quantity: '1 serving',
        type: MealType.SNACK,
        macros: MealMacro(calories: 107, protein: 1, carbs: 27, fiber: 3),
      ),
      loggedAt: loggedAt,
    );

    expect(adapter.lastRequest?.path, '/api/v2/food/confirm-log');
    final payload = adapter.lastRequest?.data as Map<String, dynamic>;
    expect(payload['analysisId'], '00000000-0000-4000-8000-000000000701');
    expect(payload['loggedAt'], loggedAt.toIso8601String());
    expect((payload['meal'] as Map<String, dynamic>)['name'], 'Banana');
    expect(payload, isNot(contains('deleted')));
  });

  test('deleteMealLogV2 reuses confirm-log with a tombstone', () async {
    adapter.respondWithJson({'ok': true, 'message': ''});
    await repository.deleteMealLogV2(
      analysisId: '00000000-0000-4000-8000-000000000702',
    );

    expect(adapter.lastRequest?.path, '/api/v2/food/confirm-log');
    expect(adapter.lastRequest?.data, {
      'analysisId': '00000000-0000-4000-8000-000000000702',
      'deleted': true,
    });
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

  test(
    'uploadMealImage sends raw WebP bytes to the authenticated backend',
    () async {
      const imageUrl = 'https://storage.example.test/read/uid/time.webp';
      adapter.respondWithJson({'imageUrl': imageUrl});
      final directory = await Directory.systemTemp.createTemp(
        'meal-upload-test-',
      );
      final file = File('${directory.path}/meal.webp');
      final bytes = Uint8List.fromList(<int>[0x52, 0x49, 0x46, 0x46]);
      await file.writeAsBytes(bytes);
      addTearDown(() => directory.delete(recursive: true));

      expect(await repository.uploadMealImage(file), imageUrl);
      expect(adapter.lastRequest?.path, '/api/v2/food/image-upload');
      expect(adapter.lastRequest?.data, bytes);
      expect(adapter.lastRequest?.contentType, 'image/webp');
      expect(
        adapter.lastRequest?.headers[Headers.contentLengthHeader],
        bytes.length.toString(),
      );
    },
  );

  test('uploadMealImage rejects a file over 1 MiB before HTTP', () async {
    final directory = await Directory.systemTemp.createTemp(
      'meal-upload-large-test-',
    );
    final file = File('${directory.path}/meal.webp');
    await file.writeAsBytes(Uint8List(maxMealImageUploadBytes + 1));
    addTearDown(() => directory.delete(recursive: true));

    await expectLater(
      repository.uploadMealImage(file),
      throwsA(isA<MealImageTooLargeException>()),
    );
    expect(adapter.lastRequest, isNull);
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
