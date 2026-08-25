import test from 'node:test';
import assert from 'node:assert/strict';
import Fastify from 'fastify';
import { createImageUploadRateLimitHook } from './foodRateLimit.js';

async function buildUploadLimitApp() {
  const app = Fastify({ logger: false, trustProxy: 1 });
  app.addHook('onRequest', async (request) => {
    const userId = request.headers['x-test-user'];
    (request as typeof request & { userId?: string }).userId =
      typeof userId === 'string' ? userId : 'test-user';
  });
  app.post(
    '/upload',
    { onRequest: createImageUploadRateLimitHook() },
    async () => ({ ok: true })
  );
  await app.ready();
  return app;
}

test('image upload admission limits each authenticated UID before parsing', async () => {
  const app = await buildUploadLimitApp();
  for (let index = 0; index < 10; index += 1) {
    const response = await app.inject({
      method: 'POST',
      url: '/upload',
      headers: {
        'content-type': 'application/octet-stream',
        'x-forwarded-for': '203.0.113.10',
        'x-test-user': 'same-user',
      },
      payload: Buffer.from('body'),
    });
    assert.equal(response.statusCode, 415);
  }

  const limited = await app.inject({
    method: 'POST',
    url: '/upload',
    headers: {
      'content-type': 'application/octet-stream',
      'x-forwarded-for': '203.0.113.10',
      'x-test-user': 'same-user',
    },
    payload: Buffer.from('body'),
  });
  assert.equal(limited.statusCode, 429);
  assert.equal(limited.headers['retry-after'], '60');
  await app.close();
});

test('image upload admission limits the trusted source IP across users', async () => {
  const app = await buildUploadLimitApp();
  for (let index = 0; index < 60; index += 1) {
    const response = await app.inject({
      method: 'POST',
      url: '/upload',
      headers: {
        'x-forwarded-for': '203.0.113.20',
        'x-test-user': `user-${index}`,
      },
    });
    assert.equal(response.statusCode, 200);
  }

  const limited = await app.inject({
    method: 'POST',
    url: '/upload',
    headers: {
      'x-forwarded-for': '203.0.113.20',
      'x-test-user': 'user-60',
    },
  });
  assert.equal(limited.statusCode, 429);
  await app.close();

  const restarted = await buildUploadLimitApp();
  const acceptedAfterRestart = await restarted.inject({
    method: 'POST',
    url: '/upload',
    headers: {
      'x-forwarded-for': '203.0.113.20',
      'x-test-user': 'user-60',
    },
  });
  assert.equal(acceptedAfterRestart.statusCode, 200);
  await restarted.close();
});
