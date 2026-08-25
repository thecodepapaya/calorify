import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';
import Fastify from 'fastify';

let configuredPassword: string | null = 'history-secret';
let requestedPage = 0;
let requestedSource: string | undefined;

await mock.module('../config.js', {
  defaultExport: {
    get ANALYSIS_HISTORY_PASSWORD() { return configuredPassword; },
  },
});

await mock.module('../services/analysisHistoryStore.js', {
  namedExports: {
    listAnalysisHistory: mock.fn(async (page: number, source?: string) => {
      requestedPage = page;
      requestedSource = source;
      return {
        entries: [{
          analysisId: 'analysis-1', userId: 'user-1', source: 'text', locale: 'en',
          stage: 'COMPLETED', requestPayload: { textDescription: '<b>dal</b>' },
          decompositionData: { mealName: '<Dal>' }, resultData: { mealName: 'Dal' },
          lastResponseStep: 'RESULT', lastResponseData: { mealName: 'Dal' },
          createdAt: '2026-08-25T10:00:00.000Z', updatedAt: '2026-08-25T10:01:00.000Z',
        }],
        page: Number.isFinite(page) ? page : 1, pageSize: 10, totalEntries: 12,
        totalPages: 2, source,
      };
    }),
  },
});

await mock.module('../services/oracleObjectStorage.js', {
  namedExports: {
    buildOracleDownloadUrl: mock.fn((key: string) => `https://images.example.test/${key}`),
  },
});

const {
  analysisHistoryRoutes,
  isAnalysisHistoryAuthorized,
  renderAnalysisHistory,
} = await import('./analysisHistory.js');

function basic(username: string, password: string): string {
  return `Basic ${Buffer.from(`${username}:${password}`).toString('base64')}`;
}

test('analysis history Basic authentication validates both credential fields', () => {
  assert.equal(isAnalysisHistoryAuthorized(basic('calorify', 'history-secret'), 'history-secret'), true);
  assert.equal(isAnalysisHistoryAuthorized(basic('other', 'history-secret'), 'history-secret'), false);
  assert.equal(isAnalysisHistoryAuthorized(basic('calorify', 'wrong'), 'history-secret'), false);
  assert.equal(isAnalysisHistoryAuthorized(undefined, 'history-secret'), false);
  assert.equal(isAnalysisHistoryAuthorized(basic('calorify', 'history-secret'), null), false);
});

test('analysis history route is protected, paginated, filtered, and not cached', async () => {
  configuredPassword = 'history-secret';
  const app = Fastify({ logger: false });
  await app.register(analysisHistoryRoutes);

  const unauthorized = await app.inject({ method: 'GET', url: '/analysis-history' });
  assert.equal(unauthorized.statusCode, 401);
  assert.match(String(unauthorized.headers['www-authenticate']), /Basic/);

  const response = await app.inject({
    method: 'GET', url: '/analysis-history?page=2&source=text',
    headers: { authorization: basic('calorify', 'history-secret') },
  });
  assert.equal(response.statusCode, 200);
  assert.equal(requestedPage, 2);
  assert.equal(requestedSource, 'text');
  assert.equal(response.headers['cache-control'], 'no-store');
  assert.match(response.body, /Page 2 of 2/);
  assert.match(response.body, /Latest response sent/);
  assert.doesNotMatch(response.body, /<b>dal<\/b>/);
  await app.close();
});

test('analysis history route is concealed when no password is configured', async () => {
  configuredPassword = null;
  const app = Fastify({ logger: false });
  await app.register(analysisHistoryRoutes);
  const response = await app.inject({ method: 'GET', url: '/analysis-history' });
  assert.equal(response.statusCode, 404);
  await app.close();
});

test('renderAnalysisHistory includes image input and escapes stored JSON', () => {
  const html = renderAnalysisHistory({
    entries: [{
      analysisId: 'image-1', source: 'image', locale: 'en', stage: 'DECOMPOSED',
      requestPayload: { imageObjectKey: 'user/image.webp' },
      decompositionData: { unsafe: '</pre><script>alert(1)</script>' },
      createdAt: '2026-08-25T10:00:00.000Z', updatedAt: '2026-08-25T10:01:00.000Z',
    }],
    page: 1, pageSize: 10, totalEntries: 1, totalPages: 1,
  });
  assert.match(html, /<img src="https:\/\/images\.example\.test\/user\/image\.webp"/);
  assert.doesNotMatch(html, /<script>alert/);
  assert.match(html, /&lt;script&gt;/);
});

test('renderAnalysisHistory explains generated, skipped, and next pipeline steps in order', () => {
  const html = renderAnalysisHistory({
    entries: [{
      analysisId: 'flow-1', source: 'text', locale: 'en', stage: 'COMPLETED',
      requestPayload: { textDescription: 'dal and rice' },
      decompositionData: { mealName: 'Dal and rice' },
      ingredientsData: { ingredients: [{ rawName: 'dal' }, { rawName: 'rice' }] },
      uncertaintyData: { calorieConfidence: 'HIGH', clarifications: [] },
      selectedMealType: 'LUNCH', selectedMealTypeSource: 'model',
      lastResponseStep: 'RESULT', lastResponseData: { mealName: 'Dal and rice' },
      createdAt: '2026-08-25T10:00:00.000Z', updatedAt: '2026-08-25T10:00:10.000Z',
    }],
    page: 1, pageSize: 10, totalEntries: 1, totalPages: 1,
  });

  const titles = [
    'Input captured', 'Meal decomposed', 'Ingredients grounded',
    'Uncertainty checked', 'Portion clarification', 'Meal type resolved',
    'Latest response sent to the app',
  ];
  let previous = -1;
  for (const title of titles) {
    const position = html.indexOf(title);
    assert.ok(position > previous, `${title} should follow the previous step`);
    previous = position;
  }
  assert.match(html, /No durable data was generated for this step/);
  assert.match(html, /<span>Next<\/span>The model interpreted the meal/);
  assert.doesNotMatch(html, /<details class="session" open>/);
});

test('renderAnalysisHistory makes a pending clarification state explicit', () => {
  const html = renderAnalysisHistory({
    entries: [{
      analysisId: 'waiting-1', source: 'image', locale: 'en',
      stage: 'AWAITING_CLARIFICATION', requestPayload: {},
      uncertaintyData: {
        calorieConfidence: 'MEDIUM',
        clarifications: [{ question: 'How large was the serving?' }],
      },
      lastResponseStep: 'CLARIFICATION',
      lastResponseData: { clarifications: [{ question: 'How large was the serving?' }] },
      createdAt: '2026-08-25T10:00:00.000Z', updatedAt: '2026-08-25T10:00:04.000Z',
    }],
    page: 1, pageSize: 10, totalEntries: 1, totalPages: 1,
  });

  assert.match(html, /Clarification requested from the user/);
  assert.match(html, /1 question generated · awaiting answer/);
  assert.match(html, /The flow paused here and is waiting for the user’s answer/);
});

test('renderAnalysisHistory explains provider, USDA, presentation, and audit details', () => {
  const html = renderAnalysisHistory({
    entries: [{
      analysisId: 'observed-1', source: 'text', locale: 'en', stage: 'COMPLETED',
      requestPayload: { textDescription: 'rice bowl' },
      observations: [{
        id: '1', requestId: 'request-1', action: 'analyze_text', streamFormat: 'ndjson',
        eventSequence: [{ step: 'DECOMPOSITION', elapsedMs: 100 }, { step: 'RESULT', elapsedMs: 250 }],
        traceSummary: {
          totalDurationMs: 250, llmCallCount: 2, llmAttemptCount: 2,
          usdaLookupCount: 1, dbWriteCount: 3,
          llmAttempts: [{ operation: 'decompose_text', provider: 'openrouter', model: 'model-x', outcome: 'success', durationMs: 80 }],
          artifacts: [
            { name: 'nutrition_match', capturedAtOffsetMs: 140, data: { rawName: 'rice', canonicalHint: 'cooked rice', matchType: 'exact', score: 0.99, confidenceMargin: 0.5, selected: { fdcId: '168878', description: 'Rice, cooked', per100g: { calories: 130 } } } },
            { name: 'presentation_input', capturedAtOffsetMs: 190, data: { mealName: 'Rice bowl' } },
            { name: 'presentation_output', capturedAtOffsetMs: 240, data: { quantity: '1 bowl', tip: 'Add vegetables' } },
          ],
          steps: [{ category: 'usda', name: 'canonicalize_with_usda', startedAtOffsetMs: 100, durationMs: 40, meta: {} }],
        },
        lastStep: 'RESULT', hadError: false,
        startedAt: '2026-08-25T10:00:00.000Z', completedAt: '2026-08-25T10:00:00.250Z',
      }],
      feedbackHistory: [{ signal: 'DOWN', issues: ['PORTION_SIZE'] }],
      createdAt: '2026-08-25T10:00:00.000Z', updatedAt: '2026-08-25T10:00:01.000Z',
    }],
    page: 1, pageSize: 10, totalEntries: 1, totalPages: 1,
  });
  assert.match(html, /Execution observability/);
  assert.match(html, /FDC 168878/);
  assert.match(html, /Presentation stage input/);
  assert.match(html, /Presentation enrichment output/);
  assert.match(html, /openrouter/);
  assert.match(html, /User actions & durable audit/);
});
