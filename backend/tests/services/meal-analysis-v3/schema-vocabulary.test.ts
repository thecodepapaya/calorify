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
