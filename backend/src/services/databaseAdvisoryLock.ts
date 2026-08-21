import { getClient } from './database.js';
import { safeErrorMetadata } from '../utils/safeError.js';

export type AdvisoryLockResult<T> =
  | { acquired: true; value: T }
  | { acquired: false };

/**
 * Runs work while holding a named PostgreSQL session advisory lock.
 * `pg_try_advisory_lock` never waits: another process owning the job causes a
 * clean skipped result instead of duplicate external side effects.
 */
export async function withDatabaseAdvisoryLock<T>(
  lockName: string,
  work: () => Promise<T>
): Promise<AdvisoryLockResult<T>> {
  const client = await getClient();
  let acquired = false;
  try {
    const result = await client.query<{ acquired: boolean }>(
      'SELECT pg_try_advisory_lock(hashtext($1)) AS acquired',
      [lockName]
    );
    acquired = result.rows[0]?.acquired === true;
    if (!acquired) return { acquired: false };
    return { acquired: true, value: await work() };
  } finally {
    if (acquired) {
      try {
        await client.query('SELECT pg_advisory_unlock(hashtext($1))', [lockName]);
      } catch (error) {
        console.error(
          `Failed to release advisory lock ${lockName}:`,
          safeErrorMetadata(error, 'database_advisory_unlock_failed')
        );
      }
    }
    client.release();
  }
}
