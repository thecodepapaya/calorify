import assert from 'node:assert/strict';
import test from 'node:test';
import { buildMealAnalysisV3Progress } from '../../../src/services/meal-analysis-v3/progress.js';
import type { StageObservation } from '../../../src/services/meal-analysis-v3/observability.js';

function observation(
  stage: StageObservation['stage'],
  output: unknown,
  status: StageObservation['status'] = 'COMPLETED',
): StageObservation {
  return { sequence: 1, stage, status, durationMs: 1, input: null, output };
}

test('publishes bounded meal and ingredient copy after interpretation', () => {
  const progress = buildMealAnalysisV3Progress(observation('INTERPRETED', {
    proposal: {
      mealNameCandidate: ' Dal and rice ',
      components: [
        { displayName: 'Dal' },
        { displayName: 'Rice' },
        { displayName: '' },
      ],
    },
    privateProviderData: 'must not escape',
  }));

  assert.deepEqual(progress, {
    phase: 'MATCH',
    progress: 0.3,
    mealName: 'Dal and rice',
    ingredientNames: ['Dal', 'Rice'],
  });
  assert.equal(JSON.stringify(progress).includes('privateProviderData'), false);
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
