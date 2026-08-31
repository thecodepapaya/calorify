import 'dart:collection';

enum MealAnalysisV3EventKind {
  started,
  progress,
  needsInput,
  complete,
  noFood,
  unresolved,
  error,
}

enum MealAnalysisV3ProgressPhase { understand, match, check, finish }

enum MealAnalysisV3QuestionScope { nutrition, mealType }

enum MealAnalysisV3RecoveryAction { retry, resume, editInput, upgradeApp, none }

class MealAnalysisV3RequestContext {
  const MealAnalysisV3RequestContext({
    required this.locale,
    required this.countryCode,
    required this.timeZone,
    required this.capturedAt,
  });

  final String locale;
  final String countryCode;
  final String timeZone;
  final DateTime capturedAt;

  Map<String, dynamic> toJson() => {
    'locale': locale,
    'countryCode': countryCode,
    'timeZone': timeZone,
    'capturedAt': capturedAt.toUtc().toIso8601String(),
  };
}

sealed class MealAnalysisV3QuestionResponse {
  const MealAnalysisV3QuestionResponse();
}

class MealAnalysisV3Option {
  const MealAnalysisV3Option({required this.optionId, required this.label});

  factory MealAnalysisV3Option.fromJson(Map<String, dynamic> json) {
    return MealAnalysisV3Option(
      optionId: _requiredString(json, 'optionId'),
      label: _requiredString(json, 'label'),
    );
  }

  final String optionId;
  final String label;
}

class MealAnalysisV3OptionResponse extends MealAnalysisV3QuestionResponse {
  const MealAnalysisV3OptionResponse({required this.options});

  final List<MealAnalysisV3Option> options;
}

class MealAnalysisV3NumberResponse extends MealAnalysisV3QuestionResponse {
  const MealAnalysisV3NumberResponse({
    required this.unitCode,
    required this.min,
    required this.max,
    required this.step,
    required this.integerOnly,
  });

  final String unitCode;
  final double min;
  final double max;
  final double step;
  final bool integerOnly;

  bool accepts(double value) {
    if (!value.isFinite || value < min || value > max) return false;
    if (integerOnly && value != value.roundToDouble()) return false;
    final stepCount = (value - min) / step;
    return (stepCount - stepCount.round()).abs() < 1e-8;
  }
}

class MealAnalysisV3QuestionTarget {
  const MealAnalysisV3QuestionTarget({
    required this.dimension,
    this.componentId,
  });

  factory MealAnalysisV3QuestionTarget.fromJson(Map<String, dynamic> json) {
    return MealAnalysisV3QuestionTarget(
      dimension: _requiredString(json, 'dimension'),
      componentId: json['componentId'] as String?,
    );
  }

  final String dimension;
  final String? componentId;
}

class MealAnalysisV3PendingQuestion {
  const MealAnalysisV3PendingQuestion({
    required this.questionId,
    required this.scope,
    required this.target,
    required this.prompt,
    required this.response,
    required this.allowUseEstimate,
  });

  factory MealAnalysisV3PendingQuestion.fromJson(Map<String, dynamic> json) {
    final response = _requiredMap(json, 'response');
    final kind = _requiredString(response, 'kind');
    final parsedResponse = switch (kind) {
      'OPTION' => MealAnalysisV3OptionResponse(
        options: _requiredList(response, 'options')
            .map((value) => MealAnalysisV3Option.fromJson(_asMap(value)))
            .toList(growable: false),
      ),
      'NUMBER' => _parseNumberResponse(response),
      _ => throw FormatException('Unknown V3 question response kind: $kind'),
    };
    final scope = switch (_requiredString(json, 'scope')) {
      'NUTRITION' => MealAnalysisV3QuestionScope.nutrition,
      'MEAL_TYPE' => MealAnalysisV3QuestionScope.mealType,
      final value => throw FormatException('Unknown V3 question scope: $value'),
    };
    return MealAnalysisV3PendingQuestion(
      questionId: _requiredString(json, 'questionId'),
      scope: scope,
      target: MealAnalysisV3QuestionTarget.fromJson(
        _requiredMap(json, 'target'),
      ),
      prompt: _requiredString(json, 'prompt'),
      response: parsedResponse,
      allowUseEstimate: json['allowUseEstimate'] as bool,
    );
  }

  final String questionId;
  final MealAnalysisV3QuestionScope scope;
  final MealAnalysisV3QuestionTarget target;
  final String prompt;
  final MealAnalysisV3QuestionResponse response;
  final bool allowUseEstimate;
}

MealAnalysisV3NumberResponse _parseNumberResponse(
  Map<String, dynamic> response,
) {
  final min = _requiredDouble(response, 'min');
  final max = _requiredDouble(response, 'max');
  if (max < min) {
    throw const FormatException('V3 number response max must be >= min');
  }
  final integerOnly = response['integerOnly'];
  if (integerOnly is! bool) {
    throw const FormatException('V3 number response integerOnly must be bool');
  }
  return MealAnalysisV3NumberResponse(
    unitCode: _requiredString(response, 'unitCode'),
    min: min,
    max: max,
    step: _requiredPositiveDouble(response, 'step'),
    integerOnly: integerOnly,
  );
}

class MealAnalysisV3QuestionBundle {
  const MealAnalysisV3QuestionBundle({
    required this.bundleRevision,
    required this.nutritionQuestions,
    this.mealTypeQuestion,
  });

  factory MealAnalysisV3QuestionBundle.fromJson(Map<String, dynamic> json) {
    return MealAnalysisV3QuestionBundle(
      bundleRevision: _requiredInt(json, 'bundleRevision'),
      nutritionQuestions: _requiredList(json, 'nutritionQuestions')
          .map((value) => MealAnalysisV3PendingQuestion.fromJson(_asMap(value)))
          .toList(growable: false),
      mealTypeQuestion:
          json['mealTypeQuestion'] == null
              ? null
              : MealAnalysisV3PendingQuestion.fromJson(
                _asMap(json['mealTypeQuestion']),
              ),
    );
  }

  final int bundleRevision;
  final List<MealAnalysisV3PendingQuestion> nutritionQuestions;
  final MealAnalysisV3PendingQuestion? mealTypeQuestion;

  List<MealAnalysisV3PendingQuestion> get questions => List.unmodifiable([
    ...nutritionQuestions,
    if (mealTypeQuestion case final question?) question,
  ]);
}

sealed class MealAnalysisV3Answer {
  const MealAnalysisV3Answer(this.questionId);

  final String questionId;
  Map<String, dynamic> toJson();
}

class MealAnalysisV3OptionAnswer extends MealAnalysisV3Answer {
  const MealAnalysisV3OptionAnswer({
    required String questionId,
    required this.optionId,
  }) : super(questionId);

  final String optionId;

  @override
  Map<String, dynamic> toJson() => {
    'questionId': questionId,
    'kind': 'OPTION',
    'optionId': optionId,
  };
}

class MealAnalysisV3NumberAnswer extends MealAnalysisV3Answer {
  const MealAnalysisV3NumberAnswer({
    required String questionId,
    required this.value,
  }) : super(questionId);

  final double value;

  @override
  Map<String, dynamic> toJson() => {
    'questionId': questionId,
    'kind': 'NUMBER',
    'value': value,
  };
}

class MealAnalysisV3EstimateAnswer extends MealAnalysisV3Answer {
  const MealAnalysisV3EstimateAnswer({required String questionId})
    : super(questionId);

  @override
  Map<String, dynamic> toJson() => {
    'questionId': questionId,
    'kind': 'USE_ESTIMATE',
  };
}

class MealAnalysisV3AnswerBundle {
  const MealAnalysisV3AnswerBundle({
    required this.bundleRevision,
    required this.answers,
  });

  final int bundleRevision;
  final List<MealAnalysisV3Answer> answers;

  Map<String, dynamic> toJson(String analysisId) => {
    'analysisId': analysisId,
    'bundleRevision': bundleRevision,
    'answers': answers.map((answer) => answer.toJson()).toList(growable: false),
  };
}

class MealAnalysisV3MacroPoints {
  const MealAnalysisV3MacroPoints({
    required this.calories,
    required this.protein,
    required this.carbs,
    required this.fat,
    required this.fiber,
  });

  factory MealAnalysisV3MacroPoints.fromJson(Map<String, dynamic> json) {
    return MealAnalysisV3MacroPoints(
      calories: _requiredDouble(json, 'calories'),
      protein: _requiredDouble(json, 'protein'),
      carbs: _requiredDouble(json, 'carbs'),
      fat: _requiredDouble(json, 'fat'),
      fiber: _requiredDouble(json, 'fiber'),
    );
  }

  final double calories;
  final double protein;
  final double carbs;
  final double fat;
  final double fiber;
}

class MealAnalysisV3Range {
  const MealAnalysisV3Range({required this.min, required this.max});

  factory MealAnalysisV3Range.fromJson(Map<String, dynamic> json) {
    final min = _requiredDouble(json, 'min');
    final max = _requiredDouble(json, 'max');
    if (min > max) throw const FormatException('V3 range min exceeds max');
    return MealAnalysisV3Range(min: min, max: max);
  }

  final double min;
  final double max;
}

class MealAnalysisV3MacroRanges {
  const MealAnalysisV3MacroRanges({
    required this.calories,
    required this.protein,
    required this.carbs,
    required this.fat,
    required this.fiber,
  });

  factory MealAnalysisV3MacroRanges.fromJson(Map<String, dynamic> json) {
    return MealAnalysisV3MacroRanges(
      calories: MealAnalysisV3Range.fromJson(_requiredMap(json, 'calories')),
      protein: MealAnalysisV3Range.fromJson(_requiredMap(json, 'protein')),
      carbs: MealAnalysisV3Range.fromJson(_requiredMap(json, 'carbs')),
      fat: MealAnalysisV3Range.fromJson(_requiredMap(json, 'fat')),
      fiber: MealAnalysisV3Range.fromJson(_requiredMap(json, 'fiber')),
    );
  }

  final MealAnalysisV3Range calories;
  final MealAnalysisV3Range protein;
  final MealAnalysisV3Range carbs;
  final MealAnalysisV3Range fat;
  final MealAnalysisV3Range fiber;
}

class MealAnalysisV3CompleteResult {
  const MealAnalysisV3CompleteResult({
    required this.mealName,
    required this.servingSizeText,
    required this.tip,
    required this.mealType,
    required this.macros,
    required this.macroRanges,
    required this.components,
    required this.receipt,
  });

  factory MealAnalysisV3CompleteResult.fromJson(Map<String, dynamic> json) {
    final macros = MealAnalysisV3MacroPoints.fromJson(
      _requiredMap(json, 'macros'),
    );
    final ranges = MealAnalysisV3MacroRanges.fromJson(
      _requiredMap(json, 'macroRanges'),
    );
    _validatePointInRange(macros.calories, ranges.calories, 'calories');
    _validatePointInRange(macros.protein, ranges.protein, 'protein');
    _validatePointInRange(macros.carbs, ranges.carbs, 'carbs');
    _validatePointInRange(macros.fat, ranges.fat, 'fat');
    _validatePointInRange(macros.fiber, ranges.fiber, 'fiber');
    final mealType = _requiredMap(json, 'mealType');
    return MealAnalysisV3CompleteResult(
      mealName: _requiredString(json, 'mealName'),
      servingSizeText: _requiredString(json, 'servingSizeText'),
      tip: json['tip'] as String? ?? '',
      mealType: _requiredString(mealType, 'value'),
      macros: macros,
      macroRanges: ranges,
      components: UnmodifiableListView(
        _requiredList(json, 'components').map(_asMap),
      ),
      receipt: UnmodifiableMapView(_requiredMap(json, 'receipt')),
    );
  }

  final String mealName;
  final String servingSizeText;
  final String tip;
  final String mealType;
  final MealAnalysisV3MacroPoints macros;
  final MealAnalysisV3MacroRanges macroRanges;
  final List<Map<String, dynamic>> components;
  final Map<String, dynamic> receipt;
}

class MealAnalysisV3TerminalIssue {
  const MealAnalysisV3TerminalIssue({
    required this.code,
    required this.retryable,
    required this.recoveryAction,
  });

  factory MealAnalysisV3TerminalIssue.fromJson(Map<String, dynamic> json) {
    final action = switch (_requiredString(json, 'recoveryAction')) {
      'RETRY' => MealAnalysisV3RecoveryAction.retry,
      'RESUME' => MealAnalysisV3RecoveryAction.resume,
      'EDIT_INPUT' => MealAnalysisV3RecoveryAction.editInput,
      'UPGRADE_APP' => MealAnalysisV3RecoveryAction.upgradeApp,
      'NONE' => MealAnalysisV3RecoveryAction.none,
      final value =>
        throw FormatException('Unknown V3 recovery action: $value'),
    };
    return MealAnalysisV3TerminalIssue(
      code: _requiredString(json, 'code'),
      retryable: json['retryable'] as bool,
      recoveryAction: action,
    );
  }

  final String code;
  final bool retryable;
  final MealAnalysisV3RecoveryAction recoveryAction;
}

class MealAnalysisV3Progress {
  const MealAnalysisV3Progress({
    required this.phase,
    required this.progress,
    this.mealName,
    this.ingredientNames = const [],
  });

  factory MealAnalysisV3Progress.fromJson(Map<String, dynamic> json) {
    final progress = _requiredDouble(json, 'progress');
    if (progress < 0 || progress > 1) {
      throw const FormatException('V3 progress must be between zero and one');
    }
    return MealAnalysisV3Progress(
      phase: switch (_requiredString(json, 'phase')) {
        'UNDERSTAND' => MealAnalysisV3ProgressPhase.understand,
        'MATCH' => MealAnalysisV3ProgressPhase.match,
        'CHECK' => MealAnalysisV3ProgressPhase.check,
        'FINISH' => MealAnalysisV3ProgressPhase.finish,
        final value =>
          throw FormatException('Unknown V3 progress phase: $value'),
      },
      progress: progress,
      mealName: json['mealName'] as String?,
      ingredientNames:
          json['ingredientNames'] == null
              ? const []
              : List.unmodifiable(
                _requiredList(json, 'ingredientNames').map((value) {
                  if (value is! String || value.trim().isEmpty) {
                    throw const FormatException(
                      'V3 ingredient names must be non-empty strings',
                    );
                  }
                  return value;
                }),
              ),
    );
  }

  final MealAnalysisV3ProgressPhase phase;
  final double progress;
  final String? mealName;
  final List<String> ingredientNames;
}

class MealAnalysisV3Event {
  const MealAnalysisV3Event({
    required this.kind,
    required this.analysisId,
    this.questions,
    this.result,
    this.progress,
    this.issue,
  });

  factory MealAnalysisV3Event.fromJson(Map<String, dynamic> json) {
    final data = _requiredMap(json, 'data');
    final kind = switch (_requiredString(json, 'event')) {
      'STARTED' => MealAnalysisV3EventKind.started,
      'PROGRESS' => MealAnalysisV3EventKind.progress,
      'NEEDS_INPUT' => MealAnalysisV3EventKind.needsInput,
      'COMPLETE' => MealAnalysisV3EventKind.complete,
      'NO_FOOD' => MealAnalysisV3EventKind.noFood,
      'UNRESOLVED' => MealAnalysisV3EventKind.unresolved,
      'ERROR' => MealAnalysisV3EventKind.error,
      final value => throw FormatException('Unknown V3 event: $value'),
    };
    return MealAnalysisV3Event(
      kind: kind,
      analysisId: _requiredString(json, 'analysisId'),
      questions:
          kind == MealAnalysisV3EventKind.needsInput
              ? MealAnalysisV3QuestionBundle.fromJson(data)
              : null,
      result:
          kind == MealAnalysisV3EventKind.complete
              ? MealAnalysisV3CompleteResult.fromJson(data)
              : null,
      progress:
          kind == MealAnalysisV3EventKind.progress
              ? MealAnalysisV3Progress.fromJson(data)
              : null,
      issue:
          const {
                MealAnalysisV3EventKind.noFood,
                MealAnalysisV3EventKind.unresolved,
                MealAnalysisV3EventKind.error,
              }.contains(kind)
              ? MealAnalysisV3TerminalIssue.fromJson(data)
              : null,
    );
  }

  final MealAnalysisV3EventKind kind;
  final String analysisId;
  final MealAnalysisV3QuestionBundle? questions;
  final MealAnalysisV3CompleteResult? result;
  final MealAnalysisV3Progress? progress;
  final MealAnalysisV3TerminalIssue? issue;
}

Map<String, dynamic> _asMap(Object? value) {
  if (value is! Map) throw const FormatException('Expected a JSON object');
  return value.cast<String, dynamic>();
}

Map<String, dynamic> _requiredMap(Map<String, dynamic> json, String key) =>
    _asMap(json[key]);

List<dynamic> _requiredList(Map<String, dynamic> json, String key) {
  final value = json[key];
  if (value is! List) throw FormatException('Expected $key to be a list');
  return value;
}

String _requiredString(Map<String, dynamic> json, String key) {
  final value = json[key];
  if (value is! String || value.trim().isEmpty) {
    throw FormatException('Expected non-empty $key');
  }
  return value;
}

double _requiredDouble(Map<String, dynamic> json, String key) {
  final value = json[key];
  if (value is! num || !value.isFinite) {
    throw FormatException('Expected finite $key');
  }
  return value.toDouble();
}

double _requiredPositiveDouble(Map<String, dynamic> json, String key) {
  final value = _requiredDouble(json, key);
  if (value <= 0) throw FormatException('Expected positive $key');
  return value;
}

int _requiredInt(Map<String, dynamic> json, String key) {
  final value = json[key];
  if (value is! int) throw FormatException('Expected integer $key');
  return value;
}

void _validatePointInRange(
  double point,
  MealAnalysisV3Range range,
  String name,
) {
  if (point < range.min || point > range.max) {
    throw FormatException('V3 $name point is outside its range');
  }
}
