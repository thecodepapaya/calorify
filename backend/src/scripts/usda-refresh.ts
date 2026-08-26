import config from '../config.js';
import { join } from 'node:path';
import {
  closeDatabase,
  getUsdaClient,
  initializeDatabase,
} from '../services/infrastructure/database.js';
import { runMigrations } from '../services/infrastructure/migrate.js';
import { runUsdaImport } from '../services/usda/import.js';

async function main(): Promise<void> {
  if (!config.USDA_DATABASE_URL && !config.DATABASE_URL) {
    throw new Error('USDA_DATABASE_URL or DATABASE_URL must be set');
  }
  initializeDatabase();
  await runMigrations({
    migrationsDir: join(process.cwd(), 'migrations', 'usda'),
    clientFactory: getUsdaClient,
    lockName: 'calorify:usda-schema-migrations',
  });
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
