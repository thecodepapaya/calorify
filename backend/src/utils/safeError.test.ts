import test from 'node:test';
import assert from 'node:assert/strict';
import { safeErrorKind, safeErrorMetadata } from './safeError.js';

test('safeErrorKind exposes only allow-listed codes and bounded statuses', () => {
  assert.equal(safeErrorKind({ code: 'ETIMEDOUT' }), 'timeout');
  assert.equal(safeErrorKind({ status: 429 }), 'http_429');
  assert.deepEqual(
    safeErrorMetadata({ statusCode: 503 }, 'provider_error'),
    { errorKind: 'http_503' }
  );
});

test('safeErrorKind rejects inherited or provider-defined code strings', () => {
  assert.equal(safeErrorKind({ code: 'toString' }, 'provider_error'), 'provider_error');
  assert.equal(
    safeErrorKind({ code: 'credential=PRIVATE_TOKEN' }, 'provider_error'),
    'provider_error'
  );
});

test('safeErrorKind tolerates exception objects with throwing properties', () => {
  const error = new Error('PRIVATE_PROVIDER_MESSAGE');
  Object.defineProperty(error, 'name', {
    get: () => {
      throw new Error('PRIVATE_NAME');
    },
  });
  assert.equal(safeErrorKind(error, 'provider_error'), 'provider_error');
});
