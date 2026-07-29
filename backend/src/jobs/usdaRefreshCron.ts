import cron from 'node-cron';
import config from '../config.js';
import { runUsdaImport } from '../services/usdaImport.js';

function resolveDatasetVersion(): string {
  return config.USDA_DATASET_VERSION ?? `scheduled-${new Date().toISOString().slice(0, 10)}`;
}

async function runUsdaRefreshJob(): Promise<void> {
  try {
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
  } catch (error) {
    console.error('[usdaRefreshCron] refresh failed:', error instanceof Error ? error.message : error);
  }
}

export function startUsdaRefreshCron(): void {
  if (!config.USDA_AUTO_REFRESH_ENABLED) {
    console.log('[usdaRefreshCron] disabled');
    return;
  }
  cron.schedule(config.USDA_REFRESH_CRON, async () => runUsdaRefreshJob());
  console.log(`[usdaRefreshCron] scheduled with expression "${config.USDA_REFRESH_CRON}"`);
}
