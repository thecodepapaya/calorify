import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';
import Fastify from 'fastify';

// ---------------------------------------------------------------------------
// Mock dependencies
// ---------------------------------------------------------------------------

const mockQuery = mock.fn(async (_sql: string, _params?: unknown[]) => ({ rows: [] }));

await mock.module('../../services/infrastructure/database.js', {
  namedExports: { query: mockQuery },
});

await mock.module('../../services/infrastructure/firebase.js', {
  namedExports: {
    verifyFirebaseToken: mock.fn(async (token: string) => {
      if (token === 'valid-user-token') return { uid: 'user-profile-test' };
      throw new Error('Invalid or expired authentication token');
    }),
    getUserIdFromToken: mock.fn((decoded: { uid: string }) => decoded.uid),
    initializeFirebase: mock.fn(() => {}),
  },
});

const { userRoutes } = await import('./user.js');

// ---------------------------------------------------------------------------
// Build test app
// ---------------------------------------------------------------------------

async function buildTestApp() {
  const fastify = Fastify({ logger: false });
  await fastify.register(userRoutes, { prefix: '/api/v1/user' });
  await fastify.ready();
  return fastify;
}

function resetQuery(returnValue: { rows: unknown[] } = { rows: [] }) {
  mockQuery.mock.resetCalls();
  mockQuery.mock.mockImplementation(async () => returnValue);
}

const AUTH_HEADERS = { authorization: 'Bearer valid-user-token' };
const PROFILE_URL = '/api/v1/user/profile';

// ---------------------------------------------------------------------------
// POST /api/v1/user/profile — authentication
// ---------------------------------------------------------------------------

test('POST /profile returns 401 without auth token', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: PROFILE_URL,
    payload: { height: 175 },
  });
  assert.equal(response.statusCode, 401);
  await app.close();
});

test('POST /profile returns 401 with invalid token', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: PROFILE_URL,
    headers: { authorization: 'Bearer bad-token' },
    payload: { height: 175 },
  });
  assert.equal(response.statusCode, 401);
  await app.close();
});

// ---------------------------------------------------------------------------
// POST /api/v1/user/profile — profile creation
// ---------------------------------------------------------------------------

test('POST /profile saves a new profile', async () => {
  resetQuery({ rows: [] });
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: PROFILE_URL,
    headers: AUTH_HEADERS,
    payload: {
      height: 175,
      weight: 70,
      gender: 'MALE',
      activityLevel: 'MODERATELY_ACTIVE',
    },
  });
  assert.equal(response.statusCode, 200);
  const body = response.json();
  assert.equal(body.ok, true);
  assert.ok(body.message.includes('saved'));
  await app.close();
});

test('POST /profile INSERT query includes gen_random_uuid()', async () => {
  resetQuery({ rows: [] });
  const app = await buildTestApp();
  await app.inject({
    method: 'POST',
    url: PROFILE_URL,
    headers: AUTH_HEADERS,
    payload: { weight: 65 },
  });
  const insertCall = mockQuery.mock.calls.find(
    (c) => (c.arguments[0] as string).includes('INSERT INTO user_profile')
  );
  assert.ok(insertCall !== undefined);
  assert.ok((insertCall.arguments[0] as string).includes('gen_random_uuid()'));
  await app.close();
});

test('POST /profile passes userId as first param in INSERT', async () => {
  resetQuery({ rows: [] });
  const app = await buildTestApp();
  await app.inject({
    method: 'POST',
    url: PROFILE_URL,
    headers: AUTH_HEADERS,
    payload: { height: 170 },
  });
  const insertCall = mockQuery.mock.calls.find(
    (c) => (c.arguments[0] as string).includes('INSERT INTO user_profile')
  );
  const params = insertCall!.arguments[1] as unknown[];
  assert.equal(params[0], 'user-profile-test');
  await app.close();
});

// ---------------------------------------------------------------------------
// POST /api/v1/user/profile — atomic profile update
// ---------------------------------------------------------------------------

test('POST /profile uses one atomic upsert query', async () => {
  resetQuery({ rows: [] });
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: PROFILE_URL,
    headers: AUTH_HEADERS,
    payload: { weight: 68, dailyCalorieGoal: 2000 },
  });
  assert.equal(response.statusCode, 200);
  const body = response.json();
  assert.equal(body.ok, true);
  assert.ok(body.message.includes('saved'));
  assert.equal(mockQuery.mock.callCount(), 1);
  const sql = mockQuery.mock.calls[0].arguments[0] as string;
  assert.ok(sql.includes('ON CONFLICT (user_id) DO UPDATE'));
  await app.close();
});

test('POST /profile upsert uses COALESCE to preserve existing fields', async () => {
  resetQuery({ rows: [] });
  const app = await buildTestApp();
  await app.inject({
    method: 'POST',
    url: PROFILE_URL,
    headers: AUTH_HEADERS,
    payload: { weight: 72 },
  });
  const upsertCall = mockQuery.mock.calls.find(
    (c) => (c.arguments[0] as string).includes('INSERT INTO user_profile')
  );
  assert.ok(upsertCall !== undefined);
  assert.ok((upsertCall.arguments[0] as string).includes('COALESCE'));
  await app.close();
});

test('POST /profile upsert passes null for omitted fields', async () => {
  resetQuery({ rows: [] });
  const app = await buildTestApp();
  await app.inject({
    method: 'POST',
    url: PROFILE_URL,
    headers: AUTH_HEADERS,
    payload: { weight: 72 }, // only weight, rest should be null
  });
  const upsertCall = mockQuery.mock.calls.find(
    (c) => (c.arguments[0] as string).includes('INSERT INTO user_profile')
  );
  const params = upsertCall!.arguments[1] as unknown[];
  // height is $2; $1 is the authenticated user ID.
  assert.equal(params[1], null);
  await app.close();
});

test('PUT /profile replaces the full snapshot and clears omitted fields', async () => {
  resetQuery({ rows: [] });
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'PUT',
    url: PROFILE_URL,
    headers: AUTH_HEADERS,
    payload: { weight: 72 },
  });
  assert.equal(response.statusCode, 200, response.body);
  assert.equal(mockQuery.mock.callCount(), 1);
  const [sql, params] = mockQuery.mock.calls[0].arguments as [string, unknown[]];
  assert.ok(sql.includes('height = EXCLUDED.height'));
  assert.ok(!sql.includes('COALESCE'));
  assert.equal(params[1], null); // omitted height is cleared
  assert.equal(params[2], 72);
  assert.equal(params[5], null); // omitted date of birth is cleared
  await app.close();
});

// ---------------------------------------------------------------------------
// POST /api/v1/user/profile — field validation
// ---------------------------------------------------------------------------

test('POST /profile accepts all valid gender values', async () => {
  const app = await buildTestApp();
  for (const gender of ['MALE', 'FEMALE', 'OTHER']) {
    resetQuery({ rows: [] });
    const response = await app.inject({
      method: 'POST',
      url: PROFILE_URL,
      headers: AUTH_HEADERS,
      payload: { gender },
    });
    assert.equal(response.statusCode, 200, `Failed for gender: ${gender}`);
  }
  await app.close();
});

test('POST /profile accepts all valid weightGoal values', async () => {
  const app = await buildTestApp();
  for (const weightGoal of ['LOSE_WEIGHT', 'MAINTAIN_WEIGHT', 'GAIN_WEIGHT']) {
    resetQuery({ rows: [] });
    const response = await app.inject({
      method: 'POST',
      url: PROFILE_URL,
      headers: AUTH_HEADERS,
      payload: { weightGoal },
    });
    assert.equal(response.statusCode, 200, `Failed for weightGoal: ${weightGoal}`);
  }
  await app.close();
});

test('POST /profile accepts all valid activityLevel values', async () => {
  const app = await buildTestApp();
  for (const activityLevel of [
    'SEDENTARY', 'LIGHTLY_ACTIVE', 'MODERATELY_ACTIVE', 'VERY_ACTIVE', 'EXTREMELY_ACTIVE',
  ]) {
    resetQuery({ rows: [] });
    const response = await app.inject({
      method: 'POST',
      url: PROFILE_URL,
      headers: AUTH_HEADERS,
      payload: { activityLevel },
    });
    assert.equal(response.statusCode, 200, `Failed for activityLevel: ${activityLevel}`);
  }
  await app.close();
});

test('POST /profile stores dateOfBirth as a calendar date', async () => {
  resetQuery({ rows: [] });
  const app = await buildTestApp();
  const dobIso = '1990-01-01';
  const response = await app.inject({
    method: 'POST',
    url: PROFILE_URL,
    headers: AUTH_HEADERS,
    payload: { dateOfBirth: dobIso },
  });
  assert.equal(response.statusCode, 200, response.body);
  const insertCall = mockQuery.mock.calls.find(
    (c) => (c.arguments[0] as string).includes('INSERT INTO user_profile')
  );
  const params = insertCall!.arguments[1] as unknown[];
  // dateOfBirth is param[5] (userId, height, weight, targetWeight, gender, dateOfBirth)
  assert.equal(params[5], dobIso);
  await app.close();
});

test('POST /profile normalizes legacy offset-less dateOfBirth timestamps', async () => {
  resetQuery({ rows: [] });
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: PROFILE_URL,
    headers: AUTH_HEADERS,
    payload: { dateOfBirth: '1990-01-01T00:00:00.000' },
  });
  assert.equal(response.statusCode, 200, response.body);
  const insertCall = mockQuery.mock.calls.find(
    (call) => (call.arguments[0] as string).includes('INSERT INTO user_profile')
  );
  const params = insertCall!.arguments[1] as unknown[];
  assert.equal(params[5], '1990-01-01');
  await app.close();
});

test('POST /profile accepts empty body (all fields optional)', async () => {
  resetQuery({ rows: [] });
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: PROFILE_URL,
    headers: AUTH_HEADERS,
    payload: {},
  });
  assert.equal(response.statusCode, 200);
  await app.close();
});

test('POST /profile rejects implausibly low calorie goals', async () => {
  resetQuery({ rows: [] });
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: PROFILE_URL,
    headers: AUTH_HEADERS,
    payload: { dailyCalorieGoal: 100 },
  });
  assert.equal(response.statusCode, 400, response.body);
  assert.equal(mockQuery.mock.callCount(), 0);
  await app.close();
});

test('POST /profile rejects future dates of birth', async () => {
  resetQuery({ rows: [] });
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: PROFILE_URL,
    headers: AUTH_HEADERS,
    payload: { dateOfBirth: '2999-01-01' },
  });
  assert.equal(response.statusCode, 400, response.body);
  assert.equal(mockQuery.mock.callCount(), 0);
  await app.close();
});

// ---------------------------------------------------------------------------
// POST /api/v1/user/profile — error handling
// ---------------------------------------------------------------------------

test('POST /profile returns 500 when database query throws', async () => {
  const secret = 'postgres-password=profile-secret-value';
  mockQuery.mock.mockImplementation(async () => {
    throw new Error(`DB connection refused: ${secret}`);
  });
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: PROFILE_URL,
    headers: AUTH_HEADERS,
    payload: { weight: 70 },
  });
  assert.equal(response.statusCode, 500);
  const body = response.json();
  assert.deepEqual(body, {
    ok: false,
    message: 'Failed to save user profile',
  });
  assert.equal(response.body.includes(secret), false);
  await app.close();
});
