import 'package:calorify/core/services/local_inference_service.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

const _channel = MethodChannel(
  'dev.thecodepapaya.calorify/local_inference_test',
);

Map<String, Object?> _proposalJson({
  bool includeNutrition = false,
  String modality = 'ANALYSIS_MODALITY_TEXT',
}) => {
  'schemaVersion': 1,
  'proposalId': 'proposal-1',
  'modality': modality,
  'mealName': 'Oatmeal with banana',
  'inferredMealType': 'BREAKFAST',
  'mealTypeConfident': true,
  'confidence': 0.9,
  'ingredients': [
    {
      'rowId': 'ingredient-1',
      'rawName': 'oatmeal',
      'canonicalHint': 'oatmeal cooked with water',
      'preparation': 'cooked',
      'gramsEstimated': 240.0,
      'minGrams': 200.0,
      'maxGrams': 280.0,
      'notes': '',
      'portionKind': 'BULK',
      'sizeSpecifiedByUser': false,
      'confidence': 0.9,
      'fieldProvenance': [
        {
          'fieldName': 'identity',
          'origin': 'INGREDIENT_FIELD_ORIGIN_LOCAL_MODEL',
        },
        {
          'fieldName': 'portion',
          'origin': 'INGREDIENT_FIELD_ORIGIN_LOCAL_MODEL',
        },
      ],
      if (includeNutrition) 'calories': 300,
    },
  ],
  'interpretationOrigin': 'INTERPRETATION_ORIGIN_LOCAL_NANO',
  'requestId': 'request-1',
  'elapsedMs': 42,
};

Map<String, Object?> _countProposalWithoutPerUnitJson() => {
  ..._proposalJson(),
  'ingredients': [
    {
      'rowId': 'ingredient-1',
      'rawName': 'banana',
      'canonicalHint': 'banana raw',
      'preparation': 'raw',
      'gramsEstimated': 240.0,
      'minGrams': 180.0,
      'maxGrams': 300.0,
      'notes': '',
      'portionKind': 'COUNT',
      'count': 2.0,
      'perUnitGrams': null,
      'perUnitMinGrams': null,
      'perUnitMaxGrams': null,
      'sizeSpecifiedByUser': false,
      'confidence': 0.9,
      'fieldProvenance': [
        {
          'fieldName': 'identity',
          'origin': 'INGREDIENT_FIELD_ORIGIN_LOCAL_MODEL',
        },
        {
          'fieldName': 'portion',
          'origin': 'INGREDIENT_FIELD_ORIGIN_LOCAL_MODEL',
        },
      ],
    },
  ],
};

IngredientProposalV1 _validProposal() => IngredientProposalV1(
  schemaVersion: 1,
  proposalId: 'proposal-1',
  modality: AnalysisModality.ANALYSIS_MODALITY_TEXT,
  mealName: 'Oatmeal',
  inferredMealType: MealType.BREAKFAST,
  mealTypeConfident: true,
  confidence: 0.9,
  interpretationOrigin: InterpretationOrigin.INTERPRETATION_ORIGIN_LOCAL_NANO,
  ingredients: [
    IngredientProposalItemV1(
      rowId: 'ingredient-1',
      rawName: 'oatmeal',
      canonicalHint: 'oatmeal cooked with water',
      preparation: 'cooked',
      gramsEstimated: 240,
      minGrams: 200,
      maxGrams: 280,
      notes: '',
      portionKind: PortionKind.BULK,
      sizeSpecifiedByUser: false,
      confidence: 0.9,
      fieldProvenance: [
        IngredientFieldProvenance(
          fieldName: 'identity',
          origin: IngredientFieldOrigin.INGREDIENT_FIELD_ORIGIN_LOCAL_MODEL,
        ),
        IngredientFieldProvenance(
          fieldName: 'portion',
          origin: IngredientFieldOrigin.INGREDIENT_FIELD_ORIGIN_LOCAL_MODEL,
        ),
      ],
    ),
  ],
);

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(_channel, null);
  });

  test(
    'method channel accepts a strict identity-and-portion proposal',
    () async {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(_channel, (call) async {
            expect(call.method, 'analyzeText');
            expect(
              (call.arguments as Map<Object?, Object?>).containsKey(
                'debugFailure',
              ),
              isFalse,
            );
            return _proposalJson();
          });
      final service = MethodChannelLocalInferenceService(
        channel: _channel,
        platformSupportedForTesting: true,
      );

      final result = await service.analyzeText(
        'oatmeal with banana',
        requestId: 'request-1',
      );

      expect(result.requestId, 'request-1');
      expect(result.elapsed, const Duration(milliseconds: 42));
      expect(result.proposal.mealName, 'Oatmeal with banana');
      expect(result.proposal.ingredients.single.rawName, 'oatmeal');
    },
  );

  test('derives missing per-unit weights for counted ingredients', () async {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
          _channel,
          (_) async => _countProposalWithoutPerUnitJson(),
        );
    final service = MethodChannelLocalInferenceService(
      channel: _channel,
      platformSupportedForTesting: true,
    );

    final result = await service.analyzeText(
      'two bananas',
      requestId: 'request-1',
    );

    final ingredient = result.proposal.ingredients.single;
    expect(ingredient.count, 2);
    expect(ingredient.perUnitGrams, 120);
    expect(ingredient.perUnitMinGrams, 90);
    expect(ingredient.perUnitMaxGrams, 150);
  });

  test('sends image bytes and accepts a local image proposal', () async {
    final imageBytes = Uint8List.fromList([1, 2, 3, 4]);
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(_channel, (call) async {
          expect(call.method, 'analyzeImage');
          final arguments = call.arguments as Map<Object?, Object?>;
          expect(arguments['imageBytes'], imageBytes);
          expect(arguments['timeoutMs'], 45000);
          return _proposalJson(modality: 'ANALYSIS_MODALITY_IMAGE');
        });
    final service = MethodChannelLocalInferenceService(
      channel: _channel,
      platformSupportedForTesting: true,
    );

    final result = await service.analyzeImage(
      imageBytes,
      requestId: 'request-1',
    );

    expect(result.proposal.modality, AnalysisModality.ANALYSIS_MODALITY_IMAGE);
  });

  test('removes count fields from a bulk image ingredient', () async {
    final response = _proposalJson(modality: 'ANALYSIS_MODALITY_IMAGE');
    final ingredient = (response['ingredients'] as List).single as Map;
    ingredient
      ..['count'] = 1.0
      ..['perUnitGrams'] = 240.0
      ..['perUnitMinGrams'] = 200.0
      ..['perUnitMaxGrams'] = 280.0;
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(_channel, (_) async => response);
    final service = MethodChannelLocalInferenceService(
      channel: _channel,
      platformSupportedForTesting: true,
    );

    final result = await service.analyzeImage(
      Uint8List.fromList([1, 2, 3]),
      requestId: 'request-1',
    );

    final normalized = result.proposal.ingredients.single;
    expect(normalized.portionKind, PortionKind.BULK);
    expect(normalized.count, 0);
    expect(normalized.perUnitGrams, 0);
    expect(normalized.perUnitMinGrams, 0);
    expect(normalized.perUnitMaxGrams, 0);
  });

  test('method channel rejects any model-returned nutrition fields', () async {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
          _channel,
          (_) async => _proposalJson(includeNutrition: true),
        );
    final service = MethodChannelLocalInferenceService(
      channel: _channel,
      platformSupportedForTesting: true,
    );

    await expectLater(
      service.analyzeText('oatmeal'),
      throwsA(
        isA<LocalInferenceException>()
            .having((error) => error.code, 'code', 'invalid_output')
            .having(
              (error) => error.fallbackReason,
              'fallbackReason',
              MealAnalysisFallbackReason
                  .MEAL_ANALYSIS_FALLBACK_REASON_INVALID_OUTPUT,
            ),
      ),
    );
  });

  test('method channel rejects a mismatched native request ID', () async {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(_channel, (_) async => _proposalJson());
    final service = MethodChannelLocalInferenceService(
      channel: _channel,
      platformSupportedForTesting: true,
    );

    await expectLater(
      service.analyzeText('oatmeal', requestId: 'different-request'),
      throwsA(
        isA<LocalInferenceException>().having(
          (error) => error.code,
          'code',
          'invalid_output',
        ),
      ),
    );
  });

  test(
    'stable native failures map to deterministic fallback reasons',
    () async {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(
            _channel,
            (_) async =>
                throw PlatformException(
                  code: 'quota_limited',
                  details: const {
                    'nativeType':
                        'com.google.mlkit.genai.common.GenAiException',
                    'nativeErrorCode': 27,
                  },
                ),
          );
      final service = MethodChannelLocalInferenceService(
        channel: _channel,
        platformSupportedForTesting: true,
      );

      await expectLater(
        service.analyzeText('oatmeal'),
        throwsA(
          isA<LocalInferenceException>()
              .having(
                (error) => error.fallbackReason,
                'fallbackReason',
                MealAnalysisFallbackReason
                    .MEAL_ANALYSIS_FALLBACK_REASON_QUOTA_LIMITED,
              )
              .having((error) => error.nativeDetails, 'nativeDetails', const {
                'nativeType': 'com.google.mlkit.genai.common.GenAiException',
                'nativeErrorCode': 27,
              }),
        ),
      );
    },
  );

  test('validator rejects duplicate rows and inconsistent portions', () {
    final proposal = _validProposal();
    proposal.ingredients.add(proposal.ingredients.single.deepCopy());

    expect(
      () => IngredientProposalValidator.validate(
        proposal,
        expectedModality: AnalysisModality.ANALYSIS_MODALITY_TEXT,
      ),
      throwsA(isA<LocalInferenceException>()),
    );

    final invalidRange = _validProposal()..ingredients.single.minGrams = 300;
    expect(
      () => IngredientProposalValidator.validate(
        invalidRange,
        expectedModality: AnalysisModality.ANALYSIS_MODALITY_TEXT,
      ),
      throwsA(isA<LocalInferenceException>()),
    );
  });

  test('validator requires identity and portion provenance', () {
    final proposal = _validProposal();
    proposal.ingredients.single.fieldProvenance.removeWhere(
      (item) => item.fieldName == 'portion',
    );

    expect(
      () => IngredientProposalValidator.validate(
        proposal,
        expectedModality: AnalysisModality.ANALYSIS_MODALITY_TEXT,
      ),
      throwsA(isA<LocalInferenceException>()),
    );
  });

  test('validator accepts a valid bounded proposal', () {
    expect(
      () => IngredientProposalValidator.validate(
        _validProposal(),
        expectedModality: AnalysisModality.ANALYSIS_MODALITY_TEXT,
      ),
      returnsNormally,
    );
  });
}
