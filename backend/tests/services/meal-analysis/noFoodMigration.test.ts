import assert from 'node:assert/strict';
import { readFile } from 'node:fs/promises';
import test from 'node:test';

const migration = new URL('../../../migrations/z20260825_meal_analysis_no_food_stage.sql', import.meta.url);

test('no-food migration backfills null stages and makes the marker required', async () => {
  const sql = await readFile(migration, 'utf8');
  assert.match(sql, /result_data ->> 'result_kind' = 'NO_FOOD'/);
  assert.match(sql, /ELSE 'PENDING_DECOMPOSITION'/);
  assert.match(sql, /ALTER COLUMN stage SET DEFAULT 'PENDING_DECOMPOSITION'/);
  assert.match(sql, /ALTER COLUMN stage SET NOT NULL/);
  assert.match(sql, /'NO_FOOD_DETECTED'/);
});
