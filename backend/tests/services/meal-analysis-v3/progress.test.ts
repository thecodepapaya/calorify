import assert from 'node:assert/strict';
import test from 'node:test';
import {
  buildMealAnalysisV3PassProgress,
  buildMealAnalysisV3Progress,
} from '../../../src/services/meal-analysis-v3/progress.js';
import type { StageObservation } from '../../../src/services/meal-analysis-v3/observability.js';
import type {
  FirstPassResponse,
  SecondPassResponse,
} from '../../../src/services/meal-analysis-v3/twoPassInterpretation.js';

function observation(
  stage: StageObservation['stage'],
  output: unknown,
  status: StageObservation['status'] = 'COMPLETED',
): StageObservation {
  return { sequence: 1, stage, status, durationMs: 1, input: null, output };
}

test('publishes components first and enriches them with ingredients', () => {
  const firstPass = {
    food_detected: true,
    mealName: 'Dal and rice',
    mealItems: [
      { mealItemName: 'Dal' },
      { mealItemName: 'Rice' },
    ],
  } as unknown as FirstPassResponse;
  const secondPass = {
    mealItems: [
      {
        mealItemName: 'Dal',
        ingredients: [{ ingredientName: 'Lentils' }, { ingredientName: 'Ghee' }],
      },
      {
        mealItemName: 'Rice',
        ingredients: [{ ingredientName: 'Basmati rice' }],
      },
    ],
  } as unknown as SecondPassResponse;

  assert.deepEqual(buildMealAnalysisV3PassProgress({ firstPass }), {
    phase: 'MATCH',
    progress: 0.22,
    mealName: 'Dal and rice',
    components: [
      { componentId: 'dal', name: 'Dal', ingredientNames: [] },
      { componentId: 'rice', name: 'Rice', ingredientNames: [] },
    ],
  });
  assert.deepEqual(buildMealAnalysisV3PassProgress({ firstPass, secondPass }), {
    phase: 'MATCH',
    progress: 0.34,
    mealName: 'Dal and rice',
    components: [
      { componentId: 'dal', name: 'Dal', ingredientNames: ['Lentils', 'Ghee'] },
      { componentId: 'rice', name: 'Rice', ingredientNames: ['Basmati rice'] },
    ],
  });
});

test('maps completed stages monotonically and omits skipped or terminal stages', () => {
  const stages: StageObservation['stage'][] = [
    'INPUT_NORMALIZED',
    'INTERPRETED',
    'VALIDATED',
    'NUTRITION_RESOLVED',
    'CALCULATED',
    'QUESTIONS_PLANNED',
    'MEAL_TYPE_RESOLVED',
    'PRESENTED',
    'INTEGRITY_CHECKED',
  ];
  const values = stages.map((stage) => buildMealAnalysisV3Progress(
    observation(stage, {}),
  )!.progress);
  assert.deepEqual(values, [...values].sort((left, right) => left - right));
  assert.equal(
    buildMealAnalysisV3Progress(observation('VALIDATED', {}, 'SKIPPED')),
    undefined,
  );
  assert.equal(
    buildMealAnalysisV3Progress(observation('TERMINAL', {})),
    undefined,
  );
});

test('uses the localized presentation name at the final copy stage', () => {
  assert.deepEqual(
    buildMealAnalysisV3Progress(observation('PRESENTED', { mealName: 'दाल चावल' })),
    { phase: 'FINISH', progress: 0.96, mealName: 'दाल चावल' },
  );
});
