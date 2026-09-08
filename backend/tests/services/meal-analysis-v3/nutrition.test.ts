import assert from 'node:assert/strict';
import test from 'node:test';
import {
  clearLocalUsdaNutritionCache,
  createLocalUsdaNutritionResolver,
  NutritionResolutionInfrastructureError,
  type NutritionDatabaseQuery,
} from '../../../src/services/meal-analysis-v3/nutrition.js';
import type {
  IngredientLeaf,
  RecipeScenario,
} from '../../../src/services/meal-analysis-v3/domain.js';
import { UsdaQueryQueueError } from '../../../src/services/infrastructure/usdaQueryLimiter.js';

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
    retrievalIntent: 'GENERIC_INGREDIENT',
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
    effectivePortion: { kind: 'FINISHED_MASS', consumedGrams: 100 },
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

test('uses an alias as a sole identity authorizer while querying canonical identity first', async () => {
  const fixture = queryFixture([readyDataset], [candidate({
    fdc_id: 'alias-only',
    description: 'Squash, cooked, boiled',
    normalized_name: 'squash',
  })]);
  const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });
  const result = await resolver.resolve([scenario('scenario-alias-only', [ingredient({
    canonicalIdentity: 'pumpkin',
    lookupAliases: ['squash'],
  })])]);

  assert.deepEqual(fixture.calls[1]?.params, [['pumpkin', 'squash'], 30, false, null, true, false]);
  assert.equal(result.leaves[0]?.reference?.sourceRecordId, 'alias-only');
  assert.equal(result.leaves[0]?.candidates[0]?.identityTier, 'ALIAS_EXACT');
});

test('uses FTS stemmed identity only when the feature is enabled', async () => {
  const tomato = ingredient({
    canonicalIdentity: 'tomato',
    displayName: 'Tomato',
    nutritionBasis: 'AS_SERVED',
    preparationCodes: ['UNKNOWN'],
  });
  const tomatoRow = candidate({
    fdc_id: 'tomatoes-raw',
    description: 'Tomatoes, raw',
    normalized_name: 'tomatoes raw',
    identity_similarity: 0.4,
    full_text_rank: 0.2,
    stemmed_identity_match: true,
  });

  const disabledFixture = queryFixture([readyDataset], [tomatoRow]);
  const disabled = createLocalUsdaNutritionResolver({
    query: disabledFixture.query,
    fullTextEnabled: false,
  });
  const disabledResult = await disabled.resolve([scenario('tomato-disabled', [tomato])]);
  // With FTS disabled the stemmed identity tier never applies; the plural
  // bridge comes from the fuzzy fallback's regular-plural folding instead.
  assert.equal(disabledResult.leaves[0]?.reference?.sourceRecordId, 'tomatoes-raw');
  assert.equal(disabledResult.leaves[0]?.candidates[0]?.identityTier, null);
  assert.deepEqual(disabledFixture.calls[1]?.params, [['tomato'], 30, false, null, false, false]);

  const enabledFixture = queryFixture([readyDataset], [tomatoRow]);
  const enabled = createLocalUsdaNutritionResolver({
    query: enabledFixture.query,
    fullTextEnabled: true,
  });
  const enabledResult = await enabled.resolve([scenario('tomato-enabled', [tomato])]);
  assert.equal(enabledResult.leaves[0]?.reference?.sourceRecordId, 'tomatoes-raw');
  assert.equal(enabledResult.leaves[0]?.candidates[0]?.identityTier, 'STEMMED_TOKEN_SET');
  assert.equal(enabledResult.leaves[0]?.candidates[0]?.fullTextRank, 0.2);
  assert.deepEqual(enabledFixture.calls[1]?.params, [['tomato'], 30, false, null, true, false]);
  assert.match(enabledFixture.calls[1]?.text, /plainto_tsquery\('english', input\.term\)/);
  assert.match(enabledFixture.calls[1]?.text, /stemmed_identity_match/);
});

test('FTS stemmed identity does not authorize a different food', async () => {
  const fixture = queryFixture([readyDataset], [candidate({
    description: 'Peanut, raw',
    normalized_name: 'peanut raw',
    identity_similarity: 0.99,
    full_text_rank: 0.8,
    stemmed_identity_match: false,
  })]);
  const resolver = createLocalUsdaNutritionResolver({
    query: fixture.query,
    fullTextEnabled: true,
  });
  const pea = ingredient({
    canonicalIdentity: 'pea',
    displayName: 'Pea',
    nutritionBasis: 'AS_SERVED',
    preparationCodes: ['UNKNOWN'],
  });

  const result = await resolver.resolve([scenario('pea', [pea])]);

  assert.deepEqual(result.leaves[0]?.rejectionReasons, ['IDENTITY_MISMATCH']);
});

test('FTS stemmed identity still requires complete nutrients', async () => {
  const fixture = queryFixture([readyDataset], [candidate({
    description: 'Tomatoes, raw',
    normalized_name: 'tomatoes raw',
    stemmed_identity_match: true,
    protein_present: false,
  })]);
  const resolver = createLocalUsdaNutritionResolver({
    query: fixture.query,
    fullTextEnabled: true,
  });
  const tomato = ingredient({
    canonicalIdentity: 'tomato',
    displayName: 'Tomato',
    nutritionBasis: 'AS_SERVED',
    preparationCodes: ['UNKNOWN'],
  });

  const result = await resolver.resolve([scenario('tomato-missing-protein', [tomato])]);

  assert.equal(result.leaves[0]?.reference, null);
  assert.deepEqual(result.leaves[0]?.rejectionReasons, ['MISSING_REQUIRED_NUTRIENT']);
});

test('FTS stemmed identity breaks a preparation tie with unique trigram similarity', async () => {
  const fixture = queryFixture([readyDataset], [
    candidate({
      fdc_id: 'onion-raw',
      description: 'Onions, raw',
      normalized_name: 'onions raw',
      stemmed_identity_match: true,
      identity_similarity: 0.41666666,
    }),
    candidate({
      fdc_id: 'onion-cooked',
      description: 'Onions, cooked, boiled, drained, without salt',
      normalized_name: 'onions cooked boiled drained without salt',
      stemmed_identity_match: true,
      identity_similarity: 0.12195122,
      kcal_per_100g: 44,
      protein_per_100g: 1.36,
      carbs_per_100g: 10.15,
      fat_per_100g: 0.19,
      fiber_per_100g: 1.4,
    }),
  ]);
  const resolver = createLocalUsdaNutritionResolver({
    query: fixture.query,
    fullTextEnabled: true,
  });
  const onion = ingredient({
    canonicalIdentity: 'onion',
    displayName: 'Onion',
    nutritionBasis: 'AS_SERVED',
    preparationCodes: ['UNKNOWN'],
  });

  const result = await resolver.resolve([scenario('onion', [onion])]);

  assert.equal(result.leaves[0]?.reference?.sourceRecordId, 'onion-raw');
  assert.deepEqual(result.leaves[0]?.rejectionReasons, []);
  assert.equal(result.leaves[0]?.candidates[1]?.rejectionReasons.includes('LOWER_MATCH_TIER'), true);
});

test('temporarily resolves equally ranked candidates by similarity', async () => {
  const fixture = queryFixture([readyDataset], [
    candidate({ fdc_id: '100', identity_similarity: 0.8 }),
    candidate({ fdc_id: '200', identity_similarity: 0.9, kcal_per_100g: 80 }),
  ]);
  const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });

  const result = await resolver.resolve([scenario('scenario-1', [ingredient()])]);

  assert.equal(result.leaves[0]?.reference?.sourceRecordId, '200');
  assert.deepEqual(result.leaves[0]?.rejectionReasons, []);
  assert.equal(result.leaves[0]?.candidates[1]?.rejectionReasons.includes('LOWER_MATCH_TIER'), true);
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
  assert.ok(candidateCall.text.includes('food.data_type IN'));
  assert.deepEqual(candidateCall.params, [['pumpkin'], 30, false, null, true, false]);
  assert.deepEqual(
    result.leaves.map((item) => [item.reference?.scenarioId, item.reference?.leafId]),
    [['scenario-a', 'pumpkin-a'], ['scenario-b', 'pumpkin-b']]
  );
});

test('branded retrieval is cohort-restricted while ambiguous intent uses generic rows', async () => {
  const brandedFixture = queryFixture([readyDataset], [candidate({ data_type: 'branded_food' })]);
  const brandedResolver = createLocalUsdaNutritionResolver({ query: brandedFixture.query });
  const branded = await brandedResolver.resolve([scenario('branded', [ingredient({
    retrievalIntent: 'BRANDED_PRODUCT',
    productQuery: 'pumpkin',
  })])]);
  assert.equal(branded.leaves[0]?.reference?.sourceRecordId, '168448');
  assert.ok(brandedFixture.calls[1]?.text.includes('product_match_rank'));
  assert.deepEqual(brandedFixture.calls[1]?.params, [['pumpkin'], 30, true, 'pumpkin', true, false]);

  const ambiguousFixture = queryFixture([readyDataset], [candidate()]);
  const ambiguousResolver = createLocalUsdaNutritionResolver({ query: ambiguousFixture.query });
  const ambiguous = await ambiguousResolver.resolve([scenario('ambiguous', [ingredient({
    retrievalIntent: 'AMBIGUOUS',
  })])]);
  assert.equal(ambiguousFixture.calls.length, 2);
  assert.equal(ambiguous.leaves[0]?.reference?.sourceRecordId, '168448');
  assert.deepEqual(ambiguousFixture.calls[1]?.params, [['pumpkin'], 30, false, null, true, false]);
});

test('retries an unmatched branded lookup with its generic alias', async () => {
  const calls: Array<{ text: string; params?: unknown[] }> = [];
  const query: NutritionDatabaseQuery = async (text, params) => {
    calls.push({ text, params });
    if (calls.length === 1) return { rows: [readyDataset] };
    return { rows: params?.[2] === true ? [] : [candidate({
      fdc_id: 'generic-cola',
      description: 'Carbonated beverage, cola',
      normalized_name: 'cola',
      data_type: 'foundation_food',
    })] };
  };
  const resolver = createLocalUsdaNutritionResolver({ query });
  const result = await resolver.resolve([scenario('pepsi-fallback', [ingredient({
    canonicalIdentity: 'pepsi cola',
    lookupAliases: ['cola'],
    retrievalIntent: 'BRANDED_PRODUCT',
    productQuery: 'pepsi cola',
    nutritionBasis: 'AS_SERVED',
    preparationCodes: ['UNKNOWN'],
  })])]);

  assert.equal(result.leaves[0]?.reference?.sourceRecordId, 'generic-cola');
  assert.deepEqual(calls[1]?.params, [['pepsi cola', 'cola'], 30, true, 'pepsi cola', true, false]);
  assert.deepEqual(calls[2]?.params, [['cola'], 30, false, null, true, false]);
});

test('resolves generic spices from the migration-seeded local fallback', async () => {
  const calls: Array<{ text: string; params?: unknown[] }> = [];
  const query: NutritionDatabaseQuery = async (text, params) => {
    calls.push({ text, params });
    if (calls.length === 1) return { rows: [readyDataset] };
    if (params?.[5] !== true) return { rows: [] };
    return { rows: [candidate({
      fdc_id: '-1000001',
      description: 'Spices, unspecified (curry-powder profile)',
      data_type: 'local_fallback',
      normalized_name: 'spices',
      kcal_per_100g: 325,
      protein_per_100g: 14.29,
      carbs_per_100g: 55.83,
      fat_per_100g: 14.01,
      fiber_per_100g: 53.2,
      identity_similarity: 1,
    })] };
  };
  const resolver = createLocalUsdaNutritionResolver({ query });
  const result = await resolver.resolve([scenario('spices', [ingredient({
    canonicalIdentity: 'spices',
    displayName: 'Spices',
    nutritionBasis: 'AS_SERVED',
    preparationCodes: ['UNKNOWN'],
  })])]);

  assert.equal(result.leaves[0]?.reference?.sourceRecordId, '-1000001');
  assert.equal(calls.length, 4);
  assert.deepEqual(calls[3]?.params, [['spices'], 30, false, null, true, true]);
  assert.ok(calls[3]?.text.includes('usda_resolver_fallback_foods'));
  assert.ok(calls[3]?.text.includes("'local_fallback'"));
});

test('resolves named spice blends from the local fallback via the head noun', async () => {
  const calls: Array<{ text: string; params?: unknown[] }> = [];
  const query: NutritionDatabaseQuery = async (text, params) => {
    calls.push({ text, params });
    if (calls.length === 1) return { rows: [readyDataset] };
    if (params?.[5] !== true) return { rows: [] };
    return { rows: [candidate({
      fdc_id: '-1000001',
      description: 'Spices, unspecified (curry-powder profile)',
      data_type: 'local_fallback',
      normalized_name: 'spices',
      kcal_per_100g: 325,
      protein_per_100g: 14.29,
      carbs_per_100g: 55.83,
      fat_per_100g: 14.01,
      fiber_per_100g: 53.2,
      identity_similarity: 1,
    })] };
  };
  const resolver = createLocalUsdaNutritionResolver({ query });
  const result = await resolver.resolve([scenario('sambar-powder', [ingredient({
    canonicalIdentity: 'spices, sambar powder',
    lookupAliases: ['sambar powder'],
    nutritionBasis: 'AS_SERVED',
    preparationCodes: ['UNKNOWN'],
  })])]);

  assert.equal(result.leaves[0]?.reference?.sourceRecordId, '-1000001');
  assert.equal(calls.length, 4);
  assert.deepEqual(calls[3]?.params, [['spices'], 30, false, null, true, true]);
  assert.ok(calls[3]?.text.includes('usda_resolver_fallback_foods'));
});

test('matches a USDA row through its parenthetical synonym', async () => {
  const calls: Array<{ text: string; params?: unknown[] }> = [];
  const query: NutritionDatabaseQuery = async (text, params) => {
    calls.push({ text, params });
    if (calls.length === 1) return { rows: [readyDataset] };
    if (calls.length === 2) {
      return { rows: [candidate({
        fdc_id: '169233',
        description: 'Gourd, white-flowered (calabash), cooked, boiled, drained, without salt',
        normalized_name: 'gourd whiteflowered calabash cooked boiled drained without salt',
        data_type: 'sr_legacy_food',
        identity_similarity: 0.15,
      })] };
    }
    return { rows: [] };
  };
  const resolver = createLocalUsdaNutritionResolver({ query });
  const result = await resolver.resolve([scenario('bottle-gourd', [ingredient({
    displayName: 'Bottle gourd',
    canonicalIdentity: 'bottle gourd, cooked',
    lookupAliases: ['lauki', 'calabash'],
    nutritionBasis: 'COOKED',
    preparationCodes: ['COOKED_UNKNOWN'],
  })])]);

  assert.equal(result.leaves[0]?.reference?.sourceRecordId, '169233');
});

test('matches a USDA row through its head noun and parenthetical', async () => {
  const calls: Array<{ text: string; params?: unknown[] }> = [];
  const query: NutritionDatabaseQuery = async (text, params) => {
    calls.push({ text, params });
    if (calls.length === 1) return { rows: [readyDataset] };
    if (calls.length === 2) {
      return { rows: [candidate({
        fdc_id: '2705388',
        description: 'Milk, fat free (skim)',
        normalized_name: 'milk fat free skim',
        data_type: 'survey_fndds_food',
        identity_similarity: 0.56,
      })] };
    }
    return { rows: [] };
  };
  const resolver = createLocalUsdaNutritionResolver({ query });
  const result = await resolver.resolve([scenario('skim-milk', [ingredient({
    displayName: 'Milk',
    canonicalIdentity: 'milk, skim',
    lookupAliases: ['nonfat milk'],
    nutritionBasis: 'AS_SERVED',
    preparationCodes: ['UNKNOWN'],
  })])]);

  assert.equal(result.leaves[0]?.reference?.sourceRecordId, '2705388');
});

test('matches a USDA row with its parenthetical removed', async () => {
  const calls: Array<{ text: string; params?: unknown[] }> = [];
  const query: NutritionDatabaseQuery = async (text, params) => {
    calls.push({ text, params });
    if (calls.length === 1) return { rows: [readyDataset] };
    if (calls.length === 2) {
      return { rows: [candidate({
        fdc_id: '173799',
        description: 'Chickpeas (garbanzo beans, bengal gram), mature seeds, cooked, boiled, with salt',
        normalized_name: 'chickpeas garbanzo beans bengal gram mature seeds cooked boiled with salt',
        data_type: 'sr_legacy_food',
        identity_similarity: 0.43,
      })] };
    }
    return { rows: [] };
  };
  const resolver = createLocalUsdaNutritionResolver({ query });
  const result = await resolver.resolve([scenario('chickpeas', [ingredient({
    displayName: 'Chickpeas',
    canonicalIdentity: 'chickpeas, mature seeds, cooked',
    lookupAliases: [],
    nutritionBasis: 'COOKED',
    preparationCodes: ['COOKED_UNKNOWN'],
  })])]);

  assert.equal(result.leaves[0]?.reference?.sourceRecordId, '173799');
});

test('scores a parenthetical variant match against the variant, not the full description', async () => {
  const calls: Array<{ text: string; params?: unknown[] }> = [];
  const query: NutritionDatabaseQuery = async (text, params) => {
    calls.push({ text, params });
    if (calls.length === 1) return { rows: [readyDataset] };
    if (calls.length === 2) {
      return { rows: [candidate({
        fdc_id: '168893',
        description: "Wheat flour, whole-grain (Includes foods for USDA's Food Distribution Program)",
        normalized_name: "wheat flour wholegrain includes foods for usdas food distribution program",
        data_type: 'sr_legacy_food',
        // pg_trgm similarity against the full description, parenthetical
        // included, as observed in production for this exact row.
        identity_similarity: 0.33333334,
      })] };
    }
    return { rows: [] };
  };
  const resolver = createLocalUsdaNutritionResolver({ query });
  const result = await resolver.resolve([scenario('whole-wheat-flour', [ingredient({
    displayName: 'Whole wheat flour',
    canonicalIdentity: 'flour, whole-wheat',
    lookupAliases: ['flour, wheat, whole-grain', 'atta'],
    nutritionBasis: 'DRY',
    preparationCodes: ['UNKNOWN'],
  })])]);

  assert.equal(result.leaves[0]?.reference?.sourceRecordId, '168893');
});

test('retries an unresolved generic leaf with its USDA NFS form', async () => {
  const calls: Array<{ text: string; params?: unknown[] }> = [];
  const query: NutritionDatabaseQuery = async (text, params) => {
    calls.push({ text, params });
    if (calls.length === 1) return { rows: [readyDataset] };
    if (params?.[0] instanceof Array && params[0][0] === 'cooked lentils') {
      return { rows: [candidate({
        description: 'Lentils, sprouted, cooked',
        normalized_name: 'lentils sprouted cooked',
        identity_similarity: 0.4,
      })] };
    }
    return { rows: [candidate({
      fdc_id: 'lentils-nfs',
      description: 'Lentils, NFS',
      normalized_name: 'lentils nfs',
      identity_similarity: 1,
    })] };
  };
  const resolver = createLocalUsdaNutritionResolver({ query });
  const result = await resolver.resolve([scenario('lentils-nfs', [ingredient({
    canonicalIdentity: 'cooked lentils',
    displayName: 'Cooked lentils',
    nutritionBasis: 'COOKED',
    preparationCodes: ['COOKED_UNKNOWN'],
  })])]);

  assert.equal(result.leaves[0]?.reference?.sourceRecordId, 'lentils-nfs');
  assert.deepEqual(calls[1]?.params, [['cooked lentils'], 30, false, null, true, false]);
  assert.deepEqual(calls[2]?.params, [['lentils nfs'], 30, false, null, true, false]);
});

test('does not use NFS to override an explicit nutrition basis', async () => {
  const fixture = queryFixture([readyDataset], []);
  const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });
  const result = await resolver.resolve([scenario('raw-lentils', [ingredient({
    canonicalIdentity: 'raw lentils',
    nutritionBasis: 'RAW',
    preparationCodes: ['RAW'],
  })])]);

  assert.equal(result.leaves[0]?.reference, null);
  assert.equal(fixture.calls.length, 2);
});

test('does not use NFS after a preparation mismatch', async () => {
  const fixture = queryFixture([readyDataset], [candidate({
    description: 'Lentils',
    normalized_name: 'lentils',
  })]);
  const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });
  const result = await resolver.resolve([scenario('lentils-preparation', [ingredient({
    canonicalIdentity: 'lentils',
    nutritionBasis: 'COOKED',
    preparationCodes: ['COOKED_UNKNOWN'],
  })])]);

  assert.deepEqual(result.leaves[0]?.rejectionReasons, ['PREPARATION_MISMATCH']);
  assert.equal(fixture.calls.length, 2);
});

test('does not use NFS after the temporary primary conflict fallback selects a row', async () => {
  const calls: Array<{ text: string; params?: unknown[] }> = [];
  const query: NutritionDatabaseQuery = async (text, params) => {
    calls.push({ text, params });
    if (calls.length === 1) return { rows: [readyDataset] };
    if (params?.[0] instanceof Array && params[0][0] === 'lentils') {
      return { rows: [
        candidate({ fdc_id: 'lentils-a', description: 'Lentils', normalized_name: 'lentils' }),
        candidate({
          fdc_id: 'lentils-b',
          description: 'Lentils',
          normalized_name: 'lentils',
          kcal_per_100g: 250,
        }),
      ] };
    }
    return { rows: [candidate({
      fdc_id: 'lentils-nfs',
      description: 'Lentils, NFS',
      normalized_name: 'lentils nfs',
      identity_similarity: 1,
    })] };
  };
  const resolver = createLocalUsdaNutritionResolver({ query });
  const result = await resolver.resolve([scenario('lentils-ambiguous', [ingredient({
    canonicalIdentity: 'lentils',
    nutritionBasis: 'AS_SERVED',
    preparationCodes: ['UNKNOWN'],
  })])]);

  assert.equal(result.leaves[0]?.reference?.sourceRecordId, 'lentils-a');
  assert.equal(calls.length, 2);
});

test('does not use NFS for a branded request', async () => {
  const fixture = queryFixture([readyDataset], []);
  const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });
  await resolver.resolve([scenario('branded-lentils', [ingredient({
    canonicalIdentity: 'lentils',
    retrievalIntent: 'BRANDED_PRODUCT',
    productQuery: 'lentils',
    nutritionBasis: 'AS_SERVED',
    preparationCodes: ['UNKNOWN'],
  })])]);

  assert.equal(fixture.calls.length, 3);
  assert.deepEqual(fixture.calls[2]?.params, [['lentils'], 30, false, null, true, false]);
});

test('temporary release collision fallback uses similarity then numeric FDC ID', async (t) => {
  await t.test('equal scores choose the numerically lowest FDC ID', async () => {
    const fixture = queryFixture([readyDataset], [
      candidate({ fdc_id: '20', normalized_name: 'pumpkin', kcal_per_100g: 80 }),
      candidate({ fdc_id: '3', normalized_name: 'pumpkin' }),
    ]);
    const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });
    const result = await resolver.resolve([scenario('exact-equal', [ingredient()])]);

    assert.equal(result.leaves[0]?.reference?.sourceRecordId, '3');
    assert.equal(result.leaves[0]?.candidates.some((item) =>
      item.rejectionReasons.includes('AMBIGUOUS_MATCH')
    ), false);
  });

  await t.test('a closer score wins even when its FDC ID and calories are higher', async () => {
    const fixture = queryFixture([readyDataset], [
      candidate({ fdc_id: '100', normalized_name: 'pumpkin', identity_similarity: 0.8 }),
      candidate({
        fdc_id: '200',
        normalized_name: 'pumpkin',
        identity_similarity: 0.9,
        kcal_per_100g: 80,
      }),
    ]);
    const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });
    const result = await resolver.resolve([scenario('score-wins', [ingredient()])]);

    assert.equal(result.leaves[0]?.reference?.sourceRecordId, '200');
  });
});

test('rejects a fuzzy identity match below the temporary 0.3 threshold', async () => {
  const fixture = queryFixture([readyDataset], [candidate({
    normalized_name: 'pumpkin cooked',
    description: 'Pumpkin, cooked',
    identity_similarity: 0.29,
  })]);
  const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });
  const result = await resolver.resolve([scenario('weak-fuzzy', [ingredient({
    canonicalIdentity: 'pumpkin cooked boiled',
    nutritionBasis: 'COOKED',
  })])]);

  assert.deepEqual(result.leaves[0]?.rejectionReasons, ['LOW_CONFIDENCE_MATCH']);
});

test('uses fuzzy fallback at the temporary 0.3 threshold when no hard identity matches', async () => {
  const fixture = queryFixture([readyDataset], [
    candidate({
      fdc_id: 'whole-wheat',
      normalized_name: 'wheat flour whole grain soft wheat',
      description: 'Wheat flour, whole-grain, soft wheat',
      identity_similarity: 0.3,
    }),
    candidate({
      fdc_id: 'oat-flour',
      normalized_name: 'flour oat whole grain',
      description: 'Flour, oat, whole grain',
      identity_similarity: 0.76,
    }),
  ]);
  const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });
  const result = await resolver.resolve([scenario('fuzzy-flour', [ingredient({
    canonicalIdentity: 'whole wheat flour',
    lookupAliases: ['whole grain wheat flour'],
    nutritionBasis: 'DRY',
    preparationCodes: ['UNKNOWN'],
  })])]);

  assert.equal(result.leaves[0]?.reference?.sourceRecordId, 'whole-wheat');
  assert.equal(result.leaves[0]?.candidates[0]?.identityTier, null);
  assert.deepEqual(result.leaves[0]?.candidates[0]?.rejectionReasons, []);
});

test('resolves the staging split-peas case above the temporary 0.3 threshold', async () => {
  const fixture = queryFixture([readyDataset], [
    candidate({
      fdc_id: '172420',
      normalized_name: 'peas split mature seeds cooked boiled without salt',
      description: 'Peas, split, mature seeds, cooked, boiled, without salt',
      identity_similarity: 0.4,
    }),
    candidate({
      fdc_id: '169745',
      normalized_name: 'spelt cooked',
      description: 'Spelt, cooked',
      identity_similarity: 0.409,
    }),
  ]);
  const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });
  const result = await resolver.resolve([scenario('split-peas', [ingredient({
    canonicalIdentity: 'split peas',
    displayName: 'Split peas',
    nutritionBasis: 'COOKED',
    preparationCodes: ['COOKED_UNKNOWN'],
  })])]);

  assert.equal(result.leaves[0]?.reference?.sourceRecordId, '172420');
  assert.deepEqual(result.leaves[0]?.rejectionReasons, []);
});

test('temporarily accepts the closest compatible fuzzy food at or above 0.4', async () => {
  const fixture = queryFixture([readyDataset], [
    candidate({
      fdc_id: 'ginger-tea',
      normalized_name: 'tea ginger',
      description: 'Tea, ginger',
      identity_similarity: 0.64,
    }),
    candidate({
      fdc_id: 'ginger-root',
      normalized_name: 'ginger root raw',
      description: 'Ginger root, raw',
      identity_similarity: 0.47,
    }),
  ]);
  const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });
  const result = await resolver.resolve([scenario('unsafe-ginger', [ingredient({
    canonicalIdentity: 'ginger',
    nutritionBasis: 'AS_SERVED',
    preparationCodes: ['UNKNOWN'],
  })])]);

  assert.equal(result.leaves[0]?.reference?.sourceRecordId, 'ginger-root');
  assert.deepEqual(result.leaves[0]?.rejectionReasons, []);
});

test('expanded fuzzy qualifiers accept USDA descriptor-qualified names', async (t) => {
  await t.test('egg resolves the Grade A whole-egg row through plural folding', async () => {
    const fixture = queryFixture([readyDataset], [candidate({
      fdc_id: '748967',
      description: 'Eggs, Grade A, Large, egg whole',
      normalized_name: 'eggs grade a large egg whole',
      identity_similarity: 0.42,
    })]);
    const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });
    const result = await resolver.resolve([scenario('fuzzy-egg', [ingredient({
      canonicalIdentity: 'egg',
      nutritionBasis: 'AS_SERVED',
      preparationCodes: ['UNKNOWN'],
    })])]);

    assert.equal(result.leaves[0]?.reference?.sourceRecordId, '748967');
    assert.deepEqual(result.leaves[0]?.rejectionReasons, []);
  });

  await t.test('brown rice resolves the long-grain row', async () => {
    const fixture = queryFixture([readyDataset], [candidate({
      fdc_id: '20089',
      description: 'Rice, brown, long-grain, raw',
      normalized_name: 'rice brown long grain',
      identity_similarity: 0.55,
    })]);
    const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });
    const result = await resolver.resolve([scenario('fuzzy-brown-rice', [ingredient({
      canonicalIdentity: 'brown rice',
      nutritionBasis: 'AS_SERVED',
      preparationCodes: ['UNKNOWN'],
    })])]);

    assert.equal(result.leaves[0]?.reference?.sourceRecordId, '20089');
    assert.deepEqual(result.leaves[0]?.rejectionReasons, []);
  });

  await t.test('chicken resolves a cut row such as breast, meat only, skinless, boneless', async () => {
    const fixture = queryFixture([readyDataset], [candidate({
      fdc_id: '9294',
      description: 'Chicken, breast, meat only, skinless, boneless',
      normalized_name: 'chicken breast meat only skinless boneless',
      identity_similarity: 0.45,
    })]);
    const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });
    const result = await resolver.resolve([scenario('fuzzy-chicken', [ingredient({
      canonicalIdentity: 'chicken',
      nutritionBasis: 'AS_SERVED',
      preparationCodes: ['UNKNOWN'],
    })])]);

    assert.equal(result.leaves[0]?.reference?.sourceRecordId, '9294');
    assert.deepEqual(result.leaves[0]?.rejectionReasons, []);
  });
});

test('expanded fuzzy qualifiers never bridge into another food', async (t) => {
  await t.test('milk never resolves milk chocolate', async () => {
    const fixture = queryFixture([readyDataset], [candidate({
      fdc_id: '19095',
      description: 'Milk chocolate',
      normalized_name: 'milk chocolate',
      identity_similarity: 0.9,
    })]);
    const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });
    const result = await resolver.resolve([scenario('unsafe-milk', [ingredient({
      canonicalIdentity: 'milk',
      nutritionBasis: 'AS_SERVED',
      preparationCodes: ['UNKNOWN'],
    })])]);

    assert.equal(result.leaves[0]?.reference, null);
    assert.deepEqual(result.leaves[0]?.rejectionReasons, ['IDENTITY_MISMATCH']);
  });

  await t.test('chicken never resolves chicken fat', async () => {
    const fixture = queryFixture([readyDataset], [candidate({
      fdc_id: '173564',
      description: 'Fat, chicken',
      normalized_name: 'fat chicken',
      identity_similarity: 0.65,
    })]);
    const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });
    const result = await resolver.resolve([scenario('unsafe-chicken-fat', [ingredient({
      canonicalIdentity: 'chicken',
      nutritionBasis: 'AS_SERVED',
      preparationCodes: ['UNKNOWN'],
    })])]);

    assert.equal(result.leaves[0]?.reference, null);
    assert.deepEqual(result.leaves[0]?.rejectionReasons, ['IDENTITY_MISMATCH']);
  });

  await t.test('coconut never resolves coconut oil', async () => {
    const fixture = queryFixture([readyDataset], [candidate({
      fdc_id: '2710182',
      description: 'Coconut oil',
      normalized_name: 'coconut oil',
      identity_similarity: 0.95,
    })]);
    const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });
    const result = await resolver.resolve([scenario('unsafe-coconut', [ingredient({
      canonicalIdentity: 'coconut',
      nutritionBasis: 'AS_SERVED',
      preparationCodes: ['UNKNOWN'],
    })])]);

    assert.equal(result.leaves[0]?.reference, null);
    assert.deepEqual(result.leaves[0]?.rejectionReasons, ['IDENTITY_MISMATCH']);
  });

  await t.test('pea never resolves peanut even with plural folding', async () => {
    const fixture = queryFixture([readyDataset], [candidate({
      fdc_id: '16087',
      description: 'Peanuts, all types, raw',
      normalized_name: 'peanuts',
      identity_similarity: 0.75,
    })]);
    const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });
    const result = await resolver.resolve([scenario('unsafe-pea', [ingredient({
      canonicalIdentity: 'pea',
      lookupAliases: ['peas'],
      nutritionBasis: 'AS_SERVED',
      preparationCodes: ['UNKNOWN'],
    })])]);

    assert.equal(result.leaves[0]?.reference, null);
    assert.deepEqual(result.leaves[0]?.rejectionReasons, ['IDENTITY_MISMATCH']);
  });
});

test('filters generic candidates to trusted food rows before applying the limit', async () => {
  const fixture = queryFixture([readyDataset], [candidate()]);
  const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });
  await resolver.resolve([scenario('trusted-cohort', [ingredient()])]);

  const sql = fixture.calls[1]?.text ?? '';
  assert.match(sql, /food\.data_type IN \(/);
  assert.match(sql, /'survey_fndds_food'/);
  assert.match(sql, /'sr_legacy_food'/);
  assert.match(sql, /'foundation_food'/);
});

test('a branded product query authorizes an exact normalized product phrase after canonical identity checks', async () => {
  const fixture = queryFixture([readyDataset], [candidate({
    data_type: 'branded_food',
    description: 'PEPSI, COLA',
    normalized_name: 'pepsi cola',
  })]);
  const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });
  const result = await resolver.resolve([scenario('pepsi', [ingredient({
    canonicalIdentity: 'pepsi cola soft drink',
    retrievalIntent: 'BRANDED_PRODUCT',
    productQuery: 'pepsi cola',
    nutritionBasis: 'AS_SERVED',
    preparationCodes: ['UNKNOWN'],
  })])]);

  assert.equal(result.leaves[0]?.reference?.sourceRecordId, '168448');
  assert.deepEqual(result.leaves[0]?.rejectionReasons, []);
  assert.equal(result.leaves[0]?.candidates[0]?.identityTier, 'PRODUCT_QUERY_PHRASE');
});

test('branded product phrase authorization rejects fuzzy near-misses and ranks below canonical identity', async () => {
  const fixture = queryFixture([readyDataset], [
    candidate({
      fdc_id: 'pepsi-cola',
      data_type: 'branded_food',
      description: 'PEPSI, COLA',
      normalized_name: 'pepsi cola',
    }),
    candidate({
      fdc_id: 'diet-pepsi',
      data_type: 'branded_food',
      description: 'DIET PEPSI',
      normalized_name: 'diet pepsi',
    }),
    candidate({
      fdc_id: 'pepper',
      data_type: 'branded_food',
      description: 'PEPPER',
      normalized_name: 'pepper',
    }),
  ]);
  const resolver = createLocalUsdaNutritionResolver({ query: fixture.query });
  const result = await resolver.resolve([scenario('pepsi', [ingredient({
    canonicalIdentity: 'pepsi cola',
    retrievalIntent: 'BRANDED_PRODUCT',
    productQuery: 'pepsi',
    nutritionBasis: 'AS_SERVED',
    preparationCodes: ['UNKNOWN'],
  })])]);

  assert.equal(result.leaves[0]?.reference?.sourceRecordId, 'pepsi-cola');
  assert.equal(result.leaves[0]?.candidates.find((item) => item.sourceRecordId === 'diet-pepsi')?.identityTier, 'PRODUCT_QUERY_PHRASE');
  assert.equal(result.leaves[0]?.candidates.find((item) => item.sourceRecordId === 'pepper')?.identityTier, null);
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

test('retries one transient lookup failure and preserves a successful result', async () => {
  let candidateAttempts = 0;
  const query: NutritionDatabaseQuery = async (_text, params) => {
    if (params === undefined) return { rows: [readyDataset] };
    candidateAttempts += 1;
    if (candidateAttempts === 1) throw Object.assign(new Error('redacted'), { code: 'ECONNRESET' });
    return { rows: [candidate()] };
  };
  const resolver = createLocalUsdaNutritionResolver({
    query,
    retryDelayMs: () => 0,
  });

  const result = await resolver.resolve([scenario('retry', [ingredient()])]);

  assert.equal(candidateAttempts, 2);
  assert.equal(result.leaves[0]?.reference?.sourceRecordId, '168448');
});

test('does not retry bounded USDA queue pressure', async () => {
  let candidateAttempts = 0;
  const query: NutritionDatabaseQuery = async (_text, params) => {
    if (params === undefined) return { rows: [readyDataset] };
    candidateAttempts += 1;
    throw new UsdaQueryQueueError('QUEUE_TIMEOUT', { active: 6, queued: 64 });
  };
  const resolver = createLocalUsdaNutritionResolver({ query, retryDelayMs: () => 0 });

  await assert.rejects(
    resolver.resolve([scenario('queue-pressure', [ingredient()])]),
    NutritionResolutionInfrastructureError,
  );
  assert.equal(candidateAttempts, 1);
});

test('waits for sibling lookups before surfacing an infrastructure failure', async () => {
  let carrotCompleted = false;
  const query: NutritionDatabaseQuery = async (_text, params) => {
    if (params === undefined) return { rows: [readyDataset] };
    const terms = params[0] as string[];
    if (terms.includes('pumpkin')) throw new Error('non-transient lookup failure');
    await new Promise((resolve) => setTimeout(resolve, 15));
    carrotCompleted = true;
    return { rows: [candidate({
      fdc_id: 'carrot',
      description: 'Carrots, cooked',
      normalized_name: 'carrot',
    })] };
  };
  const resolver = createLocalUsdaNutritionResolver({ query });

  await assert.rejects(
    resolver.resolve([scenario('settled', [
      ingredient({ leafId: 'pumpkin', canonicalIdentity: 'pumpkin' }),
      ingredient({ leafId: 'carrot', canonicalIdentity: 'carrot', displayName: 'Carrot' }),
    ])]),
    NutritionResolutionInfrastructureError,
  );
  assert.equal(carrotCompleted, true);
});

test('coalesces process cache lookups and never caches rejected work', async () => {
  clearLocalUsdaNutritionCache();
  let candidateAttempts = 0;
  let shouldFail = false;
  const query: NutritionDatabaseQuery = async (_text, params) => {
    if (params === undefined) return { rows: [readyDataset] };
    candidateAttempts += 1;
    await new Promise((resolve) => setTimeout(resolve, 5));
    if (shouldFail) throw Object.assign(new Error('redacted'), { code: 'ECONNRESET' });
    return { rows: [candidate()] };
  };
  const options = { query, useProcessCache: true, retryDelayMs: () => 0 };
  const first = createLocalUsdaNutritionResolver(options);
  const second = createLocalUsdaNutritionResolver(options);

  const [firstResult, secondResult] = await Promise.all([
    first.resolve([scenario('cache-a', [ingredient()])]),
    second.resolve([scenario('cache-b', [ingredient()])]),
  ]);
  assert.equal(candidateAttempts, 1);
  assert.equal(firstResult.leaves[0]?.reference?.sourceRecordId, '168448');
  assert.equal(secondResult.leaves[0]?.reference?.sourceRecordId, '168448');

  clearLocalUsdaNutritionCache();
  candidateAttempts = 0;
  shouldFail = true;
  await assert.rejects(
    first.resolve([scenario('cache-error', [ingredient()])]),
    NutritionResolutionInfrastructureError,
  );
  assert.equal(candidateAttempts, 2, 'one transient retry is attempted');
  shouldFail = false;
  const recovered = await second.resolve([scenario('cache-recovered', [ingredient()])]);
  assert.equal(candidateAttempts, 3, 'the rejected lookup was not cached');
  assert.equal(recovered.leaves[0]?.reference?.sourceRecordId, '168448');
  clearLocalUsdaNutritionCache();
});

test('keeps a transient retry inside the shared process-cache promise', async () => {
  clearLocalUsdaNutritionCache();
  let candidateAttempts = 0;
  const query: NutritionDatabaseQuery = async (_text, params) => {
    if (params === undefined) return { rows: [readyDataset] };
    candidateAttempts += 1;
    await new Promise((resolve) => setTimeout(resolve, 5));
    if (candidateAttempts === 1) {
      throw Object.assign(new Error('redacted'), { code: 'ECONNRESET' });
    }
    return { rows: [candidate()] };
  };
  const options = { query, useProcessCache: true, retryDelayMs: () => 5 };
  const first = createLocalUsdaNutritionResolver(options);
  const second = createLocalUsdaNutritionResolver(options);

  const results = await Promise.all([
    first.resolve([scenario('retry-cache-a', [ingredient()])]),
    second.resolve([scenario('retry-cache-b', [ingredient()])]),
  ]);

  assert.equal(candidateAttempts, 2, 'one initial query and one shared retry');
  assert.equal(results[0].leaves[0]?.reference?.sourceRecordId, '168448');
  assert.equal(results[1].leaves[0]?.reference?.sourceRecordId, '168448');
  clearLocalUsdaNutritionCache();
});

test('process cache refreshes recency and remains bounded to 256 entries', async () => {
  clearLocalUsdaNutritionCache();
  const candidateAttempts = new Map<string, number>();
  const query: NutritionDatabaseQuery = async (_text, params) => {
    if (params === undefined) return { rows: [readyDataset] };
    const key = (params[0] as string[])[0]!;
    candidateAttempts.set(key, (candidateAttempts.get(key) ?? 0) + 1);
    return { rows: [] };
  };
  const resolver = createLocalUsdaNutritionResolver({ query, useProcessCache: true });
  const resolveIdentity = (index: number) => resolver.resolve([
    scenario(`lru-${index}`, [ingredient({ canonicalIdentity: `item ${index}` })]),
  ]);

  for (let index = 0; index < 256; index += 1) await resolveIdentity(index);
  await resolveIdentity(0);
  await resolveIdentity(256);
  await resolveIdentity(0);
  await resolveIdentity(1);

  assert.equal(candidateAttempts.get('item 0'), 1, 'recently touched entry survives');
  assert.equal(candidateAttempts.get('item 1'), 2, 'least-recent entry is evicted');
  assert.equal(candidateAttempts.get('item 256'), 1);
  clearLocalUsdaNutritionCache();
});
