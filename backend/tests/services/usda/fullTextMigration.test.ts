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
const zeroMacroMigrationUrl = new URL(
  '../../../migrations/usda/20260908_usda_resolver_fallback_spices_zero_macro.sql',
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

test('USDA fallback migration replaces the spices profile with zero macros', async () => {
  const sql = await readFile(zeroMacroMigrationUrl, 'utf8');

  assert.match(sql, /UPDATE usda_resolver_fallback_foods/i);
  assert.match(sql, /'Spices, nfs'/i);
  assert.match(sql, /kcal_per_100g = 0/i);
  assert.match(sql, /protein_per_100g = 0/i);
  assert.match(sql, /carbs_per_100g = 0/i);
  assert.match(sql, /fat_per_100g = 0/i);
  assert.match(sql, /fiber_per_100g = 0/i);
  assert.match(sql, /WHERE fdc_id = -1000001/i);
});
