import { Pool, PoolClient, QueryResultRow } from 'pg';
import config from '../config.js';

let pool: Pool | null = null;

/**
 * Initialize PostgreSQL connection pool
 */
export function initializeDatabase(): void {
  if (pool) {
    return;
  }

  if (!config.DATABASE_URL) {
    throw new Error('DATABASE_URL is not set in environment variables');
  }

  pool = new Pool({
    connectionString: config.DATABASE_URL,
    max: 20, // Maximum number of clients in the pool
    idleTimeoutMillis: 30000, // Close idle clients after 30 seconds
    connectionTimeoutMillis: 2000, // Return an error after 2 seconds if connection cannot be established
  });

  // Handle pool errors
  pool.on('error', (err: Error) => {
    console.error('Unexpected error on idle client', err);
  });
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

/**
 * Close the database connection pool
 */
export async function closeDatabase(): Promise<void> {
  if (pool) {
    await pool.end();
    pool = null;
  }
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
