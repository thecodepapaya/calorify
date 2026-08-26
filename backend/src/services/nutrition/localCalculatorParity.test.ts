import assert from 'node:assert/strict';
import { readFile } from 'node:fs/promises';
import test from 'node:test';

import {
  analyzeUncertainty,
  sumMacros,
  type ResolvedIngredient,
} from '../meal-analysis/domain.js';
import { calcMacrosFromUsdaRow } from '../usda/lookupUtils.js';

type Macros = {
  calories: number;
  protein: number;
  carbs: number;
  fat: number;
  fiber: number;
};

type FixtureIngredient = {
  id: string;
  per100g: Macros;
  grams: number;
  minGrams: number;
  maxGrams: number;
  expected: Macros;
};

type Fixture = {
  calculationVersion: string;
  ingredients: FixtureIngredient[];
  expectedTotal: Macros;
  expectedMinTotal: Macros;
  expectedMaxTotal: Macros;
  expectedVariancePercent: number;
  expectedConfidence: string;
};

function row(per100g: Macros) {
  return {
    kcal_per_100g: per100g.calories,
    protein_per_100g: per100g.protein,
    carbs_per_100g: per100g.carbs,
    fat_per_100g: per100g.fat,
    fiber_per_100g: per100g.fiber,
  };
}

test('shared local nutrition golden matches backend rounding and uncertainty', async () => {
  const fixture = JSON.parse(
    await readFile(
      new URL('../../../../test_fixtures/local_nutrition_calculator_golden.json', import.meta.url),
      'utf8'
    )
  ) as Fixture;
  assert.equal(fixture.calculationVersion, 'local-macro-v1');

  const resolved = fixture.ingredients.map((ingredient) => {
    const macros = calcMacrosFromUsdaRow(row(ingredient.per100g), ingredient.grams);
    const minMacros = calcMacrosFromUsdaRow(row(ingredient.per100g), ingredient.minGrams);
    const maxMacros = calcMacrosFromUsdaRow(row(ingredient.per100g), ingredient.maxGrams);
    assert.deepEqual(macros, ingredient.expected);
    return { macros, minMacros, maxMacros } as ResolvedIngredient;
  });

  assert.deepEqual(sumMacros(resolved.map((ingredient) => ingredient.macros)), fixture.expectedTotal);
  const uncertainty = analyzeUncertainty(resolved);
  assert.deepEqual(uncertainty.minTotal, fixture.expectedMinTotal);
  assert.deepEqual(uncertainty.maxTotal, fixture.expectedMaxTotal);
  assert.equal(uncertainty.variancePercent, fixture.expectedVariancePercent);
  const confidence = uncertainty.variancePercent <= 0.15
    ? 'HIGH'
    : uncertainty.variancePercent <= 0.3
      ? 'MEDIUM'
      : 'LOW';
  assert.equal(confidence, fixture.expectedConfidence);
});
