import assert from 'node:assert/strict';
import test from 'node:test';
import type { MealAnalysisLlmClient } from '../../../src/services/meal-analysis/llm.js';
import { createModelNutritionFallback } from '../../../src/services/meal-analysis-v3/llmNutritionFallback.js';
import { foodProposal } from './fixtures.js';

function clientReturning(value: unknown): MealAnalysisLlmClient {
  return {
    chat: {
      completions: {
        create: async () => ({
          choices: [{ message: { content: JSON.stringify(value) } }],
        }),
      },
    },
  } as unknown as MealAnalysisLlmClient;
}

test('accepts only exact, plausible model estimates and marks them MODEL_INFERRED', async () => {
  const leaf = foodProposal().components[0]!.scenarios[0]!.ingredients[0]!;
  const fallback = createModelNutritionFallback(clientReturning({
    ingredients: [{
      request_id: 'leaf_1',
      name: leaf.canonicalIdentity,
      kcal_per_100g: 26,
      protein_per_100g: 1,
      carbs_per_100g: 6.5,
      fat_per_100g: 0.1,
      fiber_per_100g: 0.5,
    }],
  }));

  const result = await fallback.resolve([{ scenarioId: 'base', leaf }]);

  assert.deepEqual(result, [{
    scenarioId: 'base',
    leafId: leaf.leafId,
    source: 'MODEL_INFERRED',
    sourceRecordId: 'llm-v3:leaf_1',
    datasetVersion: 'llm-nutrition-estimate-v1',
    verifiedZero: false,
    per100g: {
      caloriesKcal: 26,
      proteinGrams: 1,
      carbsGrams: 6.5,
      fatGrams: 0.1,
      fiberGrams: 0.5,
    },
  }]);
});

test('rejects mismatched or implausible model estimates', async () => {
  const leaf = foodProposal().components[0]!.scenarios[0]!.ingredients[0]!;
  const fallback = createModelNutritionFallback(clientReturning({
    ingredients: [
      {
        request_id: 'leaf_1', name: 'wrong food', kcal_per_100g: 26,
        protein_per_100g: 1, carbs_per_100g: 6.5, fat_per_100g: 0.1, fiber_per_100g: 0.5,
      },
      {
        request_id: 'leaf_1', name: leaf.canonicalIdentity, kcal_per_100g: 1_000,
        protein_per_100g: 1, carbs_per_100g: 6.5, fat_per_100g: 0.1, fiber_per_100g: 0.5,
      },
    ],
  }));

  assert.deepEqual(await fallback.resolve([{ scenarioId: 'base', leaf }]), []);
});
