import 'dart:async';
import 'dart:typed_data';

import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/network/network_request_cancellation.dart';
import 'package:calorify/core/repositories/food_repository.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:flutter/foundation.dart' show ChangeNotifier, immutable;
import 'package:models/models.dart';
import 'package:uuid/uuid.dart';

typedef MealAnalysisStarter =
    Future<Stream<MealAnalysisPipelineEvent>> Function(
      NetworkRequestCancellation cancellation,
      String analysisId,
    );

typedef _BoundMealAnalysisStarter =
    Future<Stream<MealAnalysisPipelineEvent>> Function(
      NetworkRequestCancellation cancellation,
    );

abstract interface class MealAnalysisContinuationRepository {
  Future<Stream<MealAnalysisPipelineEvent>> resume({
    required String analysisId,
    required NetworkRequestCancellation cancellation,
  });

  Future<Stream<MealAnalysisPipelineEvent>> clarify({
    required String analysisId,
    required List<MealClarificationAnswer> answers,
    required NetworkRequestCancellation cancellation,
  });

  Future<Stream<MealAnalysisPipelineEvent>> submitMealType({
    required String analysisId,
    required MealType mealType,
    required NetworkRequestCancellation cancellation,
  });
}

class FoodRepositoryMealAnalysisContinuation
    implements MealAnalysisContinuationRepository {
  const FoodRepositoryMealAnalysisContinuation(this._repository);

  final FoodRepository _repository;

  @override
  Future<Stream<MealAnalysisPipelineEvent>> resume({
    required String analysisId,
    required NetworkRequestCancellation cancellation,
  }) {
    return _repository.resumeV2(
      analysisId: analysisId,
      cancellation: cancellation,
    );
  }

  @override
  Future<Stream<MealAnalysisPipelineEvent>> clarify({
    required String analysisId,
    required List<MealClarificationAnswer> answers,
    required NetworkRequestCancellation cancellation,
  }) {
    return _repository.clarifyV2(
      analysisId: analysisId,
      answers: answers,
      cancellation: cancellation,
    );
  }

  @override
  Future<Stream<MealAnalysisPipelineEvent>> submitMealType({
    required String analysisId,
    required MealType mealType,
    required NetworkRequestCancellation cancellation,
  }) {
    return _repository.submitMealTypeV2(
      analysisId: analysisId,
      mealType: mealType,
      cancellation: cancellation,
    );
  }
}

abstract interface class MealAnalysisAnalytics {
  void logEvent(AnalyticsEvent event, {Map<String, Object>? parameters});
}

class AppMealAnalysisAnalytics implements MealAnalysisAnalytics {
  const AppMealAnalysisAnalytics(this._analytics);

  final Analytics _analytics;

  @override
  void logEvent(AnalyticsEvent event, {Map<String, Object>? parameters}) {
    _analytics.logEvent(event, parameters: parameters);
  }
}

@immutable
class MealAnalysisViewData {
  const MealAnalysisViewData({
    required this.mealName,
    required this.ingredientNames,
    required this.ingredientCount,
    required this.displayPhase,
    required this.progressValue,
    required this.isMealTypePhase,
  });

  final String mealName;
  final List<String> ingredientNames;
  final int ingredientCount;
  final int displayPhase;
  final double? progressValue;
  final bool isMealTypePhase;
}

@immutable
sealed class MealAnalysisState {
  const MealAnalysisState(this.view);

  final MealAnalysisViewData view;
}

final class MealAnalysisIdle extends MealAnalysisState {
  const MealAnalysisIdle(super.view);
}

final class MealAnalysisLoading extends MealAnalysisState {
  const MealAnalysisLoading(super.view);
}

final class MealAnalysisNeedsClarification extends MealAnalysisState {
  const MealAnalysisNeedsClarification({
    required MealAnalysisViewData view,
    required this.analysisId,
    required this.clarifications,
  }) : super(view);

  final String analysisId;
  final List<PipelineClarification> clarifications;
}

final class MealAnalysisNeedsMealType extends MealAnalysisState {
  const MealAnalysisNeedsMealType({
    required MealAnalysisViewData view,
    required this.analysisId,
    required this.question,
  }) : super(view);

  final String analysisId;
  final PipelineMealTypeQuestionData question;
}

final class MealAnalysisCompleted extends MealAnalysisState {
  const MealAnalysisCompleted({
    required MealAnalysisViewData view,
    required this.resultContext,
  }) : super(view);

  final MealAnalysisPipelineSessionContext resultContext;
}

enum MealAnalysisFailureKind {
  backend,
  stream,
  start,
  emptyStream,
  incompleteStream,
}

class MealAnalysisFlowException implements Exception {
  const MealAnalysisFlowException({
    required this.kind,
    this.cause,
    this.backendMessage,
  });

  final MealAnalysisFailureKind kind;
  final Object? cause;
  final String? backendMessage;

  @override
  String toString() =>
      backendMessage ?? cause?.toString() ?? 'Meal analysis did not complete';
}

final class MealAnalysisFailed extends MealAnalysisState {
  const MealAnalysisFailed({
    required MealAnalysisViewData view,
    required this.failure,
  }) : super(view);

  final MealAnalysisFlowException failure;
}

final class MealAnalysisCancelled extends MealAnalysisState {
  const MealAnalysisCancelled(super.view);
}

enum _IngredientStage { none, decomposition, resolved }

/// Owns one complete meal-analysis flow, including clarification and meal-type
/// continuation rounds. UI code observes [state] and never subscribes to the
/// backend event stream directly.
class MealAnalysisController extends ChangeNotifier {
  static const _maxRetryableBackendResumes = 2;

  MealAnalysisController({
    required MealAnalysisStarter initialAnalysis,
    required MealAnalysisContinuationRepository repository,
    required MealAnalysisAnalytics analytics,
    Uint8List? imageBytes,
    String? imageUrl,
    String? textDescription,
    String? seedMealName,
    String? initialAnalysisId,
  }) : _initialAnalysis = initialAnalysis,
       _initialAnalysisId = initialAnalysisId ?? const Uuid().v4(),
       _repository = repository,
       _analytics = analytics,
       _imageBytes = imageBytes,
       _imageUrl = imageUrl,
       _textDescription = textDescription,
       _mealName = (seedMealName ?? '').trim() {
    _state = MealAnalysisIdle(_buildView());
  }

  final MealAnalysisStarter _initialAnalysis;
  final String _initialAnalysisId;
  final MealAnalysisContinuationRepository _repository;
  final MealAnalysisAnalytics _analytics;
  final Uint8List? _imageBytes;
  final String? _imageUrl;
  final String? _textDescription;

  late MealAnalysisState _state;
  MealAnalysisPipelineEvent? _lastEvent;
  StreamSubscription<MealAnalysisPipelineEvent>? _subscription;
  NetworkRequestCancellation? _requestCancellation;
  _IngredientStage _ingredientStage = _IngredientStage.none;
  List<String> _ingredientNames = const [];
  String _mealName;
  int _runEpoch = 0;
  bool _roundSawEvent = false;
  String? _roundAnalysisId;
  _BoundMealAnalysisStarter? _roundOriginalStarter;
  bool _retryOriginalBeforeFirstEvent = false;
  bool _originalRetryAttempted = false;
  bool _resumeAttempted = false;
  int _retryableBackendResumes = 0;
  bool _headerResolvedLogged = false;
  bool _failureLogged = false;
  bool _disposed = false;
  final Stopwatch _flowStopwatch = Stopwatch();

  MealAnalysisState get state => _state;

  bool get isDisposed => _disposed;

  bool start() {
    if (_disposed || _state is! MealAnalysisIdle) return false;
    _flowStopwatch.start();
    _analytics.logEvent(AnalyticsEvent.mealAnalysisV2Started);
    _maybeLogHeaderResolved(fromSeed: true);
    _startRound(
      _initialAnalysis,
      analysisId: _initialAnalysisId,
      retryOriginalBeforeFirstEvent: true,
    );
    return true;
  }

  bool submitClarifications(List<MealClarificationAnswer> answers) {
    final current = _state;
    if (_disposed || current is! MealAnalysisNeedsClarification) return false;
    _startRound(
      (cancellation, _) => _repository.clarify(
        analysisId: current.analysisId,
        answers: answers,
        cancellation: cancellation,
      ),
      analysisId: current.analysisId,
    );
    return true;
  }

  bool submitMealType(MealType mealType) {
    final current = _state;
    if (_disposed || current is! MealAnalysisNeedsMealType) return false;
    _startRound(
      (cancellation, _) => _repository.submitMealType(
        analysisId: current.analysisId,
        mealType: mealType,
        cancellation: cancellation,
      ),
      analysisId: current.analysisId,
    );
    return true;
  }

  void dismissMealType() {
    if (_disposed || _state is! MealAnalysisNeedsMealType) return;
    _analytics.logEvent(AnalyticsEvent.mealTypeQuestionDismissed);
    cancel();
  }

  void cancel() {
    if (_disposed || _state is MealAnalysisCancelled) return;
    if (_state is MealAnalysisCompleted || _state is MealAnalysisFailed) return;
    _invalidateActiveRun();
    _state = MealAnalysisCancelled(_buildView());
    notifyListeners();
  }

  void _startRound(
    MealAnalysisStarter starter, {
    required String analysisId,
    bool retryOriginalBeforeFirstEvent = false,
  }) {
    _invalidateActiveRun();
    _lastEvent = null;
    _ingredientStage = _IngredientStage.none;
    _ingredientNames = const [];
    _roundSawEvent = false;
    final knownAnalysisId = analysisId.trim();
    _roundAnalysisId = knownAnalysisId.isEmpty ? null : knownAnalysisId;
    _roundOriginalStarter =
        (cancellation) => starter(cancellation, knownAnalysisId);
    _retryOriginalBeforeFirstEvent = retryOriginalBeforeFirstEvent;
    _originalRetryAttempted = false;
    _resumeAttempted = false;
    _retryableBackendResumes = 0;
    final epoch = _runEpoch;
    _emit(MealAnalysisLoading(_buildView()));
    unawaited(_connect(_roundOriginalStarter!, epoch));
  }

  Future<void> _connect(_BoundMealAnalysisStarter starter, int epoch) async {
    final cancellation = NetworkRequestCancellation();
    if (!_isActive(epoch)) return;
    _requestCancellation = cancellation;
    try {
      final stream = await starter(cancellation);
      if (!_isActive(epoch)) {
        final lateSubscription = stream.listen((_) {}, onError: (Object _) {});
        await lateSubscription.cancel();
        return;
      }

      final subscription = stream.listen(
        (event) => _handleEvent(event, epoch),
        onError: (Object error, StackTrace stackTrace) {
          if (_tryRecover(epoch)) return;
          _fail(
            epoch,
            MealAnalysisFlowException(
              kind: MealAnalysisFailureKind.stream,
              cause: error,
            ),
          );
        },
        onDone: () => _handleDone(epoch),
        cancelOnError: true,
      );

      if (_isActive(epoch)) {
        _subscription = subscription;
      } else {
        await subscription.cancel();
      }
    } catch (error) {
      if (_tryRecover(epoch)) return;
      _fail(
        epoch,
        MealAnalysisFlowException(
          kind: MealAnalysisFailureKind.start,
          cause: error,
        ),
      );
    }
  }

  void _handleEvent(MealAnalysisPipelineEvent event, int epoch) {
    if (!_isActive(epoch)) return;
    _roundSawEvent = true;
    final analysisId = event.analysisId.trim();
    if (analysisId.isNotEmpty && analysisId != 'unknown') {
      _roundAnalysisId = analysisId;
    }
    _lastEvent = event;
    _updateMealName(event);
    _updateIngredientAccumulator(event);
    _maybeLogHeaderResolved(event: event);
    final view = _buildView();

    if (event.step == PipelineStep.ERROR) {
      if (event.retryable && _tryRetryableBackendResume(epoch)) return;
      final message = (event.errorMessage ?? '').trim();
      _fail(
        epoch,
        MealAnalysisFlowException(
          kind: MealAnalysisFailureKind.backend,
          backendMessage: message.isEmpty ? null : message,
        ),
        view: view,
      );
      return;
    }

    final uncertainty = event.uncertainty;
    if (uncertainty != null &&
        uncertainty.needsClarification &&
        uncertainty.clarifications.isNotEmpty) {
      _finishRound(
        epoch,
        MealAnalysisNeedsClarification(
          view: view,
          analysisId: event.analysisId,
          clarifications: List.unmodifiable(uncertainty.clarifications),
        ),
      );
      return;
    }

    final mealTypeQuestion = event.mealTypeQuestion;
    if (mealTypeQuestion != null) {
      _analytics.logEvent(AnalyticsEvent.mealTypeQuestionShown);
      _finishRound(
        epoch,
        MealAnalysisNeedsMealType(
          view: view,
          analysisId: event.analysisId,
          question: mealTypeQuestion,
        ),
      );
      return;
    }

    final result = event.result;
    if (result != null) {
      _flowStopwatch.stop();
      _analytics.logEvent(
        AnalyticsEvent.mealAnalysisV2Completed,
        parameters: <String, Object>{
          'duration_ms': _flowStopwatch.elapsedMilliseconds,
          'source':
              _imageBytes != null && _imageBytes.isNotEmpty ? 'image' : 'text',
        },
      );
      _finishRound(
        epoch,
        MealAnalysisCompleted(
          view: view,
          resultContext: MealAnalysisPipelineSessionContext(
            result: result,
            imageBytes: _imageBytes,
            imageUrl: _imageUrl,
            textDescription: _textDescription,
          ),
        ),
      );
      return;
    }

    _emit(MealAnalysisLoading(view));
  }

  void _handleDone(int epoch) {
    if (!_isActive(epoch)) return;
    if (_tryRecover(epoch)) return;
    _fail(
      epoch,
      MealAnalysisFlowException(
        kind:
            _roundSawEvent
                ? MealAnalysisFailureKind.incompleteStream
                : MealAnalysisFailureKind.emptyStream,
      ),
    );
  }

  bool _tryRecover(int epoch) {
    final analysisId = _roundAnalysisId;
    if (!_isActive(epoch) || analysisId == null || analysisId.isEmpty) {
      return false;
    }

    if (!_roundSawEvent &&
        _retryOriginalBeforeFirstEvent &&
        !_originalRetryAttempted) {
      final starter = _roundOriginalStarter;
      if (starter == null) return false;
      _originalRetryAttempted = true;
      _reconnect(starter);
      return true;
    }

    if (_resumeAttempted) return false;
    _resumeAttempted = true;
    _reconnect(
      (cancellation) => _repository.resume(
        analysisId: analysisId,
        cancellation: cancellation,
      ),
    );
    return true;
  }

  bool _tryRetryableBackendResume(int epoch) {
    final analysisId = _roundAnalysisId;
    if (!_isActive(epoch) ||
        analysisId == null ||
        analysisId.isEmpty ||
        _retryableBackendResumes >= _maxRetryableBackendResumes) {
      return false;
    }

    _retryableBackendResumes++;
    _resumeAttempted = true;
    _reconnect(
      (cancellation) => _repository.resume(
        analysisId: analysisId,
        cancellation: cancellation,
      ),
    );
    return true;
  }

  void _reconnect(_BoundMealAnalysisStarter starter) {
    _invalidateActiveRun();
    unawaited(_connect(starter, _runEpoch));
  }

  void _fail(
    int epoch,
    MealAnalysisFlowException failure, {
    MealAnalysisViewData? view,
  }) {
    if (!_isActive(epoch)) return;
    _flowStopwatch.stop();
    if (!_failureLogged) {
      _failureLogged = true;
      _analytics.logEvent(AnalyticsEvent.mealAnalysisV2Failed);
    }
    _finishRound(
      epoch,
      MealAnalysisFailed(view: view ?? _buildView(), failure: failure),
    );
  }

  void _finishRound(int epoch, MealAnalysisState nextState) {
    if (!_isActive(epoch)) return;
    _invalidateActiveRun();
    _emit(nextState);
  }

  bool _isActive(int epoch) =>
      !_disposed && epoch == _runEpoch && _state is MealAnalysisLoading;

  void _invalidateActiveRun() {
    _runEpoch++;
    _requestCancellation?.cancel();
    _requestCancellation = null;
    final subscription = _subscription;
    _subscription = null;
    if (subscription != null) unawaited(subscription.cancel());
  }

  void _emit(MealAnalysisState nextState) {
    if (_disposed) return;
    _state = nextState;
    notifyListeners();
  }

  void _updateMealName(MealAnalysisPipelineEvent event) {
    final eventMealName = (event.mealName ?? '').trim();
    if (eventMealName.isNotEmpty) _mealName = eventMealName;
  }

  void _updateIngredientAccumulator(MealAnalysisPipelineEvent event) {
    final resolvedNames = _resolvedIngredientNames(event);
    if (resolvedNames.isNotEmpty) {
      _ingredientStage = _IngredientStage.resolved;
      _ingredientNames = resolvedNames;
      return;
    }

    if (_ingredientStage == _IngredientStage.resolved) return;
    final decompositionNames = _decompositionIngredientNames(event);
    if (_ingredientStage == _IngredientStage.none &&
        decompositionNames.isNotEmpty) {
      _ingredientStage = _IngredientStage.decomposition;
      _ingredientNames = decompositionNames;
    }
  }

  List<String> _resolvedIngredientNames(MealAnalysisPipelineEvent event) {
    final ingredients =
        event.ingredientsStep?.ingredients.isNotEmpty == true
            ? event.ingredientsStep!.ingredients
            : event.result?.ingredients;
    if (ingredients == null || ingredients.isEmpty) return const [];
    return ingredients
        .map((ingredient) {
          final canonicalName = ingredient.canonicalName.trim();
          return canonicalName.isNotEmpty
              ? canonicalName
              : ingredient.rawName.trim();
        })
        .where((name) => name.isNotEmpty)
        .toList(growable: false);
  }

  List<String> _decompositionIngredientNames(MealAnalysisPipelineEvent event) {
    final ingredients = event.decomposition?.ingredients;
    if (ingredients == null || ingredients.isEmpty) return const [];
    return ingredients
        .map((ingredient) {
          final rawName = ingredient.rawName.trim();
          return rawName.isNotEmpty ? rawName : ingredient.canonicalHint.trim();
        })
        .where((name) => name.isNotEmpty)
        .toList(growable: false);
  }

  MealAnalysisViewData _buildView() {
    final ingredientCount =
        _ingredientNames.isNotEmpty
            ? _ingredientNames.length
            : _eventIngredientCount(_lastEvent);
    final displayPhase = _effectiveDisplayPhase(_lastEvent);
    return MealAnalysisViewData(
      mealName: _mealName,
      ingredientNames: List.unmodifiable(_ingredientNames),
      ingredientCount: ingredientCount,
      displayPhase: displayPhase,
      progressValue: _effectiveProgressValue(_lastEvent),
      isMealTypePhase: _lastEvent?.step == PipelineStep.MEAL_TYPE_QUESTION,
    );
  }

  int _eventIngredientCount(MealAnalysisPipelineEvent? event) {
    if (event == null) return 0;
    final decomposition = event.decomposition?.ingredients.length ?? 0;
    if (decomposition > 0) return decomposition;
    final ingredients = event.ingredientsStep?.ingredients.length ?? 0;
    if (ingredients > 0) return ingredients;
    return event.result?.ingredients.length ?? 0;
  }

  int? _pipelinePhaseIndex(PipelineStep? step) {
    if (step == null || step == PipelineStep.ERROR) return null;
    return switch (step) {
      PipelineStep.PIPELINE_STEP_UNSPECIFIED ||
      PipelineStep.STARTED ||
      PipelineStep.DECOMPOSITION => 0,
      PipelineStep.INGREDIENTS => 1,
      PipelineStep.UNCERTAINTY || PipelineStep.MEAL_TYPE_QUESTION => 2,
      PipelineStep.RESULT => 3,
      _ => null,
    };
  }

  int _effectiveDisplayPhase(MealAnalysisPipelineEvent? event) {
    final step = event?.step;
    final phase = _pipelinePhaseIndex(step) ?? 0;
    if (phase == 0 &&
        step == PipelineStep.DECOMPOSITION &&
        _eventHasIngredientNames(event)) {
      return 1;
    }
    return phase;
  }

  double? _effectiveProgressValue(MealAnalysisPipelineEvent? event) {
    final step = event?.step;
    var phase = _pipelinePhaseIndex(step);
    if (phase == null) return null;
    if (phase == 0 &&
        step == PipelineStep.DECOMPOSITION &&
        _eventHasIngredientNames(event)) {
      phase = 1;
    }
    return (phase + 1) / 4;
  }

  bool _eventHasIngredientNames(MealAnalysisPipelineEvent? event) {
    if (event == null) return false;
    return _resolvedIngredientNames(event).isNotEmpty ||
        _decompositionIngredientNames(event).isNotEmpty;
  }

  void _maybeLogHeaderResolved({
    MealAnalysisPipelineEvent? event,
    bool fromSeed = false,
  }) {
    if (_headerResolvedLogged) return;
    final name = fromSeed ? _mealName : (event?.mealName ?? '').trim();
    if (name.isEmpty) return;
    _headerResolvedLogged = true;
    _analytics.logEvent(
      AnalyticsEvent.mealAnalysisHeaderResolvedToName,
      parameters: <String, Object>{
        'phaseAtResolution': fromSeed ? 'seed' : _headerPhase(event?.step),
      },
    );
  }

  String _headerPhase(PipelineStep? step) {
    return switch (step) {
      PipelineStep.DECOMPOSITION => 'decomposition',
      PipelineStep.RESULT => 'result',
      _ => 'ingredients',
    };
  }

  @override
  void dispose() {
    if (!_disposed) {
      _invalidateActiveRun();
      if (_state is MealAnalysisLoading ||
          _state is MealAnalysisNeedsClarification ||
          _state is MealAnalysisNeedsMealType) {
        _state = MealAnalysisCancelled(_buildView());
      }
      _disposed = true;
    }
    super.dispose();
  }
}
