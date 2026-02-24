import { createReadStream } from 'node:fs';
import { join } from 'node:path';
import { parse } from 'csv-parse';
import config from '../config.js';
import { initializeDatabase, query } from '../services/database.js';
import { runMigrations } from '../services/migrate.js';

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

const USDA_DIR = join(process.cwd(), 'data', 'usda');
const FOOD_CSV = join(USDA_DIR, 'food.csv');
const NUTRIENT_CSV = join(USDA_DIR, 'nutrient.csv');
const FOOD_NUTRIENT_CSV = join(USDA_DIR, 'food_nutrient.csv');

function normalize(name: string): string {
  return name
    .toLowerCase()
    .replace(/[^a-z0-9\s]/g, '')
    .replace(/\s+/g, ' ')
    .trim();
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
        }),
      )
      .on('data', (row: T) => {
        records.push(row);
      })
      .on('error', (err: Error) => reject(err))
      .on('end', () => resolve(records));
  });
}

async function loadNutrientIds(): Promise<Record<string, string>> {
  const rows = await parseCsv<NutrientRow>(NUTRIENT_CSV);
  const wanted = new Map<string, string>([
    ['Energy', 'kcal_per_100g'],
    ['Protein', 'protein_per_100g'],
    ['Total lipid (fat)', 'fat_per_100g'],
    ['Carbohydrate, by difference', 'carbs_per_100g'],
    ['Fiber, total dietary', 'fiber_per_100g'],
  ]);

  const map: Record<string, string> = {};
  for (const row of rows) {
    const key = wanted.get(row.name);
    if (!key) continue;
    if (row.unit_name && row.unit_name.toLowerCase() === 'kcal' && row.name !== 'Energy') {
      continue;
    }
    map[row.id] = key;
  }

  return map;
}

async function loadFoods(): Promise<Map<string, FoodRow>> {
  const rows = await parseCsv<FoodRow>(FOOD_CSV);
  const map = new Map<string, FoodRow>();
  for (const row of rows) {
    if (!row.fdc_id || !row.description) continue;
    map.set(row.fdc_id, row);
  }
  return map;
}

async function loadFoodNutrients(nutrientMap: Record<string, string>): Promise<Map<string, MacroBundle>> {
  const macros = new Map<string, MacroBundle>();

  await new Promise<void>((resolve, reject) => {
    createReadStream(FOOD_NUTRIENT_CSV)
      .pipe(
        parse({
          columns: true,
          relax_column_count: true,
          skip_empty_lines: true,
          trim: true,
        }),
      )
      .on('data', (row: FoodNutrientRow) => {
        const target = nutrientMap[row.nutrient_id];
        if (!target) return;
        const value = Number.parseFloat(row.amount);
        if (Number.isNaN(value)) return;
        const existing = macros.get(row.fdc_id) || {
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

async function insertFoods(
  foods: Map<string, FoodRow>,
  macros: Map<string, MacroBundle>,
): Promise<void> {
  const batchSize = 500;
  const entries = Array.from(foods.entries());

  for (let i = 0; i < entries.length; i += batchSize) {
    const slice = entries.slice(i, i + batchSize);
    const values: unknown[] = [];
    const placeholders: string[] = [];

    slice.forEach(([fdcId, food], idx) => {
      const macro = macros.get(fdcId) || {
        kcal_per_100g: 0,
        protein_per_100g: 0,
        carbs_per_100g: 0,
        fat_per_100g: 0,
        fiber_per_100g: 0,
      };
      const base = idx * 9;
      placeholders.push(
        `($${base + 1}, $${base + 2}, $${base + 3}, $${base + 4}, $${base + 5}, $${base + 6}, $${base + 7}, $${base + 8}, $${base + 9})`,
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
      );
    });

    await query(
      `INSERT INTO usda_foods (
        fdc_id,
        description,
        data_type,
        normalized_name,
        kcal_per_100g,
        protein_per_100g,
        carbs_per_100g,
        fat_per_100g,
        fiber_per_100g
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
        updated_at = CURRENT_TIMESTAMP`,
      values,
    );

    console.log(`Inserted ${Math.min(i + batchSize, entries.length)} / ${entries.length}`);
  }
}

async function main(): Promise<void> {
  if (!config.DATABASE_URL) {
    throw new Error('DATABASE_URL is not set');
  }

  initializeDatabase();
  await runMigrations();

  console.log('Loading nutrient map...');
  const nutrientMap = await loadNutrientIds();
  console.log(`Nutrients matched: ${Object.keys(nutrientMap).length}`);

  console.log('Loading foods...');
  const foods = await loadFoods();
  console.log(`Foods loaded: ${foods.size}`);

  console.log('Loading food nutrients (this may take a while)...');
  const macros = await loadFoodNutrients(nutrientMap);
  console.log(`Macro entries: ${macros.size}`);

  console.log('Inserting into database...');
  await insertFoods(foods, macros);
  console.log('Done.');
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
