import assert from 'node:assert/strict';
import test from 'node:test';
import { createFixtureMealInterpreter } from '../../../src/services/meal-analysis-v3/interpretation.js';
import { runMealAnalysisV3 } from '../../../src/services/meal-analysis-v3/pipeline.js';
import type { NutritionResolver } from '../../../src/services/meal-analysis-v3/nutrition.js';
import type { StageObservation } from '../../../src/services/meal-analysis-v3/observability.js';
import type { MealPresenter } from '../../../src/services/meal-analysis-v3/presentation.js';
import {
  input,
  nutritionReferences,
  proposalValue,
} from './fixtures.js';

function fixtureResolver(): NutritionResolver {
  return {
    async resolve(scenarios) {
      const references = nutritionReferences();
      return {
        datasetVersion: 'fixture-1',
        leaves: scenarios.flatMap((scenario) => scenario.ingredients.map((leaf) => {
          const reference = references.find((candidate) =>
            candidate.scenarioId === scenario.scenarioId && candidate.leafId === leaf.leafId
          )!;
          return {
            scenarioId: scenario.scenarioId,
            leafId: leaf.leafId,
            reference,
            rejectionReasons: [],
            candidates: [],
          };
        })),
      };
    },
  };
}

const fixturePresenter: MealPresenter = {
  async present() {
    return {
      mealName: 'Kaddu sabzi with roti and oats',
      servingSizeText: 'measured portion + 4 rotis + measured portion',
      tip: 'Pumpkin is botanically a fruit.',
      providerAttempts: [],
      usedFallback: false,
    };
  },
};

test('pipeline runs every stage once and applies one input bundle without external reruns', async () => {
  const observations: StageObservation[] = [];
  let interpretationCalls = 0;
  let nutritionCalls = 0;
  const interpreter = createFixtureMealInterpreter(proposalValue());
  const resolver = fixtureResolver();

  const result = await runMealAnalysisV3({
    input,
    interpreter: {
      async interpret(...args) {
        interpretationCalls += 1;
        return interpreter.interpret(...args);
      },
    },
    nutritionResolver: {
      async resolve(scenarios) {
        nutritionCalls += 1;
        return resolver.resolve(scenarios);
      },
    },
    presenter: fixturePresenter,
    observer: (observation) => observations.push(observation),
    requestInput: async (questions) => ({
      nutritionAnswers: questions.nutritionQuestions.map((question) => ({
        questionId: question.questionId,
        kind: 'USE_ESTIMATE' as const,
      })),
      mealTypeAnswer: 'LUNCH',
    }),
  });

  assert.equal(result.outcome, 'COMPLETE');
  assert.equal(interpretationCalls, 1);
  assert.equal(nutritionCalls, 1);
  assert.deepEqual(observations.map(({ stage }) => stage), [
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
  ]);
  if (result.outcome === 'COMPLETE') {
    assert.equal(result.mealType.value, 'LUNCH');
    assert.equal(result.macros.calories, 873);
    assert.deepEqual(result.macroRanges.calories, { min: 873, max: 1168 });
    assert.equal(result.macros.protein > 0, true);
    assert.equal(result.receipt.datasetVersions.includes('fixture-1'), true);
  }
});

test('non-interactive pipeline returns the full question bundle without choosing defaults', async () => {
  const result = await runMealAnalysisV3({
    input,
    interpreter: createFixtureMealInterpreter(proposalValue()),
    nutritionResolver: fixtureResolver(),
    presenter: fixturePresenter,
  });

  assert.equal(result.outcome, 'NEEDS_INPUT');
  if (result.outcome === 'NEEDS_INPUT') {
    assert.equal(result.questions.nutritionQuestions.length, 2);
    assert.equal(result.questions.mealTypeQuestion?.questionId, 'meal-type');
  }
});

test('terminal non-food still makes all skipped stages observable', async () => {
  const observations: StageObservation[] = [];
  const result = await runMealAnalysisV3({
    input,
    interpreter: createFixtureMealInterpreter({
      outcome: 'NO_FOOD',
      reason: 'The input describes a plate, not food.',
    }),
    nutritionResolver: fixtureResolver(),
    presenter: fixturePresenter,
    observer: (observation) => observations.push(observation),
  });

  assert.equal(result.outcome, 'NO_FOOD');
  assert.equal(observations.length, 12);
  assert.equal(observations.at(-1)?.stage, 'TERMINAL');
  assert.ok(observations.slice(3, -1).every(({ status }) => status === 'SKIPPED'));
});
