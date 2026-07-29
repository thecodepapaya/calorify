import { createHash } from 'node:crypto';
import { createReadStream } from 'node:fs';
import { join } from 'node:path';
import { parse } from 'csv-parse';
import { getClient, query } from './database.js';
import { assessUsdaNutritionQuality } from './usdaLookupUtils.js';
import { clearUsdaLookupCache } from './usdaLookup.js';

interface FoodRow {
  fdc_id: string;
  description: string;
  data_type: string;
}

interface NutrientRow {
  id: string;
  name: string;
  unit_name: string;
}

type MacroColumn = keyof MacroBundle;

interface FoodNutrientRow {
  fdc_id: string;
  nutrient_id: string;
  amount: string;
}

interface MacroBundle {
  kcal_per_100g: number;
  protein_per_100g: number;
  carbs_per_100g: number;
  fat_per_100g: number;
  fiber_per_100g: number;
}

export interface UsdaImportOptions {
  datasetVersion: string;
  sourceReleaseDate?: string;
  importSource?: string;
  dataDir?: string;
  makeActive?: boolean;
}

const DEFAULT_USDA_DIR = join(process.cwd(), 'data', 'usda');

function normalize(name: string): string {
  return name.toLowerCase().replace(/[^a-z0-9\s]/g, '').replace(/\s+/g, ' ').trim();
}

async function parseCsv<T>(path: string): Promise<T[]> {
  return new Promise((resolve, reject) => {
    const records: T[] = [];
    createReadStream(path)
      .pipe(
        parse({
          columns: true,
          relax_column_count: true,
          skip_empty_lines: true,
          trim: true,
        })
      )
      .on('data', (row: T) => records.push(row))
      .on('error', (err: Error) => reject(err))
      .on('end', () => resolve(records));
  });
}

export function macroColumnForNutrient(row: NutrientRow): MacroColumn | undefined {
  const unit = row.unit_name.trim().toLowerCase();
  if (row.name === 'Energy') return unit === 'kcal' ? 'kcal_per_100g' : undefined;
  if (row.name === 'Protein') return 'protein_per_100g';
  if (row.name === 'Total lipid (fat)') return 'fat_per_100g';
  if (row.name === 'Carbohydrate, by difference') return 'carbs_per_100g';
  if (row.name === 'Fiber, total dietary') return 'fiber_per_100g';
  return undefined;
}

async function loadNutrientIds(nutrientCsv: string): Promise<Record<string, string>> {
  const rows = await parseCsv<NutrientRow>(nutrientCsv);
  const map: Record<string, string> = {};
  for (const row of rows) {
    const key = macroColumnForNutrient(row);
    if (!key) continue;
    map[row.id] = key;
  }
  return map;
}

async function loadFoods(foodCsv: string): Promise<Map<string, FoodRow>> {
  const rows = await parseCsv<FoodRow>(foodCsv);
  const map = new Map<string, FoodRow>();
  for (const row of rows) {
    if (!row.fdc_id || !row.description) continue;
    map.set(row.fdc_id, row);
  }
  return map;
}

async function loadFoodNutrients(
  foodNutrientCsv: string,
  nutrientMap: Record<string, string>
): Promise<Map<string, MacroBundle>> {
  const macros = new Map<string, MacroBundle>();
  await new Promise<void>((resolve, reject) => {
    createReadStream(foodNutrientCsv)
      .pipe(
        parse({
          columns: true,
          relax_column_count: true,
          skip_empty_lines: true,
          trim: true,
        })
      )
      .on('data', (row: FoodNutrientRow) => {
        const target = nutrientMap[row.nutrient_id];
        if (!target) return;
        const value = Number.parseFloat(row.amount);
        if (Number.isNaN(value)) return;
        const existing = macros.get(row.fdc_id) ?? {
          kcal_per_100g: 0,
          protein_per_100g: 0,
          carbs_per_100g: 0,
          fat_per_100g: 0,
          fiber_per_100g: 0,
        };
        existing[target as keyof MacroBundle] = value;
        macros.set(row.fdc_id, existing);
      })
      .on('error', (err: Error) => reject(err))
      .on('end', () => resolve());
  });
  return macros;
}

async function calculateChecksum(foods: Map<string, FoodRow>, macros: Map<string, MacroBundle>): Promise<string> {
  const hash = createHash('sha256');
  const keys = Array.from(foods.keys()).sort();
  for (const key of keys) {
    const food = foods.get(key)!;
    const macro = macros.get(key) ?? {
      kcal_per_100g: 0,
      protein_per_100g: 0,
      carbs_per_100g: 0,
      fat_per_100g: 0,
      fiber_per_100g: 0,
    };
    hash.update(
      `${food.fdc_id}|${food.description}|${food.data_type ?? ''}|${macro.kcal_per_100g}|${macro.protein_per_100g}|${macro.carbs_per_100g}|${macro.fat_per_100g}|${macro.fiber_per_100g}\n`
    );
  }
  return hash.digest('hex');
}

async function upsertFoods(
  foods: Map<string, FoodRow>,
  macros: Map<string, MacroBundle>,
  execute: (text: string, params?: unknown[]) => Promise<unknown>
): Promise<number> {
  const batchSize = 500;
  const entries = Array.from(foods.entries());

  for (let i = 0; i < entries.length; i += batchSize) {
    const slice = entries.slice(i, i + batchSize);
    const values: unknown[] = [];
    const placeholders: string[] = [];

    slice.forEach(([fdcId, food], idx) => {
      const macro = macros.get(fdcId) ?? {
        kcal_per_100g: 0,
        protein_per_100g: 0,
        carbs_per_100g: 0,
        fat_per_100g: 0,
        fiber_per_100g: 0,
      };
      const quality = assessUsdaNutritionQuality(macro);
      const base = idx * 11;
      placeholders.push(
        `($${base + 1}, $${base + 2}, $${base + 3}, $${base + 4}, $${base + 5}, $${base + 6}, $${base + 7}, $${base + 8}, $${base + 9}, $${base + 10}, $${base + 11})`
      );
      values.push(
        fdcId,
        food.description,
        food.data_type || null,
        normalize(food.description),
        macro.kcal_per_100g,
        macro.protein_per_100g,
        macro.carbs_per_100g,
        macro.fat_per_100g,
        macro.fiber_per_100g,
        quality.score,
        quality.flags
      );
    });

    await execute(
      `INSERT INTO usda_foods (
        fdc_id,
        description,
        data_type,
        normalized_name,
        kcal_per_100g,
        protein_per_100g,
        carbs_per_100g,
        fat_per_100g,
        fiber_per_100g,
        quality_score,
        quality_flags
      ) VALUES ${placeholders.join(',')}
      ON CONFLICT (fdc_id) DO UPDATE SET
        description = EXCLUDED.description,
        data_type = EXCLUDED.data_type,
        normalized_name = EXCLUDED.normalized_name,
        kcal_per_100g = EXCLUDED.kcal_per_100g,
        protein_per_100g = EXCLUDED.protein_per_100g,
        carbs_per_100g = EXCLUDED.carbs_per_100g,
        fat_per_100g = EXCLUDED.fat_per_100g,
        fiber_per_100g = EXCLUDED.fiber_per_100g,
        quality_score = EXCLUDED.quality_score,
        quality_flags = EXCLUDED.quality_flags,
        updated_at = CURRENT_TIMESTAMP`,
      values
    );
  }

  return entries.length;
}

export async function runUsdaImport(options: UsdaImportOptions): Promise<{
  imported: boolean;
  rowCount: number;
  checksum: string;
  skippedReason?: string;
}> {
  const usdaDir = options.dataDir ?? DEFAULT_USDA_DIR;
  const importSource = options.importSource ?? 'local_csv';
  const foodCsv = join(usdaDir, 'food.csv');
  const nutrientCsv = join(usdaDir, 'nutrient.csv');
  const foodNutrientCsv = join(usdaDir, 'food_nutrient.csv');

  const nutrientMap = await loadNutrientIds(nutrientCsv);
  const foods = await loadFoods(foodCsv);
  const macros = await loadFoodNutrients(foodNutrientCsv, nutrientMap);
  const checksum = await calculateChecksum(foods, macros);

  const existing = await query<{ dataset_version: string; checksum: string }>(
    `SELECT dataset_version, checksum
       FROM usda_dataset_version
      WHERE dataset_version = $1
      LIMIT 1`,
    [options.datasetVersion]
  );

  if (existing.rowCount > 0 && existing.rows[0].checksum === checksum) {
    if (options.makeActive ?? true) {
      await query('UPDATE usda_dataset_version SET is_active = FALSE WHERE is_active = TRUE');
      await query('UPDATE usda_dataset_version SET is_active = TRUE WHERE dataset_version = $1', [
        options.datasetVersion,
      ]);
    }
    return { imported: false, rowCount: foods.size, checksum, skippedReason: 'Dataset version already imported' };
  }

  const client = await getClient();
  try {
    await client.query('BEGIN');
    const rowCount = await upsertFoods(foods, macros, (text, params) => client.query(text, params));
    await client.query(
      `INSERT INTO usda_dataset_version (
        dataset_version,
        source_release_date,
        checksum,
        row_count,
        import_source,
        imported_at,
        is_active
      ) VALUES ($1, $2, $3, $4, $5, CURRENT_TIMESTAMP, $6)
      ON CONFLICT (dataset_version) DO UPDATE SET
        source_release_date = EXCLUDED.source_release_date,
        checksum = EXCLUDED.checksum,
        row_count = EXCLUDED.row_count,
        import_source = EXCLUDED.import_source,
        imported_at = CURRENT_TIMESTAMP,
        is_active = EXCLUDED.is_active`,
      [
        options.datasetVersion,
        options.sourceReleaseDate ?? null,
        checksum,
        rowCount,
        importSource,
        options.makeActive ?? true,
      ]
    );
    if (options.makeActive ?? true) {
      await client.query('UPDATE usda_dataset_version SET is_active = FALSE WHERE dataset_version <> $1', [
        options.datasetVersion,
      ]);
    }
    await client.query('COMMIT');
    clearUsdaLookupCache();
    return { imported: true, rowCount, checksum };
  } catch (error) {
    await client.query('ROLLBACK');
    throw error;
  } finally {
    client.release();
  }
}
