import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';

let lockAvailable = true;
let unlockError: Error | undefined;
const query = mock.fn(async (sql: string) => {
  if (sql.includes('pg_advisory_unlock') && unlockError) throw unlockError;
  return {
    rows: sql.includes('pg_try_advisory_lock') ? [{ acquired: lockAvailable }] : [],
    rowCount: 1,
  };
});
const release = mock.fn(() => {});

await mock.module('./database.js', {
  namedExports: {
    getClient: mock.fn(async () => ({ query, release })),
  },
});

const { withDatabaseAdvisoryLock } = await import('./advisoryLock.js');

test.beforeEach(() => {
  lockAvailable = true;
  unlockError = undefined;
  query.mock.resetCalls();
  release.mock.resetCalls();
});

test('runs work while holding and then releasing the database lock', async () => {
  const work = mock.fn(async () => 'done');
  const result = await withDatabaseAdvisoryLock('job:test', work);
  assert.deepEqual(result, { acquired: true, value: 'done' });
  assert.equal(work.mock.calls.length, 1);
  assert.match(query.mock.calls[0]!.arguments[0], /pg_try_advisory_lock/);
  assert.match(query.mock.calls[1]!.arguments[0], /pg_advisory_unlock/);
  assert.equal(release.mock.calls.length, 1);
});

test('does not run work when another process owns the lock', async () => {
  lockAvailable = false;
  const work = mock.fn(async () => 'unexpected');
  const result = await withDatabaseAdvisoryLock('job:test', work);
  assert.deepEqual(result, { acquired: false });
  assert.equal(work.mock.calls.length, 0);
  assert.equal(query.mock.calls.length, 1);
  assert.equal(release.mock.calls.length, 1);
});

test('releases the lock when work throws', async () => {
  await assert.rejects(
    withDatabaseAdvisoryLock('job:test', async () => {
      throw new Error('job failed');
    }),
    /job failed/
  );
  assert.match(query.mock.calls[1]!.arguments[0], /pg_advisory_unlock/);
  assert.equal(release.mock.calls.length, 1);
});

test('redacts PostgreSQL details when advisory unlock fails', async (t) => {
  const secret = 'PRIVATE_DATABASE_ROW_DETAIL';
  unlockError = new Error(`unlock failed for ${secret}`);
  const logs: unknown[][] = [];
  t.mock.method(console, 'error', (...values: unknown[]) => logs.push(values));

  const result = await withDatabaseAdvisoryLock('job:test', async () => 'done');

  assert.deepEqual(result, { acquired: true, value: 'done' });
  assert.doesNotMatch(JSON.stringify(logs), new RegExp(secret));
  assert.match(JSON.stringify(logs), /database_advisory_unlock_failed/);
});
