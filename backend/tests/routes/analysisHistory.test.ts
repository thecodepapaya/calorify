import assert from 'node:assert/strict';
import { mock, test } from 'node:test';
import Fastify from 'fastify';

let password: string | null = 'history-secret';
let requestedPage = 0;
let requestedSource: 'TEXT' | 'IMAGE' | undefined;

await mock.module('../../src/config.js', {
  defaultExport: { get ANALYSIS_HISTORY_PASSWORD() { return password; } },
});
await mock.module('../../src/services/meal-analysis-v3/store.js', {
  namedExports: {
    listMealAnalysisV3History: mock.fn(async (page: number, source?: 'TEXT' | 'IMAGE') => {
      requestedPage = page;
      requestedSource = source;
      return {
        entries: [{
          userId: 'user-1', analysisId: 'fddffb7b-1620-4ef5-918b-bd495ba2e5be',
          digest: 'digest', input: { kind: 'TEXT', text: '<b>dal</b>' },
          result: { outcome: 'COMPLETE', meal: { name: 'Dal' } },
          nutritionAnswers: [{ questionId: 'portion', kind: 'NUMBER', value: 1 }],
          mealTypeAnswer: 'LUNCH', feedbackSignal: 'UP',
          createdAt: '2026-08-31T10:00:00.000Z', updatedAt: '2026-08-31T10:01:00.000Z',
        }], page, pageSize: 10, totalEntries: 12, totalPages: 2, source,
      };
    }),
  },
});

const { analysisHistoryRoutes, isAnalysisHistoryAuthorized } = await import('../../src/routes/analysisHistory.js');

function basic(user: string, value: string): string {
  return `Basic ${Buffer.from(`${user}:${value}`).toString('base64')}`;
}

test('V3 analysis history is concealed without configuration and protected when enabled', async () => {
  const app = Fastify();
  await app.register(analysisHistoryRoutes);
  password = null;
  assert.equal((await app.inject('/analysis-history')).statusCode, 404);
  password = 'history-secret';
  const denied = await app.inject('/analysis-history');
  assert.equal(denied.statusCode, 401);
  assert.match(String(denied.headers['www-authenticate']), /Basic/);
  await app.close();
});

test('V3 analysis history renders escaped durable V3 flow with filters', async () => {
  password = 'history-secret';
  const app = Fastify();
  await app.register(analysisHistoryRoutes);
  const response = await app.inject({
    url: '/analysis-history?page=2&source=TEXT',
    headers: { authorization: basic('calorify', 'history-secret') },
  });
  assert.equal(response.statusCode, 200);
  assert.equal(requestedPage, 2);
  assert.equal(requestedSource, 'TEXT');
  assert.equal(response.headers['cache-control'], 'no-store');
  assert.match(String(response.headers['content-security-policy']), /default-src 'none'/);
  assert.match(response.body, /Latest pipeline result/);
  assert.match(response.body, /Submitted nutrition answers/);
  assert.match(response.body, /Meal type/);
  assert.match(response.body, /Page 2 of 2/);
  assert.doesNotMatch(response.body, /<b>dal<\/b>/);
  await app.close();
});

test('V3 analysis history validates both Basic-auth fields', () => {
  assert.equal(isAnalysisHistoryAuthorized(basic('calorify', 'history-secret'), 'history-secret'), true);
  assert.equal(isAnalysisHistoryAuthorized(basic('other', 'history-secret'), 'history-secret'), false);
  assert.equal(isAnalysisHistoryAuthorized(basic('calorify', 'wrong'), 'history-secret'), false);
});
