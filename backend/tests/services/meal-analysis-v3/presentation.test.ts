import assert from 'node:assert/strict';
import test from 'node:test';
import { resolveInterpretation } from '../../../src/services/meal-analysis-v3/calculation.js';
import {
  buildServingSizeText,
  createMealPresenter,
} from '../../../src/services/meal-analysis-v3/presentation.js';
import type { ResolvedInterpretation } from '../../../src/services/meal-analysis-v3/domain.js';
import { foodProposal, nutritionReferences } from './fixtures.js';

function resolvedInterpretation(): ResolvedInterpretation {
  const proposal = foodProposal();
  return resolveInterpretation(proposal, nutritionReferences(proposal));
}

function presenterInput(
  interpretation = resolvedInterpretation(),
  generatedCopy: unknown = {
    mealName: 'Pumpkin curry with roti',
    servingSizeText: '1 bowl + 4 rotis',
    tip: 'Pumpkin is used in many regional curries.',
  },
) {
  return {
    interpretation,
    mealType: { value: 'LUNCH' as const, origin: 'MODEL_INFERRED' as const },
    locale: 'en-IN',
    countryCode: 'IN',
    generatedCopy,
    providerAttempts: [],
  };
}

test('serving-size text uses only validated natural measures and qualitative fallback', () => {
  const resolved = resolvedInterpretation();
  assert.equal(buildServingSizeText(resolved.components), '4 rotis');

  const sabzi = structuredClone(resolved.components[0]!);
  assert.equal(sabzi.portionConstraint.kind, 'AMOUNT');
  if (sabzi.portionConstraint.kind === 'AMOUNT') {
    sabzi.portionConstraint.naturalMeasure = {
      unitCode: 'BOWL',
      quantity: {
        estimate: 1,
        min: 1,
        max: 1,
        origin: 'REFERENCE_DEFAULT',
        evidence: null,
      },
    };
  }
  assert.equal(buildServingSizeText([sabzi]), '1 bowl');
  const banana = structuredClone(resolved.components[1]!);
  banana.canonicalIdentity = 'banana';
  if (banana.portionConstraint.kind === 'COUNT') {
    banana.portionConstraint.naturalUnitCode = 'COUNT';
    banana.portionConstraint.count = {
      ...banana.portionConstraint.count,
      estimate: 1,
      min: 1,
      max: 1,
    };
    banana.scenarios[0]!.effectivePortion = {
      kind: 'UNIT_COUNT',
      consumedCount: 1,
      perUnitFinishedGrams: 118,
    };
    banana.pointScenarioId = banana.scenarios[0]!.scenarioId;
  }
  assert.equal(buildServingSizeText([banana]), '1 banana');
  const missingPoint = structuredClone(resolved.components[0]!);
  missingPoint.pointScenarioId = 'missing';
  assert.equal(buildServingSizeText([missingPoint]), 'measured portion');
  assert.equal(buildServingSizeText([]), 'measured portion');
  assert.ok(buildServingSizeText(resolved.components).length < 25);
  assert.doesNotMatch(buildServingSizeText(resolved.components), /gram|kcal|calorie/i);
});

test('presenter uses validated Pass-1 serving copy', async () => {
  const result = await createMealPresenter().present(presenterInput());

  assert.equal(result.mealName, 'Pumpkin curry with roti');
  assert.equal(result.servingSizeText, '1 bowl + 4 rotis');
  assert.ok(result.servingSizeText.length < 25);
  assert.equal(result.tip, 'Pumpkin is used in many regional curries.');
  assert.equal(result.usedFallback, false);
  assert.deepEqual(result.providerAttempts, []);
});

test('invalid or absent Pass-1 copy uses the deterministic fallback', async () => {
  const interpretation = resolvedInterpretation();
  const before = structuredClone(interpretation);
  const invalidName = await createMealPresenter().present(presenterInput(interpretation, {
    mealName: '4 large rotis',
    servingSizeText: '4 rotis',
    tip: 'This copy must not survive validation.',
  }));
  const oversizedServing = await createMealPresenter().present(presenterInput(interpretation, {
    mealName: 'Pumpkin curry with roti',
    servingSizeText: '1234567890123456789012345',
    tip: 'This copy must not survive validation.',
  }));
  const absentCopy = await createMealPresenter().present(presenterInput(interpretation, null));

  const expected = {
    mealName: 'Kaddu sabzi & Roti & Oats',
    servingSizeText: '4 rotis',
    tip: '',
    providerAttempts: [],
    usedFallback: true,
  };
  assert.deepEqual(invalidName, expected);
  assert.deepEqual(oversizedServing, expected);
  assert.deepEqual(absentCopy, expected);
  assert.deepEqual(interpretation, before, 'presentation must not mutate calculation state');
});
