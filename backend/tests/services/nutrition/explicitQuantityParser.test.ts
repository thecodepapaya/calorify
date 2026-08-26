import assert from 'node:assert/strict';
import test from 'node:test';
import { extractExplicitQuantityAnchors } from '../../../src/services/nutrition/explicitQuantityParser.js';

test('extractExplicitQuantityAnchors preserves explicit gram and kilogram amounts', () => {
  const anchors = extractExplicitQuantityAnchors('150 grams grilled salmon and 0.25 kg boiled potatoes');
  assert.deepEqual(anchors.map((anchor) => [anchor.foodText, anchor.grams]), [
    ['grilled salmon', 150],
    ['boiled potatoes', 250],
  ]);
});

test('extractExplicitQuantityAnchors converts cooking-fat spoon volumes', () => {
  const [teaspoon, tablespoon] = extractExplicitQuantityAnchors(
    '1 teaspoon olive oil and 2 tablespoons oil'
  );
  assert.equal(teaspoon?.grams, 4.5);
  assert.equal(tablespoon?.grams, 27.3);
});

test('extractExplicitQuantityAnchors converts reviewed cup categories and fractions', () => {
  const anchors = extractExplicitQuantityAnchors('half a cup of hummus with 1 cup cooked rice');
  assert.deepEqual(anchors.map((anchor) => anchor.grams), [128, 185]);
});

test('extractExplicitQuantityAnchors leaves unknown volume densities unresolved', () => {
  assert.deepEqual(extractExplicitQuantityAnchors('1 cup mixed fruit'), []);
});
