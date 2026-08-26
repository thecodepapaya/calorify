import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';
import { mkdtemp, rm, writeFile } from 'node:fs/promises';
import { tmpdir } from 'node:os';
import { join } from 'node:path';

type VersionState = {
  checksum: string;
  is_active: boolean;
  is_materialized: boolean;
};

const statements: Array<{ sql: string; params?: unknown[] }> = [];
let versionState: VersionState | undefined;
let lockTail = Promise.resolve();

function createClient() {
  let releaseLock: (() => void) | undefined;
  return {
    query: async (sql: string, params?: unknown[]) => {
      statements.push({ sql, params });
      if (sql.includes('pg_advisory_xact_lock')) {
        const previous = lockTail;
        lockTail = new Promise<void>((resolve) => {
          releaseLock = resolve;
        });
        await previous;
        return { rows: [], rowCount: 1 };
      }
      if (sql.includes('SELECT checksum, is_active, is_materialized')) {
        return {
          rows: versionState ? [versionState] : [],
          rowCount: versionState ? 1 : 0,
        };
      }
      if (sql.includes('INSERT INTO usda_dataset_version')) {
        versionState = {
          checksum: String(params?.[2]),
          is_active: true,
          is_materialized: true,
        };
      }
      if (sql === 'COMMIT' || sql === 'ROLLBACK') {
        releaseLock?.();
        releaseLock = undefined;
      }
      return { rows: [], rowCount: 1 };
    },
    release: mock.fn(() => {}),
  };
}

const getUsdaClient = mock.fn(async () => createClient());

await mock.module('../../../src/services/infrastructure/database.js', {
  namedExports: {
    getUsdaClient,
    usdaQuery: mock.fn(async () => ({ rows: [], rowCount: 0 })),
  },
});

const { runUsdaImport } = await import('../../../src/services/usda/import.js');

async function createUsdaFixture(): Promise<string> {
  const dir = await mkdtemp(join(tmpdir(), 'calorify-usda-import-'));
  await Promise.all([
    writeFile(
      join(dir, 'food.csv'),
      'fdc_id,description,data_type\n100,First food,foundation_food\n200,Second food,sr_legacy_food\n'
    ),
    writeFile(
      join(dir, 'nutrient.csv'),
      'id,name,unit_name\n1008,Energy,kcal\n1003,Protein,g\n'
    ),
    writeFile(
      join(dir, 'food_nutrient.csv'),
      'fdc_id,nutrient_id,amount\n100,1008,100\n100,1003,5\n200,1008,200\n200,1003,10\n'
    ),
  ]);
  return dir;
}

test('USDA refresh serializes concurrent imports and atomically replaces stale rows', async () => {
  statements.length = 0;
  versionState = undefined;
  lockTail = Promise.resolve();
  getUsdaClient.mock.resetCalls();
  const dataDir = await createUsdaFixture();

  try {
    const [first, second] = await Promise.all([
      runUsdaImport({ datasetVersion: 'release-1', dataDir }),
      runUsdaImport({ datasetVersion: 'release-1', dataDir }),
    ]);

    assert.deepEqual(
      [first.imported, second.imported].sort(),
      [false, true],
      'only one concurrent caller should materialize an identical release'
    );

    const sql = statements.map((statement) => statement.sql);
    assert.equal(sql.filter((statement) => statement === 'DELETE FROM usda_foods').length, 1);
    assert.equal(sql.filter((statement) => statement.includes('pg_advisory_xact_lock')).length, 2);

    const deleteIndex = sql.indexOf('DELETE FROM usda_foods');
    const foodInsertIndex = sql.findIndex((statement) => statement.includes('INSERT INTO usda_foods'));
    const deactivateIndex = sql.findIndex((statement) =>
      statement.includes('UPDATE usda_dataset_version')
    );
    const activateIndex = sql.findIndex((statement) =>
      statement.includes('INSERT INTO usda_dataset_version')
    );
    assert.ok(deleteIndex >= 0 && deleteIndex < foodInsertIndex);
    assert.ok(deactivateIndex >= 0 && deactivateIndex < activateIndex);
    assert.ok(sql[activateIndex]?.includes('is_materialized'));
  } finally {
    await rm(dataDir, { recursive: true, force: true });
  }
});

test('USDA importer rejects a non-active import that could desynchronize the snapshot', async () => {
  await assert.rejects(
    runUsdaImport({ datasetVersion: 'inactive', dataDir: '/unused', makeActive: false }),
    /must replace the active snapshot/
  );
});
