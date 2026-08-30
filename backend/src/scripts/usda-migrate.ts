import { join } from 'node:path';
import config from '../config.js';
import {
  closeDatabase,
  getUsdaClient,
  initializeDatabase,
} from '../services/infrastructure/database.js';
import { runMigrations } from '../services/infrastructure/migrate.js';

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
  await closeDatabase();
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});
