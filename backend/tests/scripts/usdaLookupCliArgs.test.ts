import assert from 'node:assert/strict';
import test from 'node:test';
import { parseUsdaLookupArgs } from '../../src/scripts/usdaLookupCliArgs.js';

test('USDA lookup accepts positional words and JSON output', () => {
  assert.deepEqual(
    parseUsdaLookupArgs(['node', 'cli', 'whole', 'wheat', 'flour', '--intent', 'generic', '--json']),
    { ok: true, options: { name: 'whole wheat flour', intent: 'generic', productQuery: null, json: true } }
  );
});

test('USDA lookup accepts a named value and permits an interactive prompt', () => {
  assert.deepEqual(parseUsdaLookupArgs(['node', 'cli', '--name', ' dal cooked ']), {
    ok: true,
    options: { name: 'dal cooked', intent: null, productQuery: null, json: false },
  });
  assert.deepEqual(parseUsdaLookupArgs(['node', 'cli']), {
    ok: true,
    options: { name: null, intent: null, productQuery: null, json: false },
  });
  assert.deepEqual(parseUsdaLookupArgs(['node', 'cli', '--json']), {
    ok: false,
    kind: 'error',
    message: '--json requires an explicit food name',
  });
});

test('USDA lookup rejects conflicting input and unknown flags', () => {
  assert.deepEqual(parseUsdaLookupArgs(['node', 'cli', '--name', 'rice', 'lentils']), {
    ok: false,
    kind: 'error',
    message: 'Use either --name or positional input, not both',
  });
  assert.deepEqual(parseUsdaLookupArgs(['node', 'cli', '--limit', '10']), {
    ok: false,
    kind: 'error',
    message: 'Unknown argument: --limit',
  });
});

test('USDA lookup accepts branded product arguments', () => {
  assert.deepEqual(parseUsdaLookupArgs([
    'node', 'cli', 'pepsi', '--intent', 'branded', '--product-query', 'Pepsi cola', '--json',
  ]), {
    ok: true,
    options: { name: 'pepsi', intent: 'branded', productQuery: 'Pepsi cola', json: true },
  });
});

test('USDA lookup keeps JSON mode explicit and scopes product queries to branded intent', () => {
  assert.deepEqual(parseUsdaLookupArgs(['node', 'cli', 'pepsi', '--json']), {
    ok: false,
    kind: 'error',
    message: '--json requires --intent',
  });
  assert.deepEqual(parseUsdaLookupArgs(['node', 'cli', 'pepsi', '--intent', 'branded', '--json']), {
    ok: false,
    kind: 'error',
    message: 'branded --json lookup requires --product-query',
  });
  assert.deepEqual(parseUsdaLookupArgs([
    'node', 'cli', 'pepsi', '--intent', 'generic', '--product-query', 'Pepsi cola',
  ]), {
    ok: false,
    kind: 'error',
    message: '--product-query requires --intent branded',
  });
});
