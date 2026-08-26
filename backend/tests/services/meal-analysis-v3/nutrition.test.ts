import assert from 'node:assert/strict';
import test from 'node:test';
import {
  createLocalUsdaNutritionResolver,
  type NutritionDatabaseQuery,
} from '../../../src/services/meal-analysis-v3/nutrition.js';
import type {
  IngredientLeaf,
  RecipeScenario,
} from '../../../src/services/meal-analysis-v3/domain.js';

const readyDataset = {
  dataset_version: 'usda-presence-v1',
  is_materialized: true,
  v3_nutrient_presence_materialized: true,
};

function ingredient(overrides: Partial<IngredientLeaf> = {}): IngredientLeaf {
  return {
    leafId: 'leaf-1',
    displayName: 'Pumpkin',
    canonicalIdentity: 'pumpkin',
    lookupAliases: [],
    role: 'ACTIVE_NUTRITION',
    nutritionBasis: 'COOKED',
    nutritionBasisGrams: 100,
    preparationCodes: ['BOILED'],
    retainedFat: false,
    ...overrides,
  };
}

function scenario(
  scenarioId: string,
  ingredients: IngredientLeaf[]
): RecipeScenario {
  return {
    scenarioId,
    assumptions: [],
    ingredients,
    finishedYieldGrams: 100,
    finishedYieldUnits: null,
    effectivePortion: { kind: 'WHOLE_RECIPE' },
    effectivePreparationCodes: ['BOILED'],
  };
}

function candidate(overrides: Record<string, unknown> = {}): Record<string, unknown> {
  return {
    fdc_id: '168448',
    description: 'Pumpkin, cooked, boiled, drained, without salt',
    data_type: 'sr_legacy_food',
    normalized_name: 'pumpkin cooked boiled drained without salt',
    kcal_per_100g: 20.123456,
    protein_per_100g: 0.72,
    carbs_per_100g: 4.9,
    fat_per_100g: 0.07,
    fiber_per_100g: 1.1,
    kcal_present: true,
    protein_present: true,
    carbs_present: true,
    fat_present: true,
    fiber_present: true,
    dataset_version: 'usda-presence-v1',
    identity_similarity: 0.91,
    ...overrides,
  };
}

function queryFixture(
  datasetRows: Record<string, unknown>[],
  candidateRows: Record<string, unknown>[]
): { query: NutritionDatabaseQuery; calls: Array<{ text: string; params?: unknown[] }> } {
  const calls: Array<{ text: string; params?: unknown[] }> = [];
  const query: NutritionDatabaseQuery = async (text, params) => {
    calls.push({ text, params });
    return { rows: calls.length === 1 ? datasetRows : candidateRows };
  };
  return { query, calls };
}

test('reuses a legacy materialized dataset without nutrient-presence metadata', async () => {
  const fixture = queryFixture([{
    ...readyDataset,
    v3_nutrient_presence_materialized: false,
  }], [candidate({
    kcal_present: false,
    protein_present: false,
    carbs_present: false,
    fat_present: false,
    fiber_present: false,
  })]);
  const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });

  const result = await resolver.resolve([scenario('scenario-1', [ingredient()])]);

  assert.equal(fixture.calls.length, 2);
  assert.equal(result.leaves[0]?.reference?.sourceRecordId, '168448');
  assert.deepEqual(result.leaves[0]?.candidates[0]?.missingNutrients, []);
});

test('accepts verified zero nutrients and preserves full per-100g precision', async () => {
  const fixture = queryFixture([readyDataset], [candidate({
    fdc_id: 'zero-food',
    description: 'Salt',
    normalized_name: 'salt',
    kcal_per_100g: 0,
    protein_per_100g: 0,
    carbs_per_100g: 0,
    fat_per_100g: 0,
    fiber_per_100g: 0,
  })]);
  const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });
  const salt = ingredient({
    canonicalIdentity: 'salt',
    displayName: 'Salt',
    nutritionBasis: 'AS_SERVED',
    preparationCodes: ['UNKNOWN'],
  });

  const zeroResult = await resolver.resolve([scenario('scenario-zero', [salt])]);
  assert.equal(zeroResult.leaves[0]?.reference?.verifiedZero, true);
  assert.deepEqual(zeroResult.leaves[0]?.reference?.per100g, {
    caloriesKcal: 0,
    proteinGrams: 0,
    carbsGrams: 0,
    fatGrams: 0,
    fiberGrams: 0,
  });

  const preciseFixture = queryFixture([readyDataset], [candidate()]);
  const preciseResolver = createLocalUsdaNutritionResolver({ query: preciseFixture.query });
  const preciseResult = await preciseResolver.resolve([
    scenario('scenario-precise', [ingredient()]),
  ]);
  assert.equal(preciseResult.leaves[0]?.reference?.per100g.caloriesKcal, 20.123456);
  assert.equal(preciseResult.leaves[0]?.candidates[0]?.selected, true);
});

test('treats missing fiber as zero even when source presence is materialized', async () => {
  const fixture = queryFixture([readyDataset], [candidate({
    fiber_per_100g: 9,
    fiber_present: false,
  })]);
  const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });

  const result = await resolver.resolve([scenario('scenario-1', [ingredient()])]);

  assert.equal(result.leaves[0]?.reference?.per100g.fiberGrams, 0);
  assert.deepEqual(result.leaves[0]?.rejectionReasons, []);
  assert.deepEqual(result.leaves[0]?.candidates[0]?.missingNutrients, []);
});

test('still rejects a missing non-fiber nutrient in a presence-aware snapshot', async () => {
  const fixture = queryFixture([readyDataset], [candidate({
    protein_per_100g: 0,
    protein_present: false,
  })]);
  const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });

  const result = await resolver.resolve([scenario('scenario-1', [ingredient()])]);

  assert.equal(result.leaves[0]?.reference, null);
  assert.deepEqual(result.leaves[0]?.rejectionReasons, ['MISSING_REQUIRED_NUTRIENT']);
  assert.deepEqual(result.leaves[0]?.candidates[0]?.missingNutrients, ['proteinGrams']);
});

test('uses hard identity and preparation compatibility instead of similarity alone', async (t) => {
  await t.test('rejects a more specific different food containing the requested token', async () => {
    const fixture = queryFixture([readyDataset], [candidate({
      description: 'Palak paneer, cooked',
      normalized_name: 'palak paneer cooked',
      identity_similarity: 0.99,
    })]);
    const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });
    const paneer = ingredient({
      canonicalIdentity: 'paneer',
      displayName: 'Paneer',
      nutritionBasis: 'COOKED',
      preparationCodes: ['COOKED_UNKNOWN'],
    });

    const result = await resolver.resolve([scenario('scenario-paneer', [paneer])]);
    assert.deepEqual(result.leaves[0]?.rejectionReasons, ['IDENTITY_MISMATCH']);
  });

  await t.test('rejects a raw reference for a cooked leaf', async () => {
    const fixture = queryFixture([readyDataset], [candidate({
      description: 'Pumpkin, raw',
      normalized_name: 'pumpkin raw',
    })]);
    const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });

    const result = await resolver.resolve([scenario('scenario-raw', [ingredient()])]);
    assert.deepEqual(result.leaves[0]?.rejectionReasons, ['PREPARATION_MISMATCH']);
  });

  await t.test('accepts an unmarked dry staple but rejects its cooked form', async () => {
    const flour = ingredient({
      canonicalIdentity: 'wheat flour whole grain',
      displayName: 'Whole-wheat flour',
      nutritionBasis: 'DRY',
      preparationCodes: ['DRIED'],
    });
    const compatibleFixture = queryFixture([readyDataset], [candidate({
      description: 'Wheat flour, whole-grain',
      normalized_name: 'wheat flour whole grain',
    })]);
    const compatibleResolver = createLocalUsdaNutritionResolver({
      query: compatibleFixture.query,
    });

    const compatible = await compatibleResolver.resolve([
      scenario('scenario-dry', [flour]),
    ]);
    assert.equal(compatible.leaves[0]?.reference?.sourceRecordId, '168448');
    assert.equal(compatible.leaves[0]?.candidates[0]?.preparationTier, 'BASIS_ONLY');

    const cookedFixture = queryFixture([readyDataset], [candidate({
      description: 'Wheat flour, whole-grain, cooked',
      normalized_name: 'wheat flour whole grain cooked',
    })]);
    const cookedResolver = createLocalUsdaNutritionResolver({ query: cookedFixture.query });
    const cooked = await cookedResolver.resolve([scenario('scenario-cooked-flour', [flour])]);
    assert.deepEqual(cooked.leaves[0]?.rejectionReasons, ['PREPARATION_MISMATCH']);
  });
});

test('prefers an exact normalized canonical identity before accepting ambiguity', async () => {
  const fixture = queryFixture([readyDataset], [
    candidate({
      fdc_id: 'normalized-exact',
      description: 'Pumpkin, cooked, boiled',
      normalized_name: 'pumpkin',
    }),
    candidate({
      fdc_id: 'description-exact',
      description: 'Pumpkin',
      normalized_name: 'pumpkin cooked boiled',
    }),
    candidate({
      fdc_id: 'alias-exact',
      description: 'Squash, cooked, boiled',
      normalized_name: 'squash',
    }),
  ]);
  const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });
  const result = await resolver.resolve([scenario('scenario-1', [ingredient({
    lookupAliases: ['squash'],
  })])]);

  assert.equal(result.leaves[0]?.reference?.sourceRecordId, 'normalized-exact');
  assert.equal(result.leaves[0]?.candidates[0]?.identityTier, 'CANONICAL_EXACT');
});

test('rejects equally ranked candidates instead of choosing an ambiguous row', async () => {
  const fixture = queryFixture([readyDataset], [
    candidate({ fdc_id: '100' }),
    candidate({ fdc_id: '200', kcal_per_100g: 80 }),
  ]);
  const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });

  const result = await resolver.resolve([scenario('scenario-1', [ingredient()])]);

  assert.equal(result.leaves[0]?.reference, null);
  assert.deepEqual(result.leaves[0]?.rejectionReasons, ['AMBIGUOUS_MATCH']);
  assert.equal(
    result.leaves[0]?.candidates.every((item) =>
      item.rejectionReasons.includes('AMBIGUOUS_MATCH')
    ),
    true
  );
});

test('deduplicates identical lookup keys within one run and preserves leaf locators', async () => {
  const fixture = queryFixture([readyDataset], [candidate()]);
  const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });
  const first = ingredient({ leafId: 'pumpkin-a' });
  const second = ingredient({ leafId: 'pumpkin-b' });

  const result = await resolver.resolve([
    scenario('scenario-a', [first]),
    scenario('scenario-b', [second]),
  ]);

  assert.equal(fixture.calls.length, 2, 'one dataset query plus one deduplicated lookup');
  const candidateCall = fixture.calls[1]!;
  assert.ok(!candidateCall.text.includes('v3_nutrient_presence_materialized = TRUE'));
  assert.ok(candidateCall.text.includes('food.fiber_present'));
  assert.deepEqual(candidateCall.params, [['pumpkin'], 16]);
  assert.deepEqual(
    result.leaves.map((item) => [item.reference?.scenarioId, item.reference?.leafId]),
    [['scenario-a', 'pumpkin-a'], ['scenario-b', 'pumpkin-b']]
  );
});

test('bounds rejected candidate diagnostics', async () => {
  const rows = Array.from({ length: 9 }, (_, index) => candidate({
    fdc_id: String(index),
    description: `Different food ${index}`,
    normalized_name: `different food ${index}`,
  }));
  const fixture = queryFixture([readyDataset], rows);
  const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });

  const result = await resolver.resolve([scenario('scenario-1', [ingredient()])]);

  assert.deepEqual(result.leaves[0]?.rejectionReasons, ['IDENTITY_MISMATCH']);
  assert.equal(result.leaves[0]?.candidates.length, 5);
});

test('uses an explicit builtin zero reference only for yield-only water', async () => {
  const fixture = queryFixture([readyDataset], [candidate()]);
  const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });
  const water = ingredient({
    leafId: 'water',
    displayName: 'Water',
    canonicalIdentity: 'water',
    role: 'YIELD_ONLY',
    nutritionBasis: 'AS_SERVED',
    preparationCodes: ['UNKNOWN'],
  });
  const unsupportedYield = ingredient({
    leafId: 'steam',
    displayName: 'Steam',
    canonicalIdentity: 'steam',
    role: 'YIELD_ONLY',
    nutritionBasis: 'AS_SERVED',
    preparationCodes: ['UNKNOWN'],
  });

  const result = await resolver.resolve([
    scenario('scenario-water', [ingredient(), water, unsupportedYield]),
  ]);

  assert.equal(fixture.calls.length, 2);
  assert.equal(result.leaves.length, 3, 'every ingredient leaf has an explicit resolution');
  const waterResult = result.leaves.find((item) => item.leafId === 'water');
  assert.equal(waterResult?.reference?.source, 'BUILTIN_PHYSICAL_INVARIANT');
  assert.equal(waterResult?.reference?.verifiedZero, true);
  const unsupportedResult = result.leaves.find((item) => item.leafId === 'steam');
  assert.equal(unsupportedResult?.reference, null);
  assert.deepEqual(unsupportedResult?.rejectionReasons, ['UNSUPPORTED_YIELD_ONLY']);
});
