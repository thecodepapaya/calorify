import test from 'node:test';
import assert from 'node:assert/strict';
import { assessUsdaNutritionQuality, calcMacrosFromUsdaRow, normalizeUsdaTerm, stripQualifiers, type UsdaMacroRow } from './usdaLookupUtils.js';

// ---------------------------------------------------------------------------
// normalizeUsdaTerm
// ---------------------------------------------------------------------------

test('normalizeUsdaTerm strips punctuation and lowercases', () => {
  assert.equal(normalizeUsdaTerm('  Brown-Rice (Cooked)! '), 'brownrice cooked');
});

test('normalizeUsdaTerm handles plain lowercase input unchanged', () => {
  assert.equal(normalizeUsdaTerm('chicken breast'), 'chicken breast');
});

test('normalizeUsdaTerm converts uppercase to lowercase', () => {
  assert.equal(normalizeUsdaTerm('APPLE'), 'apple');
});

test('normalizeUsdaTerm strips commas', () => {
  assert.equal(normalizeUsdaTerm('Rice, White, Cooked'), 'rice white cooked');
});

test('normalizeUsdaTerm strips parentheses and their content', () => {
  // parentheses are stripped (they are non-alphanumeric), inner text is kept
  assert.equal(normalizeUsdaTerm('egg (whole), hard-boiled'), 'egg whole hardboiled');
});

test('normalizeUsdaTerm trims leading and trailing whitespace', () => {
  assert.equal(normalizeUsdaTerm('  spinach  '), 'spinach');
});

test('normalizeUsdaTerm collapses multiple internal spaces into one', () => {
  assert.equal(normalizeUsdaTerm('dal   makhani'), 'dal makhani');
});

test('normalizeUsdaTerm returns empty string for empty input', () => {
  assert.equal(normalizeUsdaTerm(''), '');
});

test('normalizeUsdaTerm returns empty string for string of only special characters', () => {
  assert.equal(normalizeUsdaTerm('!@#$%^&*()'), '');
});

test('normalizeUsdaTerm preserves numeric characters', () => {
  assert.equal(normalizeUsdaTerm('Vitamin B12'), 'vitamin b12');
});

test('normalizeUsdaTerm handles mixed digits and letters', () => {
  assert.equal(normalizeUsdaTerm('1% Milk (Low-Fat)'), '1 milk lowfat');
});

test('normalizeUsdaTerm handles forward slash as special character (stripped)', () => {
  assert.equal(normalizeUsdaTerm('Oil/Fat'), 'oilfat');
});

test('normalizeUsdaTerm handles apostrophes (stripped)', () => {
  assert.equal(normalizeUsdaTerm("McDonald's Fries"), 'mcdonalds fries');
});

test('stripQualifiers removes harmless size and presentation words at term boundaries', () => {
  assert.equal(stripQualifiers('large chopped apple'), 'apple');
});

test('stripQualifiers preserves preparation and composition words that change nutrition', () => {
  assert.equal(stripQualifiers('lentils cooked'), 'lentils cooked');
  assert.equal(stripQualifiers('oats dry'), 'oats dry');
  assert.equal(stripQualifiers('whole wheat flour'), 'whole wheat flour');
  assert.equal(stripQualifiers('peanuts salted'), 'peanuts salted');
});

test('assessUsdaNutritionQuality accepts internally consistent nutrition', () => {
  const quality = assessUsdaNutritionQuality({
    kcal_per_100g: 164,
    protein_per_100g: 8.9,
    carbs_per_100g: 27.4,
    fat_per_100g: 2.6,
    fiber_per_100g: 7.6,
  });
  assert.equal(quality.score, 1);
  assert.deepEqual(quality.flags, []);
});

test('assessUsdaNutritionQuality flags unusable and inconsistent rows', () => {
  const quality = assessUsdaNutritionQuality({
    kcal_per_100g: 0,
    protein_per_100g: 60,
    carbs_per_100g: 60,
    fat_per_100g: 10,
    fiber_per_100g: 70,
  });
  assert.ok(quality.score < 0.2);
  assert.ok(quality.flags.includes('zero_energy'));
  assert.ok(quality.flags.includes('impossible_macro_mass'));
  assert.ok(quality.flags.includes('fiber_exceeds_carbs'));
});

// ---------------------------------------------------------------------------
// calcMacrosFromUsdaRow
// ---------------------------------------------------------------------------

test('calcMacrosFromUsdaRow scales per 100g macros to 150g', () => {
  const row: UsdaMacroRow = {
    kcal_per_100g: 200,
    protein_per_100g: 10,
    carbs_per_100g: 20,
    fat_per_100g: 5,
    fiber_per_100g: 2.5,
  };
  assert.deepEqual(calcMacrosFromUsdaRow(row, 150), {
    calories: 300,
    protein: 15,
    carbs: 30,
    fat: 7.5,
    fiber: 3.8,
  });
});

test('calcMacrosFromUsdaRow at exactly 100g returns per-100g values', () => {
  const row: UsdaMacroRow = {
    kcal_per_100g: 350,
    protein_per_100g: 12.5,
    carbs_per_100g: 55.2,
    fat_per_100g: 8.3,
    fiber_per_100g: 3.1,
  };
  const macros = calcMacrosFromUsdaRow(row, 100);
  assert.equal(macros.calories, 350);
  assert.equal(macros.protein, 12.5);
  assert.equal(macros.carbs, 55.2);
  assert.equal(macros.fat, 8.3);
  assert.equal(macros.fiber, 3.1);
});

test('calcMacrosFromUsdaRow at 0g returns all zeros', () => {
  const row: UsdaMacroRow = {
    kcal_per_100g: 200,
    protein_per_100g: 10,
    carbs_per_100g: 20,
    fat_per_100g: 5,
    fiber_per_100g: 2.5,
  };
  assert.deepEqual(calcMacrosFromUsdaRow(row, 0), {
    calories: 0,
    protein: 0,
    carbs: 0,
    fat: 0,
    fiber: 0,
  });
});

test('calcMacrosFromUsdaRow rounds calories to nearest integer', () => {
  const row: UsdaMacroRow = {
    kcal_per_100g: 333,
    protein_per_100g: 0,
    carbs_per_100g: 0,
    fat_per_100g: 0,
    fiber_per_100g: 0,
  };
  // 333 * 1/100 = 3.33 → Math.round = 3
  const macros = calcMacrosFromUsdaRow(row, 1);
  assert.equal(macros.calories, 3);
});

test('calcMacrosFromUsdaRow rounds macro fields to 1 decimal place', () => {
  const row: UsdaMacroRow = {
    kcal_per_100g: 0,
    protein_per_100g: 10.333,
    carbs_per_100g: 20.666,
    fat_per_100g: 5.124,
    fiber_per_100g: 2.555,
  };
  const macros = calcMacrosFromUsdaRow(row, 100);
  assert.equal(macros.protein, 10.3);
  assert.equal(macros.carbs, 20.7);
  assert.equal(macros.fat, 5.1);
  assert.equal(macros.fiber, 2.6);
});

test('calcMacrosFromUsdaRow handles high-calorie oil at 5g', () => {
  const row: UsdaMacroRow = {
    kcal_per_100g: 900,
    protein_per_100g: 0,
    carbs_per_100g: 0,
    fat_per_100g: 100,
    fiber_per_100g: 0,
  };
  const macros = calcMacrosFromUsdaRow(row, 5);
  assert.equal(macros.calories, 45);
  assert.equal(macros.fat, 5);
});

test('calcMacrosFromUsdaRow handles large 500g serving', () => {
  const row: UsdaMacroRow = {
    kcal_per_100g: 150,
    protein_per_100g: 3,
    carbs_per_100g: 30,
    fat_per_100g: 2,
    fiber_per_100g: 1,
  };
  const macros = calcMacrosFromUsdaRow(row, 500);
  assert.equal(macros.calories, 750);
  assert.equal(macros.protein, 15);
  assert.equal(macros.carbs, 150);
  assert.equal(macros.fat, 10);
  assert.equal(macros.fiber, 5);
});

test('calcMacrosFromUsdaRow handles zero macros row', () => {
  const row: UsdaMacroRow = {
    kcal_per_100g: 0,
    protein_per_100g: 0,
    carbs_per_100g: 0,
    fat_per_100g: 0,
    fiber_per_100g: 0,
  };
  assert.deepEqual(calcMacrosFromUsdaRow(row, 200), {
    calories: 0,
    protein: 0,
    carbs: 0,
    fat: 0,
    fiber: 0,
  });
});

test('calcMacrosFromUsdaRow returns object with exactly the 5 macro keys', () => {
  const row: UsdaMacroRow = {
    kcal_per_100g: 100,
    protein_per_100g: 5,
    carbs_per_100g: 15,
    fat_per_100g: 3,
    fiber_per_100g: 1,
  };
  const macros = calcMacrosFromUsdaRow(row, 100);
  assert.deepEqual(Object.keys(macros).sort(), ['calories', 'carbs', 'fat', 'fiber', 'protein']);
});
