import assert from 'node:assert/strict';
import { mock, test } from 'node:test';

const databaseQuery = mock.fn(async () => ({ rows: [], rowCount: 0 }));

await mock.module('../../../src/services/infrastructure/database.js', {
  namedExports: { query: databaseQuery },
});

const {
  loadMealAnalysisV3Session,
  recordMealAnalysisV3Feedback,
  recordMealAnalysisV3Log,
  saveMealAnalysisV3Session,
} = await import('../../../src/services/meal-analysis-v3/store.js');

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
