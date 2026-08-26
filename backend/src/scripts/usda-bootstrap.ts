import config from '../config.js';
import { join } from 'node:path';
import {
  closeDatabase,
  getUsdaClient,
  initializeDatabase,
} from '../services/infrastructure/database.js';
import { runMigrations } from '../services/infrastructure/migrate.js';
import { bootstrapUsdaIfNeeded } from '../services/usda/bootstrap.js';

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
