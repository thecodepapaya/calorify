import { after, before, describe, it } from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';
import Fastify, { type FastifyInstance } from 'fastify';
import cors from '@fastify/cors';
import multipart from '@fastify/multipart';
import rateLimit from '@fastify/rate-limit';
import { errorHandler } from '../utils/errors.js';

// ---------------------------------------------------------------------------
// Mocks — must be registered before any import that transitively loads them.
// ---------------------------------------------------------------------------

await mock.module('../config.js', {
  defaultExport: {
    APP_VERSION: '1.0.0-test',
    API_V1_STR: '/api/v1',
    DATABASE_URL: 'postgres://mock',
    OPENAI_API_KEY: 'sk-test',
    DEBUG: false,
    TRUST_PROXY: false,
    LOKI_URL: null,
    ENVIRONMENT: 'test',
    MAX_BODY_LOG_BYTES: 1000,
    LOG_REQUEST_RESPONSE_BODIES: false,
    USDA_AUTO_REFRESH_ENABLED: false,
    USDA_REFRESH_CRON: '0 3 1 * *',
    USDA_DATA_DIR: '/tmp/usda',
    USDA_DATASET_VERSION: null,
    USDA_SOURCE_RELEASE_DATE: null,
    ORACLE_BUCKET_DOWNLOAD_URL:
      'https://objectstorage.example.com/n/ns/b/bucket/o/',
  },
});

await mock.module('../services/firebase.js', {
  namedExports: {
    verifyFirebaseToken: mock.fn(async (token: string) => {
      if (token === 'valid-token') return { uid: 'user-123' };
      throw new Error('Invalid or expired authentication token');
    }),
    getUserIdFromToken: mock.fn((d: any) => d.uid),
    initializeFirebase: mock.fn(() => {}),
  },
});

await mock.module('../services/database.js', {
  namedExports: {
    query: mock.fn(async () => ({ rows: [] })),
    initializeDatabase: mock.fn(() => {}),
  },
});

await mock.module('../services/nutritionEngineV2.js', {
  namedExports: {
    analyzeTextMeal: mock.fn(async function* () {
      yield {
        step: 'RESULT',
        data: {
          meal_name: 'Test',
          macros: {},
          calorie_confidence: 'HIGH',
          calorie_band: { min: 100, max: 200 },
          ingredients: [],
        },
      };
    }),
    analyzeImageMeal: mock.fn(async function* () {
      yield { step: 'RESULT', data: {} };
    }),
    continueMealAnalysis: mock.fn(async function* () {
      yield { step: 'RESULT', data: {} };
    }),
    continueMealAnalysisWithMealType: mock.fn(async function* () {
      yield { step: 'RESULT', data: {} };
    }),
    reanalyzeMeal: mock.fn(async function* () {
      yield { step: 'RESULT', data: {} };
    }),
    FEEDBACK_ISSUES: [
      'FOOD_IDENTIFICATION',
      'PORTION_SIZE',
      'CALORIE_DISTRIBUTION',
      'MACROS_WRONG',
      'MISSING_ITEMS',
      'EXTRA_ITEMS',
      'OTHER',
    ],
    MEAL_TYPES: ['BREAKFAST', 'LUNCH', 'DINNER', 'SNACK'],
  },
});

await mock.module('../services/mealAnalysisStore.js', {
  namedExports: {
    upsertMealAnalysisSession: mock.fn(async () => {}),
    getMealAnalysisSession: mock.fn(async () => null),
    recordMealAnalysisClarification: mock.fn(async () => {}),
    recordMealAnalysisMealType: mock.fn(async () => {}),
    recordMealAnalysisFeedback: mock.fn(async () => {}),
    confirmMealAnalysisLogged: mock.fn(async () => {}),
  },
});

await mock.module('../services/openAIFoodAnalysis.js', {
  namedExports: {
    detectFoodFromText: mock.fn(async () => ({ foods: [] })),
    detectFoodFromImageUrl: mock.fn(async () => ({ foods: [] })),
    analyzeFoodImage: mock.fn(async () => ({ description: 'test', foods: [] })),
    openAIFoodAnalysisService: {
      analyzeTextDescription: mock.fn(async () => ({ foods: [] })),
      analyzeImageFromUrl: mock.fn(async () => ({ foods: [] })),
      analyzeImageFromBuffer: mock.fn(async () => ({ foods: [] })),
    },
  },
});

await mock.module('../utils/locale.js', {
  namedExports: {
    getLocaleFromRequest: mock.fn(() => 'en'),
    getCountryFromRequest: mock.fn(() => 'US'),
  },
});

const { registerRoutes } = await import('../routes/index.js');

// ---------------------------------------------------------------------------
// Build the test app (mirrors src/index.ts buildApp(), minus swagger/logging)
// ---------------------------------------------------------------------------

async function buildTestApp(rateLimitMax = 100): Promise<FastifyInstance> {
  const fastify = Fastify({ logger: false });

  await fastify.register(cors, {
    origin: true,
    credentials: true,
    methods: ['GET', 'POST', 'PUT', 'DELETE', 'OPTIONS', 'PATCH'],
    allowedHeaders: [
      'Content-Type',
      'Authorization',
      'X-Requested-With',
      'Accept-Language',
    ],
  });

  await fastify.register(rateLimit, {
    global: true,
    max: rateLimitMax,
    timeWindow: '1 minute',
    errorResponseBuilder: (_request: any, context: any) => ({
      statusCode: 429,
      error: 'Too Many Requests',
      ok: false,
      message: `Rate limit exceeded. Try again in ${context.after}.`,
    }),
  });

  await fastify.register(multipart);
  await fastify.register(registerRoutes);
  fastify.setErrorHandler(errorHandler);
  await fastify.ready();
  return fastify;
}

// ---------------------------------------------------------------------------
// Shared app instance
// ---------------------------------------------------------------------------

let app: FastifyInstance;

before(async () => {
  app = await buildTestApp();
});

after(async () => {
  await app.close();
});

// ---------------------------------------------------------------------------
// Group 1 — Health routes
// ---------------------------------------------------------------------------

describe('Health routes', () => {
  it('GET / returns 200 with JSON body', async () => {
    const res = await app.inject({ method: 'GET', url: '/' });
    assert.equal(res.statusCode, 200);
    const body = res.json();
    assert.equal(typeof body, 'object');
    assert.ok(body !== null);
  });

  it('GET /health returns 200 with { status: "ok" }', async () => {
    const res = await app.inject({ method: 'GET', url: '/health' });
    assert.equal(res.statusCode, 200);
    assert.deepEqual(res.json(), { status: 'ok' });
  });
});

// ---------------------------------------------------------------------------
// Group 2 — Route registration (existence checks)
// ---------------------------------------------------------------------------

describe('Route registration', () => {
  it('GET /api/v1/food/ai-summary without auth returns 401', async () => {
    const res = await app.inject({
      method: 'GET',
      url: '/api/v1/food/ai-summary',
    });
    assert.equal(res.statusCode, 401);
  });

  it('GET /api/v1/food/meal-analysis-tips without auth returns 401', async () => {
    const res = await app.inject({
      method: 'GET',
      url: '/api/v1/food/meal-analysis-tips',
    });
    assert.equal(res.statusCode, 401);
  });

  it('POST /api/v1/food/detect-text with missing body returns 400', async () => {
    const res = await app.inject({
      method: 'POST',
      url: '/api/v1/food/detect-text',
      headers: {
        'content-type': 'application/json',
        authorization: 'Bearer valid-token',
      },
      payload: {},
    });
    assert.equal(res.statusCode, 400);
  });

  it('POST /api/v1/food/detect-image with missing body returns 400', async () => {
    const res = await app.inject({
      method: 'POST',
      url: '/api/v1/food/detect-image',
      headers: {
        'content-type': 'application/json',
        authorization: 'Bearer valid-token',
      },
      payload: {},
    });
    assert.equal(res.statusCode, 400);
  });

  it('POST /api/v1/user/profile without auth returns 401', async () => {
    const res = await app.inject({
      method: 'POST',
      url: '/api/v1/user/profile',
      headers: { 'content-type': 'application/json' },
      payload: JSON.stringify({}),
    });
    assert.equal(res.statusCode, 401);
  });

  it('POST /api/v2/food/analyze-text with missing body returns 400', async () => {
    const res = await app.inject({
      method: 'POST',
      url: '/api/v2/food/analyze-text',
      headers: { 'content-type': 'application/json' },
      payload: JSON.stringify({}),
    });
    assert.equal(res.statusCode, 400);
  });

  it('POST /api/v2/food/clarify with missing body returns 400', async () => {
    const res = await app.inject({
      method: 'POST',
      url: '/api/v2/food/clarify',
      headers: { 'content-type': 'application/json' },
      payload: JSON.stringify({}),
    });
    assert.equal(res.statusCode, 400);
  });

  it('POST /api/v2/food/feedback with missing body returns 400', async () => {
    const res = await app.inject({
      method: 'POST',
      url: '/api/v2/food/feedback',
      headers: { 'content-type': 'application/json' },
      payload: JSON.stringify({}),
    });
    assert.equal(res.statusCode, 400);
  });

  it('POST /api/v2/food/meal-type with missing body returns 400', async () => {
    const res = await app.inject({
      method: 'POST',
      url: '/api/v2/food/meal-type',
      headers: { 'content-type': 'application/json' },
      payload: JSON.stringify({}),
    });
    assert.equal(res.statusCode, 400);
  });

  it('POST /api/v2/food/reanalyze with missing body returns 400', async () => {
    const res = await app.inject({
      method: 'POST',
      url: '/api/v2/food/reanalyze',
      headers: { 'content-type': 'application/json' },
      payload: JSON.stringify({}),
    });
    assert.equal(res.statusCode, 400);
  });

  it('POST /api/v2/food/confirm-log with missing body returns 400', async () => {
    const res = await app.inject({
      method: 'POST',
      url: '/api/v2/food/confirm-log',
      headers: { 'content-type': 'application/json' },
      payload: JSON.stringify({}),
    });
    assert.equal(res.statusCode, 400);
  });
});

// ---------------------------------------------------------------------------
// Group 3 — CORS headers
// ---------------------------------------------------------------------------

describe('CORS headers', () => {
  it('GET /health response has access-control-allow-origin header', async () => {
    const res = await app.inject({
      method: 'GET',
      url: '/health',
      headers: { origin: 'https://example.com' },
    });
    assert.ok(
      res.headers['access-control-allow-origin'] !== undefined,
      'Expected access-control-allow-origin header to be present'
    );
  });

  it('OPTIONS preflight on POST /api/v1/food/detect-text returns 204 with CORS headers', async () => {
    const res = await app.inject({
      method: 'OPTIONS',
      url: '/api/v1/food/detect-text',
      headers: {
        origin: 'https://example.com',
        'access-control-request-method': 'POST',
      },
    });
    assert.equal(res.statusCode, 204);
    assert.ok(
      res.headers['access-control-allow-origin'] !== undefined,
      'Expected access-control-allow-origin header on preflight response'
    );
    assert.ok(
      res.headers['access-control-allow-methods'] !== undefined,
      'Expected access-control-allow-methods header on preflight response'
    );
  });
});

// ---------------------------------------------------------------------------
// Group 4 — 404 for unknown routes
// ---------------------------------------------------------------------------

describe('404 for unknown routes', () => {
  it('GET /nonexistent returns 404', async () => {
    const res = await app.inject({ method: 'GET', url: '/nonexistent' });
    assert.equal(res.statusCode, 404);
  });

  it('GET /api/v99/food/analyze returns 404', async () => {
    const res = await app.inject({
      method: 'GET',
      url: '/api/v99/food/analyze',
    });
    assert.equal(res.statusCode, 404);
  });

  it('DELETE /health returns 404', async () => {
    const res = await app.inject({ method: 'DELETE', url: '/health' });
    assert.equal(res.statusCode, 404);
  });
});

// ---------------------------------------------------------------------------
// Group 5 — Error handler format
// ---------------------------------------------------------------------------

describe('Error handler format', () => {
  it('unhandled thrown error returns 500 JSON with ApiResult shape', async () => {
    const errApp = Fastify({ logger: false });
    errApp.setErrorHandler(errorHandler);
    errApp.get('/test-error', async () => {
      throw new Error('Test error');
    });
    await errApp.ready();

    const res = await errApp.inject({ method: 'GET', url: '/test-error' });
    assert.equal(res.statusCode, 500);

    const body = res.json();
    assert.equal(typeof body, 'object');
    assert.equal(body.ok, false);
    assert.ok('message' in body, 'Expected response body to have a "message" field');
    assert.equal(typeof body.message, 'string');
    await errApp.close();
  });
});

// ---------------------------------------------------------------------------
// Group 6 — Rate limit response format
// ---------------------------------------------------------------------------

describe('Rate limit response format', () => {
  it('third request on a max-2 app returns 429 with rate limit message', async () => {
    const limitedApp = await buildTestApp(2);

    try {
      // First two requests should succeed.
      const res1 = await limitedApp.inject({ method: 'GET', url: '/health' });
      assert.equal(res1.statusCode, 200);

      const res2 = await limitedApp.inject({ method: 'GET', url: '/health' });
      assert.equal(res2.statusCode, 200);

      // Third request should be rate-limited.
      const res3 = await limitedApp.inject({ method: 'GET', url: '/health' });
      assert.equal(res3.statusCode, 429);

      const body = res3.json();
      assert.equal(body.ok, false);
      assert.ok(
        typeof body.message === 'string' && body.message.toLowerCase().includes('rate limit'),
        `Expected rate limit message, got ${JSON.stringify(body)}`
      );
    } finally {
      await limitedApp.close();
    }
  });
});

// ---------------------------------------------------------------------------
// Group 7 — Content-Type headers
// ---------------------------------------------------------------------------

describe('Content-Type headers', () => {
  it('GET /health response has content-type containing application/json', async () => {
    const res = await app.inject({ method: 'GET', url: '/health' });
    assert.ok(
      res.headers['content-type']?.includes('application/json'),
      `Expected content-type to include application/json, got: ${res.headers['content-type']}`
    );
  });
});

// ---------------------------------------------------------------------------
// Group 8 — Request ID generation
// ---------------------------------------------------------------------------

describe('Request ID handling', () => {
  it('GET /health is processed successfully (no crash, returns 200)', async () => {
    const res = await app.inject({ method: 'GET', url: '/health' });
    assert.equal(res.statusCode, 200);
  });

  it('GET /health with x-request-id header returns 200 (custom request ID accepted)', async () => {
    const res = await app.inject({
      method: 'GET',
      url: '/health',
      headers: { 'x-request-id': 'my-req-id' },
    });
    assert.equal(res.statusCode, 200);
  });
});
