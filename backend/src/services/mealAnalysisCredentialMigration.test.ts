import assert from 'node:assert/strict';
import { readFile } from 'node:fs/promises';
import test from 'node:test';

const migrationUrl = new URL(
  '../../migrations/z20260821g_block_meal_analysis_image_urls.sql',
  import.meta.url
);

test('legacy image URL scrub remains enforced after application rollback', async () => {
  const sql = await readFile(migrationUrl, 'utf8');
  const trigger = sql.indexOf(
    'CREATE TRIGGER scrub_meal_analysis_request_payload_image_urls'
  );
  const scrub = sql.indexOf('UPDATE meal_analysis_session');

  assert.match(
    sql,
    /NEW\.request_payload\s*:=\s*NEW\.request_payload\s*-\s*'imageUrl'\s*-\s*'image_url'/
  );
  assert.match(
    sql,
    /BEFORE INSERT OR UPDATE OF request_payload, source[\s\S]*ON meal_analysis_session/
  );
  assert.ok(trigger >= 0 && trigger < scrub, 'trigger must protect writes before the scrub runs');
  assert.match(
    sql,
    /CHECK\s*\(\s*NOT \(request_payload \? 'imageUrl'\)\s*AND NOT \(request_payload \? 'image_url'\)/
  );
});
