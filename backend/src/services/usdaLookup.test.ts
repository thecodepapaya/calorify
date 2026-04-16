import test from 'node:test';
import assert from 'node:assert/strict';
import { calcMacrosFromUsdaRow, normalizeUsdaTerm, type UsdaMacroRow } from './usdaLookupUtils.js';

test('normalizeUsdaTerm strips punctuation and lowercases', () => {
  const normalized = normalizeUsdaTerm('  Brown-Rice (Cooked)! ');
  assert.equal(normalized, 'brownrice cooked');
});

test('calcMacrosFromUsdaRow scales per 100g macros', () => {
  const row: UsdaMacroRow = {
    kcal_per_100g: 200,
    protein_per_100g: 10,
    carbs_per_100g: 20,
    fat_per_100g: 5,
    fiber_per_100g: 2.5,
  };
  const macros = calcMacrosFromUsdaRow(row, 150);
  assert.deepEqual(macros, {
    calories: 300,
    protein: 15,
    carbs: 30,
    fat: 7.5,
    fiber: 3.8,
  });
});

