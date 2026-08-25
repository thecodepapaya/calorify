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
  if (sql.includes('decomposition_data')) {
    return { rows: [{ analysis_id: 'analysis-1', parent_analysis_id: null, source: 'text', locale: 'en-IN', country_code: 'IN', time_zone: 'Asia/Kolkata', selected_meal_type: 'LUNCH', selected_meal_type_source: 'model', decomposition_data: { confidence: 0.9 }, uncertainty_data: { variancePercent: 12 }, result_data: { mealName: 'Dal rice', calorieConfidence: 'HIGH', macros: { calories: 450 } }, clarification_answers: null, logged_at: now, logged_meal_name: 'Dal rice', logged_calories: 450, logged_protein: 20, logged_carbs: 65, logged_fat: 12, logged_fiber: 8, logged_meal_type: 'LUNCH', logged_quantity: '1 bowl', created_at: now, updated_at: now }] };
  }
  if (sql.includes('FROM ai_summaries')) {
    return { rows: [{ summary: 'Based on what you logged, meals look balanced.', summary_local_date: '2026-08-25', status: 'completed', request_snapshot: { locale: 'en' }, requested_locale: 'en', locale: 'en', stats_snapshot: { mealCount: 1 }, requested_at: now, generated_at: now, provider: 'openrouter', model: 'test-model', provider_request_id: 'req-1', attempt_count: 1, last_error_code: null, processing_started_at: now }] };
  }
  if (sql.includes('FROM meal_analysis_feedback')) {
    return { rows: [{ analysis_id: 'analysis-1', signal: 'UP', issues: [], other_text: null, created_at: now }] };
  }
  return { rows: [] };
});

await mock.module('./database.js', { namedExports: { query: mockQuery } });

const { inspectUser } = await import('./userObservability.js');

test('inspectUser returns the user summary pipeline and related values', async () => {
  mockQuery.mock.resetCalls();
  const report = await inspectUser(' uid-123 ', { limit: 5 });

  assert.equal(report.user.userId, 'uid-123');
  assert.equal(report.user.exists, true);
  assert.equal(report.user.profile?.height, 175.5);
  assert.equal(report.user.profile?.dateOfBirth, '1990-01-01');
  assert.equal(report.aiSummary.latest?.status, 'completed');
  assert.equal(report.aiSummary.history[0]?.resolvedLocale, 'en');
  assert.deepEqual(report.aiSummary.history[0]?.requestSnapshot, { locale: 'en' });
  assert.equal(report.mealAnalysis.totals.analyses, 2);
  assert.equal(report.mealAnalysis.recent[0]?.loggedMeal?.macros.calories, 450);
  assert.equal(report.feedback[0]?.signal, 'UP');

  for (const call of mockQuery.mock.calls) {
    const [sql, params] = call.arguments as [string, unknown[]];
    assert.equal(params[0], 'uid-123');
    assert.ok(!sql.includes('request_payload'));
  }
});

test('inspectUser rejects an empty user ID before querying', async () => {
  mockQuery.mock.resetCalls();
  await assert.rejects(() => inspectUser('  '), /must not be empty/);
  assert.equal(mockQuery.mock.calls.length, 0);
});
