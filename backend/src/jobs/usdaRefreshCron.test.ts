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

const mockCronSchedule = mock.fn((_expr: string, _fn: () => void) => {});

await mock.module('node-cron', {
  defaultExport: { schedule: mockCronSchedule },
});

const BASE_CONFIG = {
  USDA_AUTO_REFRESH_ENABLED: true,
  USDA_REFRESH_CRON: '0 3 1 * *',
  USDA_DATA_DIR: '/tmp/usda',
  USDA_DATASET_VERSION: null,
  USDA_SOURCE_RELEASE_DATE: null,
  DATABASE_URL: 'postgres://mock',
};

await mock.module('../config.js', { defaultExport: BASE_CONFIG });

const { startUsdaRefreshCron } = await import('./usdaRefreshCron.js');

// ---------------------------------------------------------------------------
// Helper
// ---------------------------------------------------------------------------

function resetAll() {
  mockRunUsdaImport.mock.resetCalls();
  mockCronSchedule.mock.resetCalls();
}

// ---------------------------------------------------------------------------
// startUsdaRefreshCron — when enabled
// ---------------------------------------------------------------------------

test('startUsdaRefreshCron schedules cron with configured expression', () => {
  resetAll();
  startUsdaRefreshCron();
  assert.equal(mockCronSchedule.mock.calls.length, 1);
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
});

test('cron callback uses config.USDA_DATASET_VERSION when set', async () => {
  resetAll();
  await mock.module('../config.js', {
    defaultExport: { ...BASE_CONFIG, USDA_DATASET_VERSION: 'FoodData_Central_SR_Legacy_2018' },
  });

  const { startUsdaRefreshCron: startWithVersion } = await import('./usdaRefreshCron.js');
  startWithVersion();
  const [, cb] = mockCronSchedule.mock.calls[0]!.arguments as [string, () => Promise<void>];
  await cb();

  const args = mockRunUsdaImport.mock.calls[0]!.arguments[0] as any;
  assert.equal(args.datasetVersion, 'FoodData_Central_SR_Legacy_2018');

  await mock.module('../config.js', { defaultExport: BASE_CONFIG });
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
  await mock.module('../config.js', {
    defaultExport: { ...BASE_CONFIG, USDA_SOURCE_RELEASE_DATE: '2024-04-01' },
  });

  const { startUsdaRefreshCron: startWithDate } = await import('./usdaRefreshCron.js');
  startWithDate();
  const [, cb] = mockCronSchedule.mock.calls[0]!.arguments as [string, () => Promise<void>];
  await cb();

  const args = mockRunUsdaImport.mock.calls[0]!.arguments[0] as any;
  assert.equal(args.sourceReleaseDate, '2024-04-01');

  await mock.module('../config.js', { defaultExport: BASE_CONFIG });
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
  await mock.module('../config.js', {
    defaultExport: { ...BASE_CONFIG, USDA_AUTO_REFRESH_ENABLED: false },
  });

  const { startUsdaRefreshCron: startDisabled } = await import('./usdaRefreshCron.js');
  startDisabled();

  assert.equal(mockCronSchedule.mock.calls.length, 0);

  // Restore
  await mock.module('../config.js', { defaultExport: BASE_CONFIG });
});

// ---------------------------------------------------------------------------
// Custom cron expression
// ---------------------------------------------------------------------------

test('startUsdaRefreshCron uses custom USDA_REFRESH_CRON expression', async () => {
  resetAll();
  await mock.module('../config.js', {
    defaultExport: { ...BASE_CONFIG, USDA_REFRESH_CRON: '0 2 * * 1' },
  });

  const { startUsdaRefreshCron: startCustom } = await import('./usdaRefreshCron.js');
  startCustom();

  const [expr] = mockCronSchedule.mock.calls[0]!.arguments as [string];
  assert.equal(expr, '0 2 * * 1');

  await mock.module('../config.js', { defaultExport: BASE_CONFIG });
});
