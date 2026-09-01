import assert from 'node:assert/strict';
import test from 'node:test';
import {
  assertionPassRates,
  evaluateMealAnalysisRun,
  type MealAnalysisEvalCase,
  type MealAnalysisEvalRunResult,
} from '../../src/evals/mealAnalysisEval.js';
import {
  formatEvalCaseHeading,
  formatEvalRunResult,
} from '../../src/scripts/meal-analysis-eval.js';

const evalCase: MealAnalysisEvalCase = {
  id: 'four-roti-daal',
  input: {
    text: '4 roti daal',
    locale: 'en-IN',
    countryCode: 'IN',
    timeZone: 'Asia/Kolkata',
    capturedAt: '2026-08-30T07:00:00.000Z',
  },
  expectedComponents: [
    {
      key: 'roti',
      aliases: ['roti', 'chapati'],
      portion: {
        kind: 'COUNT', exact: 4, origin: 'user_stated',
        perUnitGrams: { estimateMin: 25, estimateMax: 80, origin: 'model_inferred' },
      },
      requiredIngredientGroups: [['flour', 'wheat', 'atta']],
      diagnosticIngredientGroups: [['oil', 'ghee']],
    },
    {
      key: 'daal',
      aliases: ['daal', 'dal', 'lentil'],
      portion: { kind: 'AMOUNT', estimateMin: 80, estimateMax: 400, origin: 'model_inferred' },
      requiredIngredientGroups: [['daal', 'dal', 'lentil']],
      diagnosticIngredientGroups: [['oil', 'ghee'], ['spice', 'masala']],
    },
  ],
};

const validFirstPass = {
  food_detected: true,
  mealName: 'Roti with dal',
  tip: 'Dal and roti form a complete protein when eaten together.',
  mealTypeCandidate: { value: 'LUNCH', origin: 'model_inferred' },
  mealItems: [
    {
      mealItemName: 'roti', canonicalIdentity: 'whole wheat flatbread',
      portion: {
        kind: 'COUNT', estimate: 4, min: 4, max: 4, origin: 'user_stated',
        perUnitGrams: { estimate: 50, min: 40, max: 60, origin: 'model_inferred' },
      },
      preparation: { method: 'TOASTED', origin: 'model_inferred' },
    },
    {
      mealItemName: 'dal', canonicalIdentity: 'lentil curry',
      portion: {
        kind: 'AMOUNT', estimate: 180, min: 120, max: 260,
        origin: 'model_inferred', perUnitGrams: null,
      },
      preparation: { method: 'SIMMERED', origin: 'model_inferred' },
    },
  ],
};

const validSecondPass = {
  mealItems: [
    {
      mealItemName: 'roti',
      ingredients: [
        {
          ingredientName: 'whole wheat flour', canonicalIdentity: 'whole wheat flour',
          lookupAliases: ['wholemeal flour', 'atta'], retrievalIntent: 'GENERIC_INGREDIENT',
          amountGrams: { estimate: 35, min: 30, max: 40, origin: 'model_inferred' },
        },
        {
          ingredientName: 'water', canonicalIdentity: 'water',
          lookupAliases: [], retrievalIntent: 'GENERIC_INGREDIENT',
          amountGrams: { estimate: 20, min: 15, max: 25, origin: 'model_inferred' },
        },
      ],
      variations: [],
    },
    {
      mealItemName: 'dal',
      ingredients: [
        {
          ingredientName: 'lentils', canonicalIdentity: 'lentils',
          lookupAliases: ['dal', 'daal'], retrievalIntent: 'GENERIC_INGREDIENT',
          amountGrams: { estimate: 55, min: 45, max: 65, origin: 'model_inferred' },
        },
        {
          ingredientName: 'water', canonicalIdentity: 'water',
          lookupAliases: [], retrievalIntent: 'GENERIC_INGREDIENT',
          amountGrams: { estimate: 110, min: 80, max: 150, origin: 'model_inferred' },
        },
        {
          ingredientName: 'cooking oil', canonicalIdentity: 'vegetable oil',
          lookupAliases: ['cooking oil'], retrievalIntent: 'GENERIC_INGREDIENT',
          amountGrams: { estimate: 8, min: 4, max: 12, origin: 'model_inferred' },
        },
        {
          ingredientName: 'spices', canonicalIdentity: 'mixed spices',
          lookupAliases: ['spice blend'], retrievalIntent: 'GENERIC_INGREDIENT',
          amountGrams: { estimate: 3, min: 2, max: 5, origin: 'model_inferred' },
        },
      ],
      variations: [
        { variationType: 'INGREDIENT_AMOUNT', ingredientName: 'cooking oil', alternatives: [] },
      ],
    },
  ],
};

test('passes hard assertions while leaving optional ingredients diagnostic', () => {
  const result = evaluateMealAnalysisRun(evalCase, validFirstPass, validSecondPass);

  assert.equal(result.passed, true);
  assert.equal(result.hardPassed, result.hardTotal);
  assert.equal(
    result.assertions.find((assertion) => assertion.id === 'pass2.lookup-alias-coverage')?.passed,
    true
  );
  assert.equal(
    result.assertions.find((assertion) =>
      assertion.id === 'pass2.roti.diagnostic-ingredient-1')?.passed,
    false
  );
});

test('reports empty alias coverage diagnostically without failing the run', () => {
  const withoutAliases = structuredClone(validSecondPass);
  withoutAliases.mealItems.forEach((mealItem) => {
    mealItem.ingredients.forEach((ingredient) => {
      ingredient.lookupAliases = [];
    });
  });

  const result = evaluateMealAnalysisRun(evalCase, validFirstPass, withoutAliases);
  assert.equal(result.passed, true);
  assert.equal(
    result.assertions.find((assertion) => assertion.id === 'pass2.lookup-alias-coverage')?.passed,
    false
  );
});

test('rejects treating an explicit roti count as grams', () => {
  const incorrect = structuredClone(validFirstPass);
  incorrect.mealItems[0]!.portion = {
    kind: 'AMOUNT', estimate: 4, min: 4, max: 4,
    origin: 'user_stated', perUnitGrams: null,
  };

  const result = evaluateMealAnalysisRun(evalCase, incorrect, validSecondPass);
  assert.equal(result.passed, false);
  assert.equal(
    result.assertions.find((assertion) => assertion.id === 'pass1.roti.portion-kind')?.passed,
    false
  );
});

test('accepts valid ingredient provenance and rejects dangling variations', () => {
  const incorrect = structuredClone(validSecondPass);
  incorrect.mealItems[0]!.ingredients[0]!.amountGrams.origin = 'user_stated';
  incorrect.mealItems[0]!.variations.push({
    variationType: 'INGREDIENT_VARIANT',
    ingredientName: 'roti',
    alternatives: ['chapati'],
  });

  const result = evaluateMealAnalysisRun(evalCase, validFirstPass, incorrect);
  assert.equal(result.passed, false);
  // The schema now hard-rejects dangling variation references, so the run
  // fails at pass2.schema; amount-origins is unavailable rather than wrong.
  assert.equal(
    result.assertions.find((assertion) => assertion.id === 'pass2.schema')?.passed,
    false
  );
  assert.equal(
    result.assertions.find((assertion) => assertion.id === 'pass2.amount-origins')?.passed,
    false
  );
});

test('fails when a second-pass ingredient violates an explicit exclusion', () => {
  const exclusionCase: MealAnalysisEvalCase = {
    ...evalCase,
    forbiddenIngredientGroups: [['peanut', 'peanuts', 'groundnut', 'groundnuts']],
  };
  const passing = evaluateMealAnalysisRun(exclusionCase, validFirstPass, validSecondPass);
  assert.equal(passing.passed, true);

  const missingSecondPass = evaluateMealAnalysisRun(exclusionCase, validFirstPass, undefined);
  assert.equal(
    missingSecondPass.assertions.find((assertion) =>
      assertion.id === 'pass2.forbidden-ingredient-1')?.passed,
    false
  );

  const incorrect = structuredClone(validSecondPass);
  incorrect.mealItems[1]!.ingredients.push({
    ingredientName: 'peanut oil', canonicalIdentity: 'peanut oil',
    lookupAliases: ['groundnut oil'], retrievalIntent: 'GENERIC_INGREDIENT',
    amountGrams: { estimate: 5, min: 2, max: 8, origin: 'model_inferred' },
  });

  const failing = evaluateMealAnalysisRun(exclusionCase, validFirstPass, incorrect);
  assert.equal(failing.passed, false);
  assert.equal(
    failing.assertions.find((assertion) => assertion.id === 'pass2.forbidden-ingredient-1')?.passed,
    false
  );
});

test('reports assertion pass rates without applying a threshold', () => {
  const passing = evaluateMealAnalysisRun(evalCase, validFirstPass, validSecondPass);
  const failingFirstPass = { ...validFirstPass, mealItems: [] };
  const failing = evaluateMealAnalysisRun(evalCase, failingFirstPass, undefined, 'provider failed');
  const rates = assertionPassRates([passing, failing]);

  assert.deepEqual(
    rates.find((rate) => rate.id === 'pass1.component-count'),
    { id: 'pass1.component-count', kind: 'hard', passed: 1, total: 2, passRate: 0.5 }
  );
});

test('formats each eval case with its food and context', () => {
  assert.equal(
    formatEvalCaseHeading(evalCase, 2, 20),
    '=== Eval 2/20: 4 roti daal ===\n'
      + 'Case: four-roti-daal\n'
      + 'Context: en-IN · IN · Asia/Kolkata'
  );
});

test('formats failed run output with failed hard assertions', () => {
  const result: MealAnalysisEvalRunResult = {
    caseId: evalCase.id,
    passed: false,
    hardPassed: 22,
    hardTotal: 24,
    assertions: [
      { id: 'pass1.component-count', kind: 'hard', passed: false, detail: 'wrong count' },
      { id: 'pass2.lookup-alias-coverage', kind: 'diagnostic', passed: false, detail: 'no aliases' },
      { id: 'pass2.amount-origins', kind: 'hard', passed: false, detail: 'wrong origin' },
    ],
  };

  assert.equal(
    formatEvalRunResult(result, 1, 3),
    '[1/3] FAIL 22/24 hard assertions · pass1.component-count, pass2.amount-origins'
  );
});
