import assert from 'node:assert/strict';
import { mock, test } from 'node:test';

const databaseQuery = mock.fn(async () => ({ rows: [], rowCount: 0 }));

await mock.module('../../../src/services/infrastructure/database.js', {
  namedExports: { query: databaseQuery },
});

const {
  listMealAnalysisV3History,
  loadMealAnalysisV3Session,
  recordMealAnalysisV3Feedback,
  recordMealAnalysisV3Log,
  saveMealAnalysisV3Session,
} = await import('../../../src/services/meal-analysis-v3/store.js');

test('lists V3 history by persisted input kind and latest activity', async () => {
  databaseQuery.mock.mockImplementation(async (sql: string) => sql.includes('COUNT(*)')
    ? { rows: [{ total: '1' }], rowCount: 1 }
    : { rows: [{
        user_id: 'user-1', analysis_id: '11111111-1111-4111-8111-111111111111',
        input_data: { kind: 'TEXT', text: 'dal' }, input_digest: 'digest',
        result_data: { outcome: 'COMPLETE' }, nutrition_answers: [], meal_type_answer: 'LUNCH',
        feedback_signal: 'UP', feedback_at: '2026-08-31T10:02:00.000Z',
        logged_at: '2026-08-31T10:03:00.000Z', logged_meal: { name: 'Dal' }, deleted_at: null,
        created_at: '2026-08-31T10:00:00.000Z', updated_at: '2026-08-31T10:03:00.000Z',
      }], rowCount: 1 });

  const page = await listMealAnalysisV3History(2, 'TEXT');
  assert.equal(page.page, 2);
  assert.equal(page.totalPages, 1);
  assert.equal(page.entries[0]?.feedbackSignal, 'UP');
  assert.deepEqual(page.entries[0]?.loggedMeal, { name: 'Dal' });
  const rowsQuery = databaseQuery.mock.calls.at(-1)?.arguments;
  assert.match(String(rowsQuery?.[0]), /ORDER BY updated_at DESC/);
  assert.deepEqual(rowsQuery?.[1], ['TEXT', 10, 10]);
});

test('loads a user-scoped durable V3 session', async () => {
  databaseQuery.mock.mockImplementationOnce(async () => ({
    rows: [{
      user_id: 'user-1',
      analysis_id: '11111111-1111-4111-8111-111111111111',
      input_data: { text: 'dal' },
      input_digest: 'digest',
      result_data: { outcome: 'NEEDS_INPUT' },
      nutrition_answers: null,
      meal_type_answer: null,
    }],
    rowCount: 1,
  }));

  const session = await loadMealAnalysisV3Session(
    'user-1',
    '11111111-1111-4111-8111-111111111111'
  );
  assert.equal(session?.userId, 'user-1');
  assert.deepEqual(session?.result, { outcome: 'NEEDS_INPUT' });
  assert.deepEqual(databaseQuery.mock.calls.at(-1)?.arguments[1], [
    'user-1',
    '11111111-1111-4111-8111-111111111111',
  ]);
});

test('upserts the complete V3 session snapshot', async () => {
  databaseQuery.mock.mockImplementationOnce(async () => ({ rows: [], rowCount: 1 }));
  assert.equal(await saveMealAnalysisV3Session({
    userId: 'user-1',
    analysisId: '11111111-1111-4111-8111-111111111111',
    input: { text: 'dal' },
    digest: 'digest',
    result: { outcome: 'COMPLETE' },
    nutritionAnswers: [{ questionId: 'q1', kind: 'USE_ESTIMATE' }],
    mealTypeAnswer: 'DINNER',
  }), true);
  const params = databaseQuery.mock.calls.at(-1)?.arguments[1] as unknown[];
  assert.equal(params[0], 'user-1');
  assert.equal(params[3], 'digest');
  assert.deepEqual(JSON.parse(params[4] as string), { outcome: 'COMPLETE' });
  assert.equal(params[6], 'DINNER');
});

test('feedback and log mutations require one owned completed row', async () => {
  databaseQuery.mock.mockImplementationOnce(async () => ({ rows: [], rowCount: 1 }));
  assert.equal(await recordMealAnalysisV3Feedback(
    'user-1',
    '11111111-1111-4111-8111-111111111111',
    'UP'
  ), true);

  databaseQuery.mock.mockImplementationOnce(async () => ({ rows: [], rowCount: 0 }));
  assert.equal(await recordMealAnalysisV3Log(
    'other-user',
    '11111111-1111-4111-8111-111111111111',
    { deleted: true }
  ), false);
});
