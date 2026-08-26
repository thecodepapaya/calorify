import assert from 'node:assert/strict';
import test from 'node:test';
import type { MealAnalysisLlmClient } from '../../../src/services/meal-analysis/llm.js';
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

function presenterInput(interpretation = resolvedInterpretation()) {
  return {
    interpretation,
    mealType: { value: 'LUNCH' as const, origin: 'MODEL_INFERRED' as const },
    locale: 'en-IN',
    countryCode: 'IN',
  };
}

function clientReturning(value: unknown): MealAnalysisLlmClient {
  return {
    chat: {
      completions: {
        create: async () => ({
          choices: [{ message: { content: JSON.stringify(value) } }],
        }),
      },
    },
  } as unknown as MealAnalysisLlmClient;
}

function failingClient(): MealAnalysisLlmClient {
  return {
    chat: {
      completions: {
        create: async () => { throw new Error('provider unavailable'); },
      },
    },
  } as unknown as MealAnalysisLlmClient;
}

test('serving-size text uses only validated natural measures and qualitative fallback', () => {
  const resolved = resolvedInterpretation();
  assert.equal(
    buildServingSizeText(resolved.components),
    'measured portion + 4 rotis + measured portion'
  );

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
  assert.ok(buildServingSizeText(resolved.components).length <= 120);
  assert.doesNotMatch(buildServingSizeText(resolved.components), /gram|kcal|calorie/i);
});

test('presenter keeps generated copy separate from deterministic serving size', async () => {
  const result = await createMealPresenter(clientReturning({
    mealName: 'Pumpkin curry with roti',
    tip: 'Pumpkin is used in many regional curries.',
  })).present(presenterInput());

  assert.equal(result.mealName, 'Pumpkin curry with roti');
  assert.equal(result.servingSizeText, 'measured portion + 4 rotis + measured portion');
  assert.equal(result.tip, 'Pumpkin is used in many regional curries.');
  assert.equal(result.usedFallback, false);
  assert.deepEqual(result.providerAttempts, []);
});

test('invalid generated names and provider failures use the deterministic fallback', async () => {
  const interpretation = resolvedInterpretation();
  const before = structuredClone(interpretation);
  const invalidName = await createMealPresenter(clientReturning({
    mealName: '4 large rotis',
    tip: 'This copy must not survive validation.',
  })).present(presenterInput(interpretation));
  const providerFailure = await createMealPresenter(failingClient()).present(
    presenterInput(interpretation)
  );

  const expected = {
    mealName: 'Kaddu sabzi & Roti & Oats',
    servingSizeText: 'measured portion + 4 rotis + measured portion',
    tip: '',
    providerAttempts: [],
    usedFallback: true,
  };
  assert.deepEqual(invalidName, expected);
  assert.deepEqual(providerFailure, expected);
  assert.deepEqual(interpretation, before, 'presentation must not mutate calculation state');
});
