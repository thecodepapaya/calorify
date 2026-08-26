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
  API_V2_STR: '/api/v2',
  DEBUG: false,
  ENVIRONMENT: 'development',
  MEAL_ANALYSIS_TIPS_PATH: null as string | null,
};

await mock.module('../../config.js', {
  defaultExport: mockConfig,
});

class MockAiSummaryRequestError extends Error {
  constructor(
    readonly statusCode: number,
    readonly code: string,
    message: string,
    readonly retryAfter?: number
  ) { super(message); }
}

const mockGenerateAiSummary = mock.fn(async () => ({
  locale: 'hi',
  response: {
    summary: 'संतुलित भोजन जारी रखें।',
    generatedAt: '2026-08-25T10:00:00.000Z',
    mealCount: 2,
    topFoods: ['Dal'],
    macroBalanceScore: 80,
    trend: 'UNSPECIFIED',
  },
}));

await mock.module('../../services/summaries/service.js', {
  namedExports: {
    AiSummaryRequestError: MockAiSummaryRequestError,
    generateAiSummary: mockGenerateAiSummary,
  },
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
// POST /api/v1/food/ai-summary/generate
// ---------------------------------------------------------------------------

test('POST /ai-summary/generate returns 401 without auth token', async () => {
  const app = await buildTestApp();
  const response = await app.inject({ method: 'POST', url: '/api/v1/food/ai-summary/generate', payload: {} });
  assert.equal(response.statusCode, 401);
  await app.close();
});

test('POST /ai-summary/generate returns the generated response and locale', async () => {
  mockGenerateAiSummary.mock.resetCalls();
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST', url: '/api/v1/food/ai-summary/generate', headers: authBearer,
    payload: { summaryLocalDate: '2026-08-25' },
  });
  assert.equal(response.statusCode, 200);
  assert.equal(response.headers['content-language'], 'hi');
  assert.equal(response.json().mealCount, 2);
  assert.deepEqual(mockGenerateAiSummary.mock.calls[0]?.arguments, ['user-v1-food', { summaryLocalDate: '2026-08-25' }]);
  await app.close();
});

test('POST /ai-summary/generate forwards retry metadata', async () => {
  mockGenerateAiSummary.mock.mockImplementationOnce(async () => {
    throw new MockAiSummaryRequestError(429, 'summary_cooldown', 'Cooling down', 42);
  });
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST', url: '/api/v1/food/ai-summary/generate', headers: authBearer, payload: {},
  });
  assert.equal(response.statusCode, 429);
  assert.equal(response.headers['retry-after'], '42');
  assert.equal(response.json().code, 'summary_cooldown');
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
