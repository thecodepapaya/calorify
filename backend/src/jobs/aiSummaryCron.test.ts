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

let advisoryLockHeld = false;
const mockWithDatabaseAdvisoryLock = mock.fn(async (
  _name: string,
  work: () => Promise<unknown>
) => {
  if (advisoryLockHeld) return { acquired: false as const };
  advisoryLockHeld = true;
  try {
    return { acquired: true as const, value: await work() };
  } finally {
    advisoryLockHeld = false;
  }
});

await mock.module('../services/databaseAdvisoryLock.js', {
  namedExports: { withDatabaseAdvisoryLock: mockWithDatabaseAdvisoryLock },
});

const mockGetPendingBatches = mock.fn(async () => []);
const mockPollAndProcessBatch = mock.fn(async () => ({
  status: 'completed' as const,
  savedCount: 0,
  errorCount: 0,
}));
const mockUpdateBatchStatus = mock.fn(async () => {});
const mockCollectMealDataForUser = mock.fn(async () => null);
const mockCollectMealDataForUsers = mock.fn(async (users: Array<{
  userId: string;
  locale: string;
  timeZone: string;
}>) => {
  const results = await Promise.all(users.map((user) =>
    mockCollectMealDataForUser(user.userId, user.locale, user.timeZone)
  ));
  return results.filter((result) => result !== null);
});
const mockSubmitBatch = mock.fn(async () => ({
  openAiBatchId: 'batch-cron-1',
  requestCount: 1,
  userData: {},
}));
const mockSaveBatchRecord = mock.fn(async () => {});
const mockSaveBatchIntent = mock.fn(async () => {});
const mockReconcileCreatingBatches = mock.fn(async () => {});

await mock.module('../services/aiSummaryService.js', {
  namedExports: {
    getPendingBatches: mockGetPendingBatches,
    pollAndProcessBatch: mockPollAndProcessBatch,
    updateBatchStatus: mockUpdateBatchStatus,
    collectMealDataForUser: mockCollectMealDataForUser,
    collectMealDataForUsers: mockCollectMealDataForUsers,
    submitBatch: mockSubmitBatch,
    saveBatchIntent: mockSaveBatchIntent,
    activateBatchRecord: mockSaveBatchRecord,
    reconcileCreatingBatches: mockReconcileCreatingBatches,
    splitSummaryRequestsIntoBatches: (requests: unknown[]) => [requests],
  },
});

const mockIsTimeZoneNear3am = mock.fn(() => false);
const mockResolveTimeZone = mock.fn((timeZone?: string, countryCode?: string) =>
  timeZone ?? (countryCode === 'IN' ? 'Asia/Kolkata' : 'UTC')
);

await mock.module('../utils/timezone.js', {
  namedExports: {
    isTimeZoneNear3am: mockIsTimeZoneNear3am,
    resolveTimeZone: mockResolveTimeZone,
    DEFAULT_THREE_AM_PLUS_MINUS_MINUTES: 30,
  },
});

const mockScheduledTask = { stop: mock.fn(() => {}) };
const mockCronSchedule = mock.fn((_expr: string, _fn: () => void) => mockScheduledTask);

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
  advisoryLockHeld = false;
  mockWithDatabaseAdvisoryLock.mock.resetCalls();
  mockGetPendingBatches.mock.resetCalls();
  mockPollAndProcessBatch.mock.resetCalls();
  mockUpdateBatchStatus.mock.resetCalls();
  mockCollectMealDataForUser.mock.resetCalls();
  mockCollectMealDataForUsers.mock.resetCalls();
  mockSubmitBatch.mock.resetCalls();
  mockSaveBatchRecord.mock.resetCalls();
  mockSaveBatchIntent.mock.resetCalls();
  mockReconcileCreatingBatches.mock.resetCalls();
  mockIsTimeZoneNear3am.mock.resetCalls();
  mockResolveTimeZone.mock.resetCalls();
  mockQuery.mock.resetCalls();
  mockCronSchedule.mock.resetCalls();
}

// ---------------------------------------------------------------------------
// startAiSummaryCron
// ---------------------------------------------------------------------------

test('startAiSummaryCron schedules a cron job with hourly expression', () => {
  resetAll();
  const task = startAiSummaryCron();
  assert.equal(mockCronSchedule.mock.calls.length, 1);
  assert.strictEqual(task, mockScheduledTask);
  const [expr] = mockCronSchedule.mock.calls[0]!.arguments as [string];
  assert.equal(expr, '0 * * * *');
});

test('startAiSummaryCron passes a callback function to cron.schedule', () => {
  resetAll();
  startAiSummaryCron();
  const [, callback] = mockCronSchedule.mock.calls[0]!.arguments as [string, () => void];
  assert.equal(typeof callback, 'function');
});

test('scheduled runs use the cross-process AI summary advisory lock', async () => {
  resetAll();
  startAiSummaryCron();
  const [, callback] = mockCronSchedule.mock.calls[0]!.arguments as [
    string,
    () => Promise<void>,
  ];
  await callback();
  assert.equal(mockWithDatabaseAdvisoryLock.mock.calls.length, 1);
  assert.equal(
    mockWithDatabaseAdvisoryLock.mock.calls[0]!.arguments[0],
    'calorify:ai-summary-job'
  );
});

// ---------------------------------------------------------------------------
// Phase 1 — pollPendingBatches (invoked via the scheduled callback)
// ---------------------------------------------------------------------------

test('cron job callback calls getPendingBatches', async () => {
  resetAll();
  mockGetPendingBatches.mock.mockImplementation(async () => []);
  mockIsTimeZoneNear3am.mock.mockImplementation(() => false);

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
  mockIsTimeZoneNear3am.mock.mockImplementation(() => false);

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
  mockIsTimeZoneNear3am.mock.mockImplementation(() => false);

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
  mockIsTimeZoneNear3am.mock.mockImplementation(() => false);

  startAiSummaryCron();
  const [, callback] = mockCronSchedule.mock.calls[0]!.arguments as [string, () => Promise<void>];
  // Should not throw even when individual poll fails
  await assert.doesNotReject(() => callback());
  assert.equal(callCount, 2);
});

// ---------------------------------------------------------------------------
// Phase 2 — submitNewBatch
// ---------------------------------------------------------------------------

test('cron job skips batch submission when no users are near 3am', async () => {
  resetAll();
  mockGetPendingBatches.mock.mockImplementation(async () => []);
  mockQuery.mock.mockImplementation(async () => ({
    rows: [{ user_id: 'user-1', locale: 'en', time_zone: 'Europe/London', country_code: 'GB' }],
  }));
  mockIsTimeZoneNear3am.mock.mockImplementation(() => false);

  startAiSummaryCron();
  const [, callback] = mockCronSchedule.mock.calls[0]!.arguments as [string, () => Promise<void>];
  await callback();

  // The scheduler resolves recent users first, then filters by their timezone.
  const userLookupCalls = mockQuery.mock.calls.filter(
    (c) => (c.arguments[0] as string).includes('meal_analysis_session')
  );
  assert.equal(userLookupCalls.length, 1);
  assert.equal(mockSubmitBatch.mock.calls.length, 0);
});

test('cron job queries users near local 3am and submits batch', async () => {
  resetAll();
  mockGetPendingBatches.mock.mockImplementation(async () => []);
  mockIsTimeZoneNear3am.mock.mockImplementation(() => true);
  mockQuery.mock.mockImplementation(async () => ({
    rows: [
      { user_id: 'user-in-1', locale: 'hi', time_zone: 'Asia/Kolkata', country_code: 'IN' },
      { user_id: 'user-in-2', locale: 'en', time_zone: 'Asia/Kolkata', country_code: 'IN' },
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
  assert.equal(mockSaveBatchIntent.mock.calls.length, 1);
  assert.equal(mockSaveBatchRecord.mock.calls.length, 1);
  const userSelectionSql = mockQuery.mock.calls[0]!.arguments[0] as string;
  assert.match(userSelectionSql, /NOT EXISTS/);
  assert.match(userSelectionSql, /b\.user_data \? s\.user_id/);
  assert.match(userSelectionSql, /jsonb_each\(b\.user_data\)/);
  assert.match(userSelectionSql, /metadata ->> 'userId' = s\.user_id/);
});

test('cron job never submits externally when the batch intent cannot be persisted', async () => {
  resetAll();
  mockGetPendingBatches.mock.mockImplementation(async () => []);
  mockIsTimeZoneNear3am.mock.mockImplementation(() => true);
  mockQuery.mock.mockImplementation(async () => ({
    rows: [{ user_id: 'u1', locale: 'en', time_zone: 'UTC', country_code: null }],
  }));
  mockCollectMealDataForUser.mock.mockImplementation(async () => ({
    userId: 'u1', locale: 'en', mealCount: 1, csv: 'row',
  }));
  mockSaveBatchIntent.mock.mockImplementation(async () => {
    throw new Error('database unavailable');
  });

  startAiSummaryCron();
  const [, callback] = mockCronSchedule.mock.calls[0]!.arguments as [
    string,
    () => Promise<void>,
  ];
  await callback();
  assert.equal(mockSubmitBatch.mock.calls.length, 0);

  mockSaveBatchIntent.mock.mockImplementation(async () => {});
});

test('cron job skips batch submission when no users have meal data', async () => {
  resetAll();
  mockGetPendingBatches.mock.mockImplementation(async () => []);
  mockIsTimeZoneNear3am.mock.mockImplementation(() => true);
  mockQuery.mock.mockImplementation(async () => ({
    rows: [{ user_id: 'user-no-meals', locale: 'en', time_zone: 'America/New_York', country_code: 'US' }],
  }));
  // collectMealDataForUser returns null (no meals in last 3 days)
  mockCollectMealDataForUser.mock.mockImplementation(async () => null);

  startAiSummaryCron();
  const [, callback] = mockCronSchedule.mock.calls[0]!.arguments as [string, () => Promise<void>];
  await callback();

  assert.equal(mockSubmitBatch.mock.calls.length, 0);
});

test('cron job sanitizes provider submission failures in logs and persistence', async (t) => {
  resetAll();
  const secret = 'PRIVATE_MEAL_PROVIDER_ERROR';
  const logs: unknown[][] = [];
  t.mock.method(console, 'error', (...values: unknown[]) => logs.push(values));
  mockGetPendingBatches.mock.mockImplementation(async () => []);
  mockIsTimeZoneNear3am.mock.mockImplementation(() => true);
  mockQuery.mock.mockImplementation(async () => ({
    rows: [{ user_id: 'u1', locale: 'fr', time_zone: 'Europe/Paris', country_code: 'FR' }],
  }));
  mockCollectMealDataForUser.mock.mockImplementation(async () => ({
    userId: 'u1', locale: 'fr', mealCount: 2, csv: 'data',
  }));
  mockSubmitBatch.mock.mockImplementation(async () => {
    throw new Error(`OpenAI batch API error: ${secret}`);
  });

  startAiSummaryCron();
  const [, callback] = mockCronSchedule.mock.calls[0]!.arguments as [string, () => Promise<void>];
  await assert.doesNotReject(() => callback());
  assert.equal(mockUpdateBatchStatus.mock.calls[0]?.arguments[2], 'Provider batch submission failed');
  assert.doesNotMatch(JSON.stringify(logs), new RegExp(secret));
});

test('cron job selects timezone fields and passes the resolved timezone to collection', async () => {
  resetAll();
  mockGetPendingBatches.mock.mockImplementation(async () => []);
  mockIsTimeZoneNear3am.mock.mockImplementation(() => true);
  mockQuery.mock.mockImplementation(async () => ({
    rows: [{ user_id: 'u1', locale: 'ja', time_zone: 'Asia/Tokyo', country_code: 'JP' }],
  }));
  mockCollectMealDataForUser.mock.mockImplementation(async () => null);

  startAiSummaryCron();
  const [, callback] = mockCronSchedule.mock.calls[0]!.arguments as [string, () => Promise<void>];
  await callback();

  const userQueryCall = mockQuery.mock.calls.find(
    (c) => (c.arguments[0] as string).includes('s.time_zone')
  );
  assert.ok(userQueryCall !== undefined);
  assert.equal(mockCollectMealDataForUser.mock.calls[0]!.arguments[2], 'Asia/Tokyo');
});

test('database lock skips an overlapping hourly invocation', async () => {
  resetAll();
  let releasePending!: () => void;
  const pending = new Promise<void>((resolve) => {
    releasePending = resolve;
  });
  mockGetPendingBatches.mock.mockImplementation(async () => {
    await pending;
    return [];
  });
  mockIsTimeZoneNear3am.mock.mockImplementation(() => false);

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
