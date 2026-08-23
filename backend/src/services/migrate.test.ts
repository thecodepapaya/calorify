import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';
import { mkdtemp, rm, writeFile } from 'node:fs/promises';
import { tmpdir } from 'node:os';
import { join } from 'node:path';

type AppliedRow = { name: string; checksum: string | null };
type QueryCall = { sql: string; params?: unknown[] };

let appliedRows: AppliedRow[] = [];
let failSql: string | undefined;
let concurrentIndexState: 'missing' | 'invalid' | 'valid' = 'missing';
const calls: QueryCall[] = [];

const client = {
  query: mock.fn(async (sql: string, params?: unknown[]) => {
    calls.push({ sql, params });
    if (failSql && sql === failSql) throw new Error('simulated migration failure');
    if (sql.includes('SELECT name, checksum FROM schema_migrations')) {
      return { rows: appliedRows, rowCount: appliedRows.length };
    }
    if (sql.includes('FROM pg_index')) {
      return concurrentIndexState === 'missing'
        ? { rows: [], rowCount: 0 }
        : { rows: [{ indisvalid: concurrentIndexState === 'valid' }], rowCount: 1 };
    }
    if (/^CREATE INDEX CONCURRENTLY/i.test(sql)) concurrentIndexState = 'valid';
    if (/^DROP INDEX CONCURRENTLY/i.test(sql)) concurrentIndexState = 'missing';
    if (sql.includes('INSERT INTO schema_migrations')) {
      appliedRows.push({ name: String(params?.[0]), checksum: String(params?.[1]) });
    }
    if (sql.includes('UPDATE schema_migrations SET checksum')) {
      const row = appliedRows.find((candidate) => candidate.name === params?.[0]);
      if (row?.checksum === null) row.checksum = String(params?.[1]);
    }
    return { rows: [], rowCount: 1 };
  }),
  release: mock.fn(() => {}),
};

await mock.module('./database.js', {
  namedExports: { getClient: mock.fn(async () => client) },
});

const { runMigrations, isConcurrentIndexMigration } = await import('./migrate.js');

function resetState(rows: AppliedRow[] = []): void {
  appliedRows = rows.map((row) => ({ ...row }));
  failSql = undefined;
  concurrentIndexState = 'missing';
  calls.length = 0;
  client.query.mock.resetCalls();
  client.release.mock.resetCalls();
}

async function migrationDir(files: Record<string, string>): Promise<string> {
  const dir = await mkdtemp(join(tmpdir(), 'calorify-migrations-'));
  await Promise.all(
    Object.entries(files).map(([name, sql]) => writeFile(join(dir, name), sql))
  );
  return dir;
}

test('transactional migration executes and records its checksum atomically under a session lock', async () => {
  resetState();
  const sql = 'CREATE TABLE example (id INTEGER PRIMARY KEY);';
  const dir = await migrationDir({ '001_example.sql': sql });
  try {
    await runMigrations({ migrationsDir: dir });
    const statements = calls.map((call) => call.sql);
    const lock = statements.findIndex((statement) => statement.includes('pg_advisory_lock'));
    const begin = statements.indexOf('BEGIN');
    const migration = statements.indexOf(sql);
    const record = statements.findIndex((statement) =>
      statement.includes('INSERT INTO schema_migrations')
    );
    const commit = statements.indexOf('COMMIT');
    const unlock = statements.findIndex((statement) => statement.includes('pg_advisory_unlock'));
    assert.ok(lock >= 0 && lock < begin);
    assert.ok(begin < migration && migration < record && record < commit);
    assert.ok(commit < unlock);
    assert.match(String(calls[record]?.params?.[1]), /^[a-f0-9]{64}$/);
    assert.equal(client.release.mock.calls.length, 1);
  } finally {
    await rm(dir, { recursive: true, force: true });
  }
});

test('a separate database can supply its own client and advisory lock', async () => {
  resetState();
  const dir = await migrationDir({ '001_reference.sql': 'CREATE TABLE reference_data (id INTEGER);' });
  const clientFactory = mock.fn(async () => client);
  try {
    await runMigrations({
      migrationsDir: dir,
      clientFactory,
      lockName: 'calorify:reference-migrations',
    });
    assert.equal(clientFactory.mock.calls.length, 1);
    const lockCall = calls.find((call) => call.sql.includes('pg_advisory_lock'));
    const unlockCall = calls.find((call) => call.sql.includes('pg_advisory_unlock'));
    assert.deepEqual(lockCall?.params, ['calorify:reference-migrations']);
    assert.deepEqual(unlockCall?.params, ['calorify:reference-migrations']);
  } finally {
    await rm(dir, { recursive: true, force: true });
  }
});

test('CREATE INDEX CONCURRENTLY stays outside a transaction and is recorded', async () => {
  resetState();
  const sql = 'CREATE INDEX CONCURRENTLY IF NOT EXISTS idx_example ON example(id);';
  const dir = await migrationDir({ '002_index.sql': sql });
  try {
    await runMigrations({ migrationsDir: dir });
    const statements = calls.map((call) => call.sql);
    assert.equal(isConcurrentIndexMigration(sql), true);
    assert.equal(statements.includes('BEGIN'), false);
    assert.ok(statements.indexOf(sql) < statements.findIndex((statement) =>
      statement.includes('INSERT INTO schema_migrations')
    ));
  } finally {
    await rm(dir, { recursive: true, force: true });
  }
});

test('concurrent index migrations must be restart-safe', async () => {
  resetState();
  const sql = 'CREATE INDEX CONCURRENTLY idx_unsafe ON example(id);';
  const dir = await migrationDir({ '003_unsafe.sql': sql });
  try {
    await assert.rejects(
      runMigrations({ migrationsDir: dir }),
      /must use IF NOT EXISTS/
    );
    assert.equal(calls.some((call) => call.sql === sql), false);
  } finally {
    await rm(dir, { recursive: true, force: true });
  }
});

test('an invalid interrupted concurrent index is dropped before retry', async () => {
  resetState();
  concurrentIndexState = 'invalid';
  const sql = 'CREATE INDEX CONCURRENTLY IF NOT EXISTS idx_retry ON example(id);';
  const dir = await migrationDir({ '003_retry.sql': sql });
  try {
    await runMigrations({ migrationsDir: dir });
    const statements = calls.map((call) => call.sql);
    assert.ok(statements.includes('DROP INDEX CONCURRENTLY IF EXISTS "idx_retry"'));
    assert.ok(statements.indexOf('DROP INDEX CONCURRENTLY IF EXISTS "idx_retry"') < statements.indexOf(sql));
  } finally {
    await rm(dir, { recursive: true, force: true });
  }
});

test('legacy applied rows receive a checksum baseline without rerunning SQL', async () => {
  resetState([{ name: '001_existing.sql', checksum: null }]);
  const sql = 'CREATE TABLE existing (id INTEGER);';
  const dir = await migrationDir({ '001_existing.sql': sql });
  try {
    await runMigrations({ migrationsDir: dir });
    assert.equal(calls.some((call) => call.sql === sql), false);
    assert.match(appliedRows[0]?.checksum ?? '', /^[a-f0-9]{64}$/);
  } finally {
    await rm(dir, { recursive: true, force: true });
  }
});

test('an edited applied migration fails checksum validation before execution', async () => {
  resetState([{ name: '001_changed.sql', checksum: '0'.repeat(64) }]);
  const sql = 'ALTER TABLE example ADD COLUMN changed BOOLEAN;';
  const dir = await migrationDir({ '001_changed.sql': sql });
  try {
    await assert.rejects(
      runMigrations({ migrationsDir: dir }),
      /checksum mismatch/
    );
    assert.equal(calls.some((call) => call.sql === sql), false);
  } finally {
    await rm(dir, { recursive: true, force: true });
  }
});

test('transactional migration rolls back and still releases the advisory lock on failure', async () => {
  resetState();
  const sql = 'ALTER TABLE missing_table ADD COLUMN value TEXT;';
  failSql = sql;
  const dir = await migrationDir({ '004_failure.sql': sql });
  try {
    await assert.rejects(runMigrations({ migrationsDir: dir }), /simulated migration failure/);
    const statements = calls.map((call) => call.sql);
    assert.ok(statements.includes('ROLLBACK'));
    assert.ok(statements.some((statement) => statement.includes('pg_advisory_unlock')));
    assert.equal(
      statements.some((statement) => statement.includes('INSERT INTO schema_migrations')),
      false
    );
  } finally {
    await rm(dir, { recursive: true, force: true });
  }
});
