import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';

/** Separate file so config can be mocked with DATABASE_URL=null before importing aiSummaryCron. */

await mock.module('../config.js', {
  defaultExport: { DATABASE_URL: null },
});

const mockGetPendingBatches = mock.fn(async () => []);

await mock.module('../services/database.js', {
  namedExports: { query: mock.fn(async () => ({ rows: [] })) },
});

await mock.module('../services/databaseAdvisoryLock.js', {
  namedExports: {
    withDatabaseAdvisoryLock: mock.fn(async () => {
      throw new Error('lock should not be requested without DATABASE_URL');
    }),
  },
});

await mock.module('../services/aiSummaryService.js', {
  namedExports: {
    getPendingBatches: mockGetPendingBatches,
    pollAndProcessBatch: mock.fn(async () => ({
      status: 'completed' as const,
      savedCount: 0,
      errorCount: 0,
    })),
    updateBatchStatus: mock.fn(async () => {}),
    collectMealDataForUser: mock.fn(async () => null),
    collectMealDataForUsers: mock.fn(async () => []),
    submitBatch: mock.fn(async () => ({
      openAiBatchId: 'x',
      requestCount: 0,
      userData: {},
    })),
    saveBatchIntent: mock.fn(async () => {}),
    activateBatchRecord: mock.fn(async () => {}),
    reconcileCreatingBatches: mock.fn(async () => {}),
    splitSummaryRequestsIntoBatches: (requests: unknown[]) => [requests],
  },
});

await mock.module('../utils/timezone.js', {
  namedExports: {
    isTimeZoneNear3am: mock.fn(() => false),
    resolveTimeZone: mock.fn(() => 'UTC'),
    DEFAULT_THREE_AM_PLUS_MINUS_MINUTES: 30,
  },
});

await mock.module('node-cron', {
  defaultExport: { schedule: mock.fn() },
});

const { runAiSummaryJob } = await import('./aiSummaryCron.js');

test('runAiSummaryJob skips work when DATABASE_URL is unset', async () => {
  await runAiSummaryJob();
  assert.equal(mockGetPendingBatches.mock.calls.length, 0);
});
