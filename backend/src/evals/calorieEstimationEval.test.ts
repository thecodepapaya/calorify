import assert from 'node:assert/strict';
import test from 'node:test';
import {
  calculateRangeError,
  evaluateCalorieCase,
  summarizeCalorieEval,
  summarizeCalorieStability,
  type CalorieEvalCase,
} from './calorieEstimationEval.js';

const evalCase: CalorieEvalCase = {
  id: 'cooked-dal',
  description: '1 cup cooked dal',
  mealType: 'LUNCH',
  expectedCalories: { min: 200, max: 280 },
  requiredIngredientGroups: [['lentil', 'dal'], ['cooked', 'boiled']],
  forbiddenIngredientTerms: ['dry lentil'],
  tags: ['cooked-state'],
};

test('calculateRangeError is zero inside the accepted calorie range', () => {
  assert.equal(calculateRangeError(240, { min: 200, max: 280 }), 0);
});

test('calculateRangeError measures proportional distance outside the range', () => {
  assert.equal(calculateRangeError(320, { min: 200, max: 280 }), 40 / 240);
  assert.equal(calculateRangeError(160, { min: 200, max: 280 }), 40 / 240);
});

test('evaluateCalorieCase accepts calories and ingredient semantics in range', () => {
  const result = evaluateCalorieCase(evalCase, {
    calories: 244,
    ingredients: [{ rawName: 'dal', canonicalName: 'Lentils cooked boiled without salt' }],
    latencyMs: 1200,
    terminalStep: 'RESULT',
  });

  assert.equal(result.passed, true);
  assert.equal(result.rangePassed, true);
  assert.equal(result.ingredientsPassed, true);
  assert.deepEqual(result.missingIngredientGroups, []);
});

test('evaluateCalorieCase rejects dry-food semantic regressions even when calories are in range', () => {
  const result = evaluateCalorieCase(evalCase, {
    calories: 250,
    ingredients: [{ rawName: 'dal', canonicalName: 'Dry lentil seeds' }],
    latencyMs: 900,
    terminalStep: 'RESULT',
  });

  assert.equal(result.passed, false);
  assert.equal(result.ingredientsPassed, false);
  assert.deepEqual(result.forbiddenIngredientMatches, ['dry lentil']);
});

test('summarizeCalorieEval enforces completion, pass-rate, and range-error thresholds', () => {
  const passing = evaluateCalorieCase(evalCase, {
    calories: 240,
    ingredients: [{ canonicalName: 'lentils cooked boiled' }],
    latencyMs: 1000,
  });
  const incomplete = evaluateCalorieCase(evalCase, {
    latencyMs: 3000,
    terminalStep: 'ERROR',
    error: 'provider unavailable',
  });
  const summary = summarizeCalorieEval([passing, incomplete], {
    minCompletionRate: 0.9,
    minPassRate: 0.8,
    maxMeanRangeError: 0.2,
  });

  assert.equal(summary.completionRate, 0.5);
  assert.equal(summary.passRate, 0.5);
  assert.equal(summary.thresholdsPassed, false);
  assert.equal(summary.thresholdFailures.length, 3);
  assert.equal(summary.p95LatencyMs, 3000);
});

test('summarizeCalorieStability exposes stochastic calorie spread and unstable cases', () => {
  const pass = evaluateCalorieCase(evalCase, {
    calories: 230,
    ingredients: [{ canonicalName: 'lentils cooked boiled' }],
    latencyMs: 1000,
  });
  const fail = evaluateCalorieCase(evalCase, {
    calories: 330,
    ingredients: [{ canonicalName: 'lentils cooked boiled' }],
    latencyMs: 1000,
  });
  const stability = summarizeCalorieStability([
    { ...pass, runNumber: 1 },
    { ...fail, runNumber: 2 },
  ]);

  assert.equal(stability.caseCount, 1);
  assert.equal(stability.stablePassRate, 0);
  assert.deepEqual(stability.unstableCaseIds, ['cooked-dal']);
  assert.equal(stability.meanCalorieSpreadPercent, 100 / 280);
});
