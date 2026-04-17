import test from 'node:test';
import assert from 'node:assert/strict';
import { Readable } from 'node:stream';
import { redactHeaders, truncateForLog, bodyForLog } from './requestLog.js';

// ---------------------------------------------------------------------------
// redactHeaders
// ---------------------------------------------------------------------------

test('redactHeaders passes through non-sensitive headers', () => {
  const headers = {
    'content-type': 'application/json',
    'accept': 'text/html',
    'x-request-id': 'abc123',
  };
  const result = redactHeaders(headers);
  assert.deepEqual(result, headers);
});

test('redactHeaders redacts authorization bearer token to "Bearer ***"', () => {
  const result = redactHeaders({ authorization: 'Bearer eyJhbGciOiJSUzI1NiJ9.abc.def' });
  assert.equal(result['authorization'], 'Bearer ***');
});

test('redactHeaders redacts non-bearer authorization header', () => {
  const result = redactHeaders({ authorization: 'Basic dXNlcjpwYXNz' });
  assert.equal(result['authorization'], '[redacted]');
});

test('redactHeaders redacts cookie header', () => {
  const result = redactHeaders({ cookie: 'session=abc123; other=value' });
  assert.equal(result['cookie'], '[redacted]');
});

test('redactHeaders redacts set-cookie header', () => {
  const result = redactHeaders({ 'set-cookie': 'session=abc123; HttpOnly' });
  assert.equal(result['set-cookie'], '[redacted]');
});

test('redactHeaders redacts x-api-key header', () => {
  const result = redactHeaders({ 'x-api-key': 'secret-key-12345' });
  assert.equal(result['x-api-key'], '[redacted]');
});

test('redactHeaders redacts x-auth-token header', () => {
  const result = redactHeaders({ 'x-auth-token': 'my-auth-token' });
  assert.equal(result['x-auth-token'], '[redacted]');
});

test('redactHeaders skips undefined header values', () => {
  const result = redactHeaders({ 'content-type': undefined as any, accept: 'text/html' });
  assert.equal(Object.hasOwn(result, 'content-type'), false);
  assert.equal(result['accept'], 'text/html');
});

test('redactHeaders handles case-insensitive matching for authorization', () => {
  const result = redactHeaders({ 'Authorization': 'Bearer token123' });
  assert.equal(result['Authorization'], 'Bearer ***');
});

test('redactHeaders handles mixed sensitive and non-sensitive headers', () => {
  const result = redactHeaders({
    authorization: 'Bearer token123',
    'content-type': 'application/json',
    cookie: 'session=abc',
    'accept-language': 'en-US',
  });
  assert.equal(result['authorization'], 'Bearer ***');
  assert.equal(result['content-type'], 'application/json');
  assert.equal(result['cookie'], '[redacted]');
  assert.equal(result['accept-language'], 'en-US');
});

test('redactHeaders returns empty object for empty input', () => {
  const result = redactHeaders({});
  assert.deepEqual(result, {});
});

// ---------------------------------------------------------------------------
// truncateForLog
// ---------------------------------------------------------------------------

test('truncateForLog returns short string unchanged', () => {
  const result = truncateForLog('hello world', 100);
  assert.equal(result, 'hello world');
});

test('truncateForLog returns empty string unchanged', () => {
  const result = truncateForLog('', 100);
  assert.equal(result, '');
});

test('truncateForLog truncates long string with suffix', () => {
  const longString = 'a'.repeat(200);
  const result = truncateForLog(longString, 50);
  assert.ok(result.endsWith('... [truncated]'));
});

test('truncateForLog does not truncate string at exactly the byte limit', () => {
  const str = 'a'.repeat(20);
  const result = truncateForLog(str, 20);
  assert.equal(result, str);
});

test('truncateForLog handles unicode characters correctly', () => {
  // "🍕" is 4 bytes; 5 emojis = 20 bytes
  const str = '🍕🍔🌮🌯🥗';
  const byteLen = Buffer.byteLength(str, 'utf8');
  const result = truncateForLog(str, byteLen);
  assert.equal(result, str);
});

test('truncateForLog truncates unicode string that exceeds limit', () => {
  const str = '🍕🍔🌮🌯🥗'; // 20 bytes
  const result = truncateForLog(str, 10);
  assert.ok(result.endsWith('... [truncated]'));
});

test('truncateForLog result fits within maxBytes when truncated', () => {
  const str = 'a'.repeat(1000);
  const maxBytes = 100;
  const result = truncateForLog(str, maxBytes);
  assert.ok(Buffer.byteLength(result, 'utf8') <= maxBytes);
});

// ---------------------------------------------------------------------------
// bodyForLog
// ---------------------------------------------------------------------------

test('bodyForLog returns null for undefined', () => {
  assert.equal(bodyForLog(undefined, 1000), null);
});

test('bodyForLog returns null for null', () => {
  assert.equal(bodyForLog(null, 1000), null);
});

test('bodyForLog returns short string unchanged', () => {
  assert.equal(bodyForLog('hello', 100), 'hello');
});

test('bodyForLog truncates string that exceeds maxBytes', () => {
  const longString = 'a'.repeat(2000);
  const result = bodyForLog(longString, 100);
  assert.ok(typeof result === 'string');
  assert.ok((result as string).includes('[truncated]'));
});

test('bodyForLog converts Buffer to string', () => {
  const buf = Buffer.from('hello world', 'utf8');
  assert.equal(bodyForLog(buf, 1000), 'hello world');
});

test('bodyForLog truncates large Buffer', () => {
  const buf = Buffer.from('a'.repeat(2000), 'utf8');
  const result = bodyForLog(buf, 100);
  assert.ok(typeof result === 'string');
  assert.ok((result as string).includes('[truncated]'));
});

test('bodyForLog returns object for small JSON object (keeps as object for logging)', () => {
  const obj = { key: 'value', number: 42 };
  const result = bodyForLog(obj, 10000);
  assert.deepEqual(result, obj);
});

test('bodyForLog truncates large object as string', () => {
  const obj = { data: 'x'.repeat(5000) };
  const result = bodyForLog(obj, 100);
  assert.ok(typeof result === 'string');
  assert.ok((result as string).includes('[truncated]'));
});

test('bodyForLog returns [Stream] for readable stream', () => {
  const stream = new Readable({ read() {} });
  const result = bodyForLog(stream, 1000);
  assert.equal(result, '[Stream]');
});

test('bodyForLog converts numbers to string', () => {
  assert.equal(bodyForLog(12345, 100), '12345');
});

test('bodyForLog handles non-serializable objects gracefully', () => {
  const circular: any = {};
  circular.self = circular;
  const result = bodyForLog(circular, 1000);
  assert.equal(result, '[Non-serializable]');
});
