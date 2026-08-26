import { readFile, writeFile, mkdir } from 'node:fs/promises';
import { resolve, join } from 'node:path';

import type { CacheableNutritionRecord } from '../protos/calorify/http_api.js';
import { closeDatabase, initializeDatabase } from '../services/infrastructure/database.js';
import { resolveLocalNutritionLookups } from '../services/nutrition/localResolver.js';

const PACK_SCHEMA_VERSION = 1;
const CALCULATION_VERSION = 'local-macro-v1';

type SelectionEntry = {
  canonicalHint: string;
};

type Selection = {
  schemaVersion: number;
  packVersion: string;
  datasetVersion: string;
  coverageTarget: number;
  entries: SelectionEntry[];
};

function stableJson(value: unknown): string {
  return `${JSON.stringify(value, null, 2)}\n`;
}

function assertSelection(value: unknown): asserts value is Selection {
  if (value == null || typeof value !== 'object' || Array.isArray(value)) {
    throw new Error('Selection must be an object');
  }
  const selection = value as Partial<Selection>;
  if (
    selection.schemaVersion !== 1 ||
    !selection.packVersion ||
    !selection.datasetVersion ||
    typeof selection.coverageTarget !== 'number' ||
    selection.coverageTarget <= 0 ||
    selection.coverageTarget > 1 ||
    !Array.isArray(selection.entries) ||
    selection.entries.length === 0
  ) {
    throw new Error('Selection metadata is invalid');
  }
}

function packRecord(record: CacheableNutritionRecord) {
  if (!record.nutrientsPer100g) throw new Error(`${record.description} has no nutrients`);
  return {
    fdcId: record.fdcId,
    description: record.description,
    normalizedName: record.normalizedName,
    aliases: [],
    dataType: record.dataType,
    nutrientsPer100g: record.nutrientsPer100g,
    datasetVersion: record.datasetVersion,
  };
}

async function main(): Promise<void> {
  initializeDatabase();
  try {
  const selectionPath = resolve(
    process.argv[2] ?? 'data/local_nutrition/starter-pack-selection.json'
  );
  const outputDirectory = resolve(
    process.argv[3] ?? 'data/local_nutrition/build'
  );
  const selectionJson: unknown = JSON.parse(await readFile(selectionPath, 'utf8'));
  assertSelection(selectionJson);
  const selection = selectionJson;

  const response = await resolveLocalNutritionLookups(
    '00000000-0000-4000-8000-000000000001',
    selection.entries.map((entry, index) => ({
      rowId: `starter-${index + 1}`,
      canonicalHint: entry.canonicalHint,
      preparation: '',
    }))
  );
  if (response.unresolvedRowIds.length > 0) {
    throw new Error(`Unresolved starter-pack rows: ${response.unresolvedRowIds.join(', ')}`);
  }
  const records = response.records.map((record) => {
    if (record.datasetVersion !== selection.datasetVersion) {
      throw new Error(
        `Dataset mismatch for ${record.description}: expected ${selection.datasetVersion}, got ${record.datasetVersion}`
      );
    }
    return packRecord(record);
  }).sort((a, b) => a.fdcId.localeCompare(b.fdcId));

  const pack = {
    schemaVersion: PACK_SCHEMA_VERSION,
    packVersion: selection.packVersion,
    datasetVersion: selection.datasetVersion,
    calculationVersion: CALCULATION_VERSION,
    records,
  };
  const packBytes = Buffer.from(stableJson(pack), 'utf8');
  await mkdir(outputDirectory, { recursive: true });
  await writeFile(join(outputDirectory, 'pack.json'), packBytes);
  process.stdout.write(
    `${stableJson({ pack: 'pack.json', records: records.length, bytes: packBytes.length })}`
  );
  } finally {
    await closeDatabase();
  }
}

await main();
