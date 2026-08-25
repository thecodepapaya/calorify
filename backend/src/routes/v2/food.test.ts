import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';
import Fastify from 'fastify';

// ---------------------------------------------------------------------------
// Mock pipeline functions and store before importing routes
// ---------------------------------------------------------------------------

const mockAnalyzeTextMeal = mock.fn(function* () {
  yield { step: 'STARTED', data: { analysisId: 'mock-id' } };
  yield { step: 'DECOMPOSITION', data: { analysisId: 'mock-id', mealName: 'Test', confidence: 0.9, ingredients: [], inferredMealType: 'UNKNOWN', mealTypeConfident: false } };
  yield { step: 'INGREDIENTS', data: { analysisId: 'mock-id', ingredients: [] } };
  yield { step: 'UNCERTAINTY', data: { analysisId: 'mock-id', variancePercent: 0.05, needsClarification: false, calorieBand: { min: 400, max: 500 }, clarifications: [] } };
  yield { step: 'RESULT', data: { analysisId: 'mock-id', mealName: 'Test Meal', quantity: '1 bowl', mealType: 'LUNCH', mealTypeSource: 'model', tip: 'Healthy', health: null, macros: { calories: 450, protein: 15, carbs: 60, fat: 10, fiber: 5 }, calorieConfidence: 'HIGH', calorieBand: { min: 400, max: 500 }, ingredients: [] } };
});

const mockAnalyzeImageMeal = mock.fn(function* () {
  yield { step: 'STARTED', data: { analysisId: 'img-id' } };
  yield { step: 'DECOMPOSITION', data: { analysisId: 'img-id', mealName: 'Biryani', confidence: 0.85, ingredients: [], inferredMealType: 'UNKNOWN', mealTypeConfident: false } };
  yield { step: 'RESULT', data: { analysisId: 'img-id', mealName: 'Biryani', quantity: '1 plate', mealType: 'DINNER', mealTypeSource: 'model', tip: 'Rich', health: null, macros: { calories: 600, protein: 20, carbs: 80, fat: 15, fiber: 3 }, calorieConfidence: 'HIGH', calorieBand: { min: 550, max: 650 }, ingredients: [] } };
});

const mockAnalyzeIngredientProposal = mock.fn(function* () {
  yield { step: 'STARTED', data: { analysisId: 'proposal-id' } };
  yield { step: 'RESULT', data: { analysisId: 'proposal-id' } };
});

const mockContinueMealAnalysis = mock.fn(function* () {
  yield { step: 'RESULT', data: { analysisId: 'clarified-id', mealName: 'Rice', quantity: '1 cup', mealType: 'LUNCH', mealTypeSource: 'model', tip: 'Carbs', health: null, macros: { calories: 200, protein: 4, carbs: 44, fat: 1, fiber: 1 }, calorieConfidence: 'HIGH', calorieBand: { min: 180, max: 220 }, ingredients: [] } };
});

const mockContinueMealAnalysisWithMealType = mock.fn(function* () {
  yield { step: 'RESULT', data: { analysisId: 'mt-id', mealName: 'Oats', quantity: '1 bowl', mealType: 'BREAKFAST', mealTypeSource: 'user', tip: 'Fiber rich', health: null, macros: { calories: 300, protein: 8, carbs: 55, fat: 5, fiber: 6 }, calorieConfidence: 'HIGH', calorieBand: { min: 280, max: 320 }, ingredients: [] } };
});

const mockResumeMealAnalysis = mock.fn(function* () {
  yield { step: 'RESULT', data: { analysisId: 'resumed-id' } };
});

const mockReanalyzeMeal = mock.fn(function* () {
  yield { step: 'RESULT', data: { analysisId: 'reanalyzed-id', mealName: 'Corrected Meal', quantity: '1 serving', mealType: 'SNACK', mealTypeSource: 'model', tip: 'Light', health: null, macros: { calories: 150, protein: 5, carbs: 25, fat: 3, fiber: 2 }, calorieConfidence: 'MEDIUM', calorieBand: { min: 130, max: 170 }, ingredients: [] } };
});

const mockRecordMealAnalysisFeedback = mock.fn(async () => {});
const mockConfirmMealAnalysisLogged = mock.fn(async () => true);
const mockClearMealAnalysisLogged = mock.fn(async () => true);
const mockIsMealAnalysisSessionOwnedByUser = mock.fn(async () => true);
const mockResolveLocalNutritionLookups = mock.fn(async (analysisId: string) => ({
  analysisId,
  records: [],
  unresolvedRowIds: ['row-1'],
}));
const mockDownloadLocalNutritionPack = mock.fn(async () => ({
  status: 200 as const,
  lastModified: 'Mon, 24 Aug 2026 00:00:00 GMT',
  body: Buffer.from('{"schemaVersion":1}'),
}));

const mockConfig = {
  ORACLE_BUCKET_DOWNLOAD_URL:
    'https://objectstorage.example.com/p/download-token/n/ns/b/bucket/o/',
  DATABASE_URL: 'postgres://mock',
  API_V1_STR: '/api/v1',
  API_V2_STR: '/api/v2',
  DEBUG: false,
  ENVIRONMENT: 'development',
  LOCAL_INFERENCE: {
    minimumAppBuild: 48,
    textEnabled: true,
    localNutritionPackObject: '',
  },
};

await mock.module('../../services/nutritionEngineV2.js', {
  namedExports: {
    analyzeTextMeal: mockAnalyzeTextMeal,
    analyzeImageMeal: mockAnalyzeImageMeal,
    analyzeIngredientProposal: mockAnalyzeIngredientProposal,
    continueMealAnalysis: mockContinueMealAnalysis,
    continueMealAnalysisWithMealType: mockContinueMealAnalysisWithMealType,
    resumeMealAnalysis: mockResumeMealAnalysis,
    reanalyzeMeal: mockReanalyzeMeal,
    FEEDBACK_ISSUES: ['FOOD_IDENTIFICATION', 'PORTION_SIZE', 'CALORIE_DISTRIBUTION', 'MACROS_WRONG', 'MISSING_ITEMS', 'EXTRA_ITEMS', 'OTHER'],
    MEAL_TYPES: ['BREAKFAST', 'LUNCH', 'DINNER', 'SNACK'],
  },
});

await mock.module('../../services/mealAnalysisStore.js', {
  namedExports: {
    clearMealAnalysisLogged: mockClearMealAnalysisLogged,
    confirmMealAnalysisLogged: mockConfirmMealAnalysisLogged,
    isMealAnalysisSessionOwnedByUser: mockIsMealAnalysisSessionOwnedByUser,
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
  defaultExport: mockConfig,
});

await mock.module('../../services/localNutritionResolver.js', {
  namedExports: {
    resolveLocalNutritionLookups: mockResolveLocalNutritionLookups,
  },
});

await mock.module('../../services/localNutritionPackDownload.js', {
  namedExports: { downloadLocalNutritionPack: mockDownloadLocalNutritionPack },
});

await mock.module('../../utils/locale.js', {
  namedExports: {
    getLocaleFromRequest: mock.fn(() => 'en'),
    getCountryFromRequest: mock.fn(() => undefined),
    getTimeZoneFromRequest: mock.fn(() => 'Asia/Kolkata'),
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

function assertClientError(body: unknown, needle: string) {
  assert.ok(body !== null && typeof body === 'object');
  const o = body as Record<string, unknown>;
  const text = [o.message, o.detail]
    .filter((x): x is string => typeof x === 'string')
    .join(' ');
  assert.ok(
    text.toLowerCase().includes(needle.toLowerCase()),
    `expected "${needle}" in error body, got ${JSON.stringify(body)}`
  );
}

// Helper to collect NDJSON stream from response
function parseNdjson(body: string): any[] {
  return body
    .split('\n')
    .filter((line) => line.trim().length > 0)
    .map((line) => JSON.parse(line));
}

function validLocalProposal() {
  return {
    schemaVersion: 2,
    proposalId: 'proposal-1',
    modality: 'ANALYSIS_MODALITY_TEXT',
    mealName: 'Dal and rice',
    outcome: 'DECOMPOSITION_OUTCOME_FOOD',
    outcomeReason: 'The input contains food.',
    outcomeConfidence: 0.9,
    inferredMealType: 'LUNCH',
    mealTypeReason: 'The context supports lunch.',
    mealTypeConfident: true,
    items: [{
      rowId: 'ingredient-1',
      rawName: 'dal',
      isFoodReason: 'Dal belongs to the meal.',
      isFoodConfidence: 0.9,
      usdaLookup: {
        proposedCanonicalName: 'lentils',
        aliases: ['dal'],
        preparationStates: ['cooked'],
      },
      portion: {
        kind: 'BULK',
        gramsEstimated: 200,
        minGrams: 170,
        maxGrams: 230,
        sizeSpecifiedByUser: false,
      },
    }],
    interpretationOrigin: 'INTERPRETATION_ORIGIN_LOCAL_NANO',
    modelName: 'gemini-nano',
  };
}

const VALID_ANALYSIS_ID = '00000000-0000-4000-8000-000000000401';

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
  assertClientError(response.json(), 'textDescription');
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
  assert.equal(events[0]!.step, 'STARTED');
  const steps = events.map((e) => e.step);
  assert.ok(steps.includes('DECOMPOSITION'));
  await app.close();
});

test('POST /analyze-text redacts unexpected stream exceptions', async () => {
  const secret = 'PRIVATE_PROVIDER_AND_MEAL_DETAILS';
  mockAnalyzeTextMeal.mock.mockImplementationOnce(async function* () {
    yield await Promise.reject(new Error(`stream failed with ${secret}`));
  });
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/analyze-text',
    payload: { analysisId: VALID_ANALYSIS_ID, textDescription: 'private meal' },
  });

  assert.equal(response.statusCode, 200);
  const events = parseNdjson(response.body);
  assert.deepEqual(events, [{
    step: 'ERROR',
    data: {
      analysisId: VALID_ANALYSIS_ID,
      message: 'Pipeline failed',
      retryable: true,
    },
  }]);
  assert.doesNotMatch(response.body, new RegExp(secret));
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
  const result = events.find((e) => e.step === 'RESULT');
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

test('POST /analyze-text forwards the client-generated analysis ID', async () => {
  mockAnalyzeTextMeal.mock.resetCalls();
  const analysisId = '00000000-0000-4000-8000-000000000401';
  const app = await buildTestApp();
  await app.inject({
    method: 'POST', url: '/api/v2/food/analyze-text',
    payload: { analysisId, textDescription: 'dal rice' },
  });
  assert.equal(mockAnalyzeTextMeal.mock.calls[0]!.arguments[1].analysisId, analysisId);
  await app.close();
});

test('POST /analyze-text rejects a malformed analysis ID', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST', url: '/api/v2/food/analyze-text',
    payload: { analysisId: 'not-a-uuid', textDescription: 'dal rice' },
  });
  assert.equal(response.statusCode, 400);
  await app.close();
});

test('GET /local-capabilities is default-safe without a build header', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'GET',
    url: '/api/v2/food/local-capabilities',
  });

  assert.equal(response.statusCode, 200);
  assert.deepEqual(response.json(), {
    textEnabled: false,
  });
  await app.close();
});

test('GET /local-capabilities enables text only for an allowed app release', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'GET',
    url: '/api/v2/food/local-capabilities',
    headers: {
      'x-calorify-app-version': '1.2.16',
      'x-calorify-app-build': '48',
    },
  });

  assert.equal(response.statusCode, 200);
  assert.equal(response.json().textEnabled, true);
  await app.close();
});

test('GET /local-capabilities remains enabled for newer app builds', async () => {
  const app = await buildTestApp();
  for (const headers of [
    { 'x-calorify-app-version': '1.0.0', 'x-calorify-app-build': '49' },
    { 'x-calorify-app-version': '2.0.0', 'x-calorify-app-build': '100' },
    { 'x-calorify-app-build': '50' },
  ]) {
    const response = await app.inject({
      method: 'GET',
      url: '/api/v2/food/local-capabilities',
      headers,
    });
    assert.equal(response.json().textEnabled, true);
  }
  await app.close();
});

test('GET /local-capabilities stays disabled for older or malformed app builds', async () => {
  const app = await buildTestApp();
  for (const headers of [
    { 'x-calorify-app-version': '9.0.0', 'x-calorify-app-build': '47' },
    { 'x-calorify-app-version': '1.2.16', 'x-calorify-app-build': 'forty-eight' },
  ]) {
    const response = await app.inject({
      method: 'GET',
      url: '/api/v2/food/local-capabilities',
      headers,
    });
    assert.equal(response.json().textEnabled, false);
  }
  await app.close();
});

test('POST /resolve-local-nutrition fails closed while rollout is disabled', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/resolve-local-nutrition',
    payload: {
      analysisId: '00000000-0000-4000-8000-000000000421',
      lookups: [
        { rowId: 'row-1', canonicalHint: 'banana raw', preparation: 'raw' },
      ],
    },
  });
  assert.equal(response.statusCode, 403);
  await app.close();
});

test('configured local nutrition advertises the pack endpoint', async () => {
  mockConfig.LOCAL_INFERENCE.localNutritionPackObject =
    'local-nutrition/pack.json';
  try {
    const app = await buildTestApp();
    const response = await app.inject({
      method: 'GET',
      url: '/api/v2/food/local-capabilities',
      headers: {
        'x-calorify-app-version': '1.2.16',
        'x-calorify-app-build': '48',
      },
    });
    assert.equal(response.statusCode, 200);
    assert.deepEqual(response.json(), {
      textEnabled: true,
      localNutritionPackUrl: '/api/v2/food/local-nutrition-pack',
    });
    await app.close();
  } finally {
    mockConfig.LOCAL_INFERENCE.localNutritionPackObject = '';
  }
});

test('GET /local-nutrition-pack returns the canonical JSON with freshness metadata', async () => {
  mockConfig.LOCAL_INFERENCE.localNutritionPackObject = 'local-nutrition/pack.json';
  mockDownloadLocalNutritionPack.mock.resetCalls();
  try {
    const app = await buildTestApp();
    const response = await app.inject({
      method: 'GET',
      url: '/api/v2/food/local-nutrition-pack',
      headers: {
        'x-calorify-app-version': '1.2.16',
        'x-calorify-app-build': '48',
        'if-modified-since': 'Sun, 23 Aug 2026 00:00:00 GMT',
      },
    });
    assert.equal(response.statusCode, 200);
    assert.equal(response.headers['last-modified'], 'Mon, 24 Aug 2026 00:00:00 GMT');
    assert.equal(response.headers['cache-control'], 'private, no-cache');
    assert.deepEqual(response.json(), { schemaVersion: 1 });
    assert.equal(
      mockDownloadLocalNutritionPack.mock.calls[0]!.arguments[0],
      'Sun, 23 Aug 2026 00:00:00 GMT'
    );
    await app.close();
  } finally {
    mockConfig.LOCAL_INFERENCE.localNutritionPackObject = '';
  }
});

test('GET /local-nutrition-pack returns 304 when the pack is unchanged', async () => {
  mockConfig.LOCAL_INFERENCE.localNutritionPackObject = 'local-nutrition/pack.json';
  mockDownloadLocalNutritionPack.mock.mockImplementationOnce(async () => ({
    status: 304 as const,
    lastModified: 'Mon, 24 Aug 2026 00:00:00 GMT',
  }));
  try {
    const app = await buildTestApp();
    const response = await app.inject({
      method: 'GET',
      url: '/api/v2/food/local-nutrition-pack',
      headers: {
        'x-calorify-app-build': '48',
        'if-modified-since': 'Mon, 24 Aug 2026 00:00:00 GMT',
      },
    });
    assert.equal(response.statusCode, 304);
    assert.equal(response.body, '');
    await app.close();
  } finally {
    mockConfig.LOCAL_INFERENCE.localNutritionPackObject = '';
  }
});

test('enabled resolver forwards only the bounded structured lookups', async () => {
  mockConfig.LOCAL_INFERENCE.localNutritionPackObject =
    'local-nutrition/pack.json';
  mockResolveLocalNutritionLookups.mock.resetCalls();
  try {
    const app = await buildTestApp();
    const response = await app.inject({
      method: 'POST',
      url: '/api/v2/food/resolve-local-nutrition',
      headers: {
        'x-calorify-app-version': '1.2.16',
        'x-calorify-app-build': '48',
      },
      payload: {
        analysisId: '00000000-0000-4000-8000-000000000422',
        lookups: [
          { rowId: 'row-1', canonicalHint: 'banana raw', preparation: 'raw' },
        ],
      },
    });
    assert.equal(response.statusCode, 200);
    assert.equal(mockResolveLocalNutritionLookups.mock.calls.length, 1);
    assert.equal(
      mockResolveLocalNutritionLookups.mock.calls[0]!.arguments[0],
      '00000000-0000-4000-8000-000000000422'
    );
    assert.deepEqual(mockResolveLocalNutritionLookups.mock.calls[0]!.arguments[1], [
      { rowId: 'row-1', canonicalHint: 'banana raw', preparation: 'raw' },
    ]);
    await app.close();
  } finally {
    mockConfig.LOCAL_INFERENCE.localNutritionPackObject = '';
  }
});

test('POST /analyze-text requires complete metadata after a local attempt', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/analyze-text',
    payload: {
      textDescription: 'dal rice',
      localAttempted: true,
      fallbackReason: 'MEAL_ANALYSIS_FALLBACK_REASON_BUSY',
    },
  });

  assert.equal(response.statusCode, 400);
  assertClientError(response.json(), 'localAttemptId');
  await app.close();
});

test('POST /analyze-text forwards an ordered failed-local handoff', async () => {
  mockAnalyzeTextMeal.mock.resetCalls();
  const app = await buildTestApp();
  const now = Date.now();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/analyze-text',
    payload: {
      textDescription: 'dal rice',
      localAttempted: true,
      localAttemptId: '00000000-0000-4000-8000-000000000410',
      localAttemptStartedAtEpochMs: now - 500,
      localAttemptCompletedAtEpochMs: now - 100,
      fallbackReason: 'MEAL_ANALYSIS_FALLBACK_REASON_BUSY',
    },
  });

  assert.equal(response.statusCode, 200);
  const options = mockAnalyzeTextMeal.mock.calls[0]!.arguments[1];
  assert.equal(options.localAttempted, true);
  assert.equal(options.localAttemptId, '00000000-0000-4000-8000-000000000410');
  assert.equal(options.localAttemptStartedAtEpochMs, now - 500);
  assert.equal(options.localAttemptCompletedAtEpochMs, now - 100);
  assert.equal(options.fallbackReason, 'MEAL_ANALYSIS_FALLBACK_REASON_BUSY');
  await app.close();
});

test('POST /analyze-proposal settles a strictly valid local proposal', async () => {
  mockAnalyzeIngredientProposal.mock.resetCalls();
  const app = await buildTestApp();
  const now = Date.now();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/analyze-proposal',
    payload: {
      analysisId: '00000000-0000-4000-8000-000000000411',
      proposal: validLocalProposal(),
      localAttemptId: '00000000-0000-4000-8000-000000000412',
      localAttemptStartedAtEpochMs: now - 500,
      localAttemptCompletedAtEpochMs: now - 100,
      fallbackReason: 'MEAL_ANALYSIS_FALLBACK_REASON_LOCAL_NUTRITION_MISS',
    },
  });

  assert.equal(response.statusCode, 200);
  assert.equal(mockAnalyzeIngredientProposal.mock.calls.length, 1);
  const [proposal, options] = mockAnalyzeIngredientProposal.mock.calls[0]!.arguments;
  assert.equal(proposal.mealName, 'Dal and rice');
  assert.equal(options.analysisId, '00000000-0000-4000-8000-000000000411');
  assert.equal(options.userId, 'test-user');
  assert.equal(
    options.fallbackReason,
    'MEAL_ANALYSIS_FALLBACK_REASON_LOCAL_NUTRITION_MISS'
  );
  await app.close();
});

test('POST /analyze-proposal rejects model-returned nutrition values', async () => {
  mockAnalyzeIngredientProposal.mock.resetCalls();
  const app = await buildTestApp();
  const proposal = validLocalProposal();
  Object.assign(proposal.items[0]!, { calories: 450 });
  const now = Date.now();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/analyze-proposal',
    payload: {
      analysisId: '00000000-0000-4000-8000-000000000413',
      proposal,
      localAttemptId: '00000000-0000-4000-8000-000000000414',
      localAttemptStartedAtEpochMs: now - 500,
      localAttemptCompletedAtEpochMs: now - 100,
    },
  });

  assert.equal(response.statusCode, 400);
  assert.equal(mockAnalyzeIngredientProposal.mock.calls.length, 0);
  await app.close();
});

test('POST /analyze-proposal rejects count values on bulk portions', async () => {
  const app = await buildTestApp();
  const proposal = validLocalProposal();
  Object.assign(proposal.items[0]!.portion, { count: 1 });
  const now = Date.now();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/analyze-proposal',
    payload: {
      analysisId: '00000000-0000-4000-8000-000000000415',
      proposal,
      localAttemptId: '00000000-0000-4000-8000-000000000416',
      localAttemptStartedAtEpochMs: now - 500,
      localAttemptCompletedAtEpochMs: now - 100,
    },
  });

  assert.equal(response.statusCode, 400);
  await app.close();
});

test('POST /analyze-proposal requires lookup and portion data', async () => {
  const app = await buildTestApp();
  const proposal = validLocalProposal();
  delete (proposal.items[0] as { portion?: unknown }).portion;
  const now = Date.now();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/analyze-proposal',
    payload: {
      analysisId: '00000000-0000-4000-8000-000000000417',
      proposal,
      localAttemptId: '00000000-0000-4000-8000-000000000418',
      localAttemptStartedAtEpochMs: now - 500,
      localAttemptCompletedAtEpochMs: now - 100,
    },
  });

  assert.equal(response.statusCode, 400);
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
  assert.equal(response.statusCode, 400);
  assertClientError(response.json(), 'imageUrl');
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
  assertClientError(response.json(), 'valid URL');
  await app.close();
});

test('POST /analyze-image streams events for valid image URL', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/analyze-image',
    payload: {
      imageUrl:
        'https://objectstorage.example.com/p/upload-token/n/ns/b/bucket/o/test-user/meal.jpg',
    },
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
    payload: {
      imageUrl:
        'https://objectstorage.example.com/p/upload-token/n/ns/b/bucket/o/test-user/meal.jpg',
    },
  });
  const callArgs = mockAnalyzeImageMeal.mock.calls[0]!.arguments;
  const finalUrl = callArgs[0] as string;
  assert.equal(
    finalUrl,
    'https://objectstorage.example.com/p/download-token/n/ns/b/bucket/o/test-user/meal.jpg'
  );
  assert.equal(callArgs[1]?.imageObjectKey, 'test-user/meal.jpg');
  await app.close();
});

test('POST /analyze-image forwards the client-generated analysis ID', async () => {
  mockAnalyzeImageMeal.mock.resetCalls();
  const analysisId = '00000000-0000-4000-8000-000000000402';
  const app = await buildTestApp();
  await app.inject({
    method: 'POST', url: '/api/v2/food/analyze-image',
    payload: {
      analysisId,
      imageUrl: 'https://objectstorage.example.com/p/upload-token/n/ns/b/bucket/o/test-user/meal.jpg',
    },
  });
  assert.equal(mockAnalyzeImageMeal.mock.calls[0]!.arguments[1].analysisId, analysisId);
  await app.close();
});

test('POST /analyze-image rejects another user object key', async () => {
  mockAnalyzeImageMeal.mock.resetCalls();
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/analyze-image',
    payload: {
      imageUrl:
        'https://objectstorage.example.com/p/upload-token/n/ns/b/bucket/o/other-user/meal.jpg',
    },
  });
  assert.equal(response.statusCode, 400);
  assert.equal(mockAnalyzeImageMeal.mock.calls.length, 0);
  await app.close();
});

test('POST /analyze-image rejects a foreign origin or bucket', async () => {
  const app = await buildTestApp();
  for (const imageUrl of [
    'https://evil.example.com/p/upload-token/n/ns/b/bucket/o/test-user/meal.jpg',
    'https://objectstorage.example.com/p/upload-token/n/ns/b/other/o/test-user/meal.jpg',
  ]) {
    const response = await app.inject({
      method: 'POST',
      url: '/api/v2/food/analyze-image',
      payload: { imageUrl },
    });
    assert.equal(response.statusCode, 400);
  }
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
    payload: { answers: [{ clarification_id: 'clr-rice', selected_option_id: 'regular' }] },
  });
  assert.equal(response.statusCode, 400);
  assertClientError(response.json(), 'analysisId');
  await app.close();
});

test('POST /clarify returns 400 when answers is empty array', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/clarify',
    payload: { analysisId: VALID_ANALYSIS_ID, answers: [] },
  });
  assert.equal(response.statusCode, 400);
  assertClientError(response.json(), 'answers');
  await app.close();
});

test('POST /clarify returns 400 when answers is missing', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/clarify',
    payload: { analysisId: VALID_ANALYSIS_ID },
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
      analysisId: VALID_ANALYSIS_ID,
      answers: [{ clarification_id: 'clr-rice', selected_option_id: 'regular' }],
    },
  });
  assert.equal(response.statusCode, 200);
  const events = parseNdjson(response.body);
  assert.ok(events.length > 0);
  await app.close();
});

test('POST /clarify accepts proto3 camelCase answer keys', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/clarify',
    payload: {
      analysisId: VALID_ANALYSIS_ID,
      answers: [{ clarificationId: 'clr-rice', selectedOptionId: 'regular' }],
    },
  });
  assert.equal(response.statusCode, 200);
  const events = parseNdjson(response.body);
  assert.ok(events.length > 0);
  await app.close();
});

test('POST /clarify does not apply the reanalysis UUID schema', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/clarify',
    payload: {
      analysisId: VALID_ANALYSIS_ID,
      newAnalysisId: 'not-a-uuid',
      answers: [{ clarificationId: 'clr-rice', selectedOptionId: 'regular' }],
    },
  });
  assert.equal(response.statusCode, 200);
  await app.close();
});

test('POST /clarify calls continueMealAnalysis with correct args', async () => {
  mockContinueMealAnalysis.mock.resetCalls();
  const app = await buildTestApp();
  const answers = [
    { clarificationId: 'clr-rice', selectedOptionId: 'small' },
    { clarificationId: 'clr-dal', selectedOptionId: 'large' },
  ];
  const expectedDto = [
    { clarificationId: 'clr-rice', selectedOptionId: 'small' },
    { clarificationId: 'clr-dal', selectedOptionId: 'large' },
  ];
  await app.inject({
    method: 'POST',
    url: '/api/v2/food/clarify',
    payload: { analysisId: VALID_ANALYSIS_ID, answers },
  });
  assert.equal(mockContinueMealAnalysis.mock.calls.length, 1);
  const args = mockContinueMealAnalysis.mock.calls[0]!.arguments;
  assert.equal(args[0], VALID_ANALYSIS_ID);
  assert.deepEqual(args[1], expectedDto);
  await app.close();
});

// ---------------------------------------------------------------------------
// POST /api/v2/food/resume
// ---------------------------------------------------------------------------

test('POST /resume validates the proto-shaped analysisId', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/resume',
    payload: {},
  });
  assert.equal(response.statusCode, 400);
  assertClientError(response.json(), 'analysisId');
  await app.close();
});

test('POST /resume enforces ownership before streaming', async () => {
  mockIsMealAnalysisSessionOwnedByUser.mock.mockImplementationOnce(async () => false);
  mockResumeMealAnalysis.mock.resetCalls();
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/resume',
    payload: { analysisId: VALID_ANALYSIS_ID },
  });
  assert.equal(response.statusCode, 404);
  assert.equal(mockResumeMealAnalysis.mock.calls.length, 0);
  await app.close();
});

test('POST /resume forwards the owned analysis and authenticated user', async () => {
  mockResumeMealAnalysis.mock.resetCalls();
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/resume',
    payload: { analysisId: VALID_ANALYSIS_ID },
  });
  assert.equal(response.statusCode, 200);
  assert.equal(parseNdjson(response.body)[0]?.step, 'RESULT');
  const args = mockResumeMealAnalysis.mock.calls[0]!.arguments;
  assert.equal(args[0], VALID_ANALYSIS_ID);
  assert.equal(args[1].userId, 'test-user');
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
    payload: { signal: 'UP' },
  });
  assert.equal(response.statusCode, 400);
  assertClientError(response.json(), 'analysisId');
  await app.close();
});

test('POST /feedback returns 400 when signal is invalid', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/feedback',
    payload: { analysisId: VALID_ANALYSIS_ID, signal: 'maybe' },
  });
  assert.equal(response.statusCode, 400);
  assertClientError(response.json(), 'signal');
  await app.close();
});

test('POST /feedback returns { ok: true } for valid positive feedback', async () => {
  mockRecordMealAnalysisFeedback.mock.resetCalls();
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/feedback',
    payload: { analysisId: VALID_ANALYSIS_ID, signal: 'UP' },
  });
  assert.equal(response.statusCode, 200);
  assert.deepEqual(response.json(), { ok: true, message: '' });
  await app.close();
});

test('POST /feedback calls recordMealAnalysisFeedback with UP signal', async () => {
  mockRecordMealAnalysisFeedback.mock.resetCalls();
  const app = await buildTestApp();
  await app.inject({
    method: 'POST',
    url: '/api/v2/food/feedback',
    payload: { analysisId: VALID_ANALYSIS_ID, signal: 'UP' },
  });
  assert.equal(mockRecordMealAnalysisFeedback.mock.calls.length, 1);
  const args = mockRecordMealAnalysisFeedback.mock.calls[0]!.arguments[0];
  assert.equal(args.analysisId, VALID_ANALYSIS_ID);
  assert.equal(args.signal, 'UP');
  await app.close();
});

test('POST /feedback hides an analysis owned by another user', async () => {
  mockIsMealAnalysisSessionOwnedByUser.mock.mockImplementationOnce(
    async () => false
  );
  mockRecordMealAnalysisFeedback.mock.resetCalls();
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/feedback',
    payload: { analysisId: VALID_ANALYSIS_ID, signal: 'UP' },
  });

  assert.equal(response.statusCode, 404);
  assert.equal(response.json().message, 'Analysis session not found');
  assert.equal(mockRecordMealAnalysisFeedback.mock.calls.length, 0);
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
  assertClientError(response.json(), 'analysisId');
  await app.close();
});

test('POST /meal-type returns 400 when mealType is invalid', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/meal-type',
    payload: { analysisId: VALID_ANALYSIS_ID, mealType: 'BRUNCH' },
  });
  assert.equal(response.statusCode, 400);
  assertClientError(response.json(), 'mealType');
  await app.close();
});

test('POST /meal-type returns 400 when mealType is missing', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/meal-type',
    payload: { analysisId: VALID_ANALYSIS_ID },
  });
  assert.equal(response.statusCode, 400);
  await app.close();
});

test('POST /meal-type streams events for BREAKFAST', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/meal-type',
    payload: { analysisId: VALID_ANALYSIS_ID, mealType: 'BREAKFAST' },
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
      payload: { analysisId: VALID_ANALYSIS_ID, mealType },
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
    payload: { analysisId: VALID_ANALYSIS_ID, mealType: 'DINNER' },
  });
  assert.equal(mockContinueMealAnalysisWithMealType.mock.calls.length, 1);
  const args = mockContinueMealAnalysisWithMealType.mock.calls[0]!.arguments;
  assert.equal(args[0], VALID_ANALYSIS_ID);
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
    payload: { issues: ['PORTION_SIZE'] },
  });
  assert.equal(response.statusCode, 400);
  assertClientError(response.json(), 'analysisId');
  await app.close();
});

test('POST /reanalyze returns 400 when issues is empty array', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/reanalyze',
    payload: { analysisId: VALID_ANALYSIS_ID, issues: [] },
  });
  assert.equal(response.statusCode, 400);
  assertClientError(response.json(), 'issues');
  await app.close();
});

test('POST /reanalyze returns 400 for unsupported issue type', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/reanalyze',
    payload: { analysisId: VALID_ANALYSIS_ID, issues: ['unknown_issue'] },
  });
  assert.equal(response.statusCode, 400);
  assertClientError(response.json(), 'allowed values');
  await app.close();
});

test('POST /reanalyze streams events for valid feedback', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/reanalyze',
    payload: { analysisId: VALID_ANALYSIS_ID, issues: ['PORTION_SIZE'] },
  });
  assert.equal(response.statusCode, 200);
  const events = parseNdjson(response.body);
  assert.ok(events.length > 0);
  await app.close();
});

test('POST /reanalyze forwards the client-generated new analysis ID', async () => {
  mockReanalyzeMeal.mock.resetCalls();
  const newAnalysisId = '00000000-0000-4000-8000-000000000403';
  const app = await buildTestApp();
  await app.inject({
    method: 'POST', url: '/api/v2/food/reanalyze',
    payload: {
      analysisId: VALID_ANALYSIS_ID,
      newAnalysisId,
      issues: ['PORTION_SIZE'],
    },
  });
  assert.equal(mockReanalyzeMeal.mock.calls[0]!.arguments[4].analysisId, newAnalysisId);
  await app.close();
});

test('POST /reanalyze rejects a malformed new analysis ID', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/reanalyze',
    payload: {
      analysisId: VALID_ANALYSIS_ID,
      newAnalysisId: 'not-a-uuid',
      issues: ['PORTION_SIZE'],
    },
  });
  assert.equal(response.statusCode, 400);
  await app.close();
});

test('POST /reanalyze records feedback before streaming', async () => {
  mockRecordMealAnalysisFeedback.mock.resetCalls();
  const app = await buildTestApp();
  await app.inject({
    method: 'POST',
    url: '/api/v2/food/reanalyze',
    payload: {
      analysisId: VALID_ANALYSIS_ID,
      issues: ['FOOD_IDENTIFICATION', 'MACROS_WRONG'],
      otherText: 'The food was completely wrong',
    },
  });
  assert.equal(mockRecordMealAnalysisFeedback.mock.calls.length, 1);
  const args = mockRecordMealAnalysisFeedback.mock.calls[0]!.arguments[0];
  assert.equal(args.signal, 'DOWN');
  assert.deepEqual(args.issues, ['FOOD_IDENTIFICATION', 'MACROS_WRONG']);
  assert.equal(args.otherText, 'The food was completely wrong');
  await app.close();
});

test('POST /reanalyze accepts all valid FEEDBACK_ISSUES', async () => {
  const app = await buildTestApp();
  const allIssues = [
    'FOOD_IDENTIFICATION', 'PORTION_SIZE', 'CALORIE_DISTRIBUTION',
    'MACROS_WRONG', 'MISSING_ITEMS', 'EXTRA_ITEMS', 'OTHER',
  ];
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/reanalyze',
    payload: { analysisId: VALID_ANALYSIS_ID, issues: allIssues },
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
      meal: {
        name: 'Dal Rice',
        quantity: '1 bowl',
        type: 'LUNCH',
        macros: { calories: 450, protein: 15, carbs: 70, fat: 8, fiber: 5 },
      },
    },
  });
  assert.equal(response.statusCode, 400);
  assertClientError(response.json(), 'analysisId');
  await app.close();
});

test('POST /confirm-log returns { ok: true } for valid payload', async () => {
  mockConfirmMealAnalysisLogged.mock.resetCalls();
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/confirm-log',
    payload: {
      analysisId: VALID_ANALYSIS_ID,
      loggedAt: '2024-01-15T12:00:00Z',
      meal: {
        name: 'Dal Rice',
        quantity: '1 bowl',
        type: 'LUNCH',
        macros: { calories: 450, protein: 15, carbs: 70, fat: 8, fiber: 5 },
      },
    },
  });
  assert.equal(response.statusCode, 200);
  assert.deepEqual(response.json(), { ok: true, message: '' });
  await app.close();
});

test('POST /confirm-log rejects timestamps without an explicit timezone', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/confirm-log',
    payload: {
      analysisId: VALID_ANALYSIS_ID,
      loggedAt: '2024-01-15T12:00:00',
      meal: {
        name: 'Dal Rice',
        quantity: '1 bowl',
        type: 'LUNCH',
        macros: { calories: 450, protein: 15, carbs: 70, fat: 8, fiber: 5 },
      },
    },
  });
  assert.equal(response.statusCode, 400);
  await app.close();
});

test('POST /confirm-log rejects timestamps more than five minutes in the future', async () => {
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/confirm-log',
    payload: {
      analysisId: VALID_ANALYSIS_ID,
      loggedAt: new Date(Date.now() + 60 * 60 * 1000).toISOString(),
      meal: {
        name: 'Dal Rice',
        quantity: '1 bowl',
        type: 'LUNCH',
        macros: { calories: 450, protein: 15, carbs: 70, fat: 8, fiber: 5 },
      },
    },
  });
  assert.equal(response.statusCode, 400);
  await app.close();
});

test('POST /confirm-log calls confirmMealAnalysisLogged with full record', async () => {
  mockConfirmMealAnalysisLogged.mock.resetCalls();
  const app = await buildTestApp();
  const payload = {
    analysisId: VALID_ANALYSIS_ID,
    loggedAt: '2024-01-15T19:00:00Z',
    meal: {
      name: 'Chicken Curry',
      quantity: '1 serving',
      type: 'DINNER',
      macros: { calories: 520, protein: 35, carbs: 40, fat: 18, fiber: 4 },
    },
  };
  await app.inject({
    method: 'POST',
    url: '/api/v2/food/confirm-log',
    payload,
  });
  assert.equal(mockConfirmMealAnalysisLogged.mock.calls.length, 1);
  const arg = mockConfirmMealAnalysisLogged.mock.calls[0]!.arguments[0];
  assert.equal(arg.analysisId, VALID_ANALYSIS_ID);
  assert.equal(arg.mealName, 'Chicken Curry');
  assert.equal(arg.calories, 520);
  assert.equal(arg.mealType, 'DINNER');
  assert.equal(arg.timeZone, 'Asia/Kolkata');
  await app.close();
});

test('POST /confirm-log clears a deleted analyzed meal', async () => {
  mockClearMealAnalysisLogged.mock.resetCalls();
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/confirm-log',
    payload: { analysisId: VALID_ANALYSIS_ID, deleted: true },
  });
  assert.equal(response.statusCode, 200);
  assert.equal(mockClearMealAnalysisLogged.mock.calls.length, 1);
  assert.equal(
    mockClearMealAnalysisLogged.mock.calls[0]!.arguments[0],
    VALID_ANALYSIS_ID
  );
  await app.close();
});

test('POST /confirm-log rejects a session that is not completed', async () => {
  mockConfirmMealAnalysisLogged.mock.mockImplementationOnce(async () => false);
  const app = await buildTestApp();
  const response = await app.inject({
    method: 'POST',
    url: '/api/v2/food/confirm-log',
    payload: {
      analysisId: VALID_ANALYSIS_ID,
      loggedAt: '2024-01-15T12:00:00Z',
      meal: {
        name: 'Banana',
        quantity: '1 serving',
        type: 'SNACK',
        macros: { calories: 107, protein: 1, carbs: 27, fat: 0, fiber: 3 },
      },
    },
  });
  assert.equal(response.statusCode, 409);
  await app.close();
});

test('continuation and confirmation endpoints reject non-UUID analysis IDs', async () => {
  const app = await buildTestApp();
  const requests = [
    ['/resume', { analysisId: 'not-a-uuid' }],
    ['/clarify', {
      analysisId: 'not-a-uuid',
      answers: [{ clarificationId: 'portion', selectedOptionId: 'small' }],
    }],
    ['/feedback', { analysisId: 'not-a-uuid', signal: 'UP' }],
    ['/meal-type', { analysisId: 'not-a-uuid', mealType: 'LUNCH' }],
    ['/reanalyze', { analysisId: 'not-a-uuid', issues: ['PORTION_SIZE'] }],
    ['/confirm-log', { analysisId: 'not-a-uuid', deleted: true }],
  ] as const;
  for (const [path, payload] of requests) {
    const response = await app.inject({
      method: 'POST',
      url: `/api/v2/food${path}`,
      payload,
    });
    assert.equal(response.statusCode, 400, path);
  }
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
