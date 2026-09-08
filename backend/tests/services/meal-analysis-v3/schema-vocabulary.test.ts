import assert from 'node:assert/strict';
import test from 'node:test';
import {
  FIRST_PASS_RESPONSE_JSON_SCHEMA,
  FIRST_PASS_SYSTEM_PROMPT,
  SECOND_PASS_RESPONSE_JSON_SCHEMA,
  SECOND_PASS_SYSTEM_PROMPT,
} from '../../../src/services/meal-analysis-v3/twoPassInterpretation.js';

test('model-facing schemas and prompts use the mealItems vocabulary', () => {
  const first = JSON.stringify(FIRST_PASS_RESPONSE_JSON_SCHEMA);
  const second = JSON.stringify(SECOND_PASS_RESPONSE_JSON_SCHEMA);
  assert.equal(first.includes('"mealItems"'), true);
  assert.equal(first.includes('"mealItemName"'), true);
  assert.equal(first.includes('"componentName"'), false);
  assert.equal(second.includes('"mealItems"'), true);
  assert.equal(second.includes('"componentName"'), false);
  assert.equal(FIRST_PASS_SYSTEM_PROMPT.includes('component'), false);
  assert.equal(SECOND_PASS_SYSTEM_PROMPT.includes('component'), false);
  assert.equal(FIRST_PASS_SYSTEM_PROMPT.includes('meal items'), true);
  assert.equal(SECOND_PASS_SYSTEM_PROMPT.includes('meal item'), true);
});

test('model-facing schemas carry field descriptions without a hard meal-name cap', () => {
  const first = JSON.stringify(FIRST_PASS_RESPONSE_JSON_SCHEMA);
  const second = JSON.stringify(SECOND_PASS_RESPONSE_JSON_SCHEMA);
  assert.equal(first.includes('around 40 characters'), true);
  assert.equal(first.includes('never a transliteration'), true);
  assert.equal(second.includes('exactly match a mealItemName'), true);
  assert.equal(second.includes('per unit for COUNT'), true);
  const mealName = FIRST_PASS_RESPONSE_JSON_SCHEMA.properties.mealName as {
    anyOf?: Array<{ maxLength?: number }>;
  };
  assert.equal(mealName.anyOf?.[0]?.maxLength, 160);
});

test('second-pass lookup identities use the USDA head, specific, state format', () => {
  const second = JSON.stringify(SECOND_PASS_RESPONSE_JSON_SCHEMA);
  assert.equal(second.includes('USDA-style English food identity'), true);
  assert.equal(second.includes('head noun'), true);
  assert.equal(second.includes('cheese, nfs'), true);
  assert.equal(SECOND_PASS_SYSTEM_PROMPT.includes('USDA FoodData Central descriptions'), true);
  assert.equal(SECOND_PASS_SYSTEM_PROMPT.includes('spices, cinnamon, ground'), true);
  assert.equal(SECOND_PASS_SYSTEM_PROMPT.includes('cheese, nfs'), true);
  assert.equal(SECOND_PASS_SYSTEM_PROMPT.includes('chicken, meat only, cooked'), true);
});

test('second-pass prompt restricts ingredient-amount variations to user-stated ingredients', () => {
  assert.equal(
    SECOND_PASS_SYSTEM_PROMPT.includes(
      'Declare an INGREDIENT_AMOUNT variation only for an ingredient whose origin is user_stated'
    ),
    true
  );
  assert.equal(
    SECOND_PASS_SYSTEM_PROMPT.includes(
      'keep that uncertainty in the amountGrams range without declaring the variation'
    ),
    true
  );
});
