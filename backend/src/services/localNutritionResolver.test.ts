import assert from 'node:assert/strict';
import test, { mock } from 'node:test';

const canonicalizeWithUsda = mock.fn(async (hint: string) => {
  if (hint === 'missing') {
    return { row: null, matchType: 'unmatched', score: 0, confidenceMargin: 0 };
  }
  return {
    row: {
      fdc_id: '169910',
      description: 'Bananas, raw',
      data_type: 'sr_legacy_food',
      normalized_name: 'bananas raw',
      kcal_per_100g: 89,
      protein_per_100g: 1.09,
      carbs_per_100g: 22.84,
      fat_per_100g: 0.33,
      fiber_per_100g: 2.6,
      dataset_version: 'fdc-test-1',
    },
    matchType: hint === 'banana' ? 'alias' : 'fuzzy',
    score: 0.91,
    confidenceMargin: 0.2,
  };
});

await mock.module('./usdaLookup.js', {
  namedExports: { canonicalizeWithUsda },
});

const { resolveLocalNutritionLookups } = await import('./localNutritionResolver.js');

test('resolver returns authoritative rows and keeps misses explicit', async () => {
  const response = await resolveLocalNutritionLookups('analysis-1', [
    { rowId: 'row-1', canonicalHint: 'banana', preparation: 'raw' },
    { rowId: 'row-2', canonicalHint: 'missing', preparation: '' },
  ]);

  assert.equal(response.analysisId, 'analysis-1');
  assert.deepEqual(response.unresolvedRowIds, ['row-2']);
  assert.equal(response.records.length, 1);
  assert.deepEqual(response.records[0]!.lookupKeys, ['banana', 'bananas raw']);
});

test('fuzzy resolution does not bind the probabilistic input as a cache alias', async () => {
  const response = await resolveLocalNutritionLookups('analysis-2', [
    { rowId: 'row-1', canonicalHint: 'yellow fruit', preparation: '' },
  ]);
  assert.deepEqual(response.records[0]!.lookupKeys, ['bananas raw']);
});
