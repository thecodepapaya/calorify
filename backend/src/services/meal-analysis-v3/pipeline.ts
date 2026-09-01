import { z } from 'zod';
import {
  applyQuestionAnswers,
  calculateMeal,
  planNutritionQuestions,
  resolveInterpretation,
  type CalculatedMeal,
  type NutritionQuestion,
  type QuestionAnswer,
} from './calculation.js';
import {
  normalizedMealInputSchema,
  parseAndValidateInterpretation,
  type NormalizedMealInput,
  type ResolvedInterpretation,
} from './domain.js';
import {
  createModelMealInterpreter,
  type MealInterpretationImage,
  type MealInterpretationPassSnapshot,
  type MealInterpreter,
} from './interpretation.js';
import {
  resolveMealType,
  type MealType,
  type MealTypeQuestion,
  type MealTypeResolution,
} from './mealType.js';
import {
  createLocalUsdaNutritionResolver,
  type NutritionResolutionRun,
  type NutritionResolver,
} from './nutrition.js';
import {
  createModelNutritionFallback,
  type NutritionFallback,
} from './llmNutritionFallback.js';
import {
  createStageRecorder,
  type MealAnalysisV3Stage,
  type StageObserver,
  type StageRecorder,
} from './observability.js';
import {
  createMealPresenter,
  type MealPresenter,
} from './presentation.js';
import {
  buildCompleteResult,
  validateCompleteResult,
  type CompleteMealAnalysisResult,
} from './result.js';

const questionAnswerSchema = z.discriminatedUnion('kind', [
  z.object({
    questionId: z.string().min(1),
    kind: z.literal('OPTION'),
    optionId: z.string().min(1),
  }).strict(),
  z.object({
    questionId: z.string().min(1),
    kind: z.literal('NUMBER'),
    value: z.number().finite(),
  }).strict(),
  z.object({
    questionId: z.string().min(1),
    kind: z.literal('USE_ESTIMATE'),
  }).strict(),
]);

export interface MealAnalysisQuestionBundle {
  nutritionQuestions: NutritionQuestion[];
  mealTypeQuestion?: MealTypeQuestion;
}

export interface MealAnalysisInputResponse {
  nutritionAnswers?: QuestionAnswer[];
  mealTypeAnswer?: MealType;
}

export type MealAnalysisV3Result =
  | CompleteMealAnalysisResult
  | { outcome: 'NEEDS_INPUT'; questions: MealAnalysisQuestionBundle }
  | { outcome: 'NO_FOOD'; reason: string }
  | { outcome: 'UNUSABLE_INPUT'; reason: string }
  | {
      outcome: 'UNRESOLVED';
      code: 'UNRESOLVED_NUTRITION';
      reason: string;
      nutrition: NutritionResolutionRun;
    };

export interface RunMealAnalysisV3Options {
  input: unknown;
  image?: MealInterpretationImage;
  nutritionAnswers?: unknown[];
  mealTypeAnswer?: MealType;
  requestReceivedAt?: string;
  requestInput?: (
    questions: MealAnalysisQuestionBundle
  ) => Promise<MealAnalysisInputResponse>;
  observer?: StageObserver;
  interpretationObserver?: (snapshot: MealInterpretationPassSnapshot) => void;
  interpreter?: MealInterpreter;
  nutritionResolver?: NutritionResolver;
  nutritionFallback?: NutritionFallback;
  presenter?: MealPresenter;
}

const NOOP_OBSERVER: StageObserver = () => {};

function mealTypeHint(proposal: Extract<
  ReturnType<typeof parseAndValidateInterpretation>,
  { outcome: 'FOOD' }
>) {
  const candidate = proposal.mealTypeCandidate;
  if (candidate.value === null) return undefined;
  if (candidate.origin !== 'USER_TEXT' && candidate.origin !== 'MODEL_INFERRED') {
    return undefined;
  }
  return {
    value: candidate.value,
    origin: candidate.origin,
    confidence: candidate.confidence,
  } as const;
}

function initialMealTypeResolution(
  input: NormalizedMealInput,
  proposal: Extract<ReturnType<typeof parseAndValidateInterpretation>, { outcome: 'FOOD' }>,
  answer: MealType | undefined,
  requestReceivedAt: string
): MealTypeResolution {
  return resolveMealType({
    answer,
    hint: mealTypeHint(proposal),
    inputKind: input.kind,
    imageOrigin: input.kind === 'IMAGE' ? input.imageOrigin : undefined,
    capturedAt: input.context.capturedAt,
    timeZone: input.context.timeZone,
    requestReceivedAt,
  });
}

function parseAnswers(value: unknown[] | undefined): QuestionAnswer[] | undefined {
  if (value === undefined) return undefined;
  return z.array(questionAnswerSchema).parse(value);
}

async function skipStages(
  recorder: StageRecorder,
  stages: MealAnalysisV3Stage[],
  reason: string
): Promise<void> {
  for (const stage of stages) await recorder.skip(stage, null, reason);
}

async function terminal(
  recorder: StageRecorder,
  result: MealAnalysisV3Result
): Promise<MealAnalysisV3Result> {
  return recorder.record('TERMINAL', { outcome: result.outcome }, () => result);
}

function unresolvedNutrition(run: NutritionResolutionRun): MealAnalysisV3Result {
  const unresolvedCount = run.leaves.filter(({ reference }) => reference === null).length;
  return {
    outcome: 'UNRESOLVED',
    code: 'UNRESOLVED_NUTRITION',
    reason: `${unresolvedCount} ingredient reference${unresolvedCount === 1 ? '' : 's'} could not be resolved safely`,
    nutrition: run,
  };
}

/**
 * Ephemeral V3 runner shared by the hypothesis CLI and later adapters. It has
 * one optional input callback and never reruns interpretation or USDA lookup
 * after receiving answers.
 */
export async function runMealAnalysisV3(
  options: RunMealAnalysisV3Options
): Promise<MealAnalysisV3Result> {
  const recorder = createStageRecorder(options.observer ?? NOOP_OBSERVER);
  const requestReceivedAt = options.requestReceivedAt ?? new Date().toISOString();
  const input = await recorder.record('INPUT_NORMALIZED', options.input, () =>
    normalizedMealInputSchema.parse(options.input)
  );
  const interpreter = options.interpreter ?? createModelMealInterpreter(
    undefined,
    undefined,
    options.interpretationObserver
      ? { onPassCompleted: options.interpretationObserver }
      : {},
  );
  const interpreted = await recorder.record('INTERPRETED', {
    input,
    image: options.image
      ? { mediaType: options.image.mediaType, byteLength: options.image.bytes.byteLength }
      : null,
  }, () => interpreter.interpret(input, options.image));
  const proposal = await recorder.record('VALIDATED', interpreted.proposal, () =>
    parseAndValidateInterpretation(interpreted.proposal, input)
  );

  if (proposal.outcome === 'NO_FOOD') {
    const result = { outcome: 'NO_FOOD' as const, reason: proposal.reason };
    await skipStages(recorder, [
      'NUTRITION_RESOLVED', 'CALCULATED', 'QUESTIONS_PLANNED', 'ANSWERS_APPLIED',
      'RECALCULATED', 'MEAL_TYPE_RESOLVED', 'PRESENTED', 'INTEGRITY_CHECKED',
    ], 'terminal NO_FOOD interpretation');
    return terminal(recorder, result);
  }
  if (proposal.outcome === 'UNUSABLE') {
    const result = { outcome: 'UNUSABLE_INPUT' as const, reason: proposal.reason };
    await skipStages(recorder, [
      'NUTRITION_RESOLVED', 'CALCULATED', 'QUESTIONS_PLANNED', 'ANSWERS_APPLIED',
      'RECALCULATED', 'MEAL_TYPE_RESOLVED', 'PRESENTED', 'INTEGRITY_CHECKED',
    ], 'terminal UNUSABLE interpretation');
    return terminal(recorder, result);
  }

  const nutritionResolver = options.nutritionResolver ?? createLocalUsdaNutritionResolver();
  const nutritionStage = await recorder.record('NUTRITION_RESOLVED', proposal, async () => {
    let run = await nutritionResolver.resolve(
      proposal.components.flatMap(({ scenarios }) => scenarios)
    );
    const unresolved = run.leaves.filter(({ reference }) => reference === null);
    if (unresolved.length > 0) {
      const leaves = new Map(proposal.components.flatMap(({ scenarios }) => scenarios).flatMap((scenario) =>
        scenario.ingredients.map((leaf) => [`${scenario.scenarioId}:${leaf.leafId}`, { scenarioId: scenario.scenarioId, leaf }] as const)
      ));
      try {
        const estimates = await (options.nutritionFallback ?? createModelNutritionFallback()).resolve(
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
    await skipStages(recorder, [
      'CALCULATED', 'QUESTIONS_PLANNED', 'ANSWERS_APPLIED', 'RECALCULATED',
      'MEAL_TYPE_RESOLVED', 'PRESENTED', 'INTEGRITY_CHECKED',
    ], 'trusted nutrition was unresolved');
    return terminal(recorder, unresolvedNutrition(nutritionStage.run));
  }

  let resolved: ResolvedInterpretation = nutritionStage.resolved;
  let calculation: CalculatedMeal = await recorder.record('CALCULATED', resolved, () =>
    calculateMeal(resolved)
  );
  const initialMealType = initialMealTypeResolution(
    input,
    proposal,
    options.mealTypeAnswer,
    requestReceivedAt
  );
  const questions = await recorder.record('QUESTIONS_PLANNED', calculation, () => {
    const nutritionQuestions = planNutritionQuestions(resolved);
    return {
      nutritionQuestions,
      ...(initialMealType.status === 'NEEDS_INPUT'
        ? { mealTypeQuestion: initialMealType.question }
        : {}),
    } satisfies MealAnalysisQuestionBundle;
  });

  let nutritionAnswers = parseAnswers(options.nutritionAnswers);
  let mealTypeAnswer = options.mealTypeAnswer;
  const nutritionInputMissing = questions.nutritionQuestions.length > 0 && nutritionAnswers === undefined;
  const mealTypeInputMissing = initialMealType.status === 'NEEDS_INPUT' && mealTypeAnswer === undefined;
  if (nutritionInputMissing || mealTypeInputMissing) {
    if (!options.requestInput) {
      await recorder.skip('ANSWERS_APPLIED', questions.nutritionQuestions, 'answers not supplied');
      await recorder.skip('RECALCULATED', calculation, 'answers not supplied');
      await recorder.record('MEAL_TYPE_RESOLVED', {
        hint: proposal.mealTypeCandidate,
        answer: mealTypeAnswer ?? null,
      }, () => initialMealType);
      await skipStages(recorder, ['PRESENTED', 'INTEGRITY_CHECKED'], 'input is required');
      return terminal(recorder, { outcome: 'NEEDS_INPUT', questions });
    }
    const response = await options.requestInput(questions);
    nutritionAnswers = nutritionAnswers ?? parseAnswers(response.nutritionAnswers);
    mealTypeAnswer = mealTypeAnswer ?? response.mealTypeAnswer;
  }

  if (questions.nutritionQuestions.length > 0) {
    if (nutritionAnswers === undefined) {
      throw new Error('Nutrition answers were not supplied');
    }
    resolved = await recorder.record('ANSWERS_APPLIED', {
      questions: questions.nutritionQuestions,
      answers: nutritionAnswers,
    }, () => applyQuestionAnswers(resolved, questions.nutritionQuestions, nutritionAnswers!));
    calculation = await recorder.record('RECALCULATED', resolved, () =>
      calculateMeal(resolved)
    );
  } else {
    if (nutritionAnswers !== undefined && nutritionAnswers.length > 0) {
      throw new Error('Nutrition answers were supplied but no questions were asked');
    }
    await recorder.skip('ANSWERS_APPLIED', [], 'no material nutrition questions');
    await recorder.skip('RECALCULATED', calculation, 'no nutrition answers changed state');
  }

  const finalMealType = await recorder.record('MEAL_TYPE_RESOLVED', {
    hint: proposal.mealTypeCandidate,
    answer: mealTypeAnswer ?? null,
  }, () => initialMealTypeResolution(input, proposal, mealTypeAnswer, requestReceivedAt));
  if (finalMealType.status === 'NEEDS_INPUT') {
    await skipStages(recorder, ['PRESENTED', 'INTEGRITY_CHECKED'], 'meal type answer is required');
    return terminal(recorder, { outcome: 'NEEDS_INPUT', questions });
  }

  const beforePresentation = JSON.stringify({ resolved, calculation });
  const presenter = options.presenter ?? createMealPresenter();
  const presentation = await recorder.record('PRESENTED', {
    components: resolved.components,
    mealType: finalMealType,
    locale: input.context.locale,
    countryCode: input.context.countryCode,
    generatedCopy: interpreted.firstPass?.food_detected
      ? {
        mealName: interpreted.firstPass.mealName,
        servingSizeText: interpreted.firstPass.servingSizeText,
        tip: interpreted.firstPass.tip,
      }
      : undefined,
    providerAttempts: interpreted.providerAttempts,
  }, () => presenter.present({
    interpretation: resolved,
    mealType: finalMealType,
    locale: input.context.locale,
    countryCode: input.context.countryCode,
    generatedCopy: interpreted.firstPass?.food_detected
      ? {
        mealName: interpreted.firstPass.mealName,
        servingSizeText: interpreted.firstPass.servingSizeText,
        tip: interpreted.firstPass.tip,
      }
      : undefined,
    providerAttempts: interpreted.providerAttempts,
  }));
  const result = await recorder.record('INTEGRITY_CHECKED', {
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
  return terminal(recorder, result);
}
