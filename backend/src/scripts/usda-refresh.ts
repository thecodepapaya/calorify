import config from '../config.js';
import { closeDatabase, initializeDatabase } from '../services/database.js';
import { runMigrations } from '../services/migrate.js';
import { runUsdaImport } from '../services/usdaImport.js';

async function main(): Promise<void> {
  if (!config.DATABASE_URL) {
    throw new Error('DATABASE_URL is not set');
  }
  initializeDatabase();
  await runMigrations();
  const datasetVersion = config.USDA_DATASET_VERSION ?? `manual-${new Date().toISOString().slice(0, 10)}`;
  const result = await runUsdaImport({
    datasetVersion,
    sourceReleaseDate: config.USDA_SOURCE_RELEASE_DATE ?? undefined,
    importSource: 'manual_refresh',
    dataDir: config.USDA_DATA_DIR,
    makeActive: true,
  });
  console.log(
    `[usda:refresh] ${result.imported ? 'imported' : 'skipped'} version=${datasetVersion} rows=${result.rowCount} checksum=${result.checksum}${result.skippedReason ? ` reason=${result.skippedReason}` : ''}`
  );
  await closeDatabase();
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});

