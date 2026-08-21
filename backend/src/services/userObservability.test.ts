import assert from 'node:assert/strict';
import test, { mock } from 'node:test';

const now = new Date();
const mockQuery = mock.fn(async (sql: string, _params?: unknown[]) => {
  if (sql.includes('FROM user_profile')) {
    return {
      rows: [{
        height: '175.5', weight: '72', target_weight: '68', gender: 'male',
        date_of_birth: '1990-01-01', weight_goal: 'lose',
        activity_level: 'moderate', height_unit: 'cm', weight_unit: 'kg',
        daily_calorie_goal: 2100, created_at: now, updated_at: now,
      }],
    };
  }
  if (sql.includes('COUNT(*) AS analysis_count')) {
    return { rows: [{ analysis_count: '2', completed_count: '2', logged_meal_count: '1', latest_activity_at: now }] };
  }
  if (sql.includes("INTERVAL '3 days'")) {
    return { rows: [{ logged_at: now, logged_meal_name: 'Dal rice', logged_meal_type: 'LUNCH', logged_calories: 450, logged_protein: 20, logged_carbs: 65, logged_fat: 12, logged_fiber: 8 }] };
  }
  if (sql.includes('decomposition_data')) {
    return { rows: [{ analysis_id: 'analysis-1', parent_analysis_id: null, source: 'text', locale: 'en-IN', country_code: 'IN', time_zone: 'Asia/Kolkata', selected_meal_type: 'LUNCH', selected_meal_type_source: 'model', decomposition_data: { confidence: 0.9 }, uncertainty_data: { variancePercent: 12 }, result_data: { mealName: 'Dal rice', calorieConfidence: 'HIGH', macros: { calories: 450 } }, clarification_answers: null, logged_at: now, logged_meal_name: 'Dal rice', logged_calories: 450, logged_protein: 20, logged_carbs: 65, logged_fat: 12, logged_fiber: 8, logged_meal_type: 'LUNCH', logged_quantity: '1 bowl', created_at: now, updated_at: now }] };
  }
  if (sql.includes('FROM ai_summaries')) {
    return { rows: [{ summary: 'Based on what you logged, meals look balanced.', locale: 'en-IN', meal_count: 1, generated_at: now }] };
  }
  if (sql.includes('FROM ai_summary_batches')) {
    return { rows: [{ openai_batch_id: 'batch-1', status: 'completed', request_count: 5, user_meta: { userId: 'uid-123', locale: 'en-IN', mealCount: 1 }, submitted_at: now, completed_at: now, error: null }] };
  }
  if (sql.includes('FROM meal_analysis_feedback')) {
    return { rows: [{ analysis_id: 'analysis-1', signal: 'UP', issues: [], other_text: null, created_at: now }] };
  }
  return { rows: [] };
});

const mockCollectMealData = mock.fn(async (userId: string, locale: string) => ({
  userId,
  locale,
  mealCount: 1,
  csv: '2026-08-02, L, Dal rice, 450 cal',
}));

await mock.module('./database.js', { namedExports: { query: mockQuery } });
await mock.module('./aiSummaryService.js', {
  namedExports: { collectMealDataForUser: mockCollectMealData },
});

const { inspectUser } = await import('./userObservability.js');

test('inspectUser returns the user summary pipeline and related values', async () => {
  mockQuery.mock.resetCalls();
  mockCollectMealData.mock.resetCalls();
  const report = await inspectUser(' uid-123 ', { limit: 5 });

  assert.equal(report.user.userId, 'uid-123');
  assert.equal(report.user.exists, true);
  assert.equal(report.user.profile?.height, 175.5);
  assert.equal(report.user.profile?.dateOfBirth, '1990-01-01');
  assert.equal(report.aiSummary.latest?.mealCount, 1);
  assert.equal(report.aiSummary.nextModelInput.csv, '2026-08-02, L, Dal rice, 450 cal');
  assert.equal(report.aiSummary.apiStats.mealCount, 1);
  assert.equal(report.aiSummary.batches[0]?.status, 'completed');
  assert.equal(report.mealAnalysis.totals.analyses, 2);
  assert.equal(report.mealAnalysis.recent[0]?.loggedMeal?.macros.calories, 450);
  assert.equal(report.feedback[0]?.signal, 'UP');

  const batchQuery = mockQuery.mock.calls.find(
    (call) => (call.arguments[0] as string).includes('FROM ai_summary_batches')
  );
  assert.ok(batchQuery !== undefined);
  const batchSql = batchQuery.arguments[0] as string;
  assert.match(batchSql, /user_data -> \$1/);
  assert.match(batchSql, /jsonb_each\(user_data\)/);
  assert.match(batchSql, /metadata ->> 'userId' = \$1/);

  for (const call of mockQuery.mock.calls) {
    const [sql, params] = call.arguments as [string, unknown[]];
    assert.equal(params[0], 'uid-123');
    assert.ok(!sql.includes('request_payload'));
  }
  assert.deepEqual(mockCollectMealData.mock.calls[0]?.arguments, [
    'uid-123',
    'en-IN',
    'Asia/Kolkata',
  ]);
});

test('inspectUser rejects an empty user ID before querying', async () => {
  mockQuery.mock.resetCalls();
  await assert.rejects(() => inspectUser('  '), /must not be empty/);
  assert.equal(mockQuery.mock.calls.length, 0);
});
