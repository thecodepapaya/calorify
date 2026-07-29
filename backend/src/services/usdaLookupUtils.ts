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

const QUALIFIER_WORDS = new Set([
  // Only strip presentation/size terms. Preparation and composition terms such as
  // cooked, raw, dried, fried, whole, salted, and sweet materially affect nutrition.
  'fresh', 'chopped', 'minced', 'sliced', 'crushed', 'large', 'small', 'medium',
  'organic', 'natural', 'pure', 'extra',
]);

const TRAILING_ROLE_WORDS = new Set(['meat']);

export function stripQualifiers(term: string): string {
  const tokens = normalizeUsdaTerm(term).split(' ').filter(Boolean);
  if (tokens.length <= 1) return tokens.join(' ');
  while (tokens.length > 1 && QUALIFIER_WORDS.has(tokens[0])) tokens.shift();
  while (tokens.length > 1 && QUALIFIER_WORDS.has(tokens[tokens.length - 1])) tokens.pop();
  while (tokens.length > 1 && TRAILING_ROLE_WORDS.has(tokens[tokens.length - 1])) tokens.pop();
  return tokens.join(' ');
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
