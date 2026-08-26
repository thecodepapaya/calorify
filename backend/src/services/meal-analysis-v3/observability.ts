export const MEAL_ANALYSIS_V3_STAGES = [
  'INPUT_NORMALIZED',
  'INTERPRETED',
  'VALIDATED',
  'NUTRITION_RESOLVED',
  'CALCULATED',
  'QUESTIONS_PLANNED',
  'ANSWERS_APPLIED',
  'RECALCULATED',
  'MEAL_TYPE_RESOLVED',
  'PRESENTED',
  'INTEGRITY_CHECKED',
  'TERMINAL',
] as const;

export type MealAnalysisV3Stage = (typeof MEAL_ANALYSIS_V3_STAGES)[number];

export interface StageObservation {
  sequence: number;
  stage: MealAnalysisV3Stage;
  status: 'COMPLETED' | 'SKIPPED';
  durationMs: number;
  input: unknown;
  output: unknown;
}

export type StageObserver = (observation: StageObservation) => void | Promise<void>;

export interface StageRecorder {
  record<T>(
    stage: MealAnalysisV3Stage,
    input: unknown,
    operation: () => T | Promise<T>
  ): Promise<T>;
  skip(stage: MealAnalysisV3Stage, input: unknown, reason: string): Promise<void>;
}

/**
 * Tiny stage wrapper shared by the CLI now and the HTTP runner later. Every
 * successful transition exposes the exact stage input and output without
 * coupling domain operations to a particular logger or transport.
 */
export function createStageRecorder(
  observer: StageObserver,
  now: () => number = Date.now
): StageRecorder {
  let sequence = 0;

  return {
    async record<T>(stage: MealAnalysisV3Stage, input: unknown, operation: () => T | Promise<T>) {
      const startedAt = now();
      const output = await operation();
      await observer({
        sequence: ++sequence,
        stage,
        status: 'COMPLETED',
        durationMs: Math.max(0, now() - startedAt),
        input,
        output,
      });
      return output;
    },

    async skip(stage: MealAnalysisV3Stage, input: unknown, reason: string) {
      await observer({
        sequence: ++sequence,
        stage,
        status: 'SKIPPED',
        durationMs: 0,
        input,
        output: { reason },
      });
    },
  };
}
