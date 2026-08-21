import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';

// Mock firebase before importing auth
await mock.module('../services/firebase.js', {
  namedExports: {
    verifyFirebaseToken: mock.fn(async (token: string) => {
      if (token === 'valid-token') return { uid: 'user-123' };
      throw new Error('Firebase rejected token; injected-secret=auth-secret-value');
    }),
    getUserIdFromToken: mock.fn((decoded: { uid: string }) => decoded.uid),
    initializeFirebase: mock.fn(() => {}),
  },
});

const { authenticateUser, getOptionalUserId, getCurrentUserId } = await import('./auth.js');
import type { FastifyRequest, FastifyReply } from 'fastify';

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

function makeRequest(
  headers: Record<string, string | undefined> = {},
  warnings: unknown[][] = []
): FastifyRequest {
  return {
    headers,
    log: {
      warn: (...args: unknown[]) => warnings.push(args),
    },
  } as unknown as FastifyRequest;
}

function makeReply() {
  const reply: any = {};
  reply.status = (code: number) => { reply.sentStatus = code; return reply; };
  reply.send = (body: unknown) => { reply.sentBody = body; };
  return reply;
}

// ---------------------------------------------------------------------------
// authenticateUser
// ---------------------------------------------------------------------------

test('authenticateUser attaches userId to request for valid token', async () => {
  const request = makeRequest({ authorization: 'Bearer valid-token' });
  const reply = makeReply();
  await authenticateUser(request, reply as FastifyReply);
  assert.equal((request as any).userId, 'user-123');
  assert.equal(reply.sentStatus, undefined); // no error response
});

test('authenticateUser returns 401 when Authorization header is absent', async () => {
  const reply = makeReply();
  await authenticateUser(makeRequest({}), reply as FastifyReply);
  assert.equal(reply.sentStatus, 401);
  assert.deepEqual(reply.sentBody, {
    ok: false,
    message: 'Invalid or expired authentication token',
  });
});

test('authenticateUser returns 401 for malformed Authorization header (no space)', async () => {
  const reply = makeReply();
  await authenticateUser(makeRequest({ authorization: 'NotBearerToken' }), reply as FastifyReply);
  assert.equal(reply.sentStatus, 401);
});

test('authenticateUser returns 401 for non-Bearer scheme', async () => {
  const reply = makeReply();
  await authenticateUser(makeRequest({ authorization: 'Basic dXNlcjpwYXNz' }), reply as FastifyReply);
  assert.equal(reply.sentStatus, 401);
});

test('authenticateUser returns 401 when token is invalid', async () => {
  const warnings: unknown[][] = [];
  const reply = makeReply();
  await authenticateUser(
    makeRequest({ authorization: 'Bearer bad-token' }, warnings),
    reply as FastifyReply
  );
  assert.equal(reply.sentStatus, 401);
  assert.deepEqual(reply.sentBody, {
    ok: false,
    message: 'Invalid or expired authentication token',
  });
  assert.equal(warnings.length, 1);
  assert.equal(JSON.stringify(warnings).includes('auth-secret-value'), false);
});

test('authenticateUser returns 401 for empty bearer value', async () => {
  const reply = makeReply();
  // "Bearer " with trailing space only → token is empty string → falsy
  await authenticateUser(makeRequest({ authorization: 'Bearer ' }), reply as FastifyReply);
  assert.equal(reply.sentStatus, 401);
});

test('authenticateUser never exposes the Firebase exception message', async () => {
  const reply = makeReply();
  await authenticateUser(makeRequest({ authorization: 'Bearer expired-token' }), reply as FastifyReply);
  assert.deepEqual(reply.sentBody, {
    ok: false,
    message: 'Invalid or expired authentication token',
  });
  assert.equal(JSON.stringify(reply.sentBody).includes('auth-secret-value'), false);
});

// ---------------------------------------------------------------------------
// getOptionalUserId
// ---------------------------------------------------------------------------

test('getOptionalUserId returns userId for valid bearer token', async () => {
  const request = makeRequest({ authorization: 'Bearer valid-token' });
  const userId = await getOptionalUserId(request);
  assert.equal(userId, 'user-123');
});

test('getOptionalUserId returns undefined when no Authorization header', async () => {
  assert.equal(await getOptionalUserId(makeRequest({})), undefined);
});

test('getOptionalUserId returns undefined for invalid token without throwing', async () => {
  assert.equal(
    await getOptionalUserId(makeRequest({ authorization: 'Bearer bad-token' })),
    undefined
  );
});

test('getOptionalUserId returns undefined for malformed header', async () => {
  assert.equal(
    await getOptionalUserId(makeRequest({ authorization: 'Basic abc' })),
    undefined
  );
});

test('getOptionalUserId sets userId on request when token is valid', async () => {
  const request = makeRequest({ authorization: 'Bearer valid-token' });
  await getOptionalUserId(request);
  assert.equal((request as any).userId, 'user-123');
});

// ---------------------------------------------------------------------------
// getCurrentUserId
// ---------------------------------------------------------------------------

test('getCurrentUserId returns userId when set on request', () => {
  const request = makeRequest();
  (request as any).userId = 'user-abc';
  assert.equal(getCurrentUserId(request), 'user-abc');
});

test('getCurrentUserId throws when userId is not set on request', () => {
  assert.throws(
    () => getCurrentUserId(makeRequest()),
    (err: Error) => {
      assert.ok(err.message.includes('User ID not found in request'));
      return true;
    }
  );
});

test('getCurrentUserId error message mentions authentication middleware', () => {
  assert.throws(
    () => getCurrentUserId(makeRequest()),
    (err: Error) => {
      assert.ok(err.message.includes('authentication middleware'));
      return true;
    }
  );
});
