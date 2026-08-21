import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';

// ---------------------------------------------------------------------------
// Mock dependencies before importing the cron module
// ---------------------------------------------------------------------------

const mockRunUsdaImport = mock.fn(async () => ({
  imported: true,
  rowCount: 1500,
  checksum: 'abc123',
  skippedReason: undefined,
}));

await mock.module('../services/usdaImport.js', {
  namedExports: { runUsdaImport: mockRunUsdaImport },
});

let advisoryLockAvailable = true;
const mockWithDatabaseAdvisoryLock = mock.fn(async (
  _name: string,
  work: () => Promise<unknown>
) => advisoryLockAvailable
  ? { acquired: true as const, value: await work() }
  : { acquired: false as const });

await mock.module('../services/databaseAdvisoryLock.js', {
  namedExports: { withDatabaseAdvisoryLock: mockWithDatabaseAdvisoryLock },
});

const mockScheduledTask = { stop: mock.fn(() => {}) };
const mockCronSchedule = mock.fn((_expr: string, _fn: () => void) => mockScheduledTask);

await mock.module('node-cron', {
  defaultExport: { schedule: mockCronSchedule },
});

const mockConfig = {
  USDA_AUTO_REFRESH_ENABLED: true,
  USDA_REFRESH_CRON: '0 3 1 * *',
  USDA_DATA_DIR: '/tmp/usda',
  USDA_DATASET_VERSION: null,
  USDA_SOURCE_RELEASE_DATE: null,
  DATABASE_URL: 'postgres://mock',
};

await mock.module('../config.js', { defaultExport: mockConfig });

const { startUsdaRefreshCron } = await import('./usdaRefreshCron.js');

// ---------------------------------------------------------------------------
// Helper
// ---------------------------------------------------------------------------

function resetAll() {
  advisoryLockAvailable = true;
  mockWithDatabaseAdvisoryLock.mock.resetCalls();
  mockRunUsdaImport.mock.resetCalls();
  mockCronSchedule.mock.resetCalls();
}

// ---------------------------------------------------------------------------
// startUsdaRefreshCron — when enabled
// ---------------------------------------------------------------------------

test('startUsdaRefreshCron schedules cron with configured expression', () => {
  resetAll();
  const task = startUsdaRefreshCron();
  assert.equal(mockCronSchedule.mock.calls.length, 1);
  assert.strictEqual(task, mockScheduledTask);
  const [expr] = mockCronSchedule.mock.calls[0]!.arguments as [string];
  assert.equal(expr, '0 3 1 * *');
});

test('startUsdaRefreshCron passes a callback to cron.schedule', () => {
  resetAll();
  startUsdaRefreshCron();
  const [, cb] = mockCronSchedule.mock.calls[0]!.arguments as [string, () => void];
  assert.equal(typeof cb, 'function');
});

test('cron callback invokes runUsdaImport with correct args', async () => {
  resetAll();
  startUsdaRefreshCron();
  const [, cb] = mockCronSchedule.mock.calls[0]!.arguments as [string, () => Promise<void>];
  await cb();

  assert.equal(mockRunUsdaImport.mock.calls.length, 1);
  const args = mockRunUsdaImport.mock.calls[0]!.arguments[0] as any;
  assert.equal(args.dataDir, '/tmp/usda');
  assert.equal(args.importSource, 'cron_refresh');
  assert.equal(args.makeActive, true);
  assert.equal(
    mockWithDatabaseAdvisoryLock.mock.calls[0]!.arguments[0],
    'calorify:usda-refresh-job'
  );
});

test('cron callback skips import when another process owns the advisory lock', async () => {
  resetAll();
  advisoryLockAvailable = false;
  startUsdaRefreshCron();
  const [, cb] = mockCronSchedule.mock.calls[0]!.arguments as [
    string,
    () => Promise<void>,
  ];
  await cb();
  assert.equal(mockRunUsdaImport.mock.calls.length, 0);
});

test('cron callback uses config.USDA_DATASET_VERSION when set', async () => {
  resetAll();
  mockConfig.USDA_DATASET_VERSION = 'FoodData_Central_SR_Legacy_2018';
  startUsdaRefreshCron();
  const [, cb] = mockCronSchedule.mock.calls[0]!.arguments as [string, () => Promise<void>];
  await cb();

  const args = mockRunUsdaImport.mock.calls[0]!.arguments[0] as any;
  assert.equal(args.datasetVersion, 'FoodData_Central_SR_Legacy_2018');

  mockConfig.USDA_DATASET_VERSION = null;
});

test('cron callback generates scheduled- prefixed datasetVersion when config is null', async () => {
  resetAll();
  startUsdaRefreshCron();
  const [, cb] = mockCronSchedule.mock.calls[0]!.arguments as [string, () => Promise<void>];
  await cb();

  const args = mockRunUsdaImport.mock.calls[0]!.arguments[0] as any;
  assert.ok(args.datasetVersion.startsWith('scheduled-'));
  // should look like 'scheduled-YYYY-MM-DD'
  assert.ok(/^scheduled-\d{4}-\d{2}-\d{2}$/.test(args.datasetVersion));
});

test('cron callback passes sourceReleaseDate when config has it', async () => {
  resetAll();
  mockConfig.USDA_SOURCE_RELEASE_DATE = '2024-04-01';
  startUsdaRefreshCron();
  const [, cb] = mockCronSchedule.mock.calls[0]!.arguments as [string, () => Promise<void>];
  await cb();

  const args = mockRunUsdaImport.mock.calls[0]!.arguments[0] as any;
  assert.equal(args.sourceReleaseDate, '2024-04-01');

  mockConfig.USDA_SOURCE_RELEASE_DATE = null;
});

test('cron callback does not throw when runUsdaImport throws', async () => {
  resetAll();
  mockRunUsdaImport.mock.mockImplementation(async () => {
    throw new Error('Import failed: disk full');
  });

  startUsdaRefreshCron();
  const [, cb] = mockCronSchedule.mock.calls[0]!.arguments as [string, () => Promise<void>];
  await assert.doesNotReject(() => cb());
});

test('cron logs skipped result when import is skipped', async () => {
  resetAll();
  mockRunUsdaImport.mock.mockImplementation(async () => ({
    imported: false,
    rowCount: 0,
    checksum: 'abc123',
    skippedReason: 'checksum_match',
  }));

  startUsdaRefreshCron();
  const [, cb] = mockCronSchedule.mock.calls[0]!.arguments as [string, () => Promise<void>];
  // Should complete without throwing
  await assert.doesNotReject(() => cb());
  assert.equal(mockRunUsdaImport.mock.calls.length, 1);
});

// ---------------------------------------------------------------------------
// startUsdaRefreshCron — when disabled
// ---------------------------------------------------------------------------

test('startUsdaRefreshCron does not schedule when USDA_AUTO_REFRESH_ENABLED is false', async () => {
  resetAll();
  mockConfig.USDA_AUTO_REFRESH_ENABLED = false;
  const task = startUsdaRefreshCron();

  assert.equal(mockCronSchedule.mock.calls.length, 0);
  assert.equal(task, undefined);

  mockConfig.USDA_AUTO_REFRESH_ENABLED = true;
});

// ---------------------------------------------------------------------------
// Custom cron expression
// ---------------------------------------------------------------------------

test('startUsdaRefreshCron uses custom USDA_REFRESH_CRON expression', async () => {
  resetAll();
  mockConfig.USDA_REFRESH_CRON = '0 2 * * 1';
  startUsdaRefreshCron();

  const [expr] = mockCronSchedule.mock.calls[0]!.arguments as [string];
  assert.equal(expr, '0 2 * * 1');

  mockConfig.USDA_REFRESH_CRON = '0 3 1 * *';
});
