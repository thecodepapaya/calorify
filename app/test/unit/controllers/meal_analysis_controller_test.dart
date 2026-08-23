import 'dart:async';

import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/network/network_request_cancellation.dart';
import 'package:calorify/features/home/controllers/meal_analysis_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

class _FakeContinuationRepository
    implements MealAnalysisContinuationRepository {
  MealAnalysisStarter? clarifyStarter;
  MealAnalysisStarter? mealTypeStarter;
  MealAnalysisStarter? resumeStarter;
  int clarifyCalls = 0;
  int mealTypeCalls = 0;
  int resumeCalls = 0;
  String? lastAnalysisId;
  List<MealClarificationAnswer>? lastAnswers;
  MealType? lastMealType;

  @override
  Future<Stream<MealAnalysisPipelineEvent>> resume({
    required String analysisId,
    required NetworkRequestCancellation cancellation,
  }) {
    resumeCalls++;
    lastAnalysisId = analysisId;
    return resumeStarter!(cancellation, analysisId);
  }

  @override
  Future<Stream<MealAnalysisPipelineEvent>> clarify({
    required String analysisId,
    required List<MealClarificationAnswer> answers,
    required NetworkRequestCancellation cancellation,
  }) {
    clarifyCalls++;
    lastAnalysisId = analysisId;
    lastAnswers = answers;
    return clarifyStarter!(cancellation, analysisId);
  }

  @override
  Future<Stream<MealAnalysisPipelineEvent>> submitMealType({
    required String analysisId,
    required MealType mealType,
    required NetworkRequestCancellation cancellation,
  }) {
    mealTypeCalls++;
    lastAnalysisId = analysisId;
    lastMealType = mealType;
    return mealTypeStarter!(cancellation, analysisId);
  }
}

class _RecordingAnalytics implements MealAnalysisAnalytics {
  final List<AnalyticsEvent> events = [];
  final List<Map<String, Object>?> parameters = [];

  @override
  void logEvent(AnalyticsEvent event, {Map<String, Object>? parameters}) {
    events.add(event);
    this.parameters.add(parameters);
  }
}

MealAnalysisPipelineEvent _started({String analysisId = 'analysis-1'}) {
  return MealAnalysisPipelineEvent(
    step: PipelineStep.STARTED,
    analysisId: analysisId,
  );
}

MealAnalysisPipelineEvent _result({String analysisId = 'analysis-1'}) {
  return MealAnalysisPipelineEvent(
    step: PipelineStep.RESULT,
    analysisId: analysisId,
    result: PipelineResultData(
      analysisId: analysisId,
      mealName: 'Vegetable bowl',
      quantity: '1 bowl',
      mealType: MealType.LUNCH,
      ingredients: [PipelineResolvedIngredient(canonicalName: 'Vegetables')],
    ),
  );
}

MealAnalysisPipelineEvent _retryableError({String analysisId = 'analysis-1'}) {
  return MealAnalysisPipelineEvent(
    step: PipelineStep.ERROR,
    analysisId: analysisId,
    errorMessage: 'Analysis is still in progress',
    retryable: true,
  );
}

MealAnalysisPipelineEvent _clarification({String analysisId = 'analysis-1'}) {
  return MealAnalysisPipelineEvent(
    step: PipelineStep.UNCERTAINTY,
    analysisId: analysisId,
    uncertainty: PipelineUncertaintyData(
      analysisId: analysisId,
      mealName: 'Vegetable bowl',
      needsClarification: true,
      clarifications: [
        PipelineClarification(
          clarificationId: 'portion',
          question: 'How large was it?',
        ),
      ],
    ),
  );
}

MealAnalysisPipelineEvent _mealTypeQuestion({
  String analysisId = 'analysis-1',
}) {
  return MealAnalysisPipelineEvent(
    step: PipelineStep.MEAL_TYPE_QUESTION,
    analysisId: analysisId,
    mealTypeQuestion: PipelineMealTypeQuestionData(
      analysisId: analysisId,
      mealName: 'Vegetable bowl',
      question: 'Which meal was this?',
      options: [MealType.LUNCH, MealType.DINNER],
    ),
  );
}

Stream<MealAnalysisPipelineEvent> _startedThenTransportError() async* {
  yield _started();
  throw StateError('transport failed');
}

Future<T> _waitForState<T extends MealAnalysisState>(
  MealAnalysisController controller,
) async {
  final current = controller.state;
  if (current is T) return current;

  final completer = Completer<T>();
  void listener() {
    final state = controller.state;
    if (state is T && !completer.isCompleted) completer.complete(state);
  }

  controller.addListener(listener);
  try {
    return await completer.future.timeout(const Duration(seconds: 2));
  } finally {
    if (!controller.isDisposed) controller.removeListener(listener);
  }
}

void main() {
  late _FakeContinuationRepository repository;
  late _RecordingAnalytics analytics;
  final controllers = <MealAnalysisController>[];

  MealAnalysisController createController(MealAnalysisStarter starter) {
    final controller = MealAnalysisController(
      initialAnalysis: starter,
      repository: repository,
      analytics: analytics,
      textDescription: 'vegetable bowl',
      initialAnalysisId: 'analysis-1',
    );
    controllers.add(controller);
    return controller;
  }

  setUp(() {
    repository = _FakeContinuationRepository();
    analytics = _RecordingAnalytics();
  });

  tearDown(() {
    for (final controller in controllers) {
      if (!controller.isDisposed) controller.dispose();
    }
    controllers.clear();
  });

  test('normal result completes and preserves the session context', () async {
    final controller = createController(
      (_, _) async => Stream.fromIterable([_started(), _result()]),
    );

    expect(controller.start(), isTrue);
    final completed = await _waitForState<MealAnalysisCompleted>(controller);

    expect(completed.resultContext.result.mealName, 'Vegetable bowl');
    expect(completed.resultContext.textDescription, 'vegetable bowl');
    expect(completed.view.ingredientNames, ['Vegetables']);
    expect(analytics.events, contains(AnalyticsEvent.mealAnalysisV2Completed));
  });

  test(
    'clarification state continues through the injected repository',
    () async {
      repository.clarifyStarter = (_, _) async => Stream.value(_result());
      final controller = createController(
        (_, _) async => Stream.value(_clarification()),
      );

      controller.start();
      final prompt = await _waitForState<MealAnalysisNeedsClarification>(
        controller,
      );
      final answers = [
        MealClarificationAnswer(
          clarificationId: 'portion',
          selectedOptionId: 'large',
        ),
      ];

      expect(prompt.clarifications, hasLength(1));
      expect(controller.submitClarifications(answers), isTrue);
      await _waitForState<MealAnalysisCompleted>(controller);

      expect(repository.clarifyCalls, 1);
      expect(repository.lastAnalysisId, 'analysis-1');
      expect(repository.lastAnswers, same(answers));
    },
  );

  test('meal-type state continues through the injected repository', () async {
    repository.mealTypeStarter = (_, _) async => Stream.value(_result());
    final controller = createController(
      (_, _) async => Stream.value(_mealTypeQuestion()),
    );

    controller.start();
    final prompt = await _waitForState<MealAnalysisNeedsMealType>(controller);

    expect(prompt.question.options, contains(MealType.DINNER));
    expect(controller.submitMealType(MealType.DINNER), isTrue);
    await _waitForState<MealAnalysisCompleted>(controller);

    expect(repository.mealTypeCalls, 1);
    expect(repository.lastMealType, MealType.DINNER);
    expect(analytics.events, contains(AnalyticsEvent.mealTypeQuestionShown));
  });

  test(
    'clarification transport setup failure resumes its known session',
    () async {
      repository.clarifyStarter =
          (_, _) async =>
              throw StateError('clarification response disconnected');
      repository.resumeStarter = (_, _) async => Stream.value(_result());
      final controller = createController(
        (_, _) async => Stream.value(_clarification()),
      );

      controller.start();
      await _waitForState<MealAnalysisNeedsClarification>(controller);
      controller.submitClarifications([
        MealClarificationAnswer(
          clarificationId: 'portion',
          selectedOptionId: 'large',
        ),
      ]);
      await _waitForState<MealAnalysisCompleted>(controller);

      expect(repository.clarifyCalls, 1);
      expect(repository.resumeCalls, 1);
      expect(repository.lastAnalysisId, 'analysis-1');
    },
  );

  test('meal-type empty response resumes its known session', () async {
    repository.mealTypeStarter = (_, _) async => const Stream.empty();
    repository.resumeStarter = (_, _) async => Stream.value(_result());
    final controller = createController(
      (_, _) async => Stream.value(_mealTypeQuestion()),
    );

    controller.start();
    await _waitForState<MealAnalysisNeedsMealType>(controller);
    controller.submitMealType(MealType.DINNER);
    await _waitForState<MealAnalysisCompleted>(controller);

    expect(repository.mealTypeCalls, 1);
    expect(repository.resumeCalls, 1);
    expect(repository.lastAnalysisId, 'analysis-1');
  });

  test('backend ERROR becomes a terminal failure', () async {
    final controller = createController(
      (_, _) async => Stream.value(
        MealAnalysisPipelineEvent(
          step: PipelineStep.ERROR,
          analysisId: 'analysis-1',
          errorMessage: 'Could not analyze meal',
        ),
      ),
    );

    controller.start();
    final failed = await _waitForState<MealAnalysisFailed>(controller);

    expect(failed.failure.kind, MealAnalysisFailureKind.backend);
    expect(failed.failure.backendMessage, 'Could not analyze meal');
    expect(analytics.events, contains(AnalyticsEvent.mealAnalysisV2Failed));
  });

  test('retryable backend errors resume the durable session', () async {
    repository.resumeStarter = (_, _) async => Stream.value(_result());
    final controller = createController(
      (_, _) async => Stream.value(_retryableError()),
    );

    controller.start();
    await _waitForState<MealAnalysisCompleted>(controller);

    expect(repository.resumeCalls, 1);
    expect(
      analytics.events,
      isNot(contains(AnalyticsEvent.mealAnalysisV2Failed)),
    );
  });

  test(
    'unknown stream error does not discard the durable analysis id',
    () async {
      repository.resumeStarter = (_, _) async => Stream.value(_result());
      final controller = createController(
        (_, _) async => Stream.fromIterable([
          _started(),
          _retryableError(analysisId: 'unknown'),
        ]),
      );

      controller.start();
      await _waitForState<MealAnalysisCompleted>(controller);

      expect(repository.resumeCalls, 1);
      expect(repository.lastAnalysisId, 'analysis-1');
    },
  );

  test('retryable backend recovery is capped', () async {
    repository.resumeStarter = (_, _) async => Stream.value(_retryableError());
    final controller = createController(
      (_, _) async => Stream.value(_retryableError()),
    );

    controller.start();
    final failed = await _waitForState<MealAnalysisFailed>(controller);

    expect(failed.failure.kind, MealAnalysisFailureKind.backend);
    expect(repository.resumeCalls, 2);
  });

  test('initial setup retry reuses its client-generated analysis id', () async {
    final analysisIds = <String>[];
    var calls = 0;
    final controller = createController((_, analysisId) async {
      analysisIds.add(analysisId);
      if (calls++ == 0) throw StateError('transport failed');
      return Stream.fromIterable([_started(), _result()]);
    });

    controller.start();
    await _waitForState<MealAnalysisCompleted>(controller);

    expect(calls, 2);
    expect(analysisIds, ['analysis-1', 'analysis-1']);
    expect(repository.resumeCalls, 0);
  });

  test(
    'repeated setup failure falls back to resume once, then fails',
    () async {
      var starterCalls = 0;
      repository.resumeStarter =
          (_, _) => Future<Stream<MealAnalysisPipelineEvent>>.error(
            StateError('resume transport failed'),
          );
      final controller = createController((_, _) {
        starterCalls++;
        return Future<Stream<MealAnalysisPipelineEvent>>.error(
          StateError('stream failed'),
        );
      });

      controller.start();
      final failed = await _waitForState<MealAnalysisFailed>(controller);

      expect(failed.failure.kind, MealAnalysisFailureKind.start);
      expect(failed.failure.cause, isA<StateError>());
      expect(starterCalls, 2);
      expect(repository.resumeCalls, 1);
    },
  );

  test('an early close resumes once from the persisted analysis id', () async {
    repository.resumeStarter = (_, _) async => Stream.value(_result());
    final controller = createController(
      (_, _) async => Stream.value(_started()),
    );

    controller.start();
    await _waitForState<MealAnalysisCompleted>(controller);

    expect(repository.resumeCalls, 1);
    expect(repository.lastAnalysisId, 'analysis-1');
  });

  test('a transport error after STARTED resumes once', () async {
    repository.resumeStarter = (_, _) async => Stream.value(_result());
    final controller = createController(
      (_, _) async => _startedThenTransportError(),
    );

    controller.start();
    await _waitForState<MealAnalysisCompleted>(controller);

    expect(repository.resumeCalls, 1);
  });

  test(
    'repeated empty initial streams recover only within the bound',
    () async {
      var starterCalls = 0;
      repository.resumeStarter = (_, _) async => const Stream.empty();
      final empty = createController((_, _) async {
        starterCalls++;
        return const Stream.empty();
      });
      empty.start();
      final emptyFailure = await _waitForState<MealAnalysisFailed>(empty);
      expect(emptyFailure.failure.kind, MealAnalysisFailureKind.emptyStream);
      expect(starterCalls, 2);
      expect(repository.resumeCalls, 1);
    },
  );

  test('resume failure is terminal and never loops', () async {
    repository.resumeStarter =
        (_, _) async => throw StateError('resume transport failed');
    final controller = createController(
      (_, _) async => Stream.value(_started()),
    );

    controller.start();
    final failed = await _waitForState<MealAnalysisFailed>(controller);

    expect(failed.failure.kind, MealAnalysisFailureKind.start);
    expect(repository.resumeCalls, 1);
  });

  test('a second early close is terminal and never loops', () async {
    repository.resumeStarter = (_, _) async => Stream.value(_started());
    final controller = createController(
      (_, _) async => Stream.value(_started()),
    );

    controller.start();
    final failed = await _waitForState<MealAnalysisFailed>(controller);

    expect(failed.failure.kind, MealAnalysisFailureKind.incompleteStream);
    expect(repository.resumeCalls, 1);
  });

  test('cancellation ignores all late stream events', () async {
    final events = StreamController<MealAnalysisPipelineEvent>.broadcast();
    addTearDown(events.close);
    final controller = createController((_, _) async => events.stream);

    controller.start();
    expect(controller.state, isA<MealAnalysisLoading>());
    controller.cancel();
    events.add(_result());
    await Future<void>.delayed(Duration.zero);

    expect(controller.state, isA<MealAnalysisCancelled>());
    expect(
      analytics.events,
      isNot(contains(AnalyticsEvent.mealAnalysisV2Completed)),
    );
  });

  test(
    'dispose cancels a pending start without notifying late state',
    () async {
      final streamCompleter = Completer<Stream<MealAnalysisPipelineEvent>>();
      NetworkRequestCancellation? requestCancellation;
      final controller = createController((cancellation, _) {
        requestCancellation = cancellation;
        return streamCompleter.future;
      });
      var notifications = 0;
      controller.addListener(() => notifications++);

      controller.start();
      expect(notifications, 1);
      controller.dispose();
      streamCompleter.complete(Stream.value(_result()));
      await Future<void>.delayed(Duration.zero);

      expect(controller.state, isA<MealAnalysisCancelled>());
      expect(notifications, 1);
      expect(requestCancellation?.isCancelled, isTrue);
    },
  );

  test('duplicate continuation submission starts only one request', () async {
    final continuation = Completer<Stream<MealAnalysisPipelineEvent>>();
    repository.clarifyStarter = (_, _) => continuation.future;
    final controller = createController(
      (_, _) async => Stream.value(_clarification()),
    );
    controller.start();
    await _waitForState<MealAnalysisNeedsClarification>(controller);
    final answers = [MealClarificationAnswer(clarificationId: 'portion')];

    expect(controller.submitClarifications(answers), isTrue);
    expect(controller.submitClarifications(answers), isFalse);
    expect(controller.start(), isFalse);
    expect(repository.clarifyCalls, 1);
    expect(controller.state, isA<MealAnalysisLoading>());

    continuation.complete(Stream.value(_result()));
    await _waitForState<MealAnalysisCompleted>(controller);
    expect(repository.clarifyCalls, 1);
  });
}
