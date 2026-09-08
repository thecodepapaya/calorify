import assert from 'node:assert/strict';
import { mkdtempSync, readFileSync } from 'node:fs';
import { tmpdir } from 'node:os';
import { join } from 'node:path';
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

test('accepts a paraphrased model name; request_id is the join key', async () => {
  const leaf = foodProposal().components[0]!.scenarios[0]!.ingredients[0]!;
  const fallback = createModelNutritionFallback(clientReturning({
    ingredients: [{
      request_id: 'leaf_1',
      name: 'some other food entirely',
      kcal_per_100g: 26,
      protein_per_100g: 1,
      carbs_per_100g: 6.5,
      fat_per_100g: 0.1,
      fiber_per_100g: 0.5,
    }],
  }));

  const result = await fallback.resolve([{ scenarioId: 'base', leaf }]);

  assert.equal(result.length, 1);
  assert.equal(result[0]!.source, 'MODEL_INFERRED');
  assert.equal(result[0]!.leafId, leaf.leafId);
});

test('rejects implausible model estimates', async () => {
  const leaf = foodProposal().components[0]!.scenarios[0]!.ingredients[0]!;
  const fallback = createModelNutritionFallback(clientReturning({
    ingredients: [
      {
        request_id: 'leaf_1', name: leaf.canonicalIdentity, kcal_per_100g: 1_000,
        protein_per_100g: 1, carbs_per_100g: 6.5, fat_per_100g: 0.1, fiber_per_100g: 0.5,
      },
      {
        request_id: 'unknown_id', name: leaf.canonicalIdentity, kcal_per_100g: 26,
        protein_per_100g: 1, carbs_per_100g: 6.5, fat_per_100g: 0.1, fiber_per_100g: 0.5,
      },
    ],
  }));

  assert.deepEqual(await fallback.resolve([{ scenarioId: 'base', leaf }]), []);
});

test('writes successful fallback results to the log file as JSON lines', async () => {
  const leaf = foodProposal().components[0]!.scenarios[0]!.ingredients[0]!;
  const directory = mkdtempSync(join(tmpdir(), 'nutrition-fallback-'));
  const logPath = join(directory, 'results.jsonl');
  const fallback = createModelNutritionFallback(
    clientReturning({
      ingredients: [{
        request_id: 'leaf_1',
        name: leaf.canonicalIdentity,
        kcal_per_100g: 26,
        protein_per_100g: 1,
        carbs_per_100g: 6.5,
        fat_per_100g: 0.1,
        fiber_per_100g: 0.5,
      }],
    }),
    { logPath }
  );

  const result = await fallback.resolve([{ scenarioId: 'base', leaf }]);
  assert.equal(result.length, 1);

  const lines = readFileSync(logPath, 'utf-8').trim().split('\n');
  assert.equal(lines.length, 1);
  const entry = JSON.parse(lines[0]!);
  assert.equal(entry.model, 'openai/gpt-5.6-luna');
  assert.equal(entry.requests.length, 1);
  assert.equal(entry.requests[0].canonicalIdentity, leaf.canonicalIdentity);
  assert.equal(entry.requests[0].scenarioId, 'base');
  assert.equal(entry.estimates.length, 1);
  assert.equal(entry.estimates[0].leafId, leaf.leafId);
  assert.equal(entry.estimates[0].per100g.caloriesKcal, 26);
  assert.ok(typeof entry.timestamp === 'string');
});
