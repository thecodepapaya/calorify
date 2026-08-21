import cron, { type ScheduledTask } from 'node-cron';
import config from '../config.js';
import { withDatabaseAdvisoryLock } from '../services/databaseAdvisoryLock.js';
import { runUsdaImport } from '../services/usdaImport.js';
import { safeErrorMetadata } from '../utils/safeError.js';

const USDA_REFRESH_JOB_LOCK = 'calorify:usda-refresh-job';

function resolveDatasetVersion(): string {
  return config.USDA_DATASET_VERSION ?? `scheduled-${new Date().toISOString().slice(0, 10)}`;
}

async function runUsdaRefreshJob(): Promise<void> {
  try {
    const locked = await withDatabaseAdvisoryLock(USDA_REFRESH_JOB_LOCK, async () => {
      const result = await runUsdaImport({
        datasetVersion: resolveDatasetVersion(),
        sourceReleaseDate: config.USDA_SOURCE_RELEASE_DATE ?? undefined,
        dataDir: config.USDA_DATA_DIR,
        importSource: 'cron_refresh',
        makeActive: true,
      });
      console.log(
        `[usdaRefreshCron] ${result.imported ? 'imported' : 'skipped'} rows=${result.rowCount} checksum=${result.checksum}${result.skippedReason ? ` reason=${result.skippedReason}` : ''}`
      );
    });
    if (!locked.acquired) {
      console.warn('[usdaRefreshCron] Another process owns the job lock; skipping overlap');
    }
  } catch (error) {
    console.error(
      '[usdaRefreshCron] refresh failed:',
      safeErrorMetadata(error, 'usda_refresh_failed')
    );
  }
}

export function startUsdaRefreshCron(): ScheduledTask | undefined {
  if (!config.USDA_AUTO_REFRESH_ENABLED) {
    console.log('[usdaRefreshCron] disabled');
    return;
  }
  const task = cron.schedule(config.USDA_REFRESH_CRON, async () => runUsdaRefreshJob());
  console.log(`[usdaRefreshCron] scheduled with expression "${config.USDA_REFRESH_CRON}"`);
  return task;
}
