import type { StageObservation } from './observability.js';
import {
  componentIdsForFirstPass,
  type FirstPassResponse,
  type SecondPassResponse,
} from './twoPassInterpretation.js';

export type MealAnalysisV3ProgressPhase =
  | 'UNDERSTAND'
  | 'MATCH'
  | 'CHECK'
  | 'FINISH';

export interface MealAnalysisV3ProgressComponent {
  componentId: string;
  name: string;
  ingredientNames: string[];
}

export interface MealAnalysisV3Progress {
  phase: MealAnalysisV3ProgressPhase;
  progress: number;
  mealName?: string;
  components?: MealAnalysisV3ProgressComponent[];
}

const STAGE_PROGRESS: Partial<Record<StageObservation['stage'], {
  phase: MealAnalysisV3ProgressPhase;
  progress: number;
}>> = {
  INPUT_NORMALIZED: { phase: 'UNDERSTAND', progress: 0.08 },
  INTERPRETED: { phase: 'MATCH', progress: 0.38 },
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

function normalized(value: string): string {
  return value.normalize('NFC').trim().toLocaleLowerCase('en-US');
}

/** Builds public copy immediately after either validated interpretation pass. */
export function buildMealAnalysisV3PassProgress(snapshot: {
  firstPass: FirstPassResponse;
  secondPass?: SecondPassResponse;
}): MealAnalysisV3Progress {
  const componentIds = componentIdsForFirstPass(snapshot.firstPass);
  const secondByName = new Map(
    snapshot.secondPass?.mealItems.map((mealItem) => [
      normalized(mealItem.mealItemName),
      mealItem,
    ]) ?? [],
  );
  const components = snapshot.firstPass.mealItems.slice(0, 20).map(
    (component, index): MealAnalysisV3ProgressComponent => {
      const recipe = secondByName.get(normalized(component.mealItemName));
      return {
        componentId: componentIds[index]!,
        name: boundedText(component.mealItemName, 160)!,
        ingredientNames: recipe?.ingredients
          .slice(0, 24)
          .map(({ ingredientName }) => boundedText(ingredientName, 160)!) ?? [],
      };
    },
  );
  const mealName = boundedText(snapshot.firstPass.mealNameCandidate, 80);
  return {
    phase: 'MATCH',
    progress: snapshot.secondPass ? 0.34 : 0.22,
    ...(mealName ? { mealName } : {}),
    ...(components.length > 0 ? { components } : {}),
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
  if (observation.stage === 'PRESENTED') {
    return { ...base, ...presentedCopy(observation.output) };
  }
  return base;
}
