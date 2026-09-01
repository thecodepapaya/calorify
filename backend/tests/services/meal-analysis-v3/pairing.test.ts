import assert from 'node:assert/strict';
import test from 'node:test';
import {
  firstPassResponseSchema,
  pairMealItemsWithRecipes,
  secondPassResponseSchema,
} from '../../../src/services/meal-analysis-v3/twoPassInterpretation.js';

const koreanFirstPass = {
  food_detected: true,
  mealName: '신라면 세트',
  servingSizeText: '라면 1개 + 계란 1개',
  tip: 'Instant ramyun sodium levels are high; the broth holds most of the salt.',
  mealTypeCandidate: { value: 'LUNCH', origin: 'model_inferred' },
  mealItems: [
    {
      mealItemName: '신라면 큰사발', canonicalIdentity: 'prepared instant ramen',
      portion: { kind: 'AMOUNT', estimate: 414, min: 414, max: 414, origin: 'user_stated' },
      preparation: { method: 'BOILED', origin: 'model_inferred' },
    },
    {
      mealItemName: '계란', canonicalIdentity: 'boiled egg',
      portion: {
        kind: 'COUNT', count: 1, countMin: 1, countMax: 1, origin: 'user_stated',
        unitGrams: { estimate: 50, min: 50, max: 50, origin: 'model_inferred' },
      },
      preparation: { method: 'BOILED', origin: 'model_inferred' },
    },
  ],
};

const koreanSecondPass = {
  mealItems: [
    {
      mealItemName: '신라면 큰사발',
      ingredients: [{
        ingredientName: '면', canonicalIdentity: 'wheat noodles',
        lookupAliases: [], retrievalIntent: 'GENERIC_INGREDIENT',
        amountGrams: { estimate: 100, min: 90, max: 110, origin: 'model_inferred' },
      }],
      variations: [],
    },
    {
      mealItemName: '계란',
      ingredients: [{
        ingredientName: '계란', canonicalIdentity: 'egg',
        lookupAliases: [], retrievalIntent: 'GENERIC_INGREDIENT',
        amountGrams: { estimate: 50, min: 45, max: 55, origin: 'model_inferred' },
      }],
      variations: [],
    },
  ],
};

test('production pairing keeps non-Latin meal items distinct', () => {
  const first = firstPassResponseSchema.parse(koreanFirstPass);
  const second = secondPassResponseSchema.parse(koreanSecondPass);
  const pairs = pairMealItemsWithRecipes(first, second);

  assert.equal(pairs.length, 2);
  assert.equal(pairs[0]!.component.mealItemName, '신라면 큰사발');
  assert.equal(pairs[0]!.recipe.mealItemName, '신라면 큰사발');
  assert.equal(pairs[1]!.component.mealItemName, '계란');
  assert.equal(pairs[1]!.recipe.mealItemName, '계란');
});

test('production pairing rejects a missing second-pass meal item', () => {
  const first = firstPassResponseSchema.parse(koreanFirstPass);
  const second = secondPassResponseSchema.parse({
    mealItems: [koreanSecondPass.mealItems[0]!],
  });
  assert.throws(() => pairMealItemsWithRecipes(first, second), /exactly one recipe/);
});
