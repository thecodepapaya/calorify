import { z } from 'zod';
import type { NutritionQuestion, QuestionAnswer } from './calculation.js';
import {
  mealTypeCandidateSchema,
  questionKindSchema,
  resolvedInterpretationSchema,
  type MealTypeCandidate,
  type NormalizedMealInput,
} from './domain.js';
import {
  MEAL_TYPES,
  resolveMealType,
  type MealType,
  type MealTypeQuestion,
  type MealTypeResolution,
} from './mealType.js';
import type { MealAnalysisLlmAttempt } from '../meal-analysis/llm.js';
import type { NutritionResolutionRun } from './nutrition.js';
import type { StageObserver, StageRecorder, MealAnalysisV3Stage } from './observability.js';
import type { CompleteMealAnalysisResult } from './result.js';

/**
 * Public contract shared by the LangGraph orchestration (`graph/`), the
 * pipeline facades (`pipeline.ts`), and callers. Previously this lived inside
 * the hand-rolled pipeline; it moved here so the graph and the facade can
 * share it without an import cycle.
 */

export const questionAnswerSchema = z.discriminatedUnion('kind', [
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

/**
 * Everything a paused NEEDS_INPUT session needs to finish deterministically:
 * /answer replays from this snapshot instead of re-running interpretation,
 * so the questions a user answered can never diverge from the re-planned set.
 */
export interface MealAnalysisV3InterpretationSnapshot {
  resolved: ReturnType<typeof resolvedInterpretationSchema.parse>;
  questions: MealAnalysisQuestionBundle;
  mealTypeCandidate: MealTypeCandidate;
  generatedCopy?: { mealName: string | null; servingSizeText: string | null; tip: string };
  providerAttempts: MealAnalysisLlmAttempt[];
}

const generatedCopySchema = z.object({
  mealName: z.string().min(1).nullable(),
  servingSizeText: z.string().min(1).nullable(),
  tip: z.string().min(1),
}).strict();

const providerAttemptSchema = z.object({
  operation: z.string().optional(),
  provider: z.enum(['openrouter', 'openai']),
  model: z.string().min(1),
  outcome: z.enum(['success', 'error']),
  durationMs: z.number().finite().min(0),
  errorKind: z.string().optional(),
});

const questionResponseSchema = z.discriminatedUnion('kind', [
  z.object({
    kind: z.literal('OPTION'),
    options: z.array(z.object({
      optionId: z.string().min(1),
      label: z.string().min(1),
    })).min(2),
  }),
  z.object({
    kind: z.literal('NUMBER'),
    unitCode: z.string().min(1),
    min: z.number().finite(),
    max: z.number().finite(),
    step: z.number().positive(),
    integerOnly: z.boolean(),
  }),
]);

const nutritionQuestionSchema = z.object({
  questionId: z.string().min(1),
  scope: z.literal('NUTRITION'),
  target: z.object({
    componentId: z.string().min(1),
    dimension: questionKindSchema,
    dimensionKey: z.string().min(1),
  }),
  prompt: z.string().min(1),
  response: questionResponseSchema,
  allowUseEstimate: z.literal(true),
  impactScore: z.number().finite(),
});

const mealTypeQuestionSchema = z.object({
  questionId: z.literal('meal-type'),
  scope: z.literal('MEAL_TYPE'),
  prompt: z.string().min(1),
  options: z.array(z.object({
    optionId: z.enum(MEAL_TYPES),
    label: z.string().min(1),
  })),
});

const questionBundleSchema = z.object({
  nutritionQuestions: z.array(nutritionQuestionSchema),
  mealTypeQuestion: mealTypeQuestionSchema.optional(),
}).strict();

const interpretationSnapshotSchema = z.object({
  resolved: resolvedInterpretationSchema,
  questions: questionBundleSchema,
  mealTypeCandidate: mealTypeCandidateSchema,
  generatedCopy: generatedCopySchema.optional(),
  providerAttempts: z.array(providerAttemptSchema),
}).strict();

/** Validates a persisted interpretation snapshot before a deterministic replay. */
export function parseInterpretationSnapshot(value: unknown): MealAnalysisV3InterpretationSnapshot {
  return interpretationSnapshotSchema.parse(value);
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

export const NOOP_OBSERVER: StageObserver = () => {};

function mealTypeHint(candidate: MealTypeCandidate): {
  value: MealType;
  origin: 'USER_TEXT' | 'MODEL_INFERRED';
  confidence: number;
} | undefined {
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

export function initialMealTypeResolution(
  input: NormalizedMealInput,
  candidate: MealTypeCandidate,
  answer: MealType | undefined,
  requestReceivedAt: string
): MealTypeResolution {
  return resolveMealType({
    answer,
    hint: mealTypeHint(candidate),
    inputKind: input.kind,
    imageOrigin: input.kind === 'IMAGE' ? input.imageOrigin : undefined,
    capturedAt: input.context.capturedAt,
    timeZone: input.context.timeZone,
    requestReceivedAt,
  });
}

export function parseAnswers(value: unknown[] | undefined): QuestionAnswer[] | undefined {
  if (value === undefined) return undefined;
  return z.array(questionAnswerSchema).parse(value);
}

export async function skipStages(
  recorder: StageRecorder,
  stages: MealAnalysisV3Stage[],
  reason: string
): Promise<void> {
  for (const stage of stages) await recorder.skip(stage, null, reason);
}

export async function terminal(
  recorder: StageRecorder,
  result: MealAnalysisV3Result
): Promise<MealAnalysisV3Result> {
  return recorder.record('TERMINAL', { outcome: result.outcome }, () => result);
}

export function unresolvedNutrition(run: NutritionResolutionRun): MealAnalysisV3Result {
  const unresolvedCount = run.leaves.filter(({ reference }) => reference === null).length;
  return {
    outcome: 'UNRESOLVED',
    code: 'UNRESOLVED_NUTRITION',
    reason: `${unresolvedCount} ingredient reference${unresolvedCount === 1 ? '' : 's'} could not be resolved safely`,
    nutrition: run,
  };
}
