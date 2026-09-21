import {
  applyQuestionAnswers,
  calculateMeal,
  planNutritionQuestions,
  resolveInterpretation,
} from '../calculation.js';
import {
  normalizedMealInputSchema,
  parseAndValidateInterpretation,
} from '../domain.js';
import { createModelNutritionFallback, type NutritionFallback } from '../llmNutritionFallback.js';
import type { MealInterpreter } from '../interpretation.js';
import type { NutritionResolver } from '../nutrition.js';
import type { MealAnalysisV3Stage, StageRecorder } from '../observability.js';
import type { MealPresenter } from '../presentation.js';
import { buildCompleteResult, validateCompleteResult } from '../result.js';
import {
  initialMealTypeResolution,
  parseAnswers,
  parseInterpretationSnapshot,
  skipStages,
  unresolvedNutrition,
  type MealAnalysisInputResponse,
  type MealAnalysisQuestionBundle,
  type MealAnalysisV3InterpretationSnapshot,
  type MealAnalysisV3Result,
} from '../contract.js';
import type { MealAnalysisState } from './state.js';

/**
 * Everything a compiled graph run needs beyond the state channels. Bound via
 * closures when the graph is built, so fixture interpreters, resolvers, and
 * presenters keep working for tests, the CLI, and the eval harness.
 */
export interface MealAnalysisGraphDeps {
  recorder: StageRecorder;
  interpreter?: MealInterpreter;
  nutritionResolver?: NutritionResolver;
  nutritionFallback?: NutritionFallback;
  presenter: MealPresenter;
  requestInput?: (questions: MealAnalysisQuestionBundle) => Promise<MealAnalysisInputResponse>;
  emitSnapshot?: (snapshot: MealAnalysisV3InterpretationSnapshot) => void;
}

const STAGES_AFTER_VALIDATION: MealAnalysisV3Stage[] = [
  'NUTRITION_RESOLVED', 'CALCULATED', 'QUESTIONS_PLANNED', 'ANSWERS_APPLIED',
  'RECALCULATED', 'MEAL_TYPE_RESOLVED', 'PRESENTED', 'INTEGRITY_CHECKED',
];

const STAGES_AFTER_NUTRITION: MealAnalysisV3Stage[] = [
  'CALCULATED', 'QUESTIONS_PLANNED', 'ANSWERS_APPLIED', 'RECALCULATED',
  'MEAL_TYPE_RESOLVED', 'PRESENTED', 'INTEGRITY_CHECKED',
];

/**
 * Node functions shared by the fresh-analysis graph and the snapshot-resume
 * graph. Each node mirrors exactly one stage of the previous hand-rolled
 * pipeline, including the recorder observations it emits, so the observable
 * behavior is unchanged.
 */
export function createMealAnalysisNodes(deps: MealAnalysisGraphDeps) {
  const { recorder } = deps;

  async function normalizeInput(state: MealAnalysisState): Promise<Partial<MealAnalysisState>> {
    const input = await recorder.record('INPUT_NORMALIZED', state.rawInput, () =>
      normalizedMealInputSchema.parse(state.rawInput)
    );
    return { input };
  }

  async function interpret(state: MealAnalysisState): Promise<Partial<MealAnalysisState>> {
    const input = state.input!;
    const interpreted = await recorder.record('INTERPRETED', {
      input,
      image: state.image
        ? { mediaType: state.image.mediaType, byteLength: state.image.bytes.byteLength }
        : null,
    }, () => deps.interpreter!.interpret(input, state.image));
    return { interpreted, providerAttempts: interpreted.providerAttempts };
  }

  async function validate(state: MealAnalysisState): Promise<Partial<MealAnalysisState>> {
    const input = state.input!;
    const interpreted = state.interpreted!;
    const proposal = await recorder.record('VALIDATED', interpreted.proposal, () =>
      parseAndValidateInterpretation(interpreted.proposal, input)
    );
    if (proposal.outcome === 'NO_FOOD') {
      await skipStages(recorder, STAGES_AFTER_VALIDATION, 'terminal NO_FOOD interpretation');
      return { proposal, result: { outcome: 'NO_FOOD' as const, reason: proposal.reason } };
    }
    if (proposal.outcome === 'UNUSABLE') {
      await skipStages(recorder, STAGES_AFTER_VALIDATION, 'terminal UNUSABLE interpretation');
      return { proposal, result: { outcome: 'UNUSABLE_INPUT' as const, reason: proposal.reason } };
    }
    return {
      proposal,
      mealTypeCandidate: proposal.mealTypeCandidate,
      generatedCopy: interpreted.firstPass?.food_detected
        ? {
          mealName: interpreted.firstPass.mealName,
          servingSizeText: interpreted.firstPass.servingSizeText,
          tip: interpreted.firstPass.tip,
        }
        : undefined,
    };
  }

  async function resolveNutrition(state: MealAnalysisState): Promise<Partial<MealAnalysisState>> {
    const proposal = state.proposal!;
    if (proposal.outcome !== 'FOOD') {
      // Unreachable by graph construction: terminal interpretations route to END.
      throw new Error('Nutrition resolution requires a FOOD proposal');
    }
    const nutritionStage = await recorder.record('NUTRITION_RESOLVED', proposal, async () => {
      let run = await deps.nutritionResolver!.resolve(
        proposal.components.flatMap(({ scenarios }) => scenarios)
      );
      const unresolved = run.leaves.filter(({ reference }) => reference === null);
      if (unresolved.length > 0) {
        const leaves = new Map(proposal.components.flatMap(({ scenarios }) => scenarios).flatMap((scenario) =>
          scenario.ingredients.map((leaf) => [`${scenario.scenarioId}:${leaf.leafId}`, { scenarioId: scenario.scenarioId, leaf }] as const)
        ));
        try {
          const estimates = await (deps.nutritionFallback ?? createModelNutritionFallback()).resolve(
            unresolved.flatMap((item) => {
              const request = leaves.get(`${item.scenarioId}:${item.leafId}`);
              return request ? [request] : [];
            })
          );
          const byLeaf = new Map(estimates.map((reference) => [`${reference.scenarioId}:${reference.leafId}`, reference]));
          run = {
            ...run,
            leaves: run.leaves.map((item) => ({
              ...item,
              reference: item.reference ?? byLeaf.get(`${item.scenarioId}:${item.leafId}`) ?? null,
            })),
          };
        } catch {
          // Preserve the unresolved USDA outcome when the estimate provider fails.
        }
      }
      if (run.leaves.some(({ reference }) => reference === null)) {
        return { run, resolved: null };
      }
      const references = run.leaves.map(({ reference }) => reference!);
      return { run, resolved: resolveInterpretation(proposal, references) };
    });
    if (nutritionStage.resolved === null) {
      await skipStages(recorder, STAGES_AFTER_NUTRITION, 'trusted nutrition was unresolved');
      return { result: unresolvedNutrition(nutritionStage.run) };
    }
    return { resolved: nutritionStage.resolved };
  }

  async function calculate(state: MealAnalysisState): Promise<Partial<MealAnalysisState>> {
    const resolved = state.resolved!;
    const calculation = await recorder.record('CALCULATED', resolved, () =>
      calculateMeal(resolved)
    );
    return {
      calculation,
      initialMealType: initialMealTypeResolution(
        state.input!,
        state.mealTypeCandidate!,
        state.mealTypeAnswer,
        state.requestReceivedAt
      ),
    };
  }

  async function planQuestions(state: MealAnalysisState): Promise<Partial<MealAnalysisState>> {
    const resolved = state.resolved!;
    const initialMealType = state.initialMealType!;
    const questions = await recorder.record('QUESTIONS_PLANNED', state.calculation!, () => {
      // The resume graph replays the persisted bundle instead of re-planning.
      if (state.questions) return state.questions;
      const nutritionQuestions = planNutritionQuestions(resolved);
      return {
        nutritionQuestions,
        ...(initialMealType.status === 'NEEDS_INPUT'
          ? { mealTypeQuestion: initialMealType.question }
          : {}),
      } satisfies MealAnalysisQuestionBundle;
    });
    const nutritionAnswers = parseAnswers(state.nutritionAnswersInput);
    const nutritionInputMissing = questions.nutritionQuestions.length > 0 && nutritionAnswers === undefined;
    const mealTypeInputMissing = initialMealType.status === 'NEEDS_INPUT' && state.mealTypeAnswer === undefined;
    return {
      questions,
      nutritionAnswers,
      pendingInput: nutritionInputMissing || mealTypeInputMissing,
    };
  }

  /**
   * Route-reachable NEEDS_INPUT pause: skips the remaining stages, emits the
   * interpretation snapshot a deterministic /answer replay needs, and ends the
   * graph with the question bundle.
   */
  async function pauseForInput(state: MealAnalysisState): Promise<Partial<MealAnalysisState>> {
    await recorder.skip('ANSWERS_APPLIED', state.questions!.nutritionQuestions, 'answers not supplied');
    await recorder.skip('RECALCULATED', state.calculation!, 'answers not supplied');
    await recorder.record('MEAL_TYPE_RESOLVED', {
      hint: state.mealTypeCandidate!,
      answer: state.mealTypeAnswer ?? null,
    }, () => state.initialMealType!);
    await skipStages(recorder, ['PRESENTED', 'INTEGRITY_CHECKED'], 'input is required');
    deps.emitSnapshot?.({
      resolved: state.resolved!,
      questions: state.questions!,
      mealTypeCandidate: state.mealTypeCandidate!,
      ...(state.generatedCopy === undefined ? {} : { generatedCopy: state.generatedCopy }),
      providerAttempts: state.providerAttempts ?? [],
    });
    return { result: { outcome: 'NEEDS_INPUT' as const, questions: state.questions! } };
  }

  async function applyAnswers(state: MealAnalysisState): Promise<Partial<MealAnalysisState>> {
    const questions = state.questions!;
    let nutritionAnswers = state.nutritionAnswers;
    let mealTypeAnswer = state.mealTypeAnswer;
    if (state.pendingInput) {
      const response = await deps.requestInput!(questions);
      nutritionAnswers = nutritionAnswers ?? parseAnswers(response.nutritionAnswers);
      mealTypeAnswer = mealTypeAnswer ?? response.mealTypeAnswer;
    }
    if (questions.nutritionQuestions.length > 0) {
      if (nutritionAnswers === undefined) {
        throw new Error('Nutrition answers were not supplied');
      }
      const resolved = await recorder.record('ANSWERS_APPLIED', {
        questions: questions.nutritionQuestions,
        answers: nutritionAnswers,
      }, () => applyQuestionAnswers(state.resolved!, questions.nutritionQuestions, nutritionAnswers!));
      const calculation = await recorder.record('RECALCULATED', resolved, () =>
        calculateMeal(resolved)
      );
      return { resolved, calculation, mealTypeAnswer };
    }
    if (nutritionAnswers !== undefined && nutritionAnswers.length > 0) {
      throw new Error('Nutrition answers were supplied but no questions were asked');
    }
    await recorder.skip('ANSWERS_APPLIED', [], 'no material nutrition questions');
    await recorder.skip('RECALCULATED', state.calculation!, 'no answers changed state');
    return { mealTypeAnswer };
  }

  async function finalize(state: MealAnalysisState): Promise<Partial<MealAnalysisState>> {
    const finalMealType = await recorder.record('MEAL_TYPE_RESOLVED', {
      hint: state.mealTypeCandidate!,
      answer: state.mealTypeAnswer ?? null,
    }, () => initialMealTypeResolution(
      state.input!,
      state.mealTypeCandidate!,
      state.mealTypeAnswer,
      state.requestReceivedAt
    ));
    if (finalMealType.status === 'NEEDS_INPUT') {
      await skipStages(recorder, ['PRESENTED', 'INTEGRITY_CHECKED'], 'meal type answer is required');
      return { result: { outcome: 'NEEDS_INPUT' as const, questions: state.questions! } };
    }
    const resolved = state.resolved!;
    const calculation = state.calculation!;
    const beforePresentation = JSON.stringify({ resolved, calculation });
    const presentation = await recorder.record('PRESENTED', {
      components: resolved.components,
      mealType: finalMealType,
      locale: state.input!.context.locale,
      countryCode: state.input!.context.countryCode,
      generatedCopy: state.generatedCopy,
      providerAttempts: state.providerAttempts ?? [],
    }, () => deps.presenter.present({
      interpretation: resolved,
      mealType: finalMealType,
      locale: state.input!.context.locale,
      countryCode: state.input!.context.countryCode,
      generatedCopy: state.generatedCopy,
      providerAttempts: state.providerAttempts ?? [],
    }));
    const result: MealAnalysisV3Result = await recorder.record('INTEGRITY_CHECKED', {
      resolved,
      calculation,
      presentation,
    }, () => {
      if (JSON.stringify({ resolved, calculation }) !== beforePresentation) {
        throw new Error('Presentation mutated calculation state');
      }
      const complete = buildCompleteResult(resolved, calculation, presentation, finalMealType);
      validateCompleteResult(complete);
      return complete;
    });
    return { result };
  }

  /**
   * Entry node of the resume graph: parses the stored interpretation
   * snapshot and seeds the shared tail nodes without any model calls.
   */
  async function resumeFromSnapshot(state: MealAnalysisState): Promise<Partial<MealAnalysisState>> {
    const input = await recorder.record('INPUT_NORMALIZED', state.rawInput, () =>
      normalizedMealInputSchema.parse(state.rawInput)
    );
    const snapshot = parseInterpretationSnapshot(state.snapshotInput);
    await skipStages(
      recorder,
      ['INTERPRETED', 'VALIDATED', 'NUTRITION_RESOLVED'],
      'replayed from the stored interpretation snapshot'
    );
    return {
      input,
      resolved: snapshot.resolved,
      questions: snapshot.questions,
      mealTypeCandidate: snapshot.mealTypeCandidate,
      generatedCopy: snapshot.generatedCopy,
      providerAttempts: snapshot.providerAttempts,
    };
  }

  return {
    normalizeInput,
    interpret,
    validate,
    resolveNutrition,
    calculate,
    planQuestions,
    pauseForInput,
    applyAnswers,
    finalize,
    resumeFromSnapshot,
  };
}
