import { after, before, describe, it } from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';
import Fastify, { type FastifyInstance } from 'fastify';
import { errorHandler } from '../../src/utils/errors.js';

// ---------------------------------------------------------------------------
// Mocks — must be registered before any import that transitively loads them.
// ---------------------------------------------------------------------------

await mock.module('../../src/config.js', {
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

await mock.module('../../src/services/infrastructure/firebase.js', {
  namedExports: {
    verifyFirebaseToken: mock.fn(async (token: string) => {
      if (token === 'valid-token') return { uid: 'user-123' };
      if (token === 'valid-token-2') return { uid: 'user-456' };
      const numberedToken = /^valid-token-(\d+)$/.exec(token);
      if (numberedToken) return { uid: `user-${numberedToken[1]}` };
      throw new Error('Invalid or expired authentication token');
    }),
    getUserIdFromToken: mock.fn((d: any) => d.uid),
    initializeFirebase: mock.fn(() => {}),
  },
});

await mock.module('../../src/services/infrastructure/database.js', {
  namedExports: {
    query: mock.fn(async () => ({ rows: [], rowCount: 1 })),
    usdaQuery: mock.fn(async () => ({ rows: [] })),
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

await mock.module('../../src/services/meal-analysis-v3/pipeline.js', {
  namedExports: {
    runMealAnalysisV3: mock.fn(async () => ({
      outcome: 'NO_FOOD',
      reason: 'test',
    })),
  },
});

await mock.module('../../src/utils/locale.js', {
  namedExports: {
    getLocaleFromRequest: mock.fn(() => 'en'),
    getLocaleTagFromRequest: mock.fn(() => 'en'),
    getCountryFromRequest: mock.fn(() => 'US'),
    getTimeZoneFromRequest: mock.fn(() => 'America/New_York'),
  },
});

const { buildApp } = await import('../../src/index.js');

// ---------------------------------------------------------------------------
// Build the real application composition with deterministic test-only limits.
// ---------------------------------------------------------------------------

async function buildTestApp(
  rateLimitMax?: number,
  foodRateLimitNow?: () => number
): Promise<FastifyInstance> {
  const fastify = await buildApp({ logger: false, rateLimitMax, foodRateLimitNow });
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

  it('GET /ready uses the production readiness route', async () => {
    const res = await app.inject({ method: 'GET', url: '/ready' });
    assert.equal(res.statusCode, 200);
    assert.deepEqual(res.json(), {
      status: 'ready',
      checks: { database: true, usdaDataset: true },
    });
  });
});

// ---------------------------------------------------------------------------
// Group 2 — Route registration (existence checks)
// ---------------------------------------------------------------------------

describe('Route registration', () => {
  it('POST /api/v1/food/ai-summary/generate without auth returns 401', async () => {
    const res = await app.inject({
      method: 'POST',
      url: '/api/v1/food/ai-summary/generate',
      payload: {},
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

  it('does not register the retired V1 meal-analysis routes', async () => {
    for (const url of [
      '/api/v1/food/analyze-image',
      '/api/v1/food/detect-image',
      '/api/v1/food/detect-text',
    ]) {
      const res = await app.inject({
        method: 'POST',
        url,
        headers: { authorization: 'Bearer valid-token' },
      });
      assert.equal(res.statusCode, 404, url);
    }
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

  it('POST /api/v3/food/analyze-text with missing body returns 400', async () => {
    const res = await app.inject({
      method: 'POST',
      url: '/api/v3/food/analyze-text',
      headers: {
        'content-type': 'application/json',
        authorization: 'Bearer valid-token',
      },
      payload: JSON.stringify({}),
    });
    assert.equal(res.statusCode, 400);
  });

  it('POST /api/v3/food/answer with missing body returns 400', async () => {
    const res = await app.inject({
      method: 'POST',
      url: '/api/v3/food/answer',
      headers: {
        'content-type': 'application/json',
        authorization: 'Bearer valid-token',
      },
      payload: JSON.stringify({}),
    });
    assert.equal(res.statusCode, 400);
  });

  it('POST /api/v3/food/resume with missing body returns 400', async () => {
    const res = await app.inject({
      method: 'POST',
      url: '/api/v3/food/resume',
      headers: {
        'content-type': 'application/json',
        authorization: 'Bearer valid-token',
      },
      payload: JSON.stringify({}),
    });
    assert.equal(res.statusCode, 400);
  });

  it('POST /api/v3/food/analyze-text without auth returns 401', async () => {
    const res = await app.inject({
      method: 'POST',
      url: '/api/v3/food/analyze-text',
      payload: { text: 'dal rice' },
    });
    assert.equal(res.statusCode, 401);
  });

  it('POST /api/v3/food/image-upload authenticates before parsing the binary body', async () => {
    const res = await app.inject({
      method: 'POST',
      url: '/api/v3/food/image-upload',
      headers: { 'content-type': 'application/octet-stream' },
      payload: Buffer.from('unauthenticated-body'),
    });
    assert.equal(res.statusCode, 401);
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

  it('OPTIONS preflight on POST /api/v3/food/analyze-text returns 204 with CORS headers', async () => {
    const res = await app.inject({
      method: 'OPTIONS',
      url: '/api/v3/food/analyze-text',
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
    const secret = 'PRIVATE_PROVIDER_OR_MEAL_DETAILS';
    const errApp = Fastify({ logger: false });
    errApp.setErrorHandler(errorHandler);
    errApp.get('/test-error', async () => {
      throw new Error(`Test error ${secret}`);
    });
    await errApp.ready();

    const res = await errApp.inject({ method: 'GET', url: '/test-error' });
    assert.equal(res.statusCode, 500);

    const body = res.json();
    assert.equal(typeof body, 'object');
    assert.equal(body.ok, false);
    assert.ok('message' in body, 'Expected response body to have a "message" field');
    assert.equal(body.message, 'Internal Server Error');
    assert.doesNotMatch(res.body, new RegExp(secret));
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

  it('allows normal API traffic up to the 600-per-minute default', async () => {
    const limitedApp = await buildTestApp();

    try {
      for (let requestNumber = 1; requestNumber <= 101; requestNumber += 1) {
        assert.equal((await limitedApp.inject({ method: 'GET', url: '/health' })).statusCode, 200);
      }
    } finally {
      await limitedApp.close();
    }
  });

  it('keys authenticated requests by user after authentication', async () => {
    const limitedApp = await buildTestApp(1);

    const saveProfile = (token: string) => limitedApp.inject({
      method: 'POST',
      url: '/api/v1/user/profile',
      headers: {
        authorization: `Bearer ${token}`,
        'content-type': 'application/json',
      },
      payload: {},
    });

    try {
      assert.equal((await saveProfile('valid-token')).statusCode, 200);
      assert.equal((await saveProfile('valid-token-2')).statusCode, 200);
      assert.equal((await saveProfile('valid-token')).statusCode, 429);
    } finally {
      await limitedApp.close();
    }
  });

  it('keeps the 20-per-minute limit on food analysis entry points', async () => {
    const limitedApp = await buildTestApp(1_000);
    const analyze = () => limitedApp.inject({
      method: 'POST',
      url: '/api/v3/food/analyze-text',
      headers: {
        authorization: 'Bearer valid-token',
        'content-type': 'application/json',
      },
      payload: {
        analysisId: '00000000-0000-4000-8000-000000000001',
        text: 'rice and dal',
        context: {
          locale: 'en-US',
          countryCode: 'US',
          timeZone: 'America/New_York',
          capturedAt: '2026-08-30T12:00:00.000Z',
        },
      },
    });

    try {
      for (let requestNumber = 1; requestNumber <= 20; requestNumber += 1) {
        assert.equal((await analyze()).statusCode, 200);
      }
      assert.equal((await analyze()).statusCode, 429);
    } finally {
      await limitedApp.close();
    }
  });

  it('does not apply the analysis budget to ordinary food reads', async () => {
    const limitedApp = await buildTestApp(1_000);
    const requestFood = (url: string) => limitedApp.inject({
      method: 'GET',
      url,
      headers: { authorization: 'Bearer valid-token' },
    });

    try {
      // App startup can fetch both of these repeatedly. They must not consume
      // the 30-per-hour / 100-per-day budget reserved for analysis starts.
      for (let requestNumber = 1; requestNumber <= 50; requestNumber += 1) {
        assert.equal((await requestFood('/api/v1/food/meal-analysis-tips')).statusCode, 200);
      }
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

  it('GET /health ignores a client request ID without affecting the response', async () => {
    const res = await app.inject({
      method: 'GET',
      url: '/health',
      headers: { 'x-request-id': 'my-req-id' },
    });
    assert.equal(res.statusCode, 200);
  });
});

describe('Request logging privacy', () => {
  it('never logs query, header, IP, profile, meal, or free-text payload data', async () => {
    const secret = 'PRIVATE_QUERY_CREDENTIAL';
    const headerSecret = 'PRIVATE_HEADER_VALUE';
    const mealSecret = 'PRIVATE_FREE_TEXT_MEAL';
    const profileDate = '1991-02-03';
    const lines: string[] = [];
    const logApp = await buildApp({
      logger: {
        level: 'info',
        stream: {
          write(message: string) {
            lines.push(message);
          },
        },
      },
    });
    await logApp.ready();

    try {
      const res = await logApp.inject({
        method: 'GET',
        url: `/health?token=${secret}`,
        headers: {
          'x-private-header-name': headerSecret,
          'x-forwarded-for': '198.51.100.77',
          'x-request-id': 'PRIVATE_REQUEST_ID',
          'x-correlation-id': 'PRIVATE_CORRELATION_ID',
          'user-agent': 'PRIVATE_FINGERPRINT',
        },
      });
      assert.equal(res.statusCode, 200);

      const profile = await logApp.inject({
        method: 'POST',
        url: '/api/v1/user/profile',
        headers: { authorization: 'Bearer valid-token' },
        payload: {
          weight: 73.123,
          dateOfBirth: profileDate,
          dailyCalorieGoal: 9876,
        },
      });
      assert.equal(profile.statusCode, 200);

      const meal = await logApp.inject({
        method: 'POST',
        url: '/api/v3/food/analyze-text',
        headers: { authorization: 'Bearer valid-token' },
        payload: {
          analysisId: '00000000-0000-4000-8000-000000000002',
          text: mealSecret,
          context: {
            locale: 'en-US',
            countryCode: 'US',
            timeZone: 'America/New_York',
            capturedAt: '2026-08-30T12:00:00.000Z',
          },
        },
      });
      assert.equal(meal.statusCode, 200);

      const output = lines.join('');
      assert.match(output, /\/health/);
      for (const marker of [
        secret,
        headerSecret,
        'x-private-header-name',
        '198.51.100.77',
        '127.0.0.1',
        'PRIVATE_FINGERPRINT',
        'PRIVATE_REQUEST_ID',
        'PRIVATE_CORRELATION_ID',
        profileDate,
        '73.123',
        '9876',
        mealSecret,
        '"status":"ok"',
        '"meal_name":"Test"',
      ]) {
        assert.doesNotMatch(output, new RegExp(marker));
      }
    } finally {
      await logApp.close();
    }
  });
});
