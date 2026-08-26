import test from 'node:test';
import assert from 'node:assert/strict';
import { redactHeaders } from '../../src/utils/requestLog.js';

test('redactHeaders retains only minimal content metadata', () => {
  assert.deepEqual(redactHeaders({
    accept: 'application/json',
    'content-length': '42',
    'content-type': 'application/json',
    'accept-language': 'en-US,en;q=0.9',
    'user-agent': 'fingerprinting-value',
    'x-request-id': 'client-controlled-id',
  }), {
    accept: 'application/json',
    'content-length': '42',
    'content-type': 'application/json',
  });
});

test('redactHeaders bounds authorization values', () => {
  assert.deepEqual(
    redactHeaders({ authorization: 'Bearer private-token' }),
    { authorization: 'Bearer ***' }
  );
  assert.deepEqual(
    redactHeaders({ Authorization: 'Basic private-token' }),
    { Authorization: '[redacted]' }
  );
});

test('redactHeaders redacts known credential headers', () => {
  const result = redactHeaders({
    cookie: 'session=private',
    'proxy-authorization': 'Bearer private',
    'set-cookie': 'session=private',
    'x-api-key': 'private',
    'x-auth-token': 'private',
  });
  assert.ok(Object.values(result).every((value) => value === '[redacted]'));
});

test('redactHeaders omits unknown names and URL-bearing values', () => {
  const secret = 'PRIVATE_HEADER_CREDENTIAL';
  const result = redactHeaders({
    [`x-${secret}`]: secret,
    referer: `https://example.test/callback?token=${secret}`,
    location: `https://example.test/result?signature=${secret}`,
    'x-original-url': `/callback?token=${secret}`,
  });

  assert.deepEqual(result, {});
  assert.doesNotMatch(JSON.stringify(result), new RegExp(secret));
});

test('redactHeaders skips undefined values and handles casing', () => {
  assert.deepEqual(redactHeaders({
    'content-type': undefined,
    Accept: 'text/event-stream',
  }), { Accept: 'text/event-stream' });
});

test('redactHeaders returns an empty object for empty input', () => {
  assert.deepEqual(redactHeaders({}), {});
});
