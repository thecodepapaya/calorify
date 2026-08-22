import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';
import Fastify from 'fastify';

// ---------------------------------------------------------------------------
// Mock dependencies
// ---------------------------------------------------------------------------

const mockQuery = mock.fn(async (_sql: string, _params?: unknown[]) => ({ rows: [] }));

await mock.module('../../services/database.js', {
  namedExports: { query: mockQuery },
});

await mock.module('../../services/firebase.js', {
  namedExports: {
    verifyFirebaseToken: mock.fn(async (token: string) => {
      if (token === 'valid-token') return { uid: 'user-v1-food' };
      throw new Error('Invalid or expired authentication token');
    }),
    getUserIdFromToken: mock.fn((decoded: { uid: string }) => decoded.uid),
    initializeFirebase: mock.fn(() => {}),
  },
});

const mockConfig = {
  DATABASE_URL: 'postgres://mock' as string | null,
  ORACLE_BUCKET_DOWNLOAD_URL:
    'https://objectstorage.example.com/p/download-token/n/ns/b/bucket/o/',
  API_V1_STR: '/api/v1',
  DEBUG: false,
  ENVIRONMENT: 'development',
  MEAL_ANALYSIS_TIPS_PATH: null as string | null,
};

await mock.module('../../config.js', {
  defaultExport: mockConfig,
});

const { foodRoutes } = await import('./food.js');

// ---------------------------------------------------------------------------
// Build test app
// ---------------------------------------------------------------------------

async function buildTestApp() {
  const fastify = Fastify({ logger: false });
  await fastify.register(foodRoutes, { prefix: '/api/v1/food' });
  await fastify.ready();
  return fastify;
}

const authBearer = { authorization: 'Bearer valid-token' } as const;

function resetQuery(returnValue: { rows: unknown[] } = { rows: [] }) {
  mockQuery.mock.resetCalls();
  mockQuery.mock.mockImplementation(async () => returnValue);
}

// ---------------------------------------------------------------------------
// GET /api/v1/food/ai-summary
// ---------------------------------------------------------------------------

test('GET /ai-summary returns 401 without auth token', async () => {
  const app = await buildTestApp();
  const response = await app.inject({ method: 'GET', url: '/api/v1/food/ai-summary' });
  assert.equal(response.statusCode, 401);
  await app.close();
});

test('GET /ai-summary returns null when no DATABASE_URL', async () => {
  const prevDb = mockConfig.DATABASE_URL;
  mockConfig.DATABASE_URL = null;
  try {
    const app = await buildTestApp();
    const response = await app.inject({
      method: 'GET',
      url: '/api/v1/food/ai-summary',
      headers: { authorization: 'Bearer valid-token' },
    });
    if (response.statusCode !== 200) {
      throw new Error(response.body);
    }
    assert.equal(response.statusCode, 200);
    assert.deepEqual(response.json(), {
      mealCount: 0,
      topFoods: [],
      macroBalanceScore: 0,
      trend: 'STEADY',
    });
    await app.close();
  } finally {
    mockConfig.DATABASE_URL = prevDb;
  }
});

test('GET /ai-summary returns null summary when no row in DB', async () => {
  resetQuery({ rows: [] });
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'GET',
    url: '/api/v1/food/ai-summary',
    headers: { authorization: 'Bearer valid-token' },
  });
  if (response.statusCode !== 200) {
    throw new Error(response.body);
  }
  assert.equal(response.statusCode, 200);
  assert.deepEqual(response.json(), {
    mealCount: 0,
    topFoods: [],
    macroBalanceScore: 0,
    trend: 'STEADY',
  });
  await app.close();
});

test('GET /ai-summary returns summary and generatedAt from DB row', async () => {
  const generatedAt = new Date('2024-01-15T10:00:00Z');
  const mealRows = [
    {
      logged_at: new Date('2024-01-15T10:00:00Z'),
      logged_meal_name: 'Oats Bowl',
      logged_meal_type: 'BREAKFAST',
      logged_calories: 350,
      logged_protein: 18,
      logged_carbs: 45,
      logged_fat: 10,
      logged_fiber: 6,
    },
    {
      logged_at: new Date('2024-01-14T12:00:00Z'),
      logged_meal_name: 'Oats Bowl',
      logged_meal_type: 'LUNCH',
      logged_calories: 420,
      logged_protein: 28,
      logged_carbs: 42,
      logged_fat: 12,
      logged_fiber: 8,
    },
    {
      logged_at: new Date('2024-01-13T19:00:00Z'),
      logged_meal_name: 'Dal Rice',
      logged_meal_type: 'DINNER',
      logged_calories: 390,
      logged_protein: 14,
      logged_carbs: 56,
      logged_fat: 9,
      logged_fiber: 7,
    },
  ];
  mockQuery.mock.resetCalls();
  mockQuery.mock.mockImplementation(async (sql: string) => {
    if (sql.includes('ai_summaries')) {
      return { rows: [{ summary: 'You logged healthy meals!', generated_at: generatedAt }] };
    }
    if (sql.includes('meal_analysis_session')) {
      return { rows: mealRows };
    }
    return { rows: [] };
  });
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'GET',
    url: '/api/v1/food/ai-summary',
    headers: { authorization: 'Bearer valid-token' },
  });
  assert.equal(response.statusCode, 200);
  const body = response.json();
  assert.equal(body.summary, 'You logged healthy meals!');
  assert.equal(body.generatedAt, generatedAt.toISOString());
  assert.equal(body.mealCount, 3);
  assert.deepEqual(body.topFoods, ['Oats Bowl', 'Dal Rice']);
  assert.equal(typeof body.macroBalanceScore, 'number');
  assert.ok(['UP', 'DOWN', 'STEADY', 'UNSPECIFIED'].includes(body.trend));
  await app.close();
});

test('GET /ai-summary returns the stats snapshot stored with the narrative', async () => {
  const generatedAt = new Date('2026-08-21T03:30:00Z');
  mockQuery.mock.resetCalls();
  mockQuery.mock.mockImplementation(async (sql: string) => {
    if (sql.includes('ai_summaries')) {
      return {
        rows: [{
          summary: 'Snapshot summary',
          generated_at: generatedAt,
          stats_snapshot: {
            mealCount: 4,
            topFoods: ['Dal'],
            macroBalanceScore: 77,
            trend: 'UP',
          },
        }],
      };
    }
    throw new Error('Current meals must not be queried for a snapshotted summary');
  });
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'GET',
    url: '/api/v1/food/ai-summary',
    headers: authBearer,
  });
  assert.equal(response.statusCode, 200);
  assert.deepEqual(response.json(), {
    summary: 'Snapshot summary',
    generatedAt: generatedAt.toISOString(),
    mealCount: 4,
    topFoods: ['Dal'],
    macroBalanceScore: 77,
    trend: 'UP',
  });
  assert.equal(mockQuery.mock.calls.length, 1);
  await app.close();
});

test('GET /ai-summary does not expose unexpected database errors', async () => {
  const secret = 'postgres://admin:db-secret-value@private-host/calorify';
  mockQuery.mock.mockImplementationOnce(async () => {
    throw new Error(`Database connection failed: ${secret}`);
  });
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'GET',
    url: '/api/v1/food/ai-summary',
    headers: authBearer,
  });
  assert.equal(response.statusCode, 500);
  assert.deepEqual(response.json(), {
    ok: false,
    message: 'Failed to load AI meal summary',
  });
  assert.equal(response.body.includes(secret), false);
  await app.close();
});

// ---------------------------------------------------------------------------
// GET /api/v1/food/meal-analysis-tips
// ---------------------------------------------------------------------------

test('GET /meal-analysis-tips returns 401 without auth token', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'GET',
    url: '/api/v1/food/meal-analysis-tips',
  });
  assert.equal(response.statusCode, 401);
  await app.close();
});

test('GET /meal-analysis-tips returns version and non-empty tips when authenticated', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'GET',
    url: '/api/v1/food/meal-analysis-tips',
    headers: {
      authorization: 'Bearer valid-token',
      'accept-language': 'en-US,en;q=0.9',
    },
  });
  assert.equal(response.statusCode, 200);
  const body = response.json() as { version: unknown; tips: unknown };
  assert.equal(typeof body.version, 'number');
  assert.ok(Array.isArray(body.tips));
  assert.ok((body.tips as string[]).length > 0);
  assert.ok((body.tips as string[]).every((t) => typeof t === 'string'));
  await app.close();
});

test('GET /meal-analysis-tips?count=1 returns a single tip when authenticated', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'GET',
    url: '/api/v1/food/meal-analysis-tips?count=1',
    headers: {
      authorization: 'Bearer valid-token',
      'accept-language': 'en-US,en;q=0.9',
    },
  });
  assert.equal(response.statusCode, 200);
  const body = response.json() as { tips: string[] };
  assert.equal(body.tips.length, 1);
  assert.ok(body.tips[0]!.length > 0);
  await app.close();
});

test('GET /meal-analysis-tips?count=0 returns 400', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'GET',
    url: '/api/v1/food/meal-analysis-tips?count=0',
    headers: {
      authorization: 'Bearer valid-token',
      'accept-language': 'en-US,en;q=0.9',
    },
  });
  assert.equal(response.statusCode, 400);
  await app.close();
});

test('GET /meal-analysis-tips?count=101 returns 400', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'GET',
    url: '/api/v1/food/meal-analysis-tips?count=101',
    headers: {
      authorization: 'Bearer valid-token',
      'accept-language': 'en-US,en;q=0.9',
    },
  });
  assert.equal(response.statusCode, 400);
  await app.close();
});

test('GET /export returns CSV meal history for authenticated user', async () => {
  resetQuery({
    rows: [
      {
        logged_at: new Date('2024-01-15T10:00:00Z'),
        logged_meal_name: 'Oats Bowl',
        logged_meal_type: 'BREAKFAST',
        logged_calories: 350,
        logged_protein: 18,
        logged_carbs: 45,
        logged_fat: 10,
        logged_fiber: 6,
      },
    ],
  });
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'GET',
    url: '/api/v1/food/export',
    headers: { authorization: 'Bearer valid-token' },
  });
  assert.equal(response.statusCode, 200);
  assert.match(response.headers['content-type'] ?? '', /text\/csv/);
  assert.match(response.body, /logged_at,meal_type,meal_name,calories/);
  assert.match(response.body, /Oats Bowl/);
  await app.close();
});

test('GET /export does not expose unexpected database errors', async () => {
  const secret = 'database-password=export-secret-value';
  mockQuery.mock.mockImplementationOnce(async () => {
    throw new Error(`Export query failed: ${secret}`);
  });
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'GET',
    url: '/api/v1/food/export',
    headers: authBearer,
  });
  assert.equal(response.statusCode, 500);
  assert.deepEqual(response.json(), {
    ok: false,
    message: 'Failed to export meal history',
  });
  assert.equal(response.body.includes(secret), false);
  await app.close();
});
