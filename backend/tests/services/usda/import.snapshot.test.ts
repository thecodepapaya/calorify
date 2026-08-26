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
  v3_nutrient_presence_materialized: boolean;
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
          v3_nutrient_presence_materialized: true,
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

async function createUsdaFixture(includeExplicitZeroCarbs = true): Promise<string> {
  const dir = await mkdtemp(join(tmpdir(), 'calorify-usda-import-'));
  await Promise.all([
    writeFile(
      join(dir, 'food.csv'),
      'fdc_id,description,data_type\n100,First food,foundation_food\n200,Second food,sr_legacy_food\n'
    ),
    writeFile(
      join(dir, 'nutrient.csv'),
      'id,name,unit_name\n1008,Energy,kcal\n1003,Protein,g\n1005,"Carbohydrate, by difference",g\n'
    ),
    writeFile(
      join(dir, 'food_nutrient.csv'),
      `fdc_id,nutrient_id,amount\n100,1008,100\n100,1003,5\n${includeExplicitZeroCarbs ? '100,1005,0\n' : ''}200,1008,200\n200,1003,10\n`
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
    assert.ok(sql[activateIndex]?.includes('v3_nutrient_presence_materialized'));

    const foodInsert = statements[foodInsertIndex]!;
    assert.ok(foodInsert.sql.includes('kcal_present'));
    assert.deepEqual(
      foodInsert.params?.slice(4, 14),
      [100, 5, 0, 0, 0, true, true, true, false, false],
      'an explicit zero remains numeric zero with presence=true'
    );
    assert.deepEqual(
      foodInsert.params?.slice(20, 30),
      [200, 10, 0, 0, 0, true, true, false, false, false],
      'an absent nutrient remains legacy numeric zero with presence=false'
    );
  } finally {
    await rm(dataDir, { recursive: true, force: true });
  }
});

test('USDA checksum distinguishes an explicit zero from an absent nutrient', async () => {
  statements.length = 0;
  versionState = undefined;
  lockTail = Promise.resolve();
  getUsdaClient.mock.resetCalls();
  const presentDir = await createUsdaFixture(true);
  const absentDir = await createUsdaFixture(false);

  try {
    const present = await runUsdaImport({ datasetVersion: 'presence-check-present', dataDir: presentDir });
    const absent = await runUsdaImport({ datasetVersion: 'presence-check-absent', dataDir: absentDir });
    assert.notEqual(present.checksum, absent.checksum);
  } finally {
    await Promise.all([
      rm(presentDir, { recursive: true, force: true }),
      rm(absentDir, { recursive: true, force: true }),
    ]);
  }
});

test('USDA importer does not skip a legacy snapshot without V3 presence metadata', async () => {
  statements.length = 0;
  versionState = undefined;
  lockTail = Promise.resolve();
  getUsdaClient.mock.resetCalls();
  const dataDir = await createUsdaFixture();

  try {
    const first = await runUsdaImport({ datasetVersion: 'presence-upgrade', dataDir });
    versionState = {
      checksum: first.checksum,
      is_active: true,
      is_materialized: true,
      v3_nutrient_presence_materialized: false,
    };
    statements.length = 0;

    const upgraded = await runUsdaImport({ datasetVersion: 'presence-upgrade', dataDir });
    assert.equal(upgraded.imported, true);
    assert.equal(
      statements.filter((statement) => statement.sql === 'DELETE FROM usda_foods').length,
      1
    );
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
