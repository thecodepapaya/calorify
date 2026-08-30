import assert from 'node:assert/strict';
import { readFile } from 'node:fs/promises';
import test from 'node:test';

const migrationUrl = new URL(
  '../../../migrations/usda/20260831_usda_foods_english_fts.sql',
  import.meta.url,
);

test('USDA FTS migration creates a concurrent English GIN index', async () => {
  const sql = await readFile(migrationUrl, 'utf8');

  assert.match(sql, /CREATE INDEX CONCURRENTLY IF NOT EXISTS usda_foods_english_fts_idx/i);
  assert.match(sql, /USING GIN/i);
  assert.match(sql, /to_tsvector\('english', normalized_name \|\| ' ' \|\| description\)/i);
});
