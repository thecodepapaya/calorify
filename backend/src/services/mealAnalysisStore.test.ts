import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';

// ---------------------------------------------------------------------------
// Mock database and config
// ---------------------------------------------------------------------------

const mockQuery = mock.fn(async (_sql: string, _params?: unknown[]) => ({ rows: [] }));

// `withTransaction(fn)` is used by the clarification and meal-type writers.
// The fake client proxies its `query` calls back to `mockQuery` so existing
// assertions that count query calls keep working after the transaction refactor.
const fakeClient = {
  query: mockQuery,
};
const mockWithTransaction = mock.fn(
  async <T>(fn: (client: typeof fakeClient) => Promise<T>): Promise<T> => fn(fakeClient)
);

await mock.module('./database.js', {
  namedExports: { query: mockQuery, withTransaction: mockWithTransaction },
});

const mockConfig = { DATABASE_URL: 'postgres://mock' as string | null };
await mock.module('../config.js', { defaultExport: mockConfig });

const {
  upsertMealAnalysisSession,
  getMealAnalysisSession,
  isMealAnalysisSessionOwnedByUser,
  recordMealAnalysisClarification,
  recordMealAnalysisMealType,
  recordMealAnalysisFeedback,
  confirmMealAnalysisLogged,
} = await import('./mealAnalysisStore.js');

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

function resetQuery(returnValue: { rows: unknown[] } = { rows: [] }) {
  mockQuery.mock.resetCalls();
  mockQuery.mock.mockImplementation(async () => returnValue);
}

// ---------------------------------------------------------------------------
// upsertMealAnalysisSession
// ---------------------------------------------------------------------------

test('upsertMealAnalysisSession inserts into meal_analysis_session', async () => {
  resetQuery();
  await upsertMealAnalysisSession({
    analysisId: 'test-id-1',
    source: 'text',
    locale: 'en',
    requestPayload: { textDescription: '2 rotis with dal' },
  });
  assert.equal(mockQuery.mock.calls.length, 1);
  const [sql] = mockQuery.mock.calls[0]!.arguments as [string];
  assert.ok(sql.includes('INSERT INTO meal_analysis_session'));
});

test('upsertMealAnalysisSession uses ON CONFLICT DO UPDATE', async () => {
  resetQuery();
  await upsertMealAnalysisSession({
    analysisId: 'test-id-upsert',
    source: 'text',
    locale: 'en',
    requestPayload: {},
  });
  const [sql] = mockQuery.mock.calls[0]!.arguments as [string];
  assert.ok(sql.includes('ON CONFLICT'));
  assert.ok(sql.includes('DO UPDATE'));
});

test('upsertMealAnalysisSession passes analysisId as first param', async () => {
  resetQuery();
  await upsertMealAnalysisSession({
    analysisId: 'specific-id',
    source: 'image',
    locale: 'hi',
    requestPayload: { imageUrl: 'https://example.com/img.jpg' },
  });
  const [, params] = mockQuery.mock.calls[0]!.arguments as [string, unknown[]];
  assert.equal(params[0], 'specific-id');
});

test('upsertMealAnalysisSession passes null for missing optional fields', async () => {
  resetQuery();
  await upsertMealAnalysisSession({
    analysisId: 'id-nulls',
    source: 'text',
    locale: 'en',
    requestPayload: {},
  });
  const [, params] = mockQuery.mock.calls[0]!.arguments as [string, unknown[]];
  assert.equal(params[1], null);  // parentAnalysisId
  assert.equal(params[2], null);  // userId
  assert.equal(params[5], null);  // countryCode
});

test('upsertMealAnalysisSession passes userId when provided', async () => {
  resetQuery();
  await upsertMealAnalysisSession({
    analysisId: 'id-with-user',
    source: 'text',
    locale: 'en',
    userId: 'firebase-uid-abc',
    requestPayload: {},
  });
  const [, params] = mockQuery.mock.calls[0]!.arguments as [string, unknown[]];
  assert.equal(params[2], 'firebase-uid-abc');
});

test('upsertMealAnalysisSession serializes requestPayload as JSON string', async () => {
  resetQuery();
  const payload = { textDescription: 'dal rice', calories: 450 };
  await upsertMealAnalysisSession({
    analysisId: 'id-payload',
    source: 'text',
    locale: 'en',
    requestPayload: payload,
  });
  const [, params] = mockQuery.mock.calls[0]!.arguments as [string, unknown[]];
  assert.equal(params[7], JSON.stringify(payload));
});

test('upsertMealAnalysisSession throws when DATABASE_URL is null', async () => {
  mockConfig.DATABASE_URL = null;
  await assert.rejects(
    () => upsertMealAnalysisSession({ analysisId: 'x', source: 'text', locale: 'en', requestPayload: {} }),
    /DATABASE_URL is required/
  );
  mockConfig.DATABASE_URL = 'postgres://mock';
});

// ---------------------------------------------------------------------------
// getMealAnalysisSession
// ---------------------------------------------------------------------------

test('getMealAnalysisSession returns undefined when no rows found', async () => {
  resetQuery({ rows: [] });
  const result = await getMealAnalysisSession('nonexistent');
  assert.equal(result, undefined);
});

test('getMealAnalysisSession queries by analysis_id', async () => {
  resetQuery({ rows: [] });
  await getMealAnalysisSession('lookup-99');
  const [sql, params] = mockQuery.mock.calls[0]!.arguments as [string, unknown[]];
  assert.ok(sql.includes('WHERE analysis_id = $1'));
  assert.equal(params[0], 'lookup-99');
});

test('getMealAnalysisSession maps row fields to camelCase record', async () => {
  resetQuery({
    rows: [{
      analysis_id: 'sess-abc',
      parent_analysis_id: null,
      user_id: 'user-xyz',
      source: 'text',
      locale: 'en',
      country_code: 'IN',
      request_payload: JSON.stringify({ textDescription: 'rice' }),
      decomposition_data: null,
      ingredients_data: null,
      uncertainty_data: null,
      meal_type_question_data: null,
      selected_meal_type: 'LUNCH',
      selected_meal_type_source: 'model',
      result_data: null,
      clarification_answers: null,
      created_at: '2024-01-01T00:00:00Z',
      updated_at: '2024-01-01T01:00:00Z',
    }],
  });
  const result = await getMealAnalysisSession('sess-abc');
  assert.ok(result !== undefined);
  assert.equal(result.analysisId, 'sess-abc');
  assert.equal(result.userId, 'user-xyz');
  assert.equal(result.source, 'text');
  assert.equal(result.locale, 'en');
  assert.equal(result.countryCode, 'IN');
  assert.equal(result.selectedMealType, 'LUNCH');
  assert.deepEqual(result.requestPayload, { textDescription: 'rice' });
});

test('getMealAnalysisSession maps null optional fields to undefined', async () => {
  resetQuery({
    rows: [{
      analysis_id: 'sess-nulls',
      parent_analysis_id: null,
      user_id: null,
      source: 'image',
      locale: 'fr',
      country_code: null,
      request_payload: '{}',
      decomposition_data: null,
      ingredients_data: null,
      uncertainty_data: null,
      meal_type_question_data: null,
      selected_meal_type: null,
      selected_meal_type_source: null,
      result_data: null,
      clarification_answers: null,
      created_at: '2024-01-01T00:00:00Z',
      updated_at: '2024-01-01T00:00:00Z',
    }],
  });
  const result = await getMealAnalysisSession('sess-nulls');
  assert.equal(result!.parentAnalysisId, undefined);
  assert.equal(result!.userId, undefined);
  assert.equal(result!.countryCode, undefined);
  assert.equal(result!.selectedMealType, undefined);
  assert.equal(result!.selectedMealTypeSource, undefined);
});

test('getMealAnalysisSession uses LIMIT 1', async () => {
  resetQuery({ rows: [] });
  await getMealAnalysisSession('any-id');
  const [sql] = mockQuery.mock.calls[0]!.arguments as [string];
  assert.ok(sql.includes('LIMIT 1'));
});

test('isMealAnalysisSessionOwnedByUser scopes the lookup to analysis and user', async () => {
  resetQuery({ rows: [{ owned: true }] });
  assert.equal(
    await isMealAnalysisSessionOwnedByUser('analysis-1', 'user-1'),
    true
  );
  const [sql, params] = mockQuery.mock.calls[0]!.arguments as [string, unknown[]];
  assert.ok(sql.includes('analysis_id = $1'));
  assert.ok(sql.includes('user_id = $2'));
  assert.deepEqual(params, ['analysis-1', 'user-1']);

  resetQuery({ rows: [] });
  assert.equal(
    await isMealAnalysisSessionOwnedByUser('analysis-1', 'user-2'),
    false
  );
});

// ---------------------------------------------------------------------------
// recordMealAnalysisClarification
// ---------------------------------------------------------------------------

test('recordMealAnalysisClarification runs two queries', async () => {
  resetQuery();
  await recordMealAnalysisClarification('sess-clr', [{ clarificationId: 'clr-rice', selectedOptionId: 'regular' }]);
  assert.equal(mockQuery.mock.calls.length, 2);
});

test('recordMealAnalysisClarification first query inserts into meal_analysis_clarification', async () => {
  resetQuery();
  await recordMealAnalysisClarification('sess-clr2', []);
  const [insertSql] = mockQuery.mock.calls[0]!.arguments as [string];
  assert.ok(insertSql.includes('INSERT INTO meal_analysis_clarification'));
});

test('recordMealAnalysisClarification second query updates meal_analysis_session', async () => {
  resetQuery();
  await recordMealAnalysisClarification('sess-clr3', []);
  const [updateSql] = mockQuery.mock.calls[1]!.arguments as [string];
  assert.ok(updateSql.includes('UPDATE meal_analysis_session'));
  assert.ok(updateSql.includes('clarification_answers'));
});

test('recordMealAnalysisClarification serializes answers as JSON', async () => {
  resetQuery();
  const answers = [{ clarificationId: 'clr-dal', selectedOptionId: 'small' }];
  await recordMealAnalysisClarification('sess-clr4', answers);
  const [, params] = mockQuery.mock.calls[0]!.arguments as [string, unknown[]];
  assert.equal(params[1], JSON.stringify(answers));
});

// ---------------------------------------------------------------------------
// recordMealAnalysisMealType
// ---------------------------------------------------------------------------

test('recordMealAnalysisMealType runs two queries', async () => {
  resetQuery();
  await recordMealAnalysisMealType('sess-mt', 'DINNER', 'user');
  assert.equal(mockQuery.mock.calls.length, 2);
});

test('recordMealAnalysisMealType inserts into meal_analysis_meal_type', async () => {
  resetQuery();
  await recordMealAnalysisMealType('sess-mt1', 'BREAKFAST', 'model');
  const [insertSql, insertParams] = mockQuery.mock.calls[0]!.arguments as [string, unknown[]];
  assert.ok(insertSql.includes('INSERT INTO meal_analysis_meal_type'));
  assert.equal(insertParams[0], 'sess-mt1');
  assert.equal(insertParams[1], 'BREAKFAST');
  assert.equal(insertParams[2], 'model');
});

test('recordMealAnalysisMealType updates session with meal type and source', async () => {
  resetQuery();
  await recordMealAnalysisMealType('sess-mt2', 'SNACK', 'user');
  const [, updateParams] = mockQuery.mock.calls[1]!.arguments as [string, unknown[]];
  assert.equal(updateParams[1], 'SNACK');
  assert.equal(updateParams[2], 'user');
  assert.equal(updateParams[0], 'sess-mt2');
});

// ---------------------------------------------------------------------------
// recordMealAnalysisFeedback
// ---------------------------------------------------------------------------

test('recordMealAnalysisFeedback inserts into meal_analysis_feedback', async () => {
  resetQuery();
  await recordMealAnalysisFeedback({ analysisId: 'fb-1', signal: 'UP' });
  const [sql] = mockQuery.mock.calls[0]!.arguments as [string];
  assert.ok(sql.includes('INSERT INTO meal_analysis_feedback'));
});

test('recordMealAnalysisFeedback passes analysisId and signal', async () => {
  resetQuery();
  await recordMealAnalysisFeedback({ analysisId: 'fb-2', userId: 'u1', signal: 'UP' });
  const [, params] = mockQuery.mock.calls[0]!.arguments as [string, unknown[]];
  assert.equal(params[0], 'fb-2');
  assert.equal(params[1], 'u1');
  assert.equal(params[2], 'UP');
});

test('recordMealAnalysisFeedback passes issues array for down signal', async () => {
  resetQuery();
  await recordMealAnalysisFeedback({
    analysisId: 'fb-3',
    signal: 'DOWN',
    issues: ['portion_size', 'macros_wrong'],
    otherText: 'too small',
  });
  const [, params] = mockQuery.mock.calls[0]!.arguments as [string, unknown[]];
  assert.deepEqual(params[3], ['portion_size', 'macros_wrong']);
  assert.equal(params[4], 'too small');
});

test('recordMealAnalysisFeedback uses null userId when not provided', async () => {
  resetQuery();
  await recordMealAnalysisFeedback({ analysisId: 'fb-4', signal: 'UP' });
  const [, params] = mockQuery.mock.calls[0]!.arguments as [string, unknown[]];
  assert.equal(params[1], null);
});

test('recordMealAnalysisFeedback uses empty array for missing issues', async () => {
  resetQuery();
  await recordMealAnalysisFeedback({ analysisId: 'fb-5', signal: 'DOWN' });
  const [, params] = mockQuery.mock.calls[0]!.arguments as [string, unknown[]];
  assert.deepEqual(params[3], []);
});

test('recordMealAnalysisFeedback uses null otherText when not provided', async () => {
  resetQuery();
  await recordMealAnalysisFeedback({ analysisId: 'fb-6', signal: 'DOWN', issues: ['other'] });
  const [, params] = mockQuery.mock.calls[0]!.arguments as [string, unknown[]];
  assert.equal(params[4], null);
});

// ---------------------------------------------------------------------------
// confirmMealAnalysisLogged
// ---------------------------------------------------------------------------

test('confirmMealAnalysisLogged updates meal_analysis_session with all logged fields', async () => {
  resetQuery();
  await confirmMealAnalysisLogged({
    analysisId: 'log-1',
    loggedAt: '2024-01-15T12:00:00Z',
    mealName: 'Dal Rice',
    calories: 450,
    protein: 15,
    carbs: 70,
    fat: 8,
    fiber: 5,
    mealType: 'LUNCH',
    quantity: '1 bowl',
    timeZone: 'Asia/Kolkata',
  });
  const [sql, params] = mockQuery.mock.calls[0]!.arguments as [string, unknown[]];
  assert.ok(sql.includes('UPDATE meal_analysis_session'));
  assert.ok(sql.includes('logged_at'));
  assert.ok(sql.includes('logged_meal_name'));
  assert.ok(sql.includes('logged_calories'));
  assert.equal(params[0], 'log-1');
  assert.equal(params[1], '2024-01-15T12:00:00Z');
  assert.equal(params[2], 'Dal Rice');
  assert.equal(params[3], 450);
  assert.equal(params[4], 15);
  assert.equal(params[5], 70);
  assert.equal(params[6], 8);
  assert.equal(params[7], 5);
  assert.equal(params[8], 'LUNCH');
  assert.equal(params[9], '1 bowl');
  assert.equal(params[10], 'Asia/Kolkata');
  assert.ok(sql.includes('time_zone'));
});

test('confirmMealAnalysisLogged sets updated_at to CURRENT_TIMESTAMP', async () => {
  resetQuery();
  await confirmMealAnalysisLogged({
    analysisId: 'log-2',
    loggedAt: '2024-01-16T08:00:00Z',
    mealName: 'Oats',
    calories: 300,
    protein: 8,
    carbs: 55,
    fat: 5,
    fiber: 6,
    mealType: 'BREAKFAST',
    quantity: '1 bowl',
  });
  const [sql] = mockQuery.mock.calls[0]!.arguments as [string];
  assert.ok(sql.includes('CURRENT_TIMESTAMP'));
});
