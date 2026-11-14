import 'dart:convert';
import 'dart:typed_data';

import 'package:calorify/core/network/network_client.dart';
import 'package:calorify/core/repositories/food_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';
import 'package:models/protos_go.dart' as pgo;

class _MockApiAdapter implements HttpClientAdapter {
  _MockApiAdapter(this.handler);

  final Future<ResponseBody> Function(RequestOptions options) handler;
  final List<RequestOptions> requests = [];

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) {
    requests.add(options);
    return handler(options);
  }

  @override
  void close({bool force = false}) {}
}

void main() {
  test('initiateMealAnalysis posts to /users/meals/analysis with MetaInfo', () async {
    late RequestOptions capturedRequest;
    final adapter = _MockApiAdapter((options) async {
      capturedRequest = options;
      return ResponseBody.fromString(
        jsonEncode({'analysisId': 'test-uuid-123'}),
        202,
        headers: {Headers.contentTypeHeader: ['application/json']},
      );
    });

    final dio = Dio(BaseOptions(baseUrl: 'https://api.example.test'))
      ..httpClientAdapter = adapter;
    final repo = FoodRepository(networkClient: NetworkClient.forTesting(dio));

    final res = await repo.initiateMealAnalysis(
      text: 'Grilled chicken salad',
      context: MealAnalysisV3RequestContext(
        locale: 'en-US',
        countryCode: 'US',
        timeZone: 'UTC',
        capturedAt: DateTime.utc(2026, 10, 30, 12, 0, 0),
      ),
    );

    expect(res.analysisId, 'test-uuid-123');
    expect(capturedRequest.method, 'POST');
    expect(capturedRequest.path, '/users/meals/analysis');
    expect(capturedRequest.data, containsPair('text', 'Grilled chicken salad'));
    expect(capturedRequest.data, containsPair('metaInfo', isA<Map>()));
  });

  test('getMealAnalysisStatus gets /users/meals/analysis/{id}', () async {
    final adapter = _MockApiAdapter((options) async {
      return ResponseBody.fromString(
        jsonEncode({
          'id': 'test-uuid-123',
          'status': 'INITIATED',
        }),
        200,
        headers: {Headers.contentTypeHeader: ['application/json']},
      );
    });

    final dio = Dio(BaseOptions(baseUrl: 'https://api.example.test'))
      ..httpClientAdapter = adapter;
    final repo = FoodRepository(networkClient: NetworkClient.forTesting(dio));

    final status = await repo.getMealAnalysisStatus('test-uuid-123');
    expect(status.id, 'test-uuid-123');
    expect(status.status, pgo.MealAnalysisStatus_AnalysisStatus.INITIATED);
  });

  test('pollMealAnalysis emits progress and completes when status is PRESENTED', () async {
    var pollCount = 0;
    final adapter = _MockApiAdapter((options) async {
      pollCount++;
      if (pollCount == 1) {
        return ResponseBody.fromString(
          jsonEncode({
            'id': 'test-uuid-123',
            'status': 'COMPONENT_DECOMPOSED',
            'decomposedComponent': jsonEncode({
              'name': 'Chicken Salad',
              'components': [
                {'name': 'Chicken breast'},
                {'name': 'Lettuce'},
              ],
            }),
          }),
          200,
          headers: {Headers.contentTypeHeader: ['application/json']},
        );
      }
      return ResponseBody.fromString(
        jsonEncode({
          'id': 'test-uuid-123',
          'status': 'PRESENTED',
          'finalResponse': jsonEncode({
            'meal': {
              'name': 'Chicken Salad',
              'quantity': '1 bowl (350g)',
              'type': 'LUNCH',
              'macros': {
                'calorie': {'value': 450, 'minValue': 400, 'maxValue': 500},
                'carb': {'value': 15, 'minValue': 10, 'maxValue': 20},
                'protein': {'value': 42, 'minValue': 38, 'maxValue': 46},
                'fat': {'value': 18, 'minValue': 15, 'maxValue': 22},
                'fiber': {'value': 6, 'minValue': 4, 'maxValue': 8},
              },
              'metadata': {
                'tip': 'High protein salad',
              },
            },
            'clarifications': {
              'clarification': [
                {
                  'id': 1,
                  'question': 'How much chicken?',
                  'options': [
                    {'text': 'Small', 'macroDelta': {'calorie': -50}},
                    {'text': 'Medium', 'macroDelta': {'calorie': 0}},
                    {'text': 'Large', 'macroDelta': {'calorie': 50}},
                  ],
                }
              ]
            }
          }),
        }),
        200,
        headers: {Headers.contentTypeHeader: ['application/json']},
      );
    });

    final dio = Dio(BaseOptions(baseUrl: 'https://api.example.test'))
      ..httpClientAdapter = adapter;
    final repo = FoodRepository(networkClient: NetworkClient.forTesting(dio));

    final events = await repo.pollMealAnalysis(
      analysisId: 'test-uuid-123',
      pollInterval: const Duration(milliseconds: 10),
    ).toList();

    expect(events.length, greaterThanOrEqualTo(2));
    expect(events.first.kind, MealAnalysisV3EventKind.started);
    expect(events.any((e) => e.kind == MealAnalysisV3EventKind.progress), isTrue);

    final complete = events.last;
    expect(complete.kind, MealAnalysisV3EventKind.complete);
    expect(complete.result?.mealName, 'Chicken Salad');
    expect(complete.result?.macros.calories, 450);
    expect(complete.result?.macros.protein, 42);
    expect(complete.result?.mealType, 'LUNCH');
    expect(complete.result?.clarifications?.clarification.isNotEmpty, isTrue);
    expect(
      complete.result?.clarifications?.clarification.first.question,
      'How much chicken?',
    );
  });

  test('pollMealAnalysis emits error event when status is FAILED', () async {
    final adapter = _MockApiAdapter((options) async {
      return ResponseBody.fromString(
        jsonEncode({
          'id': 'test-uuid-123',
          'status': 'FAILED',
          'failureReason': 'Analysis timeout',
        }),
        200,
        headers: {Headers.contentTypeHeader: ['application/json']},
      );
    });

    final dio = Dio(BaseOptions(baseUrl: 'https://api.example.test'))
      ..httpClientAdapter = adapter;
    final repo = FoodRepository(networkClient: NetworkClient.forTesting(dio));

    final events = await repo.pollMealAnalysis(
      analysisId: 'test-uuid-123',
      pollInterval: const Duration(milliseconds: 10),
    ).toList();

    expect(events.last.kind, MealAnalysisV3EventKind.error);
    expect(events.last.issue?.code, 'ANALYSIS_FAILED');
    expect(events.last.issue?.message, 'Analysis timeout');
  });

  test('pollMealAnalysis maps ingredients with canonical_name and component_name', () async {
    var pollCount = 0;
    final adapter = _MockApiAdapter((options) async {
      pollCount++;
      if (pollCount == 1) {
        return ResponseBody.fromString(
          jsonEncode({
            'id': 'test-uuid-456',
            'status': 'COMPONENT_DECOMPOSED',
            'decomposedComponent': jsonEncode({
              'name': 'Daal with roti',
              'components': [
                {
                  'name': 'daal',
                  'canonical_name': 'Lentils, mature seeds, cooked, boiled',
                },
                {
                  'name': 'roti',
                  'canonical_name': 'Wheat flour, whole-grain, cooked',
                },
              ],
            }),
          }),
          200,
          headers: {Headers.contentTypeHeader: ['application/json']},
        );
      }
      if (pollCount == 2) {
        return ResponseBody.fromString(
          jsonEncode({
            'id': 'test-uuid-456',
            'status': 'INGREDIENT_DECOMPOSED',
            'decomposedComponent': jsonEncode({
              'name': 'Daal with roti',
              'components': [
                {
                  'name': 'daal',
                  'canonical_name': 'Lentils, mature seeds, cooked, boiled',
                },
                {
                  'name': 'roti',
                  'canonical_name': 'Wheat flour, whole-grain, cooked',
                },
              ],
            }),
            'decomposedIngredient': jsonEncode({
              'ingredients': [
                {
                  'name': 'lentils',
                  'component_name': 'Lentils, mature seeds, cooked, boiled',
                },
                {
                  'name': 'whole wheat flour',
                  'component_name': 'Wheat flour, whole-grain, cooked',
                },
              ],
            }),
          }),
          200,
          headers: {Headers.contentTypeHeader: ['application/json']},
        );
      }
      return ResponseBody.fromString(
        jsonEncode({
          'id': 'test-uuid-456',
          'status': 'PRESENTED',
          'finalResponse': jsonEncode({
            'meal': {
              'name': 'Daal with roti',
              'quantity': '1 bowl, 2 roti',
              'type': 'DINNER',
              'macros': {
                'calorie': {'value': 380},
                'carb': {'value': 64},
                'protein': {'value': 15},
                'fat': {'value': 8},
                'fiber': {'value': 15},
              },
              'health': {
                'healthScore': 'HEALTHY',
                'healthScoreReason': 'Rich in plant-based legume protein',
              },
            },
          }),
        }),
        200,
        headers: {Headers.contentTypeHeader: ['application/json']},
      );
    });

    final dio = Dio(BaseOptions(baseUrl: 'https://api.example.test'))
      ..httpClientAdapter = adapter;
    final repo = FoodRepository(networkClient: NetworkClient.forTesting(dio));

    final events = await repo.pollMealAnalysis(
      analysisId: 'test-uuid-456',
      pollInterval: const Duration(milliseconds: 10),
    ).toList();

    final progressEvents = events.where((e) => e.kind == MealAnalysisV3EventKind.progress).toList();
    expect(progressEvents.isNotEmpty, isTrue);

    final lastProgress = progressEvents.last.progress;
    expect(lastProgress?.components.length, 2);
    final daalComp = lastProgress?.components.firstWhere((c) => c.name == 'daal');
    expect(daalComp?.ingredientNames, contains('lentils'));
    final rotiComp = lastProgress?.components.firstWhere((c) => c.name == 'roti');
    expect(rotiComp?.ingredientNames, contains('whole wheat flour'));
  });
}
