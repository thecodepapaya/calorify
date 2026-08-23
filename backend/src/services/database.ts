import { Pool, PoolClient, QueryResultRow } from 'pg';
import config from '../config.js';
import { safeErrorMetadata } from '../utils/safeError.js';

let pool: Pool | null = null;
let usdaPool: Pool | null = null;

function createPool(connectionString: string, label: 'application' | 'USDA', max: number): Pool {
  const created = new Pool({
    connectionString,
    max,
    idleTimeoutMillis: 30000,
    connectionTimeoutMillis: 2000,
  });
  created.on('error', (err: Error) => {
    console.error(
      `Unexpected error on idle ${label} database client`,
      safeErrorMetadata(err, `${label.toLowerCase()}_database_idle_client_error`)
    );
  });
  return created;
}

/**
 * Initialize PostgreSQL connection pool
 */
export function initializeDatabase(): void {
  if (!pool && config.DATABASE_URL) {
    pool = createPool(config.DATABASE_URL, 'application', 20);
  }

  const usdaConnectionString = config.USDA_DATABASE_URL ?? config.DATABASE_URL;
  if (!usdaPool && usdaConnectionString) {
    usdaPool = pool && usdaConnectionString === config.DATABASE_URL
      ? pool
      : createPool(usdaConnectionString, 'USDA', 10);
  }

  if (!pool && !usdaPool) {
    throw new Error('DATABASE_URL or USDA_DATABASE_URL must be set');
  }
}

/**
 * Get a client from the connection pool
 */
export async function getClient(): Promise<PoolClient> {
  if (!pool) {
    throw new Error('Database pool not initialized. Call initializeDatabase() first.');
  }
  return pool.connect();
}

/** Get a client from the shared USDA reference database. */
export async function getUsdaClient(): Promise<PoolClient> {
  if (!usdaPool) {
    throw new Error('USDA database pool not initialized. Call initializeDatabase() first.');
  }
  return usdaPool.connect();
}

/**
 * Execute a query and return results
 */
export async function query<T extends QueryResultRow = QueryResultRow>(
  text: string,
  params?: unknown[]
): Promise<{ rows: T[]; rowCount: number }> {
  if (!pool) {
    throw new Error('Database pool not initialized. Call initializeDatabase() first.');
  }
  const result = await pool.query<T>(text, params);
  return {
    rows: result.rows,
    rowCount: result.rowCount ?? 0,
  };
}

/** Execute a query against the shared USDA reference database. */
export async function usdaQuery<T extends QueryResultRow = QueryResultRow>(
  text: string,
  params?: unknown[]
): Promise<{ rows: T[]; rowCount: number }> {
  if (!usdaPool) {
    throw new Error('USDA database pool not initialized. Call initializeDatabase() first.');
  }
  const result = await usdaPool.query<T>(text, params);
  return {
    rows: result.rows,
    rowCount: result.rowCount ?? 0,
  };
}

/**
 * Run `fn` inside a BEGIN/COMMIT transaction.
 * Rolls back if `fn` throws. The client is passed in so callers can execute
 * multiple statements atomically.
 */
export async function withTransaction<T>(
  fn: (client: PoolClient) => Promise<T>
): Promise<T> {
  if (!pool) {
    throw new Error('Database pool not initialized. Call initializeDatabase() first.');
  }
  const client = await pool.connect();
  try {
    await client.query('BEGIN');
    const result = await fn(client);
    await client.query('COMMIT');
    return result;
  } catch (err) {
    try {
      await client.query('ROLLBACK');
    } catch (rollbackErr) {
      // Log rollback failure but preserve the original error.
      console.error(
        'Rollback failed after transaction error:',
        safeErrorMetadata(rollbackErr, 'database_rollback_failed')
      );
    }
    throw err;
  } finally {
    client.release();
  }
}

/**
 * Close the database connection pool
 */
export async function closeDatabase(): Promise<void> {
  const applicationPool = pool;
  const referencePool = usdaPool;
  pool = null;
  usdaPool = null;

  if (referencePool && referencePool !== applicationPool) await referencePool.end();
  if (applicationPool) await applicationPool.end();
}

/**
 * Check if database connection is healthy
 */
export async function healthCheck(): Promise<boolean> {
  try {
    if (!pool) {
      return false;
    }
    await pool.query('SELECT 1');
    return true;
  } catch {
    return false;
  }
}

export interface ReadinessStatus {
  database: boolean;
  usdaDataset: boolean;
}

/**
 * Readiness is stricter than liveness: the process must be able to query
 * PostgreSQL and the active USDA snapshot must have completed materialization.
 */
export async function readinessCheck(): Promise<ReadinessStatus> {
  if (!pool) return { database: false, usdaDataset: false };

  try {
    await pool.query('SELECT 1');
  } catch {
    return { database: false, usdaDataset: false };
  }

  if (!usdaPool) return { database: true, usdaDataset: false };

  try {
    const result = await usdaPool.query<{ usda_ready: boolean }>(
      `SELECT EXISTS (
         SELECT 1
           FROM usda_dataset_version
          WHERE is_active = TRUE
            AND is_materialized = TRUE
       ) AS usda_ready`
    );
    return {
      database: true,
      usdaDataset: result.rows[0]?.usda_ready === true,
    };
  } catch {
    return { database: true, usdaDataset: false };
  }
}
