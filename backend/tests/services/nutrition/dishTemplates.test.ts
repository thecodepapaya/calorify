import assert from 'node:assert/strict';
import test from 'node:test';
import { dishTemplateGramBounds, missingDishTemplateComponents } from '../../../src/services/nutrition/dishTemplates.js';

test('named dish template adds a missing defining component', () => {
  const additions = missingDishTemplateComponents('one masala dosa', 'dosa batter oil');
  assert.equal(additions.length, 1);
  assert.equal(additions[0]?.canonicalHint, 'potato boiled');
});

test('named dish template does not duplicate an existing component', () => {
  assert.deepEqual(
    missingDishTemplateComponents('one masala dosa', 'dosa batter potato filling oil'),
    []
  );
});

test('named dish template recognizes plural potatoes in a filling', () => {
  assert.deepEqual(
    missingDishTemplateComponents('one masala dosa', 'dosa batter masala filling potatoes spices'),
    []
  );
});

test('unrecognized dishes are left entirely to decomposition', () => {
  assert.deepEqual(missingDishTemplateComponents('one vegetable wrap', 'tortilla vegetables'), []);
});

test('named pizza template bounds oversized components without fixing every ingredient', () => {
  assert.deepEqual(
    dishTemplateGramBounds('one large slice of pepperoni pizza', 'pizza crust'),
    { presentPattern: /\b(?:crust|dough)\b/i, minGrams: 80, maxGrams: 110 }
  );
  assert.deepEqual(
    dishTemplateGramBounds('one large slice of pepperoni pizza', 'pepperoni pizza slice'),
    { presentPattern: /\bpepperoni pizza(?: slice)?\b/i, minGrams: 140, maxGrams: 180 }
  );
  assert.equal(dishTemplateGramBounds('one vegetable wrap', 'cheese'), undefined);
});
