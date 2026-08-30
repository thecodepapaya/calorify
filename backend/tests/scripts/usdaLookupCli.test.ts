import assert from 'node:assert/strict';
import test from 'node:test';
import {
  buildUsdaLookupReport,
  formatUsdaLookupReport,
} from '../../src/scripts/usdaLookupCli.js';
import type { NutritionResolutionRun } from '../../src/services/meal-analysis-v3/nutrition.js';

test('USDA lookup report exposes the selected match and partial candidates', () => {
  const run: NutritionResolutionRun = {
    datasetVersion: 'test-usda',
    leaves: [{
      scenarioId: 'usda-lookup-cli',
      leafId: 'query',
      reference: {
        scenarioId: 'usda-lookup-cli',
        leafId: 'query',
        source: 'USDA_FOODDATA_CENTRAL',
        sourceRecordId: '123',
        datasetVersion: 'test-usda',
        verifiedZero: false,
        per100g: {
          caloriesKcal: 120,
          proteinGrams: 4,
          carbsGrams: 20,
          fatGrams: 2,
          fiberGrams: 3,
        },
      },
      rejectionReasons: [],
      candidates: [{
        sourceRecordId: '123',
        description: 'Lentils, cooked',
        dataType: 'foundation_food',
        macrosPer100g: {
          caloriesKcal: 120,
          proteinGrams: 4,
          carbsGrams: 20,
          fatGrams: 2,
          fiberGrams: 3,
        },
        similarity: 0.91,
        identityTier: 'CANONICAL_TOKEN_SET',
        preparationTier: 'UNSPECIFIED_COMPATIBLE',
        missingNutrients: [],
        rejectionReasons: [],
        selected: true,
      }, {
        sourceRecordId: '456',
        description: 'Lentil soup',
        dataType: 'survey_fndds_food',
        macrosPer100g: {
          caloriesKcal: 80,
          proteinGrams: 5,
          carbsGrams: 12,
          fatGrams: 1,
          fiberGrams: 4,
        },
        similarity: 0.63,
        identityTier: null,
        preparationTier: null,
        missingNutrients: [],
        rejectionReasons: ['IDENTITY_MISMATCH'],
        selected: false,
      }],
    }],
  };

  const report = buildUsdaLookupReport({ name: 'lentils cooked', intent: 'generic' }, run);
  assert.equal(report.outcome, 'MATCHED');
  assert.equal(report.selected?.candidate?.sourceRecordId, '123');
  assert.equal(report.candidates.length, 2);
  assert.equal(report.resolverInput.retrievalIntent, 'GENERIC_INGREDIENT');
  assert.equal(report.candidates[0]?.foodName, 'Lentils, cooked');
  assert.deepEqual(report.candidates[1]?.macrosPer100g, {
    caloriesKcal: 80,
    proteinGrams: 5,
    carbsGrams: 12,
    fatGrams: 1,
    fiberGrams: 4,
  });
  assert.match(formatUsdaLookupReport(report), /Lentil soup/);
  assert.match(formatUsdaLookupReport(report), /IDENTITY_MISMATCH/);
});
