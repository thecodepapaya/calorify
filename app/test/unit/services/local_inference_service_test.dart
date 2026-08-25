import 'package:calorify/core/services/local_inference_service.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

const _channel = MethodChannel(
  'dev.thecodepapaya.calorify/local_inference_test',
);
const _timezoneChannel = MethodChannel('flutter_timezone');

Map<String, Object?> _proposalJson({
  bool includeNutrition = false,
  String modality = 'ANALYSIS_MODALITY_TEXT',
}) => {
  'schemaVersion': 2,
  'proposalId': 'proposal-1',
  'modality': modality,
  'mealName': 'Oatmeal with banana',
  'outcome': 'DECOMPOSITION_OUTCOME_FOOD',
  'outcomeReason': 'The input contains food.',
  'outcomeConfidence': 0.9,
  'inferredMealType': 'BREAKFAST',
  'mealTypeReason': 'The context supports breakfast.',
  'mealTypeConfident': true,
  'items': [
    {
      'rowId': 'ingredient-1',
      'rawName': 'oatmeal',
      'isFoodReason': 'Oatmeal belongs to the meal.',
      'isFoodConfidence': 0.9,
      'usdaLookup': {
        'proposedCanonicalName': 'oatmeal',
        'preparationStates': ['cooked'],
      },
      'portion': {
        'kind': 'BULK',
        'gramsEstimated': 240.0,
        'minGrams': 200.0,
        'maxGrams': 280.0,
        'sizeSpecifiedByUser': false,
      },
      if (includeNutrition) 'calories': 300,
    },
  ],
  'interpretationOrigin': 'INTERPRETATION_ORIGIN_LOCAL_NANO',
  'requestId': 'request-1',
  'elapsedMs': 42,
};

Map<String, Object?> _countProposalWithoutPerUnitJson() => {
  ..._proposalJson(),
  'items': [
    {
      'rowId': 'ingredient-1',
      'rawName': 'banana',
      'isFoodReason': 'Banana belongs to the meal.',
      'isFoodConfidence': 0.9,
      'usdaLookup': {
        'proposedCanonicalName': 'banana',
        'preparationStates': ['raw'],
      },
      'portion': {
        'kind': 'COUNT',
        'gramsEstimated': 240.0,
        'minGrams': 180.0,
        'maxGrams': 300.0,
        'count': 2.0,
        'perUnitGrams': null,
        'perUnitMinGrams': null,
        'perUnitMaxGrams': null,
        'sizeSpecifiedByUser': false,
      },
    },
  ],
};

IngredientProposalV2 _validProposal() => IngredientProposalV2(
  schemaVersion: 2,
  proposalId: 'proposal-1',
  modality: AnalysisModality.ANALYSIS_MODALITY_TEXT,
  mealName: 'Oatmeal',
  outcome: DecompositionOutcome.DECOMPOSITION_OUTCOME_FOOD,
  outcomeReason: 'The input contains oatmeal.',
  outcomeConfidence: 0.9,
  inferredMealType: MealType.BREAKFAST,
  mealTypeReason: 'The context supports breakfast.',
  mealTypeConfident: true,
  interpretationOrigin: InterpretationOrigin.INTERPRETATION_ORIGIN_LOCAL_NANO,
  items: [
    IngredientProposalItemV2(
      rowId: 'ingredient-1',
      rawName: 'oatmeal',
      isFoodReason: 'Oatmeal belongs to the meal.',
      isFoodConfidence: 0.9,
      usdaLookup: UsdaLookupProposalV2(
        proposedCanonicalName: 'oatmeal',
        preparationStates: ['cooked'],
      ),
      portion: PortionProposalV2(
        kind: PortionKind.BULK,
        gramsEstimated: 240,
        minGrams: 200,
        maxGrams: 280,
      ),
    ),
  ],
);

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
          _timezoneChannel,
          (_) async => 'Asia/Kolkata',
        );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(_channel, null);
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(_timezoneChannel, null);
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
      expect(result.proposal.items.single.rawName, 'oatmeal');
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

    final ingredient = result.proposal.items.single;
    expect(ingredient.portion.count, 2);
    expect(ingredient.portion.perUnitGrams, 120);
    expect(ingredient.portion.perUnitMinGrams, 90);
    expect(ingredient.portion.perUnitMaxGrams, 150);
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
    final ingredient = (response['items'] as List).single as Map;
    final portion = ingredient['portion'] as Map;
    portion
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

    final normalized = result.proposal.items.single;
    expect(normalized.portion.kind, PortionKind.BULK);
    expect(normalized.portion.count, 0);
    expect(normalized.portion.perUnitGrams, 0);
    expect(normalized.portion.perUnitMinGrams, 0);
    expect(normalized.portion.perUnitMaxGrams, 0);
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
    proposal.items.add(proposal.items.single.deepCopy());

    expect(
      () => IngredientProposalValidator.validate(
        proposal,
        expectedModality: AnalysisModality.ANALYSIS_MODALITY_TEXT,
      ),
      throwsA(isA<LocalInferenceException>()),
    );

    final invalidRange = _validProposal()..items.single.portion.minGrams = 300;
    expect(
      () => IngredientProposalValidator.validate(
        invalidRange,
        expectedModality: AnalysisModality.ANALYSIS_MODALITY_TEXT,
      ),
      throwsA(isA<LocalInferenceException>()),
    );
  });

  test('validator requires USDA lookup and portion data', () {
    final proposal = _validProposal();
    proposal.items.single.clearPortion();

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
