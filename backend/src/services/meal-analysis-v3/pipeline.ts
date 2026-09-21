import {
  NOOP_OBSERVER,
  parseInterpretationSnapshot,
  terminal,
  type MealAnalysisInputResponse,
  type MealAnalysisQuestionBundle,
  type MealAnalysisV3InterpretationSnapshot,
  type MealAnalysisV3Result,
} from './contract.js';
import { buildMealAnalysisGraph, buildMealAnalysisResumeGraph } from './graph/graph.js';
import type { MealAnalysisGraphDeps } from './graph/nodes.js';
import {
  createModelMealInterpreter,
  type MealInterpretationImage,
  type MealInterpretationPassSnapshot,
  type MealInterpreter,
} from './interpretation.js';
import type { NutritionFallback } from './llmNutritionFallback.js';
import type { MealType } from './mealType.js';
import { createLocalUsdaNutritionResolver, type NutritionResolver } from './nutrition.js';
import { createStageRecorder, type StageObserver } from './observability.js';
import { createMealPresenter, type MealPresenter } from './presentation.js';

export {
  parseInterpretationSnapshot,
  type MealAnalysisInputResponse,
  type MealAnalysisQuestionBundle,
  type MealAnalysisV3InterpretationSnapshot,
  type MealAnalysisV3Result,
};

/**
 * Graph run metadata. Forwarded to LangSmith traces when tracing is enabled;
 * ignored otherwise.
 */
export type MealAnalysisV3RunMetadata = Record<string, string>;

export interface RunMealAnalysisV3Options {
  input: unknown;
  image?: MealInterpretationImage;
  nutritionAnswers?: unknown[];
  mealTypeAnswer?: MealType;
  requestReceivedAt?: string;
  requestInput?: (
    questions: MealAnalysisQuestionBundle
  ) => Promise<MealAnalysisInputResponse>;
  onInterpretationSnapshot?: (snapshot: MealAnalysisV3InterpretationSnapshot) => void;
  observer?: StageObserver;
  interpretationObserver?: (snapshot: MealInterpretationPassSnapshot) => void;
  interpreter?: MealInterpreter;
  nutritionResolver?: NutritionResolver;
  nutritionFallback?: NutritionFallback;
  presenter?: MealPresenter;
  metadata?: MealAnalysisV3RunMetadata;
}

/**
 * Ephemeral V3 runner shared by the route, the hypothesis CLI, and the eval
 * harness. Orchestrated by a LangGraph `StateGraph`; it has one optional
 * input callback and never reruns interpretation or USDA lookup after
 * receiving answers.
 */
export async function runMealAnalysisV3(
  options: RunMealAnalysisV3Options
): Promise<MealAnalysisV3Result> {
  const recorder = createStageRecorder(options.observer ?? NOOP_OBSERVER);
  const requestReceivedAt = options.requestReceivedAt ?? new Date().toISOString();
  const deps: MealAnalysisGraphDeps = {
    recorder,
    interpreter: options.interpreter ?? createModelMealInterpreter(
      undefined,
      undefined,
      options.interpretationObserver
        ? { onPassCompleted: options.interpretationObserver }
        : {},
    ),
    nutritionResolver: options.nutritionResolver ?? createLocalUsdaNutritionResolver(),
    nutritionFallback: options.nutritionFallback,
    presenter: options.presenter ?? createMealPresenter(),
    requestInput: options.requestInput,
    emitSnapshot: options.onInterpretationSnapshot,
  };
  const graph = buildMealAnalysisGraph(deps);
  const state = await graph.invoke({
    rawInput: options.input,
    requestReceivedAt,
    image: options.image,
    nutritionAnswersInput: options.nutritionAnswers,
    mealTypeAnswer: options.mealTypeAnswer,
    hasRequestInput: options.requestInput !== undefined,
    snapshotInput: undefined,
  }, options.metadata === undefined ? undefined : { metadata: options.metadata });
  if (state.result === undefined) {
    throw new Error('Meal analysis graph ended without a result');
  }
  return terminal(recorder, state.result);
}

export interface ResumeMealAnalysisV3Options {
  input: unknown;
  snapshot: unknown;
  nutritionAnswers?: unknown[];
  mealTypeAnswer?: MealType;
  requestReceivedAt?: string;
  observer?: StageObserver;
  presenter?: MealPresenter;
  metadata?: MealAnalysisV3RunMetadata;
}

/**
 * Deterministic /answer replay: finishes a paused session from the stored
 * interpretation snapshot without re-running interpretation or USDA lookup,
 * so the answered question bundle can never diverge from the applied one.
 */
export async function resumeMealAnalysisV3FromSnapshot(
  options: ResumeMealAnalysisV3Options
): Promise<MealAnalysisV3Result> {
  const recorder = createStageRecorder(options.observer ?? NOOP_OBSERVER);
  const requestReceivedAt = options.requestReceivedAt ?? new Date().toISOString();
  const deps: MealAnalysisGraphDeps = {
    recorder,
    // Never reached: the resume graph does not wire the interpret or
    // resolveNutrition nodes.
    interpreter: {
      async interpret() {
        throw new Error('Interpretation must not run during a snapshot replay');
      },
    },
    nutritionResolver: {
      async resolve() {
        throw new Error('Nutrition resolution must not run during a snapshot replay');
      },
    },
    presenter: options.presenter ?? createMealPresenter(),
  };
  const graph = buildMealAnalysisResumeGraph(deps);
  const state = await graph.invoke({
    rawInput: options.input,
    requestReceivedAt,
    image: undefined,
    nutritionAnswersInput: options.nutritionAnswers,
    mealTypeAnswer: options.mealTypeAnswer,
    hasRequestInput: false,
    snapshotInput: options.snapshot,
  }, options.metadata === undefined ? undefined : { metadata: options.metadata });
  if (state.result === undefined) {
    throw new Error('Meal analysis resume graph ended without a result');
  }
  return terminal(recorder, state.result);
}
