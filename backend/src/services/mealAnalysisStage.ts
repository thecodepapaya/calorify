export const MEAL_ANALYSIS_STAGES = [
  'PENDING_DECOMPOSITION',
  'DECOMPOSING',
  'DECOMPOSED',
  'RESOLVING_INGREDIENTS',
  'INGREDIENTS_RESOLVED',
  'FINALIZING_ANALYSIS',
  'AWAITING_CLARIFICATION',
  'APPLYING_CLARIFICATION',
  'AWAITING_MEAL_TYPE',
  'READY_FOR_PRESENTATION',
  'PRESENTING',
  'NO_FOOD_DETECTED',
  'COMPLETED',
] as const;

export type MealAnalysisStage = (typeof MEAL_ANALYSIS_STAGES)[number];

export interface MealAnalysisStageSnapshot {
  stage?: MealAnalysisStage;
  decompositionData?: unknown;
  ingredientsData?: unknown;
  uncertaintyData?: unknown;
  mealTypeQuestionData?: unknown;
  selectedMealType?: string;
  resultData?: unknown;
}

export class InvalidMealAnalysisSnapshotError extends Error {
  constructor(message: string) {
    super(`Invalid meal analysis snapshot: ${message}`);
    this.name = 'InvalidMealAnalysisSnapshotError';
  }
}

function isRecord(value: unknown): value is Record<string, unknown> {
  return value != null && typeof value === 'object' && !Array.isArray(value);
}

export function parseMealAnalysisStage(value: unknown): MealAnalysisStage | undefined {
  if (value == null) return undefined;
  if (
    typeof value === 'string' &&
    (MEAL_ANALYSIS_STAGES as readonly string[]).includes(value)
  ) {
    return value as MealAnalysisStage;
  }
  throw new InvalidMealAnalysisSnapshotError(`unknown stage marker ${String(value)}`);
}

/**
 * Rows created before the stage column are inferred from their last durable
 * payload. New writes always persist an explicit marker.
 */
export function inferMealAnalysisStage(
  snapshot: MealAnalysisStageSnapshot
): MealAnalysisStage {
  if (isRecord(snapshot.resultData) && snapshot.resultData.result_kind === 'NO_FOOD') {
    return 'NO_FOOD_DETECTED';
  }
  if (snapshot.resultData != null) return 'COMPLETED';
  if (snapshot.mealTypeQuestionData != null) return 'AWAITING_MEAL_TYPE';

  if (isRecord(snapshot.uncertaintyData)) {
    if (snapshot.uncertaintyData.needsClarification === true) {
      return 'AWAITING_CLARIFICATION';
    }
    if (snapshot.selectedMealType) return 'READY_FOR_PRESENTATION';
  }

  if (snapshot.ingredientsData != null) return 'INGREDIENTS_RESOLVED';
  if (snapshot.decompositionData != null) return 'DECOMPOSED';
  throw new InvalidMealAnalysisSnapshotError('no durable stage payload exists');
}

function requireRecord(value: unknown, name: string): Record<string, unknown> {
  if (!isRecord(value)) {
    throw new InvalidMealAnalysisSnapshotError(`${name} is missing or is not an object`);
  }
  return value;
}

function rejectResultBeforeCompletion(snapshot: MealAnalysisStageSnapshot): void {
  if (snapshot.resultData != null) {
    throw new InvalidMealAnalysisSnapshotError('result data exists before COMPLETED');
  }
}

/**
 * Validates cross-field invariants before the engine trusts a resumable row.
 * Detailed ingredient numeric validation remains with the engine, which owns
 * that domain model.
 */
export function resolveMealAnalysisStage(
  snapshot: MealAnalysisStageSnapshot
): MealAnalysisStage {
  const stage = parseMealAnalysisStage(snapshot.stage) ?? inferMealAnalysisStage(snapshot);
  if (stage === 'NO_FOOD_DETECTED') {
    const result = requireRecord(snapshot.resultData, 'no-food result data');
    if (result.result_kind !== 'NO_FOOD') {
      throw new InvalidMealAnalysisSnapshotError('NO_FOOD_DETECTED has no no-food result');
    }
    return stage;
  }
  if (stage === 'PENDING_DECOMPOSITION' || stage === 'DECOMPOSING') {
    if (
      snapshot.decompositionData != null ||
      snapshot.ingredientsData != null ||
      snapshot.uncertaintyData != null ||
      snapshot.resultData != null
    ) {
      throw new InvalidMealAnalysisSnapshotError(
        `${stage} contains output before decomposition completed`
      );
    }
    return stage;
  }
  requireRecord(snapshot.decompositionData, 'decomposition data');

  if (stage === 'DECOMPOSED' || stage === 'RESOLVING_INGREDIENTS') {
    if (snapshot.ingredientsData != null || snapshot.uncertaintyData != null) {
      throw new InvalidMealAnalysisSnapshotError(
        `${stage} contains payloads from a later stage`
      );
    }
    rejectResultBeforeCompletion(snapshot);
    return stage;
  }

  requireRecord(snapshot.ingredientsData, 'resolved ingredients data');

  if (stage === 'INGREDIENTS_RESOLVED' || stage === 'FINALIZING_ANALYSIS') {
    if (snapshot.uncertaintyData != null || snapshot.mealTypeQuestionData != null) {
      throw new InvalidMealAnalysisSnapshotError(
        `${stage} contains payloads from a later stage`
      );
    }
    rejectResultBeforeCompletion(snapshot);
    return stage;
  }

  const uncertainty = requireRecord(snapshot.uncertaintyData, 'uncertainty data');

  if (stage === 'AWAITING_CLARIFICATION' || stage === 'APPLYING_CLARIFICATION') {
    if (
      uncertainty.needsClarification !== true ||
      !Array.isArray(uncertainty.clarifications) ||
      uncertainty.clarifications.length === 0
    ) {
      throw new InvalidMealAnalysisSnapshotError(
        `${stage} has no pending clarification`
      );
    }
    rejectResultBeforeCompletion(snapshot);
    return stage;
  }

  if (stage === 'AWAITING_MEAL_TYPE') {
    if (uncertainty.needsClarification !== false) {
      throw new InvalidMealAnalysisSnapshotError(
        'AWAITING_MEAL_TYPE still requires clarification'
      );
    }
    requireRecord(snapshot.mealTypeQuestionData, 'meal type question data');
    rejectResultBeforeCompletion(snapshot);
    return stage;
  }

  if (stage === 'READY_FOR_PRESENTATION' || stage === 'PRESENTING') {
    if (uncertainty.needsClarification !== false || !snapshot.selectedMealType) {
      throw new InvalidMealAnalysisSnapshotError(
        `${stage} is missing a resolved meal type or still requires clarification`
      );
    }
    rejectResultBeforeCompletion(snapshot);
    return stage;
  }

  requireRecord(snapshot.resultData, 'result data');
  return stage;
}
