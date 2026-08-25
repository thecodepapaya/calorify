import 'dart:convert';
import 'dart:developer' as developer;
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:models/models.dart';
import 'package:uuid/uuid.dart';

enum LocalInferenceState { ready, downloadable, downloading, unsupported }

class LocalInferenceCapabilities {
  const LocalInferenceCapabilities({required this.state, this.modelName});

  const LocalInferenceCapabilities.unsupported()
    : state = LocalInferenceState.unsupported,
      modelName = null;

  final LocalInferenceState state;
  final String? modelName;

  bool get supported => state != LocalInferenceState.unsupported;
  bool get ready => state == LocalInferenceState.ready;
  bool get canDownload => state == LocalInferenceState.downloadable;

  factory LocalInferenceCapabilities.fromMap(Map<String, Object?> map) {
    final stateName = map['state'] as String? ?? 'unsupported';
    return LocalInferenceCapabilities(
      state: LocalInferenceState.values.firstWhere(
        (value) => value.name == stateName,
        orElse: () => LocalInferenceState.unsupported,
      ),
      modelName: map['modelName'] as String?,
    );
  }
}

class LocalInferenceResult {
  const LocalInferenceResult({
    required this.proposal,
    required this.requestId,
    required this.elapsed,
  });

  final IngredientProposalV2 proposal;
  final String requestId;
  final Duration elapsed;
}

class LocalInferenceException implements Exception {
  const LocalInferenceException({
    required this.code,
    required this.message,
    required this.fallbackReason,
    this.nativeDetails,
  });

  final String code;
  final String message;
  final MealAnalysisFallbackReason fallbackReason;
  final Object? nativeDetails;

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
  });

  Future<LocalInferenceResult> analyzeImage(
    Uint8List imageBytes, {
    String? requestId,
    Duration timeout = const Duration(seconds: 45),
  });
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
    _logGenAi('capabilities.request');
    if (!_isSupportedPlatform) {
      _logGenAi('capabilities.response', data: {'state': 'unsupported'});
      return const LocalInferenceCapabilities.unsupported();
    }
    try {
      final result = await _channel.invokeMethod<Object?>('getCapabilities');
      final raw = _stringKeyedMap(result);
      _logGenAi('capabilities.response', data: raw);
      return LocalInferenceCapabilities.fromMap(raw);
    } on MissingPluginException catch (error, stackTrace) {
      _logGenAi(
        'capabilities.missing_plugin',
        error: error,
        stackTrace: stackTrace,
      );
      return const LocalInferenceCapabilities.unsupported();
    } on PlatformException catch (error, stackTrace) {
      _logPlatformError('capabilities.error', error, stackTrace);
      throw _fromPlatformException(error);
    }
  }

  @override
  Future<LocalInferenceCapabilities> downloadModel() async {
    _ensureAndroid();
    _logGenAi('download.request');
    try {
      final result = await _channel.invokeMethod<Object?>('downloadModel');
      final raw = _stringKeyedMap(result);
      _logGenAi('download.response', data: raw);
      return LocalInferenceCapabilities.fromMap(raw);
    } on PlatformException catch (error, stackTrace) {
      _logPlatformError('download.error', error, stackTrace);
      throw _fromPlatformException(error);
    }
  }

  @override
  Future<Duration> warmUp() async {
    _ensureAndroid();
    _logGenAi('warmup.request');
    try {
      final result = _stringKeyedMap(
        await _channel.invokeMethod<Object?>('warmUp'),
      );
      _logGenAi('warmup.response', data: result);
      return Duration(
        milliseconds: (result['elapsedMs'] as num?)?.toInt() ?? 0,
      );
    } on PlatformException catch (error, stackTrace) {
      _logPlatformError('warmup.error', error, stackTrace);
      throw _fromPlatformException(error);
    }
  }

  @override
  Future<LocalInferenceResult> analyzeText(
    String text, {
    String? requestId,
    Duration timeout = const Duration(seconds: 20),
  }) {
    final trimmed = text.trim();
    if (trimmed.isEmpty) {
      _logGenAi('analyze.rejected', data: {'reason': 'empty_input'});
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
    );
  }

  @override
  Future<LocalInferenceResult> analyzeImage(
    Uint8List imageBytes, {
    String? requestId,
    Duration timeout = const Duration(seconds: 45),
  }) {
    if (imageBytes.isEmpty || imageBytes.length > _maxImageBytes) {
      _logGenAi(
        'analyzeImage.rejected',
        data: {'imageBytes': imageBytes.length},
      );
      throw const LocalInferenceException(
        code: 'invalid_input_image',
        message: 'Choose a valid meal image smaller than 10 MB.',
        fallbackReason:
            MealAnalysisFallbackReason
                .MEAL_ANALYSIS_FALLBACK_REASON_INVALID_OUTPUT,
      );
    }
    return _analyze(
      method: 'analyzeImage',
      arguments: {'imageBytes': imageBytes},
      expectedModality: AnalysisModality.ANALYSIS_MODALITY_IMAGE,
      requestId: requestId,
      timeout: timeout,
    );
  }

  Future<LocalInferenceResult> _analyze({
    required String method,
    required Map<String, Object?> arguments,
    required AnalysisModality expectedModality,
    required String? requestId,
    required Duration timeout,
  }) async {
    _ensureAndroid();
    final resolvedRequestId = requestId ?? const Uuid().v4();
    final request = {
      ...arguments,
      'requestId': resolvedRequestId,
      'timeoutMs': timeout.inMilliseconds,
      'analysisContext': {
        'analysisLocalDatetime': DateTime.now().toIso8601String(),
        'timeZone': (await FlutterTimezone.getLocalTimezone()).identifier,
        'locale': Platform.localeName.replaceAll('_', '-'),
        'countryCode': Platform.localeName.split('_').elementAtOrNull(1),
      },
    };
    _logGenAi('$method.request', data: _redactBinaryData(request));
    try {
      final raw = _stringKeyedMap(
        await _channel.invokeMethod<Object?>(method, request),
      );
      _logGenAi('$method.response', data: raw);
      if (_normalizeCountPortions(raw)) {
        _logGenAi('$method.normalized', data: raw);
      }
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
          IngredientProposalV2()..mergeFromProto3Json(_withoutNullValues(raw));
      IngredientProposalValidator.validate(
        proposal,
        expectedModality: expectedModality,
      );
      _logGenAi(
        '$method.validated',
        data: {
          'requestId': responseRequestId,
          'elapsedMs': elapsedMs,
          'proposal': proposal.toProto3Json(),
        },
      );
      return LocalInferenceResult(
        proposal: proposal,
        requestId: responseRequestId,
        elapsed: Duration(milliseconds: elapsedMs),
      );
    } on PlatformException catch (error, stackTrace) {
      _logPlatformError('$method.error', error, stackTrace);
      throw _fromPlatformException(error);
    } on LocalInferenceException catch (error, stackTrace) {
      _logGenAi('$method.rejected', error: error, stackTrace: stackTrace);
      rethrow;
    } on Object catch (error, stackTrace) {
      _logGenAi(
        '$method.invalid_response',
        error: error,
        stackTrace: stackTrace,
      );
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

  static const _maxImageBytes = 10 * 1024 * 1024;
}

const _genAiLogName = 'GEN_AI';

void _logGenAi(
  String event, {
  Object? data,
  Object? error,
  StackTrace? stackTrace,
}) {
  if (!kDebugMode) return;
  final payload = data == null ? '' : ' ${_encodeLogData(data)}';
  developer.log(
    '$event$payload',
    name: _genAiLogName,
    error: error,
    stackTrace: stackTrace,
  );
}

void _logPlatformError(
  String event,
  PlatformException error,
  StackTrace stackTrace,
) {
  _logGenAi(
    event,
    data: {
      'code': error.code,
      'message': error.message,
      'details': error.details,
    },
    error: error,
    stackTrace: stackTrace,
  );
}

String _encodeLogData(Object data) {
  try {
    return jsonEncode(data);
  } on Object {
    return data.toString();
  }
}

Object? _redactBinaryData(Object? value) {
  if (value is Uint8List) return '<${value.length} bytes>';
  if (value is Map) {
    return value.map(
      (key, nested) => MapEntry(key.toString(), _redactBinaryData(nested)),
    );
  }
  if (value is List) return value.map(_redactBinaryData).toList();
  return value;
}

bool _normalizeCountPortions(Map<String, Object?> response) {
  final ingredients = response['items'];
  if (ingredients is! List) return false;

  var changed = false;
  for (final value in ingredients) {
    if (value is! Map) continue;
    final portion = value['portion'];
    if (portion is! Map) continue;
    if (portion['kind'] != 'COUNT') {
      for (final field in const [
        'count',
        'perUnitGrams',
        'perUnitMinGrams',
        'perUnitMaxGrams',
      ]) {
        if (portion.remove(field) != null) changed = true;
      }
      continue;
    }
    final count = (portion['count'] as num?)?.toDouble();
    if (count == null || !count.isFinite || count <= 0) continue;

    changed =
        _derivePerUnit(portion, 'perUnitGrams', 'gramsEstimated', count) ||
        changed;
    changed =
        _derivePerUnit(portion, 'perUnitMinGrams', 'minGrams', count) ||
        changed;
    changed =
        _derivePerUnit(portion, 'perUnitMaxGrams', 'maxGrams', count) ||
        changed;
  }
  return changed;
}

bool _derivePerUnit(
  Map<dynamic, dynamic> ingredient,
  String perUnitField,
  String totalField,
  double count,
) {
  final total = (ingredient[totalField] as num?)?.toDouble();
  if (total == null || !total.isFinite) return false;
  final derived = total / count;
  final current = (ingredient[perUnitField] as num?)?.toDouble();
  if (current == derived) return false;
  ingredient[perUnitField] = derived;
  return true;
}

abstract final class IngredientProposalValidator {
  static void validate(
    IngredientProposalV2 proposal, {
    required AnalysisModality expectedModality,
  }) {
    if (proposal.schemaVersion != 2) _invalid('Unsupported proposal version.');
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
    final noFood =
        proposal.outcome == DecompositionOutcome.DECOMPOSITION_OUTCOME_NO_FOOD;
    if (!noFood) _boundedText(proposal.mealName, 'Meal name', max: 60);
    _boundedText(proposal.outcomeReason, 'Outcome reason', max: 240);
    _boundedText(proposal.mealTypeReason, 'Meal type reason', max: 240);
    _optionalText(proposal.modelName, 'Model name', max: 100);
    _optionalText(proposal.modelVersion, 'Model version', max: 100);
    _probability(proposal.outcomeConfidence, 'Outcome confidence');
    if (proposal.items.length > 20 || (!noFood && proposal.items.isEmpty)) {
      _invalid('A food proposal must contain between 1 and 20 items.');
    }
    if (noFood &&
        (proposal.mealName.isNotEmpty ||
            proposal.items.isNotEmpty ||
            proposal.inferredMealType != MealType.UNKNOWN ||
            proposal.mealTypeConfident)) {
      _invalid('No-food proposal fields are inconsistent.');
    }

    final rowIds = <String>{};
    for (final ingredient in proposal.items) {
      _boundedText(ingredient.rowId, 'Ingredient row ID', max: 128);
      if (!rowIds.add(ingredient.rowId)) {
        _invalid('Ingredient row IDs must be unique.');
      }
      _boundedText(ingredient.rawName, 'Ingredient name', max: 120);
      _boundedText(
        ingredient.isFoodReason,
        'Food classification reason',
        max: 240,
      );
      _probability(
        ingredient.isFoodConfidence,
        'Food classification confidence',
      );
      _boundedText(
        ingredient.usdaLookup.proposedCanonicalName,
        'Canonical ingredient name',
        max: 120,
      );
      if (ingredient.usdaLookup.aliases.length > 5 ||
          ingredient.usdaLookup.preparationStates.length > 5) {
        _invalid('Too many lookup aliases or preparation states.');
      }
      final portion = ingredient.portion;
      _finiteRange(portion.gramsEstimated, 'Estimated grams', 0.1, 5000);
      _finiteRange(portion.minGrams, 'Minimum grams', 0, 5000);
      _finiteRange(portion.maxGrams, 'Maximum grams', 0, 5000);
      if (portion.minGrams > portion.gramsEstimated ||
          portion.gramsEstimated > portion.maxGrams) {
        _invalid('Ingredient gram ranges are inconsistent.');
      }
      if (portion.kind == PortionKind.PORTION_KIND_UNSPECIFIED ||
          portion.kind == PortionKind.COUNT_QUESTION) {
        _invalid('Ingredient portion kind is unsupported.');
      }
      if (portion.kind == PortionKind.COUNT) {
        if (portion.hasCount()) _finiteRange(portion.count, 'Count', 0.1, 20);
        _finiteRange(portion.perUnitGrams, 'Per-unit grams', 0.1, 5000);
        _finiteRange(
          portion.perUnitMinGrams,
          'Minimum per-unit grams',
          0.1,
          5000,
        );
        _finiteRange(
          portion.perUnitMaxGrams,
          'Maximum per-unit grams',
          0.1,
          5000,
        );
        if (portion.perUnitMinGrams > portion.perUnitGrams ||
            portion.perUnitGrams > portion.perUnitMaxGrams) {
          _invalid('Per-unit gram ranges are inconsistent.');
        }
        _approximatelyEqual(
          portion.gramsEstimated,
          portion.hasCount()
              ? portion.count * portion.perUnitGrams
              : portion.gramsEstimated,
          'Count and total grams are inconsistent.',
        );
      } else if (portion.hasCount() ||
          portion.hasPerUnitGrams() ||
          portion.hasPerUnitMinGrams() ||
          portion.hasPerUnitMaxGrams()) {
        _invalid('Bulk and pinch portions cannot contain count values.');
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
    nativeDetails: error.details,
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
