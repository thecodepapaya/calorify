import { createHash } from 'node:crypto';
import { createReadStream } from 'node:fs';
import { join } from 'node:path';
import { parse } from 'csv-parse';
import { getUsdaClient } from '../infrastructure/database.js';
import { assessUsdaNutritionQuality } from './lookupUtils.js';
import { clearUsdaLookupCache } from './lookup.js';

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

interface MacroValues {
  kcal_per_100g: number;
  protein_per_100g: number;
  carbs_per_100g: number;
  fat_per_100g: number;
  fiber_per_100g: number;
}

interface MacroPresence {
  kcal_present: boolean;
  protein_present: boolean;
  carbs_present: boolean;
  fat_present: boolean;
  fiber_present: boolean;
}

interface MacroBundle extends MacroValues, MacroPresence {}

type MacroColumn = keyof MacroValues;
type PresenceColumn = keyof MacroPresence;

const PRESENCE_COLUMN_BY_MACRO: Record<MacroColumn, PresenceColumn> = {
  kcal_per_100g: 'kcal_present',
  protein_per_100g: 'protein_present',
  carbs_per_100g: 'carbs_present',
  fat_per_100g: 'fat_present',
  fiber_per_100g: 'fiber_present',
};

interface FoodNutrientRow {
  fdc_id: string;
  nutrient_id: string;
  amount: string;
}

function emptyMacroBundle(): MacroBundle {
  return {
    kcal_per_100g: 0,
    protein_per_100g: 0,
    carbs_per_100g: 0,
    fat_per_100g: 0,
    fiber_per_100g: 0,
    kcal_present: false,
    protein_present: false,
    carbs_present: false,
    fat_present: false,
    fiber_present: false,
  };
}

export interface UsdaImportOptions {
  datasetVersion: string;
  sourceReleaseDate?: string;
  importSource?: string;
  dataDir?: string;
  makeActive?: boolean;
}

const DEFAULT_USDA_DIR = join(process.cwd(), 'data', 'usda');
const USDA_IMPORT_LOCK_SQL =
  "SELECT pg_advisory_xact_lock(hashtext('calorify:usda-active-snapshot'))";

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

async function loadNutrientIds(nutrientCsv: string): Promise<Record<string, MacroColumn>> {
  const rows = await parseCsv<NutrientRow>(nutrientCsv);
  const map: Record<string, MacroColumn> = {};
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
  nutrientMap: Record<string, MacroColumn>
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
        const existing = macros.get(row.fdc_id) ?? emptyMacroBundle();
        existing[target] = value;
        existing[PRESENCE_COLUMN_BY_MACRO[target]] = true;
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
    const macro = macros.get(key) ?? emptyMacroBundle();
    hash.update(
      `${food.fdc_id}|${food.description}|${food.data_type ?? ''}|${macro.kcal_per_100g}|${Number(macro.kcal_present)}|${macro.protein_per_100g}|${Number(macro.protein_present)}|${macro.carbs_per_100g}|${Number(macro.carbs_present)}|${macro.fat_per_100g}|${Number(macro.fat_present)}|${macro.fiber_per_100g}|${Number(macro.fiber_present)}\n`
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
      const macro = macros.get(fdcId) ?? emptyMacroBundle();
      const quality = assessUsdaNutritionQuality(macro);
      const base = idx * 16;
      placeholders.push(
        `($${base + 1}, $${base + 2}, $${base + 3}, $${base + 4}, $${base + 5}, $${base + 6}, $${base + 7}, $${base + 8}, $${base + 9}, $${base + 10}, $${base + 11}, $${base + 12}, $${base + 13}, $${base + 14}, $${base + 15}, $${base + 16})`
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
        macro.kcal_present,
        macro.protein_present,
        macro.carbs_present,
        macro.fat_present,
        macro.fiber_present,
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
        kcal_present,
        protein_present,
        carbs_present,
        fat_present,
        fiber_present,
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
        kcal_present = EXCLUDED.kcal_present,
        protein_present = EXCLUDED.protein_present,
        carbs_present = EXCLUDED.carbs_present,
        fat_present = EXCLUDED.fat_present,
        fiber_present = EXCLUDED.fiber_present,
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
  const makeActive = options.makeActive ?? true;
  if (!makeActive) {
    throw new Error('USDA imports must replace the active snapshot');
  }

  const usdaDir = options.dataDir ?? DEFAULT_USDA_DIR;
  const importSource = options.importSource ?? 'local_csv';
  const foodCsv = join(usdaDir, 'food.csv');
  const nutrientCsv = join(usdaDir, 'nutrient.csv');
  const foodNutrientCsv = join(usdaDir, 'food_nutrient.csv');

  const nutrientMap = await loadNutrientIds(nutrientCsv);
  const foods = await loadFoods(foodCsv);
  const macros = await loadFoodNutrients(foodNutrientCsv, nutrientMap);
  const checksum = await calculateChecksum(foods, macros);

  const client = await getUsdaClient();
  try {
    await client.query('BEGIN');
    // Imports may be started by bootstrap, cron, and an operator script. A
    // transaction-scoped database lock serializes them across every process.
    await client.query(USDA_IMPORT_LOCK_SQL);

    const existing = await client.query<{
      checksum: string;
      is_active: boolean;
      is_materialized: boolean;
      v3_nutrient_presence_materialized: boolean;
    }>(
      `SELECT checksum, is_active, is_materialized,
              v3_nutrient_presence_materialized
         FROM usda_dataset_version
        WHERE dataset_version = $1
        LIMIT 1`,
      [options.datasetVersion]
    );

    if (
      existing.rows[0]?.checksum === checksum &&
      existing.rows[0].is_active &&
      existing.rows[0].is_materialized &&
      existing.rows[0].v3_nutrient_presence_materialized
    ) {
      await client.query('COMMIT');
      return {
        imported: false,
        rowCount: foods.size,
        checksum,
        skippedReason: 'Dataset version already imported',
      };
    }

    // usda_foods is the one materialized active snapshot. Replacing it inside
    // this transaction gives readers either the complete old release or the
    // complete new release and removes IDs absent from the new CSV.
    await client.query('DELETE FROM usda_foods');
    const rowCount = await upsertFoods(foods, macros, (text, params) => client.query(text, params));

    // Clear the previous active marker before inserting/updating the new one;
    // the partial unique index permits only one TRUE row at a time.
    await client.query(
      `UPDATE usda_dataset_version
          SET is_active = FALSE,
              is_materialized = FALSE,
              v3_nutrient_presence_materialized = FALSE
        WHERE is_active = TRUE
           OR is_materialized = TRUE
           OR v3_nutrient_presence_materialized = TRUE`
    );
    await client.query(
      `INSERT INTO usda_dataset_version (
        dataset_version,
        source_release_date,
        checksum,
        row_count,
        import_source,
        imported_at,
        is_active,
        is_materialized,
        v3_nutrient_presence_materialized
      ) VALUES ($1, $2, $3, $4, $5, CURRENT_TIMESTAMP, TRUE, TRUE, TRUE)
      ON CONFLICT (dataset_version) DO UPDATE SET
        source_release_date = EXCLUDED.source_release_date,
        checksum = EXCLUDED.checksum,
        row_count = EXCLUDED.row_count,
        import_source = EXCLUDED.import_source,
        imported_at = CURRENT_TIMESTAMP,
        is_active = TRUE,
        is_materialized = TRUE,
        v3_nutrient_presence_materialized = TRUE`,
      [
        options.datasetVersion,
        options.sourceReleaseDate ?? null,
        checksum,
        rowCount,
        importSource,
      ]
    );
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
