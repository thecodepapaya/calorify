import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';

// ---------------------------------------------------------------------------
// Mock all external dependencies before importing the job module
// ---------------------------------------------------------------------------

const mockQuery = mock.fn(async (_sql: string, _params?: unknown[]) => ({ rows: [] }));

await mock.module('../services/database.js', {
  namedExports: { query: mockQuery },
});

const mockGetPendingBatches = mock.fn(async () => []);
const mockPollAndProcessBatch = mock.fn(async () => ({
  status: 'completed' as const,
  savedCount: 0,
  errorCount: 0,
}));
const mockUpdateBatchStatus = mock.fn(async () => {});
const mockCollectMealDataForUser = mock.fn(async () => null);
const mockSubmitBatch = mock.fn(async () => ({
  openAiBatchId: 'batch-cron-1',
  requestCount: 1,
  userData: {},
}));
const mockSaveBatchRecord = mock.fn(async () => {});

await mock.module('../services/aiSummaryService.js', {
  namedExports: {
    getPendingBatches: mockGetPendingBatches,
    pollAndProcessBatch: mockPollAndProcessBatch,
    updateBatchStatus: mockUpdateBatchStatus,
    collectMealDataForUser: mockCollectMealDataForUser,
    submitBatch: mockSubmitBatch,
    saveBatchRecord: mockSaveBatchRecord,
  },
});

const mockGetCountriesNear3am = mock.fn(() => []);

await mock.module('../utils/timezone.js', {
  namedExports: {
    getCountriesNear3am: mockGetCountriesNear3am,
    DEFAULT_THREE_AM_PLUS_MINUS_MINUTES: 30,
  },
});

const mockCronSchedule = mock.fn((_expr: string, _fn: () => void) => {});

await mock.module('node-cron', {
  defaultExport: { schedule: mockCronSchedule },
});

await mock.module('../config.js', {
  defaultExport: {
    DATABASE_URL: 'postgres://mock',
    USDA_AUTO_REFRESH_ENABLED: false,
    USDA_REFRESH_CRON: '0 3 1 * *',
    USDA_DATA_DIR: '/tmp/usda',
    USDA_DATASET_VERSION: null,
    USDA_SOURCE_RELEASE_DATE: null,
  },
});

// Import the module under test AFTER mocking
const { startAiSummaryCron } = await import('./aiSummaryCron.js');

// ---------------------------------------------------------------------------
// Helper: reset all mock call counts
// ---------------------------------------------------------------------------

function resetAll() {
  mockGetPendingBatches.mock.resetCalls();
  mockPollAndProcessBatch.mock.resetCalls();
  mockUpdateBatchStatus.mock.resetCalls();
  mockCollectMealDataForUser.mock.resetCalls();
  mockSubmitBatch.mock.resetCalls();
  mockSaveBatchRecord.mock.resetCalls();
  mockGetCountriesNear3am.mock.resetCalls();
  mockQuery.mock.resetCalls();
  mockCronSchedule.mock.resetCalls();
}

// ---------------------------------------------------------------------------
// startAiSummaryCron
// ---------------------------------------------------------------------------

test('startAiSummaryCron schedules a cron job with hourly expression', () => {
  resetAll();
  startAiSummaryCron();
  assert.equal(mockCronSchedule.mock.calls.length, 1);
  const [expr] = mockCronSchedule.mock.calls[0]!.arguments as [string];
  assert.equal(expr, '0 * * * *');
});

test('startAiSummaryCron passes a callback function to cron.schedule', () => {
  resetAll();
  startAiSummaryCron();
  const [, callback] = mockCronSchedule.mock.calls[0]!.arguments as [string, () => void];
  assert.equal(typeof callback, 'function');
});

// ---------------------------------------------------------------------------
// Phase 1 — pollPendingBatches (invoked via the scheduled callback)
// ---------------------------------------------------------------------------

test('cron job callback calls getPendingBatches', async () => {
  resetAll();
  mockGetPendingBatches.mock.mockImplementation(async () => []);
  mockGetCountriesNear3am.mock.mockImplementation(() => []);

  startAiSummaryCron();
  const [, callback] = mockCronSchedule.mock.calls[0]!.arguments as [string, () => Promise<void>];
  await callback();

  assert.equal(mockGetPendingBatches.mock.calls.length, 1);
});

test('cron job polls and updates each pending batch', async () => {
  resetAll();
  mockGetPendingBatches.mock.mockImplementation(async () => [
    { openai_batch_id: 'b-pending-1', user_data: { 'u1': { userId: 'u1', locale: 'en', mealCount: 2 } } },
    { openai_batch_id: 'b-pending-2', user_data: {} },
  ]);
  mockPollAndProcessBatch.mock.mockImplementation(async () => ({
    status: 'processing' as const,
    savedCount: 0,
    errorCount: 0,
  }));
  mockGetCountriesNear3am.mock.mockImplementation(() => []);

  startAiSummaryCron();
  const [, callback] = mockCronSchedule.mock.calls[0]!.arguments as [string, () => Promise<void>];
  await callback();

  assert.equal(mockPollAndProcessBatch.mock.calls.length, 2);
  assert.equal(mockUpdateBatchStatus.mock.calls.length, 2);
});

test('cron job calls updateBatchStatus with correct batch id and status', async () => {
  resetAll();
  mockGetPendingBatches.mock.mockImplementation(async () => [
    { openai_batch_id: 'b-completed', user_data: {} },
  ]);
  mockPollAndProcessBatch.mock.mockImplementation(async () => ({
    status: 'completed' as const,
    savedCount: 3,
    errorCount: 0,
  }));
  mockGetCountriesNear3am.mock.mockImplementation(() => []);

  startAiSummaryCron();
  const [, callback] = mockCronSchedule.mock.calls[0]!.arguments as [string, () => Promise<void>];
  await callback();

  const [batchId, status] = mockUpdateBatchStatus.mock.calls[0]!.arguments as [string, string];
  assert.equal(batchId, 'b-completed');
  assert.equal(status, 'completed');
});

test('cron job continues polling remaining batches when one throws', async () => {
  resetAll();
  mockGetPendingBatches.mock.mockImplementation(async () => [
    { openai_batch_id: 'b-fail', user_data: {} },
    { openai_batch_id: 'b-ok', user_data: {} },
  ]);
  let callCount = 0;
  mockPollAndProcessBatch.mock.mockImplementation(async (id: string) => {
    callCount++;
    if (id === 'b-fail') throw new Error('Network error');
    return { status: 'completed' as const, savedCount: 0, errorCount: 0 };
  });
  mockGetCountriesNear3am.mock.mockImplementation(() => []);

  startAiSummaryCron();
  const [, callback] = mockCronSchedule.mock.calls[0]!.arguments as [string, () => Promise<void>];
  // Should not throw even when individual poll fails
  await assert.doesNotReject(() => callback());
  assert.equal(callCount, 2);
});

// ---------------------------------------------------------------------------
// Phase 2 — submitNewBatch
// ---------------------------------------------------------------------------

test('cron job skips batch submission when no countries are at 3am', async () => {
  resetAll();
  mockGetPendingBatches.mock.mockImplementation(async () => []);
  mockGetCountriesNear3am.mock.mockImplementation(() => []); // no 3am countries

  startAiSummaryCron();
  const [, callback] = mockCronSchedule.mock.calls[0]!.arguments as [string, () => Promise<void>];
  await callback();

  // query should not be called for user lookup since no countries
  const userLookupCalls = mockQuery.mock.calls.filter(
    (c) => (c.arguments[0] as string).includes('meal_analysis_session')
  );
  assert.equal(userLookupCalls.length, 0);
  assert.equal(mockSubmitBatch.mock.calls.length, 0);
});

test('cron job queries users in 3am countries and submits batch', async () => {
  resetAll();
  mockGetPendingBatches.mock.mockImplementation(async () => []);
  mockGetCountriesNear3am.mock.mockImplementation(() => ['IN', 'LK']);
  mockQuery.mock.mockImplementation(async () => ({
    rows: [
      { user_id: 'user-in-1', locale: 'hi' },
      { user_id: 'user-in-2', locale: 'en' },
    ],
  }));
  mockCollectMealDataForUser.mock.mockImplementation(async (userId: string, locale: string) => ({
    userId,
    locale,
    mealCount: 3,
    csv: 'some,csv,data',
  }));

  startAiSummaryCron();
  const [, callback] = mockCronSchedule.mock.calls[0]!.arguments as [string, () => Promise<void>];
  await callback();

  assert.equal(mockCollectMealDataForUser.mock.calls.length, 2);
  assert.equal(mockSubmitBatch.mock.calls.length, 1);
  assert.equal(mockSaveBatchRecord.mock.calls.length, 1);
});

test('cron job skips batch submission when no users have meal data', async () => {
  resetAll();
  mockGetPendingBatches.mock.mockImplementation(async () => []);
  mockGetCountriesNear3am.mock.mockImplementation(() => ['US']);
  mockQuery.mock.mockImplementation(async () => ({
    rows: [{ user_id: 'user-no-meals', locale: 'en' }],
  }));
  // collectMealDataForUser returns null (no meals in last 3 days)
  mockCollectMealDataForUser.mock.mockImplementation(async () => null);

  startAiSummaryCron();
  const [, callback] = mockCronSchedule.mock.calls[0]!.arguments as [string, () => Promise<void>];
  await callback();

  assert.equal(mockSubmitBatch.mock.calls.length, 0);
});

test('cron job does not throw when submitBatch fails', async () => {
  resetAll();
  mockGetPendingBatches.mock.mockImplementation(async () => []);
  mockGetCountriesNear3am.mock.mockImplementation(() => ['FR']);
  mockQuery.mock.mockImplementation(async () => ({
    rows: [{ user_id: 'u1', locale: 'fr' }],
  }));
  mockCollectMealDataForUser.mock.mockImplementation(async () => ({
    userId: 'u1', locale: 'fr', mealCount: 2, csv: 'data',
  }));
  mockSubmitBatch.mock.mockImplementation(async () => {
    throw new Error('OpenAI batch API error');
  });

  startAiSummaryCron();
  const [, callback] = mockCronSchedule.mock.calls[0]!.arguments as [string, () => Promise<void>];
  await assert.doesNotReject(() => callback());
});

test('cron job passes country list to query for user lookup', async () => {
  resetAll();
  mockGetPendingBatches.mock.mockImplementation(async () => []);
  mockGetCountriesNear3am.mock.mockImplementation(() => ['JP', 'KR']);
  mockQuery.mock.mockImplementation(async () => ({ rows: [] }));

  startAiSummaryCron();
  const [, callback] = mockCronSchedule.mock.calls[0]!.arguments as [string, () => Promise<void>];
  await callback();

  const userQueryCall = mockQuery.mock.calls.find(
    (c) => (c.arguments[0] as string).includes('country_code = ANY')
  );
  assert.ok(userQueryCall !== undefined);
  const [, params] = userQueryCall.arguments as [string, unknown[]];
  assert.deepEqual(params[0], ['JP', 'KR']);
});

test('cron job skips an overlapping hourly invocation', async () => {
  resetAll();
  let releasePending!: () => void;
  const pending = new Promise<void>((resolve) => {
    releasePending = resolve;
  });
  mockGetPendingBatches.mock.mockImplementation(async () => {
    await pending;
    return [];
  });
  mockGetCountriesNear3am.mock.mockImplementation(() => []);

  startAiSummaryCron();
  const [, callback] = mockCronSchedule.mock.calls[0]!.arguments as [
    string,
    () => Promise<void>,
  ];

  const firstRun = callback();
  await Promise.resolve();
  await callback();

  assert.equal(mockGetPendingBatches.mock.calls.length, 1);
  releasePending();
  await firstRun;
});
