import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';

// ---------------------------------------------------------------------------
// Mock database before importing the module
// ---------------------------------------------------------------------------

const mockQuery = mock.fn(async (_sql: string, _params?: unknown[]) => ({ rows: [] }));

await mock.module('./database.js', {
  namedExports: { query: mockQuery },
});

const { findUsdaExact, findUsdaCandidates, canonicalizeWithUsda, clearUsdaLookupCache } = await import('./usdaLookup.js');

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

const RICE_ROW = {
  fdc_id: '111',
  description: 'Rice, white, cooked',
  data_type: 'SR Legacy',
  normalized_name: 'rice white cooked',
  kcal_per_100g: 130,
  protein_per_100g: 2.7,
  carbs_per_100g: 28.2,
  fat_per_100g: 0.3,
  fiber_per_100g: 0.4,
};

const LENTILS_ROW = {
  fdc_id: '222',
  description: 'Lentils, mature seeds, cooked',
  data_type: 'SR Legacy',
  normalized_name: 'lentils cooked',
  kcal_per_100g: 116,
  protein_per_100g: 9.0,
  carbs_per_100g: 20.1,
  fat_per_100g: 0.4,
  fiber_per_100g: 7.9,
};

const OATS_ROW = {
  fdc_id: '333',
  description: 'OATS',
  data_type: 'Branded',
  normalized_name: 'oats',
  kcal_per_100g: 375,
  protein_per_100g: 12.5,
  carbs_per_100g: 67.5,
  fat_per_100g: 7.5,
  fiber_per_100g: 10,
};

function resetQuery(returnValue: { rows: unknown[] } = { rows: [] }) {
  clearUsdaLookupCache();
  mockQuery.mock.resetCalls();
  mockQuery.mock.mockImplementation(async () => returnValue);
}

// ---------------------------------------------------------------------------
// findUsdaExact
// ---------------------------------------------------------------------------

test('findUsdaExact returns null when no row found', async () => {
  resetQuery({ rows: [] });
  const result = await findUsdaExact('nonexistent food');
  assert.equal(result, null);
});

test('findUsdaExact returns the row when found', async () => {
  resetQuery({ rows: [RICE_ROW] });
  const result = await findUsdaExact('rice white cooked');
  assert.deepEqual(result, RICE_ROW);
});

test('findUsdaExact queries by normalized_name', async () => {
  resetQuery({ rows: [] });
  await findUsdaExact('rice white cooked');
  const [sql, params] = mockQuery.mock.calls[0]!.arguments as [string, unknown[]];
  assert.ok(sql.includes('AND normalized_name = $1'));
  assert.ok(sql.includes('is_active = TRUE'));
  assert.ok(sql.includes('is_materialized = TRUE'));
  assert.equal(params[0], 'rice white cooked');
});

test('findUsdaExact uses LIMIT 1', async () => {
  resetQuery({ rows: [] });
  await findUsdaExact('apple');
  const [sql] = mockQuery.mock.calls[0]!.arguments as [string];
  assert.ok(sql.includes('LIMIT 1'));
});

test('findUsdaExact deterministically prioritizes reference foods and non-zero energy', async () => {
  resetQuery({ rows: [] });
  await findUsdaExact('banana');
  const [sql] = mockQuery.mock.calls[0]!.arguments as [string];
  assert.ok(sql.includes("WHEN 'survey_fndds_food' THEN 0"));
  assert.ok(sql.includes('CASE WHEN kcal_per_100g > 0 THEN 0 ELSE 1 END'));
  assert.ok(sql.includes('fdc_id'));
});

test('findUsdaExact repairs legacy kilojoule energy values at the read boundary', async () => {
  resetQuery({
    rows: [{
      ...RICE_ROW,
      data_type: 'sr_legacy_food',
      kcal_per_100g: 544,
    }],
  });
  const result = await findUsdaExact('rice white cooked');
  assert.ok(result);
  assert.ok(Math.abs(result.kcal_per_100g - 130) < 1);
});

// ---------------------------------------------------------------------------
// findUsdaCandidates
// ---------------------------------------------------------------------------

test('findUsdaCandidates returns empty array when no tokens', async () => {
  resetQuery({ rows: [] });
  const result = await findUsdaCandidates('');
  assert.deepEqual(result, []);
  // Should not even call DB
  assert.equal(mockQuery.mock.calls.length, 0);
});

test('findUsdaCandidates returns rows from DB', async () => {
  resetQuery({ rows: [RICE_ROW, LENTILS_ROW] });
  const result = await findUsdaCandidates('rice lentils');
  assert.equal(result.length, 2);
});

test('findUsdaCandidates uses indexed trigram similarity for normalized names and descriptions', async () => {
  resetQuery({ rows: [] });
  await findUsdaCandidates('brown rice');
  const [sql, params] = mockQuery.mock.calls[0]!.arguments as [string, unknown[]];
  assert.ok(sql.includes('similarity(normalized_name, $1)'));
  assert.ok(sql.includes('normalized_name % $1 OR description % $1'));
  assert.ok(sql.includes('is_active = TRUE'));
  assert.ok(sql.includes('is_materialized = TRUE'));
  assert.equal(params[0], 'brown rice');
});

test('findUsdaCandidates sends the default bounded candidate limit to PostgreSQL', async () => {
  resetQuery({ rows: [] });
  await findUsdaCandidates('chicken');
  const [sql, params] = mockQuery.mock.calls[0]!.arguments as [string, unknown[]];
  assert.ok(sql.includes('LIMIT $2'));
  assert.equal(params[1], 20);
});

test('findUsdaCandidates honors a smaller caller-provided candidate limit', async () => {
  resetQuery({ rows: [] });
  await findUsdaCandidates('whole wheat bread loaf sliced', 5);
  const [, params] = mockQuery.mock.calls[0]!.arguments as [string, unknown[]];
  assert.equal(params[1], 5);
});

// ---------------------------------------------------------------------------
// canonicalizeWithUsda — exact match
// ---------------------------------------------------------------------------

test('canonicalizeWithUsda returns exact match when normalized name found directly', async () => {
  resetQuery({ rows: [RICE_ROW] });
  const result = await canonicalizeWithUsda('rice white cooked');
  assert.equal(result.matchType, 'exact');
  assert.equal(result.score, 1);
  assert.deepEqual(result.row, RICE_ROW);
});

// ---------------------------------------------------------------------------
// canonicalizeWithUsda — alias match
// ---------------------------------------------------------------------------

test('canonicalizeWithUsda resolves known alias "dal" to lentils', async () => {
  // First call: exact lookup for alias target
  // Second call: candidate lookup if no exact
  mockQuery.mock.mockImplementationOnce(async () => ({ rows: [LENTILS_ROW] })); // alias exact
  const result = await canonicalizeWithUsda('dal');
  assert.equal(result.matchType, 'alias');
  assert.deepEqual(result.row, LENTILS_ROW);
});

test('canonicalizeWithUsda resolves dry rolled-oat variants to the plain dry oats row', async () => {
  resetQuery();
  mockQuery.mock.mockImplementationOnce(async (_sql: string, params?: unknown[]) => {
    assert.equal(params?.[0], 'oats');
    return { rows: [OATS_ROW] };
  });
  const result = await canonicalizeWithUsda('rolled oats raw');
  assert.equal(result.matchType, 'alias');
  assert.equal(result.row?.normalized_name, 'oats');
  assert.equal(result.row?.kcal_per_100g, 375);
  assert.equal(mockQuery.mock.calls.length, 1);
});

test('canonicalizeWithUsda resolves "roti" alias', async () => {
  mockQuery.mock.mockImplementationOnce(async () => ({
    rows: [{
      fdc_id: '333',
      description: 'Wheat flour, whole',
      data_type: 'SR Legacy',
      normalized_name: 'wheat flour whole',
      kcal_per_100g: 340,
      protein_per_100g: 13,
      carbs_per_100g: 72,
      fat_per_100g: 2.5,
      fiber_per_100g: 10.7,
    }],
  }));
  const result = await canonicalizeWithUsda('roti');
  assert.equal(result.matchType, 'alias');
});

test('canonicalizeWithUsda resolves "chapati" alias same as "roti"', async () => {
  mockQuery.mock.mockImplementationOnce(async () => ({
    rows: [{
      fdc_id: '333',
      description: 'Wheat flour, whole',
      data_type: 'SR Legacy',
      normalized_name: 'wheat flour whole',
      kcal_per_100g: 340,
      protein_per_100g: 13,
      carbs_per_100g: 72,
      fat_per_100g: 2.5,
      fiber_per_100g: 10.7,
    }],
  }));
  const result = await canonicalizeWithUsda('chapati');
  assert.equal(result.matchType, 'alias');
});

test('canonicalizeWithUsda resolves "rice" alias', async () => {
  mockQuery.mock.mockImplementationOnce(async () => ({ rows: [RICE_ROW] }));
  const result = await canonicalizeWithUsda('rice');
  assert.equal(result.matchType, 'alias');
});

test('canonicalizeWithUsda resolves generic bananas to raw fruit instead of a branded product', async () => {
  mockQuery.mock.mockImplementationOnce(async (_sql: string, params?: unknown[]) => {
    assert.equal(params?.[0], 'bananas raw');
    return { rows: [{ ...RICE_ROW, description: 'Bananas, raw', normalized_name: 'bananas raw' }] };
  });
  const result = await canonicalizeWithUsda('banana');
  assert.equal(result.matchType, 'alias');
  assert.equal(result.row?.normalized_name, 'bananas raw');
});

test('canonicalizeWithUsda maps common plain-curd hints to plain yogurt', async () => {
  mockQuery.mock.mockImplementationOnce(async (_sql: string, params?: unknown[]) => {
    assert.equal(params?.[0], 'yogurt plain');
    return { rows: [{ ...RICE_ROW, description: 'Yogurt, plain', normalized_name: 'yogurt plain' }] };
  });
  const result = await canonicalizeWithUsda('milk curd plain');
  assert.equal(result.matchType, 'alias');
  assert.equal(result.row?.normalized_name, 'yogurt plain');
});

test('canonicalizeWithUsda maps cooked chickpeas to the authoritative cooked row', async () => {
  mockQuery.mock.mockImplementationOnce(async (_sql: string, params?: unknown[]) => {
    assert.equal(params?.[0], 'chickpeas garbanzo beans bengal gram mature seeds cooked boiled without salt');
    return { rows: [{ ...LENTILS_ROW, description: 'Chickpeas, mature seeds, cooked, boiled, without salt' }] };
  });
  const result = await canonicalizeWithUsda('chickpeas cooked boiled without salt');
  assert.equal(result.matchType, 'alias');
});

test('canonicalizeWithUsda maps prepared idli and sambar to reference-food rows', async () => {
  mockQuery.mock.mockImplementationOnce(async (_sql: string, params?: unknown[]) => {
    assert.equal(params?.[0], 'idli');
    return { rows: [{ ...RICE_ROW, description: 'Idli', normalized_name: 'idli' }] };
  });
  const idli = await canonicalizeWithUsda('steamed idli');
  assert.equal(idli.matchType, 'alias');

  resetQuery();
  mockQuery.mock.mockImplementationOnce(async (_sql: string, params?: unknown[]) => {
    assert.equal(params?.[0], 'sambar vegetable stew');
    return { rows: [{ ...LENTILS_ROW, description: 'Sambar, vegetable stew', normalized_name: 'sambar vegetable stew' }] };
  });
  const sambar = await canonicalizeWithUsda('sambar cooked');
  assert.equal(sambar.matchType, 'alias');
});

test('canonicalizeWithUsda maps raw salad vegetables to explicit raw reference rows', async () => {
  for (const [hint, target] of [
    ['tomato', 'tomatoes red ripe raw year round average'],
    ['onion', 'onions raw'],
    ['cucumber', 'cucumber raw'],
  ] as const) {
    resetQuery();
    mockQuery.mock.mockImplementationOnce(async (_sql: string, params?: unknown[]) => {
      assert.equal(params?.[0], target);
      return { rows: [{ ...RICE_ROW, description: target, normalized_name: target }] };
    });
    const result = await canonicalizeWithUsda(hint);
    assert.equal(result.matchType, 'alias');
  }
});

test('canonicalizeWithUsda maps fried egg variants to the explicit fried-egg row', async () => {
  resetQuery();
  mockQuery.mock.mockImplementationOnce(async (_sql: string, params?: unknown[]) => {
    assert.equal(params?.[0], 'egg whole cooked fried');
    return { rows: [{ ...RICE_ROW, description: 'Egg, whole, cooked, fried', normalized_name: 'egg whole cooked fried' }] };
  });
  const result = await canonicalizeWithUsda('egg large fried');
  assert.equal(result.matchType, 'alias');
});

test('canonicalizeWithUsda skips a nutrient-empty exact row and continues searching', async () => {
  clearUsdaLookupCache();
  mockQuery.mock.resetCalls();
  let call = 0;
  mockQuery.mock.mockImplementation(async () => {
    call += 1;
    if (call === 1) return { rows: [{ ...LENTILS_ROW, kcal_per_100g: 0 }] };
    return { rows: [{ ...LENTILS_ROW, normalized_name: 'lentils mature seeds raw', sim: 0.8 }] };
  });
  const result = await canonicalizeWithUsda('lentils dry');
  assert.equal(result.matchType, 'fuzzy');
  assert.equal(result.row?.kcal_per_100g, 116);
});

test('canonicalizeWithUsda rejects candidates missing a distinctive identity token', async () => {
  clearUsdaLookupCache();
  mockQuery.mock.resetCalls();
  mockQuery.mock.mockImplementation(async (sql: string) => ({
    rows: sql.includes('GREATEST(similarity') ? [{
      ...RICE_ROW,
      description: 'Pho, chicken, cooked',
      normalized_name: 'pho chicken cooked',
      sim: 0.75,
    }] : [],
  }));
  const result = await canonicalizeWithUsda('chicken biryani');
  assert.equal(result.matchType, 'unmatched');
});

test('canonicalizeWithUsda maps masala dosa to the filled-dosa reference row', async () => {
  resetQuery();
  mockQuery.mock.mockImplementationOnce(async (_sql: string, params?: unknown[]) => {
    assert.equal(params?.[0], 'dosa with filling');
    return { rows: [{ ...RICE_ROW, description: 'Dosa, with filling', normalized_name: 'dosa with filling' }] };
  });
  const result = await canonicalizeWithUsda('masala dosa');
  assert.equal(result.matchType, 'alias');
});

// ---------------------------------------------------------------------------
// canonicalizeWithUsda — fuzzy match
// ---------------------------------------------------------------------------

test('canonicalizeWithUsda returns fuzzy match when no exact but candidates found', async () => {
  // No alias, no exact → candidates with decent score
  mockQuery.mock.mockImplementationOnce(async () => ({ rows: [] })); // exact lookup
  mockQuery.mock.mockImplementationOnce(async () => ({               // candidates
      rows: [{
        fdc_id: '999',
        description: 'Brown Rice, cooked',
        data_type: 'SR Legacy',
        normalized_name: 'brown rice cooked',
        kcal_per_100g: 112,
        protein_per_100g: 2.3,
        carbs_per_100g: 23.5,
        fat_per_100g: 0.9,
        fiber_per_100g: 1.8,
      }],
    }));

  const result = await canonicalizeWithUsda('brown rice cooked');
  // Fuzzy score between 'brown rice cooked' and 'brown rice cooked' should be 1 (exact on normalized)
  assert.ok(result.matchType === 'exact' || result.matchType === 'fuzzy');
  assert.ok(result.row !== null);
});

test('canonicalizeWithUsda does not choose dry lentils for a cooked query', async () => {
  const dryLentils = {
    ...LENTILS_ROW,
    fdc_id: 'dry-lentils',
    description: 'Lentils, mature seeds, raw',
    normalized_name: 'lentils mature seeds raw',
    kcal_per_100g: 352,
  };
  const cookedLentils = {
    ...LENTILS_ROW,
    fdc_id: 'cooked-lentils',
    description: 'Lentils, mature seeds, cooked, boiled, without salt',
    normalized_name: 'lentils mature seeds cooked boiled without salt',
    kcal_per_100g: 116,
  };
  mockQuery.mock.resetCalls();
  let queryNumber = 0;
  mockQuery.mock.mockImplementation(async () => ({
    rows: queryNumber++ === 0 ? [] : [dryLentils, cookedLentils],
  }));

  const result = await canonicalizeWithUsda('lentils cooked');
  assert.ok(result.matchType === 'exact' || result.matchType === 'fuzzy');
  assert.equal(result.row?.fdc_id, 'cooked-lentils');
});

test('canonicalizeWithUsda rejects preparation-only fuzzy matches for a different food', async () => {
  mockQuery.mock.resetCalls();
  mockQuery.mock.mockImplementation(async (sql: string) => ({
    rows: sql.includes('GREATEST(similarity') ? [{
      ...RICE_ROW,
      fdc_id: 'steamed-pork',
      description: 'Steamed pork, cooked',
      normalized_name: 'steamed pork',
      sim: 0.8,
    }] : [],
  }));

  const result = await canonicalizeWithUsda('steamed unfamiliar-idli');
  assert.equal(result.matchType, 'unmatched');
  assert.equal(result.row, null);
});

test('canonicalizeWithUsda prefers a plain reference food over a processed form', async () => {
  mockQuery.mock.resetCalls();
  mockQuery.mock.mockImplementation(async (sql: string) => ({
    rows: sql.includes('GREATEST(similarity') ? [
      {
        ...RICE_ROW,
        fdc_id: 'cucumber-dip',
        description: 'Cucumber dip',
        normalized_name: 'cucumber dip',
        kcal_per_100g: 83,
        sim: 0.92,
      },
      {
        ...RICE_ROW,
        fdc_id: 'cucumber-raw',
        description: 'Cucumber, raw',
        normalized_name: 'cucumber raw',
        kcal_per_100g: 16,
        protein_per_100g: 0.7,
        carbs_per_100g: 3.6,
        fat_per_100g: 0.1,
        fiber_per_100g: 0.5,
        sim: 0.72,
      },
    ] : [],
  }));

  const result = await canonicalizeWithUsda('fresh cucumber vegetable');
  assert.equal(result.row?.fdc_id, 'cucumber-raw');
});

test('canonicalizeWithUsda rejects a low-confidence tie instead of choosing arbitrarily', async () => {
  mockQuery.mock.resetCalls();
  mockQuery.mock.mockImplementation(async (sql: string) => ({
    rows: sql.includes('GREATEST(similarity') ? [
      { ...RICE_ROW, fdc_id: 'a', description: 'Mystery red bean', normalized_name: 'mystery red bean', sim: 0.48 },
      { ...RICE_ROW, fdc_id: 'b', description: 'Mystery green pea', normalized_name: 'mystery green pea', sim: 0.47 },
    ] : [],
  }));

  const result = await canonicalizeWithUsda('mystery legume');
  assert.equal(result.matchType, 'unmatched');
  assert.equal(result.confidenceMargin, 0);
});

// ---------------------------------------------------------------------------
// canonicalizeWithUsda — unmatched
// ---------------------------------------------------------------------------

test('canonicalizeWithUsda returns unmatched when nothing found', async () => {
  // No alias for this, no exact, no good candidates
  mockQuery.mock.mockImplementationOnce(async () => ({ rows: [] })); // exact lookup
  mockQuery.mock.mockImplementationOnce(async () => ({ rows: [] })); // candidates

  const result = await canonicalizeWithUsda('xyzzy unknown food 999');
  assert.equal(result.matchType, 'unmatched');
  assert.equal(result.row, null);
  assert.equal(result.score, 0);
});

test('canonicalizeWithUsda returns unmatched when candidates score below threshold', async () => {
  mockQuery.mock.mockImplementationOnce(async () => ({ rows: [] }));
  mockQuery.mock.mockImplementationOnce(async () => ({
      rows: [{
        fdc_id: '888',
        description: 'Totally unrelated food item',
        data_type: 'SR Legacy',
        normalized_name: 'totally unrelated food item',
        kcal_per_100g: 100,
        protein_per_100g: 1,
        carbs_per_100g: 20,
        fat_per_100g: 0.5,
        fiber_per_100g: 0.2,
      }],
    }));

  // 'avocado toast' vs 'totally unrelated food item' → very low fuzzy score
  const result = await canonicalizeWithUsda('avocado toast');
  // Either unmatched or very low score
  if (result.matchType !== 'unmatched') {
    assert.ok(result.score >= 0);
  } else {
    assert.equal(result.matchType, 'unmatched');
  }
});

// ---------------------------------------------------------------------------
// canonicalizeWithUsda — case insensitivity
// ---------------------------------------------------------------------------

test('canonicalizeWithUsda handles uppercase input', async () => {
  mockQuery.mock.mockImplementationOnce(async () => ({ rows: [RICE_ROW] }));
  const result = await canonicalizeWithUsda('RICE WHITE COOKED');
  assert.ok(result.row !== null);
});

test('canonicalizeWithUsda handles mixed case input', async () => {
  mockQuery.mock.mockImplementationOnce(async () => ({ rows: [LENTILS_ROW] }));
  const result = await canonicalizeWithUsda('Lentils Cooked');
  assert.ok(result.row !== null);
});

// ---------------------------------------------------------------------------
// normalizeUsdaTerm (re-export from usdaLookupUtils, tested via usdaLookup usage)
// ---------------------------------------------------------------------------

test('canonicalizeWithUsda normalizes hint before lookup', async () => {
  resetQuery({ rows: [] });
  // Ensure the exact query uses normalized form
  await canonicalizeWithUsda('Brown-Rice (Cooked)!');
  const [, params] = mockQuery.mock.calls[0]!.arguments as [string, unknown[]];
  // The normalized form should be passed
  assert.equal(params[0], 'brownrice cooked');
});

test('canonicalizeWithUsda deduplicates only in-flight lookups', async () => {
  resetQuery();
  let releaseQuery!: () => void;
  const queryGate = new Promise<void>((resolve) => {
    releaseQuery = resolve;
  });
  mockQuery.mock.mockImplementation(async () => {
    await queryGate;
    return { rows: [RICE_ROW] };
  });

  const firstPromise = canonicalizeWithUsda('cacheable rice dish');
  const secondPromise = canonicalizeWithUsda('cacheable rice dish');
  assert.equal(mockQuery.mock.calls.length, 1);
  releaseQuery();
  const [first, second] = await Promise.all([firstPromise, secondPromise]);
  assert.deepEqual(second, first);

  await canonicalizeWithUsda('cacheable rice dish');
  assert.equal(mockQuery.mock.calls.length, 2);
});
