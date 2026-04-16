export interface UsdaMacroRow {
  kcal_per_100g: number;
  protein_per_100g: number;
  carbs_per_100g: number;
  fat_per_100g: number;
  fiber_per_100g: number;
}

export function normalizeUsdaTerm(name: string): string {
  return name.toLowerCase().replace(/[^a-z0-9\s]/g, '').replace(/\s+/g, ' ').trim();
}

export function calcMacrosFromUsdaRow(row: UsdaMacroRow, grams: number): {
  calories: number;
  protein: number;
  carbs: number;
  fat: number;
  fiber: number;
} {
  const ratio = grams / 100;
  return {
    calories: Math.round(row.kcal_per_100g * ratio),
    protein: +(row.protein_per_100g * ratio).toFixed(1),
    carbs: +(row.carbs_per_100g * ratio).toFixed(1),
    fat: +(row.fat_per_100g * ratio).toFixed(1),
    fiber: +(row.fiber_per_100g * ratio).toFixed(1),
  };
}

