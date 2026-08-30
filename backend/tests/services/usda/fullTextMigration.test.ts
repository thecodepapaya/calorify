import assert from 'node:assert/strict';
import { readFile } from 'node:fs/promises';
import test from 'node:test';

const migrationUrl = new URL(
  '../../../migrations/usda/20260831_usda_foods_english_fts.sql',
  import.meta.url,
);
const fallbackMigrationUrl = new URL(
  '../../../migrations/usda/20260831_usda_resolver_fallback_foods.sql',
  import.meta.url,
);

test('USDA FTS migration creates a concurrent English GIN index', async () => {
  const sql = await readFile(migrationUrl, 'utf8');

  assert.match(sql, /CREATE INDEX CONCURRENTLY IF NOT EXISTS usda_foods_english_fts_idx/i);
  assert.match(sql, /USING GIN/i);
  assert.match(sql, /to_tsvector\('english', normalized_name \|\| ' ' \|\| description\)/i);
});

test('USDA fallback migration seeds generic spices outside refreshable USDA foods', async () => {
  const sql = await readFile(fallbackMigrationUrl, 'utf8');

  assert.match(sql, /CREATE TABLE IF NOT EXISTS usda_resolver_fallback_foods/i);
  assert.match(sql, /INSERT INTO usda_resolver_fallback_foods/i);
  assert.match(sql, /'Spices, unspecified \(curry-powder profile\)'/i);
  assert.match(sql, /'local_fallback'/i);
  assert.match(sql, /ON CONFLICT \(fdc_id\) DO UPDATE/i);
});
