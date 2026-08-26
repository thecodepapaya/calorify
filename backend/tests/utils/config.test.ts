import test from 'node:test';
import assert from 'node:assert/strict';
import { parseTrustProxy } from '../../src/config.js';

test('parseTrustProxy defaults to disabled', () => {
  assert.equal(parseTrustProxy(undefined), false);
  assert.equal(parseTrustProxy('false'), false);
  assert.equal(parseTrustProxy('0'), false);
});

test('parseTrustProxy preserves boolean trust configuration', () => {
  assert.equal(parseTrustProxy('true'), true);
});

test('parseTrustProxy accepts a positive proxy hop count', () => {
  assert.equal(parseTrustProxy('1'), 1);
  assert.equal(parseTrustProxy(' 2 '), 2);
});

test('parseTrustProxy rejects invalid trust configuration', () => {
  assert.throws(() => parseTrustProxy('all'), /TRUST_PROXY/);
  assert.throws(() => parseTrustProxy('-1'), /TRUST_PROXY/);
  assert.throws(() => parseTrustProxy('99999999999999999999'), /TRUST_PROXY/);
});
