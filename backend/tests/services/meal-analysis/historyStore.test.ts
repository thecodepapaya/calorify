import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';

const calls: Array<{ sql: string; params?: unknown[] }> = [];
let responses: Array<{ rows: any[]; rowCount: number }> = [];

await mock.module('../../../src/services/infrastructure/database.js', {
  namedExports: {
    query: mock.fn(async (sql: string, params?: unknown[]) => {
      calls.push({ sql, params });
      return responses.shift() ?? { rows: [], rowCount: 0 };
    }),
  },
});

const {
  listAnalysisHistory,
  ANALYSIS_HISTORY_PAGE_SIZE,
  buildSafeTraceSummary,
  recordAnalysisObservation,
} = await import('../../../src/services/meal-analysis/historyStore.js');

test('listAnalysisHistory returns ten newest entries with paging metadata', async () => {
  calls.length = 0;
  responses = [
    { rows: [{ total: '21' }], rowCount: 1 },
    {
      rows: [{
        analysis_id: 'analysis-1', parent_analysis_id: null, user_id: 'user-1',
        source: 'text', locale: 'en', country_code: 'IN', time_zone: 'Asia/Kolkata',
        stage: 'COMPLETED', request_payload: '{"textDescription":"dal"}',
        decomposition_data: { mealName: 'Dal' }, ingredients_data: null,
        uncertainty_data: null, meal_type_question_data: null,
        selected_meal_type: 'DINNER', selected_meal_type_source: 'model',
        clarification_answers: null, pending_clarification_answers: null,
        result_data: { analysisId: 'analysis-1' },
        last_response_step: 'RESULT', last_response_data: { analysisId: 'analysis-1' },
        created_at: '2026-08-25T10:00:00.000Z', updated_at: '2026-08-25T10:01:00.000Z',
      }],
      rowCount: 1,
    },
  ];

  const result = await listAnalysisHistory(2, 'text');

  assert.equal(result.pageSize, 10);
  assert.equal(result.totalEntries, 21);
  assert.equal(result.totalPages, 3);
  assert.equal(result.entries[0]?.analysisId, 'analysis-1');
  assert.deepEqual(result.entries[0]?.requestPayload, { textDescription: 'dal' });
  assert.deepEqual(calls[0]?.params, ['text']);
  assert.deepEqual(calls[1]?.params, ['text', ANALYSIS_HISTORY_PAGE_SIZE, 10]);
  assert.match(calls[1]!.sql, /ORDER BY created_at DESC, analysis_id DESC/);
});

test('listAnalysisHistory normalizes invalid pages to the first page', async () => {
  calls.length = 0;
  responses = [
    { rows: [{ total: '0' }], rowCount: 1 },
    { rows: [], rowCount: 0 },
  ];

  const result = await listAnalysisHistory(Number.NaN);

  assert.equal(result.page, 1);
  assert.deepEqual(calls[1]?.params, [null, 10, 0]);
});

test('recordAnalysisLastResponse stores the exact streamed step and data', async () => {
  calls.length = 0;
  responses = [{ rows: [], rowCount: 1 }];
  const { recordAnalysisLastResponse } = await import('../../../src/services/meal-analysis/historyStore.js');

  await recordAnalysisLastResponse('analysis-1', 'NO_FOOD', { analysisId: 'analysis-1' });

  assert.match(calls[0]!.sql, /SET last_response_step = \$2/);
  assert.deepEqual(calls[0]?.params, [
    'analysis-1', 'NO_FOOD', '{"analysisId":"analysis-1"}',
  ]);
});

test('buildSafeTraceSummary retains review artifacts but strips secret and URL fields', () => {
  const summary = buildSafeTraceSummary({
    startedAt: 1_000,
    steps: [{ category: 'usda', name: 'lookup', durationMs: 12, meta: { ingredientIndex: 0, analysisId: 'private' } }],
    artifacts: [{
      name: 'nutrition_match', capturedAtOffsetMs: 12,
      data: { fdcId: '123', description: 'Rice', apiKey: 'secret', imageUrl: 'signed' },
    }],
    llmAttempts: [{ provider: 'openai', model: 'gpt-test', outcome: 'success', durationMs: 9 }],
    llmCallCount: 1, usdaLookupCount: 1, dbWriteCount: 0,
  }, 1_020);

  assert.equal(summary.totalDurationMs, 20);
  assert.doesNotMatch(JSON.stringify(summary), /secret|signed|private/);
  assert.match(JSON.stringify(summary), /Rice/);
});

test('recordAnalysisObservation persists the request pass and safe trace', async () => {
  calls.length = 0;
  responses = [{ rows: [], rowCount: 1 }];
  await recordAnalysisObservation({
    analysisId: 'analysis-1', requestId: 'request-1', action: 'analyze_text',
    streamFormat: 'ndjson', eventSequence: [{ step: 'RESULT', elapsedMs: 20 }],
    trace: {
      startedAt: 1_000, steps: [], artifacts: [], llmAttempts: [],
      llmCallCount: 0, usdaLookupCount: 0, dbWriteCount: 0,
    },
    lastStep: 'RESULT', hadError: false, completedAt: 1_020,
  });
  assert.match(calls[0]!.sql, /INSERT INTO meal_analysis_observation/);
  assert.equal(calls[0]?.params?.[2], 'analyze_text');
});
