import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';
import {
  mkdir,
  mkdtemp,
  readFile,
  readdir,
  rm,
  writeFile,
} from 'node:fs/promises';
import { tmpdir } from 'node:os';
import { join } from 'node:path';

const mockQuery = mock.fn(async () => ({ rows: [{ count: '0' }] }));

await mock.module('./database.js', {
  namedExports: {
    usdaQuery: mockQuery,
    getUsdaClient: mock.fn(async () => {
      throw new Error('unexpected real USDA import');
    }),
  },
});

const { bootstrapUsdaIfNeeded } = await import('./usdaBootstrap.js');

async function writeExtractedCsvs(extractDir: string, marker: string): Promise<void> {
  const nested = join(extractDir, 'FoodData_Central');
  await mkdir(nested, { recursive: true });
  await Promise.all([
    writeFile(join(nested, 'food.csv'), `food-${marker}`),
    writeFile(join(nested, 'nutrient.csv'), `nutrient-${marker}`),
    writeFile(join(nested, 'food_nutrient.csv'), `food-nutrient-${marker}`),
  ]);
}

test('concurrent bootstrap runs import from distinct, internally consistent workspaces', async () => {
  const root = await mkdtemp(join(tmpdir(), 'calorify-usda-bootstrap-test-'));
  const dataDir = join(root, 'shared-usda');
  const localZipPath = join(root, 'fixture.zip');
  await writeFile(localZipPath, 'test fixture');
  let extraction = 0;
  const observed: Array<{ dataDir: string; values: string[] }> = [];
  let releaseBoth!: () => void;
  const bothImportsStarted = new Promise<void>((resolve) => {
    releaseBoth = resolve;
  });

  try {
    const run = () => bootstrapUsdaIfNeeded(
      {
        zipUrl: 'https://example.invalid/usda.zip',
        localZipPath,
        datasetVersion: 'test-release',
        dataDir,
      },
      {
        extractArchive: async (_zipPath, extractDir) => {
          extraction += 1;
          await writeExtractedCsvs(extractDir, String(extraction));
        },
        importDataset: async (options) => {
          const importDir = options.dataDir!;
          const values = await Promise.all([
            readFile(join(importDir, 'food.csv'), 'utf8'),
            readFile(join(importDir, 'nutrient.csv'), 'utf8'),
            readFile(join(importDir, 'food_nutrient.csv'), 'utf8'),
          ]);
          observed.push({ dataDir: importDir, values });
          if (observed.length === 2) releaseBoth();
          await bothImportsStarted;
          return { imported: true, rowCount: 1, checksum: 'test-checksum' };
        },
      }
    );

    await Promise.all([run(), run()]);
    assert.equal(observed.length, 2);
    assert.notEqual(observed[0]!.dataDir, observed[1]!.dataDir);
    for (const { dataDir: importDir, values } of observed) {
      assert.ok(importDir.startsWith(join(dataDir, '.bootstrap-')));
      const markers = values.map((value) => value.split('-').at(-1));
      assert.equal(new Set(markers).size, 1, 'one import must see one extracted release');
    }
    assert.deepEqual(await readdir(dataDir), []);
  } finally {
    await rm(root, { recursive: true, force: true });
  }
});

test('failed bootstrap removes its private workspace without logging archive paths', async (t) => {
  const root = await mkdtemp(join(tmpdir(), 'calorify-usda-bootstrap-failure-'));
  const dataDir = join(root, 'shared-usda');
  const localZipPath = join(root, 'fixture.zip');
  await writeFile(localZipPath, 'test fixture');
  const logs: unknown[][] = [];
  t.mock.method(console, 'log', (...values: unknown[]) => logs.push(values));

  try {
    await assert.rejects(
      bootstrapUsdaIfNeeded(
        {
          zipUrl: 'https://example.invalid/usda.zip',
          localZipPath,
          datasetVersion: 'test-release',
          dataDir,
        },
        {
          extractArchive: async (_zipPath, extractDir) => {
            await writeExtractedCsvs(extractDir, 'failed');
          },
          importDataset: async () => {
            throw new Error('injected import failure');
          },
        }
      ),
      /injected import failure/
    );
    assert.deepEqual(await readdir(dataDir), []);
    assert.equal(await readFile(localZipPath, 'utf8'), 'test fixture');
    assert.doesNotMatch(JSON.stringify(logs), new RegExp(root));
  } finally {
    await rm(root, { recursive: true, force: true });
  }
});
