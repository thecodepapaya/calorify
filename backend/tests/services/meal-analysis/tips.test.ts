import assert from 'node:assert/strict';
import test from 'node:test';
import { pickRandomTips } from '../../../src/services/meal-analysis/tips.js';

test('pickRandomTips returns empty for empty items or non-positive count', () => {
  assert.deepEqual(pickRandomTips([], 5), []);
  assert.deepEqual(pickRandomTips(['a'], 0), []);
});

test('pickRandomTips returns full list when count >= length', () => {
  const items = ['a', 'b', 'c'];
  assert.deepEqual(pickRandomTips(items, 10), items);
});

test('pickRandomTips returns distinct items of requested length', () => {
  const items = Array.from({ length: 40 }, (_, i) => `x${i}`);
  for (let k = 0; k < 20; k++) {
    const r = pickRandomTips(items, 7);
    assert.equal(r.length, 7);
    assert.equal(new Set(r).size, 7);
    for (const x of r) assert.ok(items.includes(x));
  }
});
