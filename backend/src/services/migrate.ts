import { createHash } from 'node:crypto';
import { readdirSync, readFileSync } from 'node:fs';
import { join } from 'node:path';
import type { PoolClient } from 'pg';
import { getClient } from './database.js';
import { safeErrorMetadata } from '../utils/safeError.js';

const MIGRATIONS_DIR = 'migrations';
const MIGRATION_LOCK_NAME = 'calorify:schema-migrations';

interface AppliedMigration {
  name: string;
  checksum: string | null;
}

export interface RunMigrationsOptions {
  migrationsDir?: string;
}

function migrationChecksum(sql: string): string {
  return createHash('sha256').update(sql).digest('hex');
}

function sqlWithoutComments(sql: string): string {
  return sql
    .replace(/\/\*[\s\S]*?\*\//g, ' ')
    .replace(/--.*$/gm, ' ');
}

export function isConcurrentIndexMigration(sql: string): boolean {
  return /\bCREATE\s+(?:UNIQUE\s+)?INDEX\s+CONCURRENTLY\b/i.test(
    sqlWithoutComments(sql)
  );
}

function concurrentIndexName(sql: string): string {
  const matches = [
    ...sqlWithoutComments(sql).matchAll(
      /\bCREATE\s+(?:UNIQUE\s+)?INDEX\s+CONCURRENTLY\s+IF\s+NOT\s+EXISTS\s+([A-Za-z_][A-Za-z0-9_$]*)\b/gi
    ),
  ];
  if (matches.length !== 1 || !matches[0]?.[1]) {
    throw new Error(
      'Each concurrent-index migration must contain exactly one unquoted CREATE INDEX CONCURRENTLY IF NOT EXISTS statement'
    );
  }
  return matches[0][1];
}

async function concurrentIndexValidity(
  client: PoolClient,
  indexName: string
): Promise<boolean | null> {
  const result = await client.query<{ indisvalid: boolean }>(
    `SELECT i.indisvalid
       FROM pg_index i
      WHERE i.indexrelid = to_regclass($1)`,
    [indexName]
  );
  return result.rows[0]?.indisvalid ?? null;
}

async function ensureMigrationsTable(client: PoolClient): Promise<void> {
  await client.query(`
    CREATE TABLE IF NOT EXISTS schema_migrations (
      name VARCHAR(255) PRIMARY KEY,
      checksum TEXT,
      applied_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
    )
  `);
  await client.query(
    'ALTER TABLE schema_migrations ADD COLUMN IF NOT EXISTS checksum TEXT'
  );
}

async function getAppliedMigrations(
  client: PoolClient
): Promise<Map<string, string | null>> {
  const { rows } = await client.query<AppliedMigration>(
    'SELECT name, checksum FROM schema_migrations ORDER BY name'
  );
  return new Map(rows.map((row) => [row.name, row.checksum]));
}

async function recordMigration(
  client: PoolClient,
  name: string,
  checksum: string
): Promise<void> {
  await client.query(
    'INSERT INTO schema_migrations (name, checksum) VALUES ($1, $2)',
    [name, checksum]
  );
}

async function runTransactionalMigration(
  client: PoolClient,
  name: string,
  sql: string,
  checksum: string
): Promise<void> {
  await client.query('BEGIN');
  try {
    if (sql) await client.query(sql);
    await recordMigration(client, name, checksum);
    await client.query('COMMIT');
  } catch (error) {
    await client.query('ROLLBACK');
    throw error;
  }
}

async function runConcurrentIndexMigration(
  client: PoolClient,
  name: string,
  sql: string,
  checksum: string
): Promise<void> {
  const executableSql = sqlWithoutComments(sql);
  if (!/\bINDEX\s+CONCURRENTLY\s+IF\s+NOT\s+EXISTS\b/i.test(executableSql)) {
    throw new Error(
      `Concurrent index migration ${name} must use IF NOT EXISTS so it is restart-safe`
    );
  }

  const indexName = concurrentIndexName(sql);
  if ((await concurrentIndexValidity(client, indexName)) === false) {
    // Interrupted concurrent builds can leave an INVALID relation. IF NOT
    // EXISTS would otherwise skip it and incorrectly mark the migration done.
    await client.query(`DROP INDEX CONCURRENTLY IF EXISTS "${indexName}"`);
  }

  // PostgreSQL forbids CREATE INDEX CONCURRENTLY inside a transaction. The
  // session advisory lock still serializes runners.
  await client.query(sql);
  if ((await concurrentIndexValidity(client, indexName)) !== true) {
    throw new Error(`Concurrent index ${indexName} was not created as a valid index`);
  }
  await recordMigration(client, name, checksum);
}

/**
 * Applies pending SQL migrations in filename order.
 *
 * A session advisory lock covers the complete run across application
 * processes. Ordinary migrations atomically execute and record their
 * checksum. CREATE INDEX CONCURRENTLY migrations remain outside a transaction
 * by PostgreSQL requirement and must be restart-safe.
 */
export async function runMigrations(options: RunMigrationsOptions = {}): Promise<void> {
  const client = await getClient();
  let lockAcquired = false;
  try {
    await client.query('SELECT pg_advisory_lock(hashtext($1))', [MIGRATION_LOCK_NAME]);
    lockAcquired = true;
    await ensureMigrationsTable(client);
    const applied = await getAppliedMigrations(client);

    const dir = options.migrationsDir ?? join(process.cwd(), MIGRATIONS_DIR);
    const files = readdirSync(dir)
      .filter((file) => file.endsWith('.sql'))
      .sort();

    for (const file of files) {
      const path = join(dir, file);
      const sql = readFileSync(path, 'utf-8').trim();
      const checksum = migrationChecksum(sql);
      const recordedChecksum = applied.get(file);

      if (applied.has(file)) {
        if (recordedChecksum === null) {
          // One-time adoption for rows written by the old runner. From this
          // point onward edits to an applied migration fail deterministically.
          await client.query(
            'UPDATE schema_migrations SET checksum = $2 WHERE name = $1 AND checksum IS NULL',
            [file, checksum]
          );
          continue;
        }
        if (recordedChecksum !== checksum) {
          throw new Error(`Applied migration checksum mismatch: ${file}`);
        }
        continue;
      }

      try {
        if (isConcurrentIndexMigration(sql)) {
          await runConcurrentIndexMigration(client, file, sql, checksum);
        } else {
          await runTransactionalMigration(client, file, sql, checksum);
        }
      } catch (error) {
        console.error('Migration execution failed:', {
          migration: file,
          ...safeErrorMetadata(error, 'migration_failed'),
        });
        throw new Error(
          `${file}: ${error instanceof Error ? error.message : String(error)}`
        );
      }
      console.log(`✅ Migration applied: ${file}`);
    }
  } catch (error) {
    throw new Error(
      `Migration failed: ${error instanceof Error ? error.message : String(error)}`
    );
  } finally {
    if (lockAcquired) {
      try {
        await client.query('SELECT pg_advisory_unlock(hashtext($1))', [MIGRATION_LOCK_NAME]);
      } catch (error) {
        console.error(
          'Failed to release schema migration advisory lock:',
          safeErrorMetadata(error, 'migration_advisory_unlock_failed')
        );
      }
    }
    client.release();
  }
}
