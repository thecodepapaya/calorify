import type { StageObservation } from './observability.js';

export type MealAnalysisV3ProgressPhase =
  | 'UNDERSTAND'
  | 'MATCH'
  | 'CHECK'
  | 'FINISH';

export interface MealAnalysisV3Progress {
  phase: MealAnalysisV3ProgressPhase;
  progress: number;
  mealName?: string;
  ingredientNames?: string[];
}

const STAGE_PROGRESS: Partial<Record<StageObservation['stage'], {
  phase: MealAnalysisV3ProgressPhase;
  progress: number;
}>> = {
  INPUT_NORMALIZED: { phase: 'UNDERSTAND', progress: 0.08 },
  INTERPRETED: { phase: 'MATCH', progress: 0.3 },
  VALIDATED: { phase: 'MATCH', progress: 0.42 },
  NUTRITION_RESOLVED: { phase: 'CHECK', progress: 0.62 },
  CALCULATED: { phase: 'CHECK', progress: 0.72 },
  QUESTIONS_PLANNED: { phase: 'CHECK', progress: 0.8 },
  ANSWERS_APPLIED: { phase: 'CHECK', progress: 0.82 },
  RECALCULATED: { phase: 'CHECK', progress: 0.86 },
  MEAL_TYPE_RESOLVED: { phase: 'FINISH', progress: 0.9 },
  PRESENTED: { phase: 'FINISH', progress: 0.96 },
  INTEGRITY_CHECKED: { phase: 'FINISH', progress: 0.99 },
};

function boundedText(value: unknown, maxLength: number): string | undefined {
  if (typeof value !== 'string') return undefined;
  const trimmed = value.trim();
  if (trimmed.length === 0) return undefined;
  return trimmed.slice(0, maxLength);
}

function interpretedCopy(output: unknown): Pick<
  MealAnalysisV3Progress,
  'mealName' | 'ingredientNames'
> {
  if (output === null || typeof output !== 'object') return {};
  const proposal = (output as { proposal?: unknown }).proposal;
  if (proposal === null || typeof proposal !== 'object') return {};
  const record = proposal as { mealNameCandidate?: unknown; components?: unknown };
  const mealName = boundedText(record.mealNameCandidate, 80);
  const ingredientNames = Array.isArray(record.components)
    ? record.components
        .slice(0, 20)
        .map((component) => component !== null && typeof component === 'object'
          ? boundedText((component as { displayName?: unknown }).displayName, 160)
          : undefined)
        .filter((name): name is string => name !== undefined)
    : [];
  return {
    ...(mealName ? { mealName } : {}),
    ...(ingredientNames.length > 0 ? { ingredientNames } : {}),
  };
}

function presentedCopy(output: unknown): Pick<MealAnalysisV3Progress, 'mealName'> {
  if (output === null || typeof output !== 'object') return {};
  const mealName = boundedText((output as { mealName?: unknown }).mealName, 80);
  return mealName ? { mealName } : {};
}

/** Reduces private pipeline observations to bounded user-facing progress. */
export function buildMealAnalysisV3Progress(
  observation: StageObservation,
): MealAnalysisV3Progress | undefined {
  if (observation.status !== 'COMPLETED') return undefined;
  const base = STAGE_PROGRESS[observation.stage];
  if (!base) return undefined;
  if (observation.stage === 'INTERPRETED') {
    return { ...base, ...interpretedCopy(observation.output) };
  }
  if (observation.stage === 'PRESENTED') {
    return { ...base, ...presentedCopy(observation.output) };
  }
  return base;
}
