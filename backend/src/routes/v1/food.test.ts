import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';
import Fastify from 'fastify';
import multipart from '@fastify/multipart';

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

const mockAnalyzeImageFromBuffer = mock.fn(async () => ({
  result: {
    mealIdentified: true,
    calorieConfidence: 'HIGH',
    tip: 'Good meal',
    meal: {
      name: 'Dal Rice',
      quantity: '1 bowl',
      type: 2, // LUNCH
      macros: { calories: 450, protein: 15, carbs: 70, fat: 8, fiber: 5 },
      health: { healthScore: 2, healthScoreReason: 'Balanced' },
    },
  },
  variations: [],
}));

const mockAnalyzeImageFromUrl = mock.fn(async () => ({
  result: {
    mealIdentified: true,
    calorieConfidence: 'HIGH',
    tip: 'Nutritious',
    meal: {
      name: 'Chicken Salad',
      quantity: '1 plate',
      type: 3, // DINNER
      macros: { calories: 350, protein: 30, carbs: 20, fat: 12, fiber: 4 },
      health: null,
    },
  },
  variations: [],
}));

const mockAnalyzeTextDescription = mock.fn(async () => ({
  result: {
    mealIdentified: true,
    calorieConfidence: 'MEDIUM',
    tip: 'Protein rich',
    meal: {
      name: 'Egg Sandwich',
      quantity: '1 serving',
      type: 1, // BREAKFAST
      macros: { calories: 320, protein: 20, carbs: 35, fat: 10, fiber: 3 },
      health: null,
    },
  },
  variations: [
    {
      question: 'How many eggs?',
      options: [
        { option: '1 egg', macroDiff: { calories: -70, protein: -6, carbs: 0, fat: -5, fiber: 0 } },
        { option: '2 eggs', macroDiff: { calories: 0, protein: 0, carbs: 0, fat: 0, fiber: 0 } },
      ],
    },
  ],
}));

await mock.module('../../services/openAIFoodAnalysis.js', {
  namedExports: {
    openAIFoodAnalysisService: {
      analyzeImageFromBuffer: mockAnalyzeImageFromBuffer,
      analyzeImageFromUrl: mockAnalyzeImageFromUrl,
      analyzeTextDescription: mockAnalyzeTextDescription,
    },
  },
});

const mockConfig = {
  DATABASE_URL: 'postgres://mock' as string | null,
  ORACLE_BUCKET_DOWNLOAD_URL: 'https://objectstorage.example.com/bucket/o/',
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
  await fastify.register(multipart);
  await fastify.register(foodRoutes, { prefix: '/api/v1/food' });
  await fastify.ready();
  return fastify;
}

/** Minimal multipart/form-data body for @fastify/multipart tests. */
function buildMultipartFile(body: Buffer, filename: string, mimeType: string) {
  const boundary = '----CalorifyTestBoundary';
  const crlf = '\r\n';
  const head =
    `--${boundary}${crlf}` +
    `Content-Disposition: form-data; name="file"; filename="${filename}"${crlf}` +
    `Content-Type: ${mimeType}${crlf}${crlf}`;
  const tail = `${crlf}--${boundary}--${crlf}`;
  return {
    payload: Buffer.concat([Buffer.from(head, 'utf8'), body, Buffer.from(tail, 'utf8')]),
    contentType: `multipart/form-data; boundary=${boundary}`,
  };
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

// ---------------------------------------------------------------------------
// POST /api/v1/food/detect-text
// ---------------------------------------------------------------------------

test('POST /detect-text returns 400 when textDescription is missing', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v1/food/detect-text',
    headers: { ...authBearer },
    payload: {},
  });
  assert.equal(response.statusCode, 400);
  const body = response.json();
  assert.ok(body.message.includes('textDescription'));
  await app.close();
});

test('POST /detect-text returns 400 when textDescription is empty string', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v1/food/detect-text',
    headers: { ...authBearer },
    payload: { textDescription: '   ' },
  });
  assert.equal(response.statusCode, 400);
  const body = response.json();
  assert.ok(body.message.includes('textDescription'));
  assert.ok(body.message.includes('must not be empty'));
  await app.close();
});

test('POST /detect-text returns 400 when textDescription is not a string', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v1/food/detect-text',
    headers: { ...authBearer },
    payload: { textDescription: 123 },
  });
  assert.equal(response.statusCode, 400);
  const body = response.json();
  assert.ok(body.message.includes('textDescription'));
  await app.close();
});

test('POST /detect-text returns 200 with meal analysis result', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v1/food/detect-text',
    headers: { ...authBearer },
    payload: { textDescription: '2 eggs scrambled' },
  });
  assert.equal(response.statusCode, 200);
  const body = response.json();
  assert.ok(body.result !== undefined);
  assert.equal(body.result.mealIdentified, true);
  await app.close();
});

test('POST /detect-text calls openAIFoodAnalysisService.analyzeTextDescription', async () => {
  mockAnalyzeTextDescription.mock.resetCalls();
  const app = await buildTestApp();
  await app.inject({
    method: 'POST',
    url: '/api/v1/food/detect-text',
    headers: { ...authBearer },
    payload: { textDescription: 'banana smoothie' },
  });
  assert.equal(mockAnalyzeTextDescription.mock.calls.length, 1);
  await app.close();
});

test('POST /detect-text passes locale from Accept-Language header', async () => {
  mockAnalyzeTextDescription.mock.resetCalls();
  const app = await buildTestApp();
  await app.inject({
    method: 'POST',
    url: '/api/v1/food/detect-text',
    headers: { ...authBearer, 'accept-language': 'hi-IN' },
    payload: { textDescription: '2 roti with dal' },
  });
  const call = mockAnalyzeTextDescription.mock.calls[0];
  // locale is the second argument
  assert.equal(call!.arguments[1], 'hi');
  await app.close();
});

test('POST /detect-text passes country code from geo header', async () => {
  mockAnalyzeTextDescription.mock.resetCalls();
  const app = await buildTestApp();
  await app.inject({
    method: 'POST',
    url: '/api/v1/food/detect-text',
    headers: { ...authBearer, 'cf-ipcountry': 'IN', 'accept-language': 'en' },
    payload: { textDescription: 'samosa' },
  });
  const call = mockAnalyzeTextDescription.mock.calls[0];
  assert.equal(call!.arguments[2], 'IN');
  await app.close();
});

test('POST /detect-text returns 500 when service throws', async () => {
  mockAnalyzeTextDescription.mock.mockImplementationOnce(async () => {
    throw new Error('OpenAI API error');
  });
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v1/food/detect-text',
    headers: { ...authBearer },
    payload: { textDescription: 'some food' },
  });
  assert.equal(response.statusCode, 500);
  const body = response.json();
  assert.ok(body.message.includes('OpenAI API error'));
  await app.close();
});

test('POST /detect-text response includes variations array', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v1/food/detect-text',
    headers: { ...authBearer },
    payload: { textDescription: 'egg sandwich' },
  });
  assert.equal(response.statusCode, 200);
  const body = response.json();
  assert.ok(Array.isArray(body.variations));
  await app.close();
});

// ---------------------------------------------------------------------------
// POST /api/v1/food/detect-image
// ---------------------------------------------------------------------------

test('POST /detect-image returns 400 when imageUrl is missing', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v1/food/detect-image',
    headers: { ...authBearer },
    payload: {},
  });
  assert.equal(response.statusCode, 400);
  await app.close();
});

test('POST /detect-image returns 400 when imageUrl is empty string', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v1/food/detect-image',
    headers: { ...authBearer },
    payload: { imageUrl: '   ' },
  });
  assert.equal(response.statusCode, 400);
  await app.close();
});

test('POST /detect-image returns 400 for invalid URL format', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v1/food/detect-image',
    headers: { ...authBearer },
    payload: { imageUrl: 'not-a-valid-url' },
  });
  assert.equal(response.statusCode, 400);
  const body = response.json();
  assert.ok(/imageUrl|valid URL/i.test(body.message));
  await app.close();
});

test('POST /detect-image returns 200 for valid image URL', async () => {
  const app = await buildTestApp();
  const imageUrl = 'https://objectstorage.example.com/p/token/n/ns/b/bucket/o/uid%2Fmeal.jpg';
  const response = await app.inject({
    method: 'POST',
    url: '/api/v1/food/detect-image',
    headers: { ...authBearer },
    payload: { imageUrl },
  });
  assert.equal(response.statusCode, 200);
  const body = response.json();
  assert.ok(body.result !== undefined);
  assert.equal(body.result.mealIdentified, true);
  await app.close();
});

test('POST /detect-image converts upload URL to download URL', async () => {
  mockAnalyzeImageFromUrl.mock.resetCalls();
  const app = await buildTestApp();
  // URL with path segments to test the object-key extraction
  const imageUrl = 'https://storage.example.com/v0/b/mybucket/o/uid123%2Fphoto.jpg?alt=media';
  await app.inject({
    method: 'POST',
    url: '/api/v1/food/detect-image',
    headers: { ...authBearer },
    payload: { imageUrl },
  });
  // Should have called analyzeImageFromUrl with the download URL
  assert.equal(mockAnalyzeImageFromUrl.mock.calls.length, 1);
  const finalUrl = mockAnalyzeImageFromUrl.mock.calls[0]!.arguments[0] as string;
  // Should start with the configured ORACLE_BUCKET_DOWNLOAD_URL
  assert.ok(finalUrl.startsWith('https://objectstorage.example.com/bucket/o/'));
  await app.close();
});

test('POST /detect-image returns 500 when service throws', async () => {
  mockAnalyzeImageFromUrl.mock.mockImplementationOnce(async () => {
    throw new Error('Vision API unavailable');
  });
  const app = await buildTestApp();
  const imageUrl = 'https://storage.example.com/v0/b/bucket/o/image.jpg';
  const response = await app.inject({
    method: 'POST',
    url: '/api/v1/food/detect-image',
    headers: { ...authBearer },
    payload: { imageUrl },
  });
  assert.equal(response.statusCode, 500);
  const body = response.json();
  assert.ok(body.message.includes('Vision API unavailable'));
  await app.close();
});

// ---------------------------------------------------------------------------
// POST /api/v1/food/analyze-image (multipart upload)
// ---------------------------------------------------------------------------

test('POST /analyze-image returns 400 when no file uploaded', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v1/food/analyze-image',
    // no multipart payload
    headers: {
      ...authBearer,
      'content-type': 'application/json',
    },
  });
  assert.ok(response.statusCode >= 400, `expected error status, got ${response.statusCode}`);
  await app.close();
});

test('POST /analyze-image passes locale from Accept-Language header', async () => {
  mockAnalyzeImageFromBuffer.mock.resetCalls();
  const app = await buildTestApp();

  const { payload, contentType } = buildMultipartFile(Buffer.alloc(100), 'meal.jpg', 'image/jpeg');

  const response = await app.inject({
    method: 'POST',
    url: '/api/v1/food/analyze-image',
    headers: { ...authBearer, 'accept-language': 'es-ES', 'content-type': contentType },
    payload,
  });

  assert.equal(response.statusCode, 200);
  const call = mockAnalyzeImageFromBuffer.mock.calls[0];
  assert.equal(call!.arguments[2], 'es');
  await app.close();
});

test('POST /analyze-image returns 400 for non-image file', async () => {
  const app = await buildTestApp();
  const { payload, contentType } = buildMultipartFile(
    Buffer.from('not an image'),
    'notes.txt',
    'text/plain'
  );
  const response = await app.inject({
    method: 'POST',
    url: '/api/v1/food/analyze-image',
    headers: { ...authBearer, 'content-type': contentType },
    payload,
  });
  assert.equal(response.statusCode, 400);
  const body = response.json();
  assert.ok(body.message.includes('image'));
  await app.close();
});
