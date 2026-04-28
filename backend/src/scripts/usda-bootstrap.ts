import config from '../config.js';
import { closeDatabase, initializeDatabase } from '../services/database.js';
import { runMigrations } from '../services/migrate.js';
import { bootstrapUsdaIfNeeded } from '../services/usdaBootstrap.js';

async function main(): Promise<void> {
  if (!config.DATABASE_URL) {
    throw new Error('DATABASE_URL is not set');
  }

  initializeDatabase();
  await runMigrations();

  await bootstrapUsdaIfNeeded({
    zipUrl: config.USDA_ZIP_URL,
    localZipPath: process.env.USDA_ZIP_PATH || undefined,
    datasetVersion: config.USDA_DATASET_VERSION ?? 'usda-2025-12-18',
    sourceReleaseDate: config.USDA_SOURCE_RELEASE_DATE ?? '2025-12-18',
    dataDir: config.USDA_DATA_DIR,
  });

  await closeDatabase();
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});
