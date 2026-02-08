import { readdirSync, readFileSync } from 'fs';
import { join } from 'path';
import { query } from './database.js';

const MIGRATIONS_DIR = 'migrations';

/**
 * Ensures the schema_migrations table exists for tracking applied migrations.
 */
async function ensureMigrationsTable(): Promise<void> {
  await query(`
    CREATE TABLE IF NOT EXISTS schema_migrations (
      name VARCHAR(255) PRIMARY KEY,
      applied_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
    )
  `);
}

/**
 * Returns the list of applied migration names.
 */
async function getAppliedMigrations(): Promise<string[]> {
  const { rows } = await query<{ name: string }>('SELECT name FROM schema_migrations ORDER BY name');
  return rows.map((r) => r.name);
}

/**
 * Records a migration as applied.
 */
async function recordMigration(name: string): Promise<void> {
  await query('INSERT INTO schema_migrations (name) VALUES ($1)', [name]);
}

/**
 * Runs all pending SQL migrations in migrations/ directory.
 * Migrations are run in alphabetical order by filename.
 * Each migration is run only once (tracked in schema_migrations).
 */
export async function runMigrations(): Promise<void> {
  try {
    await ensureMigrationsTable();
    const applied = new Set(await getAppliedMigrations());

    const dir = join(process.cwd(), MIGRATIONS_DIR);
    const files = readdirSync(dir)
      .filter((f) => f.endsWith('.sql'))
      .sort();

    for (const file of files) {
      if (applied.has(file)) {
        continue;
      }
      const path = join(dir, file);
      const sql = readFileSync(path, 'utf-8').trim();
      if (!sql) {
        continue;
      }
      await query(sql);
      await recordMigration(file);
      console.log(`✅ Migration applied: ${file}`);
    }
  } catch (error) {
    throw new Error(
      `Migration failed: ${error instanceof Error ? error.message : String(error)}`
    );
  }
}
