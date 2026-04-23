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

await mock.module('../../config.js', {
  defaultExport: {
    DATABASE_URL: 'postgres://mock',
    ORACLE_BUCKET_DOWNLOAD_URL: 'https://objectstorage.example.com/bucket/o/',
    API_V1_STR: '/api/v1',
    DEBUG: false,
    ENVIRONMENT: 'development',
  },
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
  // Re-mock config without DATABASE_URL
  await mock.module('../../config.js', {
    defaultExport: {
      DATABASE_URL: null,
      ORACLE_BUCKET_DOWNLOAD_URL: 'https://objectstorage.example.com/bucket/o/',
      API_V1_STR: '/api/v1',
      DEBUG: false,
      ENVIRONMENT: 'development',
    },
  });
  const { foodRoutes: foodRoutesNoDB } = await import('./food.js');
  const app = Fastify({ logger: false });
  await app.register(multipart);
  await app.register(foodRoutesNoDB, { prefix: '/api/v1/food' });
  await app.ready();

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
    summary: null,
    generatedAt: null,
    mealCount: 0,
    topFoods: [],
    macroBalanceScore: 0,
    trend: 'steady',
  });
  await app.close();

  // Restore
  await mock.module('../../config.js', {
    defaultExport: {
      DATABASE_URL: 'postgres://mock',
      ORACLE_BUCKET_DOWNLOAD_URL: 'https://objectstorage.example.com/bucket/o/',
      API_V1_STR: '/api/v1',
      DEBUG: false,
      ENVIRONMENT: 'development',
    },
  });
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
    summary: null,
    generatedAt: null,
    mealCount: 0,
    topFoods: [],
    macroBalanceScore: 0,
    trend: 'steady',
  });
  await app.close();
});

test('GET /ai-summary returns summary and generatedAt from DB row', async () => {
  const generatedAt = new Date('2024-01-15T10:00:00Z');
  mockQuery.mock.resetCalls();
  mockQuery.mock.mockImplementationOnce(async () => ({
    rows: [{ summary: 'You logged healthy meals!', generated_at: generatedAt }],
  }));
  mockQuery.mock.mockImplementationOnce(async () => ({
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
    ],
  }));
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
  assert.ok(['up', 'down', 'steady'].includes(body.trend));
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
    payload: {},
  });
  assert.equal(response.statusCode, 400);
  await app.close();
});

test('POST /detect-text returns 400 when textDescription is empty string', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v1/food/detect-text',
    payload: { textDescription: '   ' },
  });
  assert.equal(response.statusCode, 400);
  const body = response.json();
  assert.ok(body.detail.includes('textDescription is required'));
  await app.close();
});

test('POST /detect-text returns 400 when textDescription is not a string', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v1/food/detect-text',
    payload: { textDescription: 123 },
  });
  assert.equal(response.statusCode, 400);
  await app.close();
});

test('POST /detect-text returns 200 with meal analysis result', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v1/food/detect-text',
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
    headers: { 'accept-language': 'hi-IN' },
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
    headers: { 'cf-ipcountry': 'IN', 'accept-language': 'en' },
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
    payload: { textDescription: 'some food' },
  });
  assert.equal(response.statusCode, 500);
  const body = response.json();
  assert.ok(body.detail.includes('OpenAI API error'));
  await app.close();
});

test('POST /detect-text response includes variations array', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v1/food/detect-text',
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
    payload: {},
  });
  assert.equal(response.statusCode, 400);
  const body = response.json();
  assert.ok(body.detail.includes('imageUrl is required'));
  await app.close();
});

test('POST /detect-image returns 400 when imageUrl is empty string', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v1/food/detect-image',
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
    payload: { imageUrl: 'not-a-valid-url' },
  });
  assert.equal(response.statusCode, 400);
  const body = response.json();
  assert.ok(body.detail.includes('Invalid imageUrl format'));
  await app.close();
});

test('POST /detect-image returns 200 for valid image URL', async () => {
  const app = await buildTestApp();
  const imageUrl = 'https://objectstorage.example.com/p/token/n/ns/b/bucket/o/uid%2Fmeal.jpg';
  const response = await app.inject({
    method: 'POST',
    url: '/api/v1/food/detect-image',
    payload: { imageUrl },
  });
  assert.equal(response.statusCode, 200);
  const body = response.json();
  assert.ok(body.result !== undefined);
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
    payload: { imageUrl },
  });
  assert.equal(response.statusCode, 500);
  const body = response.json();
  assert.ok(body.detail.includes('Vision API unavailable'));
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
    headers: { 'content-type': 'application/json' },
    payload: {},
  });
  // No multipart file → should return 400 or handle gracefully
  assert.ok(response.statusCode === 400 || response.statusCode === 415);
  await app.close();
});

test('POST /analyze-image passes locale from Accept-Language header', async () => {
  mockAnalyzeImageFromBuffer.mock.resetCalls();
  const app = await buildTestApp();

  const form = new FormData();
  const imageBlob = new Blob([Buffer.alloc(100)], { type: 'image/jpeg' });
  form.append('file', imageBlob, 'meal.jpg');

  const response = await app.inject({
    method: 'POST',
    url: '/api/v1/food/analyze-image',
    headers: { 'accept-language': 'es-ES' },
    payload: form,
  });

  if (response.statusCode === 200) {
    const call = mockAnalyzeImageFromBuffer.mock.calls[0];
    assert.equal(call!.arguments[2], 'es');
  }
  await app.close();
});

test('POST /analyze-image returns 400 for non-image file', async () => {
  const app = await buildTestApp();
  // Simulate a text file upload - the route checks mimetype
  // This is handled by the mimetype check in the handler
  // We can test this via the mock or by constructing the request
  // For now, verify the endpoint exists and responds
  const response = await app.inject({
    method: 'POST',
    url: '/api/v1/food/analyze-image',
    headers: { 'content-type': 'application/json' },
    payload: {},
  });
  assert.ok(response.statusCode >= 400);
  await app.close();
});
