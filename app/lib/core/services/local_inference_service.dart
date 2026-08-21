import 'dart:io';

import 'package:flutter/services.dart';
import 'package:models/models.dart';
import 'package:uuid/uuid.dart';

enum LocalInferenceFeatureStatus {
  available,
  downloadable,
  downloading,
  unavailable,
}

class LocalInferenceCapabilities {
  const LocalInferenceCapabilities({
    required this.platformSupported,
    required this.featureStatus,
    required this.ready,
    required this.canDownload,
    required this.structuredOutputSupported,
    required this.textSupported,
    required this.imageSupported,
    this.modelName,
    this.modelVersion,
  });

  const LocalInferenceCapabilities.unsupported()
    : platformSupported = false,
      featureStatus = LocalInferenceFeatureStatus.unavailable,
      ready = false,
      canDownload = false,
      structuredOutputSupported = false,
      textSupported = false,
      imageSupported = false,
      modelName = null,
      modelVersion = null;

  final bool platformSupported;
  final LocalInferenceFeatureStatus featureStatus;
  final bool ready;
  final bool canDownload;
  final bool structuredOutputSupported;
  final bool textSupported;
  final bool imageSupported;
  final String? modelName;
  final String? modelVersion;

  bool get canRunText => ready && structuredOutputSupported && textSupported;
  bool get canRunImage => ready && structuredOutputSupported && imageSupported;

  factory LocalInferenceCapabilities.fromMap(Map<String, Object?> map) {
    final statusName = map['featureStatus'] as String? ?? 'unavailable';
    return LocalInferenceCapabilities(
      platformSupported: map['platformSupported'] == true,
      featureStatus: LocalInferenceFeatureStatus.values.firstWhere(
        (value) => value.name == statusName,
        orElse: () => LocalInferenceFeatureStatus.unavailable,
      ),
      ready: map['ready'] == true,
      canDownload: map['canDownload'] == true,
      structuredOutputSupported: map['structuredOutputSupported'] == true,
      textSupported: map['textSupported'] == true,
      imageSupported: map['imageSupported'] == true,
      modelName: map['modelName'] as String?,
      modelVersion: map['modelVersion'] as String?,
    );
  }
}

class LocalInferenceResult {
  const LocalInferenceResult({
    required this.proposal,
    required this.requestId,
    required this.elapsed,
  });

  final IngredientProposalV1 proposal;
  final String requestId;
  final Duration elapsed;
}

class LocalInferenceException implements Exception {
  const LocalInferenceException({
    required this.code,
    required this.message,
    required this.fallbackReason,
  });

  final String code;
  final String message;
  final MealAnalysisFallbackReason fallbackReason;

  @override
  String toString() => message;
}

abstract interface class LocalInferenceService {
  Future<LocalInferenceCapabilities> getCapabilities();

  Future<LocalInferenceCapabilities> downloadModel();

  Future<Duration> warmUp();

  Future<LocalInferenceResult> analyzeText(
    String text, {
    String? requestId,
    Duration timeout = const Duration(seconds: 20),
    String? debugFailure,
  });

  Future<void> cancel(String requestId);
}

class MethodChannelLocalInferenceService implements LocalInferenceService {
  MethodChannelLocalInferenceService({
    MethodChannel? channel,
    bool? platformSupportedForTesting,
  }) : _channel = channel ?? const MethodChannel(_channelName),
       _platformSupportedForTesting = platformSupportedForTesting;

  static const _channelName = 'dev.thecodepapaya.calorify/local_inference';

  final MethodChannel _channel;
  final bool? _platformSupportedForTesting;

  bool get _isSupportedPlatform =>
      _platformSupportedForTesting ?? Platform.isAndroid;

  @override
  Future<LocalInferenceCapabilities> getCapabilities() async {
    if (!_isSupportedPlatform) {
      return const LocalInferenceCapabilities.unsupported();
    }
    try {
      final result = await _channel.invokeMethod<Object?>('getCapabilities');
      return LocalInferenceCapabilities.fromMap(_stringKeyedMap(result));
    } on MissingPluginException {
      return const LocalInferenceCapabilities.unsupported();
    } on PlatformException catch (error) {
      throw _fromPlatformException(error);
    }
  }

  @override
  Future<LocalInferenceCapabilities> downloadModel() async {
    _ensureAndroid();
    try {
      final result = await _channel.invokeMethod<Object?>('downloadModel');
      return LocalInferenceCapabilities.fromMap(_stringKeyedMap(result));
    } on PlatformException catch (error) {
      throw _fromPlatformException(error);
    }
  }

  @override
  Future<Duration> warmUp() async {
    _ensureAndroid();
    try {
      final result = _stringKeyedMap(
        await _channel.invokeMethod<Object?>('warmUp'),
      );
      return Duration(
        milliseconds: (result['elapsedMs'] as num?)?.toInt() ?? 0,
      );
    } on PlatformException catch (error) {
      throw _fromPlatformException(error);
    }
  }

  @override
  Future<LocalInferenceResult> analyzeText(
    String text, {
    String? requestId,
    Duration timeout = const Duration(seconds: 20),
    String? debugFailure,
  }) {
    final trimmed = text.trim();
    if (trimmed.isEmpty) {
      throw const LocalInferenceException(
        code: 'invalid_input',
        message: 'Meal text is required.',
        fallbackReason:
            MealAnalysisFallbackReason
                .MEAL_ANALYSIS_FALLBACK_REASON_INVALID_OUTPUT,
      );
    }
    return _analyze(
      method: 'analyzeText',
      arguments: {'text': trimmed},
      expectedModality: AnalysisModality.ANALYSIS_MODALITY_TEXT,
      requestId: requestId,
      timeout: timeout,
      debugFailure: debugFailure,
    );
  }

  Future<LocalInferenceResult> _analyze({
    required String method,
    required Map<String, Object?> arguments,
    required AnalysisModality expectedModality,
    required String? requestId,
    required Duration timeout,
    required String? debugFailure,
  }) async {
    _ensureAndroid();
    final resolvedRequestId = requestId ?? const Uuid().v4();
    try {
      final raw = _stringKeyedMap(
        await _channel.invokeMethod<Object?>(method, {
          ...arguments,
          'requestId': resolvedRequestId,
          'timeoutMs': timeout.inMilliseconds,
          if (debugFailure != null) 'debugFailure': debugFailure,
        }),
      );
      final responseRequestId = raw.remove('requestId');
      if (responseRequestId is! String ||
          responseRequestId != resolvedRequestId) {
        throw const LocalInferenceException(
          code: 'invalid_output',
          message: 'The local response did not match its request.',
          fallbackReason:
              MealAnalysisFallbackReason
                  .MEAL_ANALYSIS_FALLBACK_REASON_INVALID_OUTPUT,
        );
      }
      final elapsedMs = (raw.remove('elapsedMs') as num?)?.toInt() ?? 0;
      _rejectNutritionFields(raw);
      final proposal =
          IngredientProposalV1()..mergeFromProto3Json(_withoutNullValues(raw));
      IngredientProposalValidator.validate(
        proposal,
        expectedModality: expectedModality,
      );
      return LocalInferenceResult(
        proposal: proposal,
        requestId: responseRequestId,
        elapsed: Duration(milliseconds: elapsedMs),
      );
    } on PlatformException catch (error) {
      throw _fromPlatformException(error);
    } on LocalInferenceException {
      rethrow;
    } on Object catch (error) {
      throw LocalInferenceException(
        code: 'invalid_output',
        message:
            'The on-device model returned an invalid meal proposal: $error',
        fallbackReason:
            MealAnalysisFallbackReason
                .MEAL_ANALYSIS_FALLBACK_REASON_INVALID_OUTPUT,
      );
    }
  }

  @override
  Future<void> cancel(String requestId) async {
    if (!_isSupportedPlatform || requestId.isEmpty) return;
    await _channel.invokeMethod<void>('cancel', {'requestId': requestId});
  }

  void _ensureAndroid() {
    if (_isSupportedPlatform) return;
    throw const LocalInferenceException(
      code: 'unsupported_device',
      message: 'On-device meal analysis is unavailable on this device.',
      fallbackReason:
          MealAnalysisFallbackReason
              .MEAL_ANALYSIS_FALLBACK_REASON_UNSUPPORTED_DEVICE,
    );
  }
}

abstract final class IngredientProposalValidator {
  static void validate(
    IngredientProposalV1 proposal, {
    required AnalysisModality expectedModality,
  }) {
    if (proposal.schemaVersion != 1) _invalid('Unsupported proposal version.');
    if (proposal.proposalId.trim().isEmpty ||
        proposal.proposalId.length > 128) {
      _invalid('Proposal ID is missing.');
    }
    if (proposal.modality != expectedModality) {
      _invalid('Proposal modality does not match the input.');
    }
    if (proposal.interpretationOrigin !=
        InterpretationOrigin.INTERPRETATION_ORIGIN_LOCAL_NANO) {
      _invalid('Proposal origin is not local inference.');
    }
    _boundedText(proposal.mealName, 'Meal name', max: 160);
    _optionalText(proposal.modelName, 'Model name', max: 100);
    _optionalText(proposal.modelVersion, 'Model version', max: 100);
    _probability(proposal.confidence, 'Meal confidence');
    if (proposal.ingredients.isEmpty || proposal.ingredients.length > 20) {
      _invalid('A proposal must contain between 1 and 20 ingredients.');
    }

    final rowIds = <String>{};
    for (final ingredient in proposal.ingredients) {
      _boundedText(ingredient.rowId, 'Ingredient row ID', max: 128);
      if (!rowIds.add(ingredient.rowId)) {
        _invalid('Ingredient row IDs must be unique.');
      }
      _boundedText(ingredient.rawName, 'Ingredient name', max: 160);
      _boundedText(
        ingredient.canonicalHint,
        'Canonical ingredient name',
        max: 160,
      );
      _optionalText(ingredient.preparation, 'Preparation', max: 80);
      _optionalText(ingredient.notes, 'Ingredient notes', max: 240);
      _finiteRange(ingredient.gramsEstimated, 'Estimated grams', 1, 5000);
      _finiteRange(ingredient.minGrams, 'Minimum grams', 1, 5000);
      _finiteRange(ingredient.maxGrams, 'Maximum grams', 1, 5000);
      if (ingredient.minGrams > ingredient.gramsEstimated ||
          ingredient.gramsEstimated > ingredient.maxGrams) {
        _invalid('Ingredient gram ranges are inconsistent.');
      }
      _probability(ingredient.confidence, 'Ingredient confidence');
      if (ingredient.portionKind == PortionKind.PORTION_KIND_UNSPECIFIED ||
          ingredient.portionKind == PortionKind.COUNT_QUESTION) {
        _invalid('Ingredient portion kind is unsupported.');
      }
      if (ingredient.portionKind == PortionKind.COUNT) {
        _finiteRange(ingredient.count, 'Count', 0.1, 20);
        _finiteRange(ingredient.perUnitGrams, 'Per-unit grams', 0.1, 2000);
        _finiteRange(
          ingredient.perUnitMinGrams,
          'Minimum per-unit grams',
          0.1,
          2000,
        );
        _finiteRange(
          ingredient.perUnitMaxGrams,
          'Maximum per-unit grams',
          0.1,
          2000,
        );
        if (ingredient.perUnitMinGrams > ingredient.perUnitGrams ||
            ingredient.perUnitGrams > ingredient.perUnitMaxGrams) {
          _invalid('Per-unit gram ranges are inconsistent.');
        }
        _approximatelyEqual(
          ingredient.gramsEstimated,
          ingredient.count * ingredient.perUnitGrams,
          'Count and total grams are inconsistent.',
        );
      } else if (ingredient.count != 0 ||
          ingredient.perUnitGrams != 0 ||
          ingredient.perUnitMinGrams != 0 ||
          ingredient.perUnitMaxGrams != 0) {
        _invalid('Bulk and pinch portions cannot contain count values.');
      }
      if (ingredient.fieldProvenance.length > 20) {
        _invalid('Too many ingredient provenance entries.');
      }
      final provenanceFields = <String>{};
      for (final provenance in ingredient.fieldProvenance) {
        _boundedText(provenance.fieldName, 'Provenance field', max: 64);
        provenanceFields.add(provenance.fieldName);
        if (provenance.origin ==
                IngredientFieldOrigin.INGREDIENT_FIELD_ORIGIN_UNSPECIFIED ||
            provenance.origin ==
                IngredientFieldOrigin.INGREDIENT_FIELD_ORIGIN_CLOUD_MODEL) {
          _invalid('Ingredient provenance origin is invalid.');
        }
      }
      if (!provenanceFields.contains('identity') ||
          !provenanceFields.contains('portion')) {
        _invalid('Ingredient identity and portion provenance are required.');
      }
    }
  }

  static void _boundedText(String value, String label, {required int max}) {
    if (value.trim().isEmpty || value.length > max) {
      _invalid('$label is missing or too long.');
    }
  }

  static void _optionalText(String value, String label, {required int max}) {
    if (value.length > max) _invalid('$label is too long.');
  }

  static void _probability(double value, String label) {
    _finiteRange(value, label, 0, 1);
  }

  static void _finiteRange(
    double value,
    String label,
    double minimum,
    double maximum,
  ) {
    if (!value.isFinite || value < minimum || value > maximum) {
      _invalid('$label is out of range.');
    }
  }

  static void _approximatelyEqual(
    double actual,
    double expected,
    String message,
  ) {
    final tolerance = expected.abs() * 0.1 + 0.5;
    if ((actual - expected).abs() > tolerance) _invalid(message);
  }

  static Never _invalid(String message) {
    throw LocalInferenceException(
      code: 'invalid_output',
      message: message,
      fallbackReason:
          MealAnalysisFallbackReason
              .MEAL_ANALYSIS_FALLBACK_REASON_INVALID_OUTPUT,
    );
  }
}

Map<String, Object?> _stringKeyedMap(Object? value) {
  if (value is! Map) {
    throw StateError('Expected a map from the local inference adapter.');
  }
  return value.map((key, value) => MapEntry(key.toString(), value));
}

Object? _withoutNullValues(Object? value) {
  if (value is Map) {
    return Map<String, Object?>.fromEntries(
      value.entries
          .where((entry) => entry.value != null)
          .map(
            (entry) =>
                MapEntry(entry.key.toString(), _withoutNullValues(entry.value)),
          ),
    );
  }
  if (value is List) return value.map(_withoutNullValues).toList();
  return value;
}

void _rejectNutritionFields(Object? value) {
  const forbidden = {
    'calorie',
    'calories',
    'macro',
    'macros',
    'nutrient',
    'nutrients',
    'protein',
    'carbs',
    'fat',
    'fiber',
  };
  if (value is Map) {
    for (final entry in value.entries) {
      if (forbidden.contains(entry.key.toString().toLowerCase())) {
        throw const LocalInferenceException(
          code: 'invalid_output',
          message: 'The local proposal unexpectedly contained nutrition data.',
          fallbackReason:
              MealAnalysisFallbackReason
                  .MEAL_ANALYSIS_FALLBACK_REASON_INVALID_OUTPUT,
        );
      }
      _rejectNutritionFields(entry.value);
    }
  } else if (value is List) {
    for (final item in value) {
      _rejectNutritionFields(item);
    }
  }
}

LocalInferenceException _fromPlatformException(PlatformException error) {
  return LocalInferenceException(
    code: error.code,
    message: error.message ?? 'On-device meal analysis could not finish.',
    fallbackReason: switch (error.code) {
      'unsupported_device' || 'structured_output_unavailable' =>
        MealAnalysisFallbackReason
            .MEAL_ANALYSIS_FALLBACK_REASON_UNSUPPORTED_DEVICE,
      'model_not_ready' || 'not_enough_disk_space' =>
        MealAnalysisFallbackReason
            .MEAL_ANALYSIS_FALLBACK_REASON_MODEL_NOT_READY,
      'busy' => MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_BUSY,
      'quota_limited' =>
        MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_QUOTA_LIMITED,
      'background_blocked' =>
        MealAnalysisFallbackReason
            .MEAL_ANALYSIS_FALLBACK_REASON_BACKGROUND_BLOCKED,
      'thermally_limited' =>
        MealAnalysisFallbackReason
            .MEAL_ANALYSIS_FALLBACK_REASON_THERMALLY_LIMITED,
      'model_updating' =>
        MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_MODEL_UPDATING,
      'timed_out' =>
        MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_TIMED_OUT,
      'cancelled' =>
        MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_CANCELLED,
      _ =>
        MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_INVALID_OUTPUT,
    },
  );
}
