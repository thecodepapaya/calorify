import assert from 'node:assert/strict';
import test from 'node:test';
import { missingDishTemplateComponents } from './dishTemplates.js';

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

test('unrecognized dishes are left entirely to decomposition', () => {
  assert.deepEqual(missingDishTemplateComponents('one vegetable wrap', 'tortilla vegetables'), []);
});
