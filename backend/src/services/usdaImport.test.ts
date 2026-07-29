import test from 'node:test';
import assert from 'node:assert/strict';
import { macroColumnForNutrient } from './usdaImport.js';

test('USDA importer accepts Energy expressed in kcal', () => {
  assert.equal(
    macroColumnForNutrient({ id: '1008', name: 'Energy', unit_name: 'kcal' }),
    'kcal_per_100g'
  );
});

test('USDA importer rejects Energy expressed in kilojoules', () => {
  assert.equal(
    macroColumnForNutrient({ id: '1062', name: 'Energy', unit_name: 'kJ' }),
    undefined
  );
});

test('USDA importer maps supported macros and ignores unrelated nutrients', () => {
  assert.equal(
    macroColumnForNutrient({ id: '1003', name: 'Protein', unit_name: 'g' }),
    'protein_per_100g'
  );
  assert.equal(
    macroColumnForNutrient({ id: '9999', name: 'Vitamin C', unit_name: 'mg' }),
    undefined
  );
});
