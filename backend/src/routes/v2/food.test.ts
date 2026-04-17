import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';
import Fastify from 'fastify';

// ---------------------------------------------------------------------------
// Mock pipeline functions and store before importing routes
// ---------------------------------------------------------------------------

// Helpers to produce pipeline event streams
function makeTextStream(events: any[]): AsyncGenerator<any> {
  return (async function* () {
    for (const e of events) yield e;
  })();
}

const mockAnalyzeTextMeal = mock.fn(function* () {
  yield { step: 'decomposition', data: { analysis_id: 'mock-id', meal_name: 'Test', confidence: 0.9, ingredients: [] } };
  yield { step: 'ingredients', data: { analysis_id: 'mock-id', ingredients: [] } };
  yield { step: 'uncertainty', data: { analysis_id: 'mock-id', variance_percent: 0.05, needs_clarification: false, calorie_band: { min: 400, max: 500 }, clarifications: [] } };
  yield { step: 'result', data: { analysis_id: 'mock-id', meal_name: 'Test Meal', quantity: '1 bowl', meal_type: 'LUNCH', meal_type_source: 'model', tip: 'Healthy', health: null, macros: { calories: 450, protein: 15, carbs: 60, fat: 10, fiber: 5 }, calorie_confidence: 'HIGH', calorie_band: { min: 400, max: 500 }, ingredients: [] } };
});

const mockAnalyzeImageMeal = mock.fn(function* () {
  yield { step: 'decomposition', data: { analysis_id: 'img-id', meal_name: 'Biryani', confidence: 0.85, ingredients: [] } };
  yield { step: 'result', data: { analysis_id: 'img-id', meal_name: 'Biryani', quantity: '1 plate', meal_type: 'DINNER', meal_type_source: 'model', tip: 'Rich', health: null, macros: { calories: 600, protein: 20, carbs: 80, fat: 15, fiber: 3 }, calorie_confidence: 'HIGH', calorie_band: { min: 550, max: 650 }, ingredients: [] } };
});

const mockContinueMealAnalysis = mock.fn(function* () {
  yield { step: 'result', data: { analysis_id: 'clarified-id', meal_name: 'Rice', quantity: '1 cup', meal_type: 'LUNCH', meal_type_source: 'model', tip: 'Carbs', health: null, macros: { calories: 200, protein: 4, carbs: 44, fat: 1, fiber: 1 }, calorie_confidence: 'HIGH', calorie_band: { min: 180, max: 220 }, ingredients: [] } };
});

const mockContinueMealAnalysisWithMealType = mock.fn(function* () {
  yield { step: 'result', data: { analysis_id: 'mt-id', meal_name: 'Oats', quantity: '1 bowl', meal_type: 'BREAKFAST', meal_type_source: 'user', tip: 'Fiber rich', health: null, macros: { calories: 300, protein: 8, carbs: 55, fat: 5, fiber: 6 }, calorie_confidence: 'HIGH', calorie_band: { min: 280, max: 320 }, ingredients: [] } };
});

const mockReanalyzeMeal = mock.fn(function* () {
  yield { step: 'result', data: { analysis_id: 'reanalyzed-id', meal_name: 'Corrected Meal', quantity: '1 serving', meal_type: 'SNACK', meal_type_source: 'model', tip: 'Light', health: null, macros: { calories: 150, protein: 5, carbs: 25, fat: 3, fiber: 2 }, calorie_confidence: 'MEDIUM', calorie_band: { min: 130, max: 170 }, ingredients: [] } };
});

const mockRecordMealAnalysisFeedback = mock.fn(async () => {});
const mockConfirmMealAnalysisLogged = mock.fn(async () => {});

await mock.module('../../services/nutritionEngineV2.js', {
  namedExports: {
    analyzeTextMeal: mockAnalyzeTextMeal,
    analyzeImageMeal: mockAnalyzeImageMeal,
    continueMealAnalysis: mockContinueMealAnalysis,
    continueMealAnalysisWithMealType: mockContinueMealAnalysisWithMealType,
    reanalyzeMeal: mockReanalyzeMeal,
    FEEDBACK_ISSUES: ['food_identification', 'portion_size', 'calorie_distribution', 'macros_wrong', 'missing_items', 'extra_items', 'other'],
    MEAL_TYPES: ['BREAKFAST', 'LUNCH', 'DINNER', 'SNACK'],
  },
});

await mock.module('../../services/mealAnalysisStore.js', {
  namedExports: {
    confirmMealAnalysisLogged: mockConfirmMealAnalysisLogged,
    recordMealAnalysisFeedback: mockRecordMealAnalysisFeedback,
  },
});

await mock.module('../../middleware/auth.js', {
  namedExports: {
    getOptionalUserId: mock.fn(async () => undefined),
    authenticateUser: mock.fn(async () => {}),
    getCurrentUserId: mock.fn(() => 'test-user'),
  },
});

await mock.module('../../config.js', {
  defaultExport: {
    ORACLE_BUCKET_DOWNLOAD_URL: 'https://objectstorage.example.com/bucket/o/',
    DATABASE_URL: 'postgres://mock',
    API_V1_STR: '/api/v1',
    DEBUG: false,
    ENVIRONMENT: 'development',
  },
});

await mock.module('../../utils/locale.js', {
  namedExports: {
    getLocaleFromRequest: mock.fn(() => 'en'),
    getCountryFromRequest: mock.fn(() => undefined),
  },
});

const { foodRoutesV2 } = await import('./food.js');

// ---------------------------------------------------------------------------
// Build test app — all v2 routes
// ---------------------------------------------------------------------------

async function buildTestApp() {
  const fastify = Fastify({ logger: false });
  await fastify.register(foodRoutesV2, { prefix: '/api/v2/food' });
  await fastify.ready();
  return fastify;
}

// Helper to collect NDJSON stream from response
function parseNdjson(body: string): any[] {
  return body
    .split('\n')
    .filter((line) => line.trim().length > 0)
    .map((line) => JSON.parse(line));
}

// ---------------------------------------------------------------------------
// POST /api/v2/food/analyze-text
// ---------------------------------------------------------------------------

test('POST /analyze-text returns 400 when textDescription is missing', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/analyze-text',
    payload: {},
  });
  assert.equal(response.statusCode, 400);
  const body = response.json();
  assert.ok(body.detail.includes('textDescription is required'));
  await app.close();
});

test('POST /analyze-text returns 400 when textDescription is whitespace only', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/analyze-text',
    payload: { textDescription: '   ' },
  });
  assert.equal(response.statusCode, 400);
  await app.close();
});

test('POST /analyze-text streams NDJSON events for valid input', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/analyze-text',
    headers: { accept: 'application/x-ndjson' },
    payload: { textDescription: '2 rotis with dal' },
  });
  assert.equal(response.statusCode, 200);
  assert.ok(response.headers['content-type']?.includes('application/x-ndjson'));

  const events = parseNdjson(response.body);
  assert.ok(events.length > 0);
  const steps = events.map((e) => e.step);
  assert.ok(steps.includes('decomposition'));
  await app.close();
});

test('POST /analyze-text streams SSE events when Accept: text/event-stream', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/analyze-text',
    headers: { accept: 'text/event-stream' },
    payload: { textDescription: 'apple' },
  });
  assert.equal(response.statusCode, 200);
  assert.ok(response.headers['content-type']?.includes('text/event-stream'));
  // SSE format: "event: <step>\ndata: <json>\n\n"
  assert.ok(response.body.includes('event:'));
  assert.ok(response.body.includes('data:'));
  await app.close();
});

test('POST /analyze-text result event has all required macro fields', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/analyze-text',
    payload: { textDescription: 'rice' },
  });
  const events = parseNdjson(response.body);
  const result = events.find((e) => e.step === 'result');
  assert.ok(result !== undefined);
  assert.ok('calories' in result.data.macros);
  assert.ok('protein' in result.data.macros);
  assert.ok('carbs' in result.data.macros);
  assert.ok('fat' in result.data.macros);
  assert.ok('fiber' in result.data.macros);
  await app.close();
});

test('POST /analyze-text calls analyzeTextMeal with trimmed description', async () => {
  mockAnalyzeTextMeal.mock.resetCalls();
  const app = await buildTestApp();
  await app.inject({
    method: 'POST',
    url: '/api/v2/food/analyze-text',
    payload: { textDescription: '  dal rice  ' },
  });
  const callArgs = mockAnalyzeTextMeal.mock.calls[0]!.arguments;
  assert.equal(callArgs[0], 'dal rice');
  await app.close();
});

// ---------------------------------------------------------------------------
// POST /api/v2/food/analyze-image
// ---------------------------------------------------------------------------

test('POST /analyze-image returns 400 when imageUrl is missing', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/analyze-image',
    payload: {},
  });
  assert.equal(response.statusCode, 400);
  const body = response.json();
  assert.ok(body.detail.includes('imageUrl is required'));
  await app.close();
});

test('POST /analyze-image returns 400 when imageUrl is empty', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/analyze-image',
    payload: { imageUrl: '' },
  });
  assert.equal(response.statusCode, 400);
  await app.close();
});

test('POST /analyze-image returns 400 for invalid URL format', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/analyze-image',
    payload: { imageUrl: 'not-a-url' },
  });
  assert.equal(response.statusCode, 400);
  const body = response.json();
  assert.ok(body.detail.includes('Invalid imageUrl format'));
  await app.close();
});

test('POST /analyze-image streams events for valid image URL', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/analyze-image',
    payload: { imageUrl: 'https://storage.example.com/v0/b/bucket/o/uid%2Fmeal.jpg' },
  });
  assert.equal(response.statusCode, 200);
  const events = parseNdjson(response.body);
  assert.ok(events.length > 0);
  await app.close();
});

test('POST /analyze-image converts upload URL to download URL', async () => {
  mockAnalyzeImageMeal.mock.resetCalls();
  const app = await buildTestApp();
  await app.inject({
    method: 'POST',
    url: '/api/v2/food/analyze-image',
    payload: { imageUrl: 'https://storage.example.com/v0/b/bucket/o/uid%2Fmeal.jpg' },
  });
  const callArgs = mockAnalyzeImageMeal.mock.calls[0]!.arguments;
  const finalUrl = callArgs[0] as string;
  assert.ok(finalUrl.startsWith('https://objectstorage.example.com/bucket/o/'));
  await app.close();
});

// ---------------------------------------------------------------------------
// POST /api/v2/food/clarify
// ---------------------------------------------------------------------------

test('POST /clarify returns 400 when analysisId is missing', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/clarify',
    payload: { answers: [{ ingredient_name: 'rice', selected_option_index: 1 }] },
  });
  assert.equal(response.statusCode, 400);
  const body = response.json();
  assert.ok(body.detail.includes('analysisId is required'));
  await app.close();
});

test('POST /clarify returns 400 when answers is empty array', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/clarify',
    payload: { analysisId: 'some-id', answers: [] },
  });
  assert.equal(response.statusCode, 400);
  const body = response.json();
  assert.ok(body.detail.includes('answers are required'));
  await app.close();
});

test('POST /clarify returns 400 when answers is missing', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/clarify',
    payload: { analysisId: 'some-id' },
  });
  assert.equal(response.statusCode, 400);
  await app.close();
});

test('POST /clarify streams events for valid payload', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/clarify',
    payload: {
      analysisId: 'valid-analysis-id',
      answers: [{ ingredient_name: 'rice', selected_option_index: 1 }],
    },
  });
  assert.equal(response.statusCode, 200);
  const events = parseNdjson(response.body);
  assert.ok(events.length > 0);
  await app.close();
});

test('POST /clarify calls continueMealAnalysis with correct args', async () => {
  mockContinueMealAnalysis.mock.resetCalls();
  const app = await buildTestApp();
  const answers = [
    { ingredient_name: 'rice', selected_option_index: 0 },
    { ingredient_name: 'dal', selected_option_index: 2 },
  ];
  await app.inject({
    method: 'POST',
    url: '/api/v2/food/clarify',
    payload: { analysisId: 'clarify-test-id', answers },
  });
  assert.equal(mockContinueMealAnalysis.mock.calls.length, 1);
  const args = mockContinueMealAnalysis.mock.calls[0]!.arguments;
  assert.equal(args[0], 'clarify-test-id');
  assert.deepEqual(args[1], answers);
  await app.close();
});

// ---------------------------------------------------------------------------
// POST /api/v2/food/feedback
// ---------------------------------------------------------------------------

test('POST /feedback returns 400 when analysisId is missing', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/feedback',
    payload: { signal: 'up' },
  });
  assert.equal(response.statusCode, 400);
  const body = response.json();
  assert.ok(body.detail.includes('analysisId is required'));
  await app.close();
});

test('POST /feedback returns 400 when signal is not "up"', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/feedback',
    payload: { analysisId: 'fb-id', signal: 'down' },
  });
  assert.equal(response.statusCode, 400);
  const body = response.json();
  assert.ok(body.detail.includes('signal must be up'));
  await app.close();
});

test('POST /feedback returns { ok: true } for valid positive feedback', async () => {
  mockRecordMealAnalysisFeedback.mock.resetCalls();
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/feedback',
    payload: { analysisId: 'fb-analysis', signal: 'up' },
  });
  assert.equal(response.statusCode, 200);
  assert.deepEqual(response.json(), { ok: true });
  await app.close();
});

test('POST /feedback calls recordMealAnalysisFeedback with up signal', async () => {
  mockRecordMealAnalysisFeedback.mock.resetCalls();
  const app = await buildTestApp();
  await app.inject({
    method: 'POST',
    url: '/api/v2/food/feedback',
    payload: { analysisId: 'fb-test-id', signal: 'up' },
  });
  assert.equal(mockRecordMealAnalysisFeedback.mock.calls.length, 1);
  const args = mockRecordMealAnalysisFeedback.mock.calls[0]!.arguments[0];
  assert.equal(args.analysisId, 'fb-test-id');
  assert.equal(args.signal, 'up');
  await app.close();
});

// ---------------------------------------------------------------------------
// POST /api/v2/food/meal-type
// ---------------------------------------------------------------------------

test('POST /meal-type returns 400 when analysisId is missing', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/meal-type',
    payload: { mealType: 'LUNCH' },
  });
  assert.equal(response.statusCode, 400);
  const body = response.json();
  assert.ok(body.detail.includes('analysisId is required'));
  await app.close();
});

test('POST /meal-type returns 400 when mealType is invalid', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/meal-type',
    payload: { analysisId: 'mt-id', mealType: 'BRUNCH' },
  });
  assert.equal(response.statusCode, 400);
  const body = response.json();
  assert.ok(body.detail.includes('mealType is required'));
  await app.close();
});

test('POST /meal-type returns 400 when mealType is missing', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/meal-type',
    payload: { analysisId: 'mt-id' },
  });
  assert.equal(response.statusCode, 400);
  await app.close();
});

test('POST /meal-type streams events for BREAKFAST', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/meal-type',
    payload: { analysisId: 'mt-valid-id', mealType: 'BREAKFAST' },
  });
  assert.equal(response.statusCode, 200);
  const events = parseNdjson(response.body);
  assert.ok(events.length > 0);
  await app.close();
});

test('POST /meal-type accepts all four valid meal types', async () => {
  const app = await buildTestApp();
  for (const mealType of ['BREAKFAST', 'LUNCH', 'DINNER', 'SNACK']) {
    const response = await app.inject({
      method: 'POST',
      url: '/api/v2/food/meal-type',
      payload: { analysisId: 'mt-id', mealType },
    });
    assert.equal(response.statusCode, 200, `Failed for mealType: ${mealType}`);
  }
  await app.close();
});

test('POST /meal-type calls continueMealAnalysisWithMealType with correct args', async () => {
  mockContinueMealAnalysisWithMealType.mock.resetCalls();
  const app = await buildTestApp();
  await app.inject({
    method: 'POST',
    url: '/api/v2/food/meal-type',
    payload: { analysisId: 'mt-call-id', mealType: 'DINNER' },
  });
  assert.equal(mockContinueMealAnalysisWithMealType.mock.calls.length, 1);
  const args = mockContinueMealAnalysisWithMealType.mock.calls[0]!.arguments;
  assert.equal(args[0], 'mt-call-id');
  assert.equal(args[1], 'DINNER');
  await app.close();
});

// ---------------------------------------------------------------------------
// POST /api/v2/food/reanalyze
// ---------------------------------------------------------------------------

test('POST /reanalyze returns 400 when analysisId is missing', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/reanalyze',
    payload: { issues: ['portion_size'] },
  });
  assert.equal(response.statusCode, 400);
  const body = response.json();
  assert.ok(body.detail.includes('analysisId is required'));
  await app.close();
});

test('POST /reanalyze returns 400 when issues is empty array', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/reanalyze',
    payload: { analysisId: 'ra-id', issues: [] },
  });
  assert.equal(response.statusCode, 400);
  const body = response.json();
  assert.ok(body.detail.includes('issues are required'));
  await app.close();
});

test('POST /reanalyze returns 400 for unsupported issue type', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/reanalyze',
    payload: { analysisId: 'ra-id', issues: ['unknown_issue'] },
  });
  assert.equal(response.statusCode, 400);
  const body = response.json();
  assert.ok(body.detail.includes('Unsupported issue'));
  await app.close();
});

test('POST /reanalyze streams events for valid feedback', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/reanalyze',
    payload: { analysisId: 'ra-valid-id', issues: ['portion_size'] },
  });
  assert.equal(response.statusCode, 200);
  const events = parseNdjson(response.body);
  assert.ok(events.length > 0);
  await app.close();
});

test('POST /reanalyze records feedback before streaming', async () => {
  mockRecordMealAnalysisFeedback.mock.resetCalls();
  const app = await buildTestApp();
  await app.inject({
    method: 'POST',
    url: '/api/v2/food/reanalyze',
    payload: {
      analysisId: 'ra-feedback-id',
      issues: ['food_identification', 'macros_wrong'],
      otherText: 'The food was completely wrong',
    },
  });
  assert.equal(mockRecordMealAnalysisFeedback.mock.calls.length, 1);
  const args = mockRecordMealAnalysisFeedback.mock.calls[0]!.arguments[0];
  assert.equal(args.signal, 'down');
  assert.deepEqual(args.issues, ['food_identification', 'macros_wrong']);
  assert.equal(args.otherText, 'The food was completely wrong');
  await app.close();
});

test('POST /reanalyze accepts all valid FEEDBACK_ISSUES', async () => {
  const app = await buildTestApp();
  const allIssues = [
    'food_identification', 'portion_size', 'calorie_distribution',
    'macros_wrong', 'missing_items', 'extra_items', 'other',
  ];
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/reanalyze',
    payload: { analysisId: 'all-issues-id', issues: allIssues },
  });
  assert.equal(response.statusCode, 200);
  await app.close();
});

// ---------------------------------------------------------------------------
// POST /api/v2/food/confirm-log
// ---------------------------------------------------------------------------

test('POST /confirm-log returns 400 when analysisId is missing', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/confirm-log',
    payload: {
      loggedAt: '2024-01-15T12:00:00Z',
      mealName: 'Dal Rice',
      calories: 450,
      protein: 15,
      carbs: 70,
      fat: 8,
      fiber: 5,
      mealType: 'LUNCH',
      quantity: '1 bowl',
    },
  });
  assert.equal(response.statusCode, 400);
  const body = response.json();
  assert.ok(body.detail.includes('analysisId is required'));
  await app.close();
});

test('POST /confirm-log returns { ok: true } for valid payload', async () => {
  mockConfirmMealAnalysisLogged.mock.resetCalls();
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/confirm-log',
    payload: {
      analysisId: 'log-analysis-id',
      loggedAt: '2024-01-15T12:00:00Z',
      mealName: 'Dal Rice',
      calories: 450,
      protein: 15,
      carbs: 70,
      fat: 8,
      fiber: 5,
      mealType: 'LUNCH',
      quantity: '1 bowl',
    },
  });
  assert.equal(response.statusCode, 200);
  assert.deepEqual(response.json(), { ok: true });
  await app.close();
});

test('POST /confirm-log calls confirmMealAnalysisLogged with full record', async () => {
  mockConfirmMealAnalysisLogged.mock.resetCalls();
  const app = await buildTestApp();
  const payload = {
    analysisId: 'log-call-id',
    loggedAt: '2024-01-15T19:00:00Z',
    mealName: 'Chicken Curry',
    calories: 520,
    protein: 35,
    carbs: 40,
    fat: 18,
    fiber: 4,
    mealType: 'DINNER',
    quantity: '1 serving',
  };
  await app.inject({
    method: 'POST',
    url: '/api/v2/food/confirm-log',
    payload,
  });
  assert.equal(mockConfirmMealAnalysisLogged.mock.calls.length, 1);
  const arg = mockConfirmMealAnalysisLogged.mock.calls[0]!.arguments[0];
  assert.equal(arg.analysisId, 'log-call-id');
  assert.equal(arg.mealName, 'Chicken Curry');
  assert.equal(arg.calories, 520);
  assert.equal(arg.mealType, 'DINNER');
  await app.close();
});

// ---------------------------------------------------------------------------
// Stream format helpers
// ---------------------------------------------------------------------------

test('writeEvent uses SSE format when accept header is text/event-stream', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/analyze-text',
    headers: { accept: 'text/event-stream' },
    payload: { textDescription: 'dal' },
  });
  // SSE lines: "event: <step>\ndata: <json>\n\n"
  const lines = response.body.split('\n').filter((l) => l.trim().length > 0);
  const eventLines = lines.filter((l) => l.startsWith('event:'));
  const dataLines = lines.filter((l) => l.startsWith('data:'));
  assert.ok(eventLines.length > 0);
  assert.ok(dataLines.length > 0);
  await app.close();
});

test('writeEvent uses NDJSON format when no accept header', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/analyze-text',
    payload: { textDescription: 'oats' },
  });
  // NDJSON: each line is a JSON object
  const lines = response.body.split('\n').filter((l) => l.trim().length > 0);
  for (const line of lines) {
    assert.doesNotThrow(() => JSON.parse(line), `Invalid JSON line: ${line}`);
  }
  await app.close();
});

test('stream includes Transfer-Encoding: chunked header', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/analyze-text',
    payload: { textDescription: 'banana' },
  });
  assert.equal(response.headers['transfer-encoding'], 'chunked');
  await app.close();
});

test('stream includes Cache-Control: no-cache header', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/analyze-text',
    payload: { textDescription: 'mango' },
  });
  assert.equal(response.headers['cache-control'], 'no-cache');
  await app.close();
});
