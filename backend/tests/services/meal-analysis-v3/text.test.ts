import assert from 'node:assert/strict';
import test from 'node:test';
import { matchableText, normalized } from '../../../src/services/meal-analysis-v3/text.js';

test('normalized preserves distinct non-Latin identities', () => {
  // The eval-side bug: stripping non-a-z0-9 collapsed these to ''.
  assert.notEqual(normalized('계란'), normalized('신라면 큰사발'));
  assert.notEqual(normalized('味噌汁'), normalized('鮭おにぎり'));
  assert.notEqual(normalized('重庆小面'), normalized('煎蛋'));
  assert.equal(normalized('味噌汁'), '味噌汁');
});

test('matchableText folds diacritics to a Latin-centric skeleton', () => {
  assert.equal(matchableText('café au lait'), 'cafe au lait');
  assert.equal(matchableText('café au lait d\'avoine'), 'cafe au lait d avoine');
  assert.equal(matchableText('Croque-Madame'), 'croque madame');
  // Both sides of a comparison fold identically, so accented model output
  // matches unaccented dataset aliases.
  assert.equal(matchableText('café au lait d\'avoine'), matchableText('cafe au lait d avoine'));
});

test('matchableText reduces pure non-Latin text to an empty skeleton', () => {
  // By design: matchableText is only for Latin alias matching. Identity and
  // pass pairing must use normalized()/pairMealItemsWithRecipes, which keep
  // non-Latin text intact.
  assert.equal(matchableText('계란'), '');
  assert.equal(matchableText('味噌汁'), '');
});

test('normalized and matchableText agree on plain English', () => {
  assert.equal(normalized('Green Beans'), 'green beans');
  assert.equal(matchableText('Green Beans'), 'green beans');
});
