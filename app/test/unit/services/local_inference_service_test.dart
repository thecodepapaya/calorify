import 'package:calorify/core/services/local_inference_service.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

const _channel = MethodChannel(
  'dev.thecodepapaya.calorify/local_inference_test',
);

Map<String, Object?> _proposalJson({bool includeNutrition = false}) => {
  'schemaVersion': 1,
  'proposalId': 'proposal-1',
  'modality': 'ANALYSIS_MODALITY_TEXT',
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
            (_) async => throw PlatformException(code: 'quota_limited'),
          );
      final service = MethodChannelLocalInferenceService(
        channel: _channel,
        platformSupportedForTesting: true,
      );

      await expectLater(
        service.analyzeText('oatmeal'),
        throwsA(
          isA<LocalInferenceException>().having(
            (error) => error.fallbackReason,
            'fallbackReason',
            MealAnalysisFallbackReason
                .MEAL_ANALYSIS_FALLBACK_REASON_QUOTA_LIMITED,
          ),
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
