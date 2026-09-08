import assert from 'node:assert/strict';
import { mock, test } from 'node:test';
import type { FastifyInstance } from 'fastify';

// ---------------------------------------------------------------------------
// Mocks — must be registered before any import that transitively loads them.
// ---------------------------------------------------------------------------

const runMealAnalysisV3 = mock.fn(async () => {
  throw new Error('provider exploded');
});

let storedRow: Record<string, unknown> | null = null;
let lastSave: { sql: string; params: unknown[] } | null = null;

const databaseQuery = mock.fn(async (sql: string, params?: unknown[]) => {
  if (sql.includes('INSERT INTO meal_analysis_v3_session')) {
    lastSave = { sql, params: params ?? [] };
    return { rows: [], rowCount: 1 };
  }
  if (sql.includes('FROM meal_analysis_v3_session')) {
    return { rows: storedRow ? [storedRow] : [], rowCount: storedRow ? 1 : 0 };
  }
  return { rows: [], rowCount: 1 };
});

await mock.module('../../../src/config.js', {
  defaultExport: {
    APP_VERSION: '1.0.0-test',
    API_V1_STR: '/api/v1',
    API_V3_STR: '/api/v3',
    DATABASE_URL: 'postgres://mock',
    DEBUG: false,
    TRUST_PROXY: false,
    LOKI_URL: null,
    ENVIRONMENT: 'test',
    USDA_DATA_DIR: '/tmp/usda',
    USDA_DATASET_VERSION: null,
    USDA_SOURCE_RELEASE_DATE: null,
    ORACLE_BUCKET_DOWNLOAD_URL:
      'https://objectstorage.example.com/n/ns/b/bucket/o/',
    ORACLE_BUCKET_UPLOAD_URL:
      'https://objectstorage.example.com/p/upload-token/n/ns/b/bucket/o/',
  },
});

await mock.module('../../../src/services/infrastructure/firebase.js', {
  namedExports: {
    verifyFirebaseToken: mock.fn(async (token: string) => {
      if (token === 'valid-token') return { uid: 'user-123' };
      throw new Error('Invalid or expired authentication token');
    }),
    getUserIdFromToken: mock.fn((decoded: { uid: string }) => decoded.uid),
    initializeFirebase: mock.fn(() => {}),
  },
});

await mock.module('../../../src/services/infrastructure/database.js', {
  namedExports: {
    query: databaseQuery,
    usdaQuery: mock.fn(async () => ({ rows: [] })),
    getUsdaQueryLimiterSnapshot: mock.fn(() => ({ active: 0, queued: 0 })),
    isTransientUsdaQueryError: mock.fn(() => false),
    UsdaDatabaseQueryError: class UsdaDatabaseQueryError extends Error {},
    initializeDatabase: mock.fn(() => {}),
    closeDatabase: mock.fn(async () => {}),
    getClient: mock.fn(async () => ({
      query: mock.fn(async () => ({ rows: [], rowCount: 0 })),
      release: mock.fn(() => {}),
    })),
    getUsdaClient: mock.fn(async () => ({
      query: mock.fn(async () => ({ rows: [], rowCount: 0 })),
      release: mock.fn(() => {}),
    })),
    readinessCheck: mock.fn(async () => ({ database: true, usdaDataset: true })),
  },
});

await mock.module('../../../src/services/meal-analysis-v3/pipeline.js', {
  namedExports: { runMealAnalysisV3 },
});

await mock.module('../../../src/utils/locale.js', {
  namedExports: {
    getLocaleFromRequest: mock.fn(() => 'en'),
    getLocaleTagFromRequest: mock.fn(() => 'en'),
    getCountryFromRequest: mock.fn(() => 'US'),
    getTimeZoneFromRequest: mock.fn(() => 'America/New_York'),
  },
});

const { buildApp } = await import('../../../src/index.js');

const context = {
  locale: 'en-US',
  countryCode: 'US',
  timeZone: 'America/New_York',
  capturedAt: '2026-09-08T16:43:48.000Z',
};

test('persists a terminal failure state when the pipeline fails', async () => {
  const app: FastifyInstance = await buildApp({ logger: false });
  try {
    const res = await app.inject({
      method: 'POST',
      url: '/api/v3/food/analyze-text',
      headers: { authorization: 'Bearer valid-token' },
      payload: {
        analysisId: '11111111-1111-4111-8111-111111111111',
        text: '4 roti daal raita',
        context,
      },
    });
    assert.equal(res.statusCode, 200);
    assert.match(res.body, /"event":"ERROR"/);
    assert.ok(lastSave, 'expected a durable session save');
    assert.match(lastSave.sql, /failure_data/);
    const failure = JSON.parse(String(lastSave.params[7])) as Record<string, unknown>;
    assert.equal(failure.code, 'ANALYSIS_UNAVAILABLE');
    assert.equal(failure.retryable, true);
    assert.equal(failure.recoveryAction, 'RETRY');
    assert.equal(typeof failure.failedAt, 'string');
  } finally {
    await app.close();
  }
});

test('resume replays the terminal failure instead of re-running', async () => {
  storedRow = {
    user_id: 'user-123',
    analysis_id: '22222222-2222-4222-8222-222222222222',
    input_data: {
      analysisId: '22222222-2222-4222-8222-222222222222',
      text: '4 roti daal raita',
      context,
    },
    input_digest: 'digest',
    result_data: null,
    failure_data: JSON.stringify({
      code: 'INVALID_MODEL_OUTPUT',
      retryable: true,
      recoveryAction: 'RETRY',
      failedAt: '2026-09-08T16:43:50.493Z',
    }),
    nutrition_answers: null,
    meal_type_answer: null,
  };
  const app: FastifyInstance = await buildApp({ logger: false });
  try {
    const callsBefore = runMealAnalysisV3.mock.callCount();
    const res = await app.inject({
      method: 'POST',
      url: '/api/v3/food/resume',
      headers: { authorization: 'Bearer valid-token' },
      payload: { analysisId: '22222222-2222-4222-8222-222222222222' },
    });
    assert.equal(res.statusCode, 200);
    assert.match(res.body, /"event":"ERROR"/);
    assert.match(res.body, /INVALID_MODEL_OUTPUT/);
    assert.equal(runMealAnalysisV3.mock.callCount(), callsBefore);
  } finally {
    await app.close();
  }
});
