import assert from 'node:assert/strict';
import { readFile } from 'node:fs/promises';
import test from 'node:test';

const initialStageMigration = new URL(
  '../../../migrations/z20260821d_meal_analysis_stage.sql',
  import.meta.url
);
const decompositionStageMigration = new URL(
  '../../../migrations/z20260821h_meal_analysis_decomposition_stage.sql',
  import.meta.url
);

test('initial and upgrade stage constraints permit durable decomposition dispatch', async () => {
  const [initialSql, upgradeSql] = await Promise.all([
    readFile(initialStageMigration, 'utf8'),
    readFile(decompositionStageMigration, 'utf8'),
  ]);

  for (const sql of [initialSql, upgradeSql]) {
    assert.match(sql, /'PENDING_DECOMPOSITION'/);
    assert.match(sql, /'DECOMPOSING'/);
  }
  assert.match(
    upgradeSql,
    /DROP CONSTRAINT IF EXISTS meal_analysis_session_stage_check[\s\S]*ADD CONSTRAINT meal_analysis_session_stage_check/
  );
});
