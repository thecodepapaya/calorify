export interface UsdaMacroRow {
  kcal_per_100g: number;
  protein_per_100g: number;
  carbs_per_100g: number;
  fat_per_100g: number;
  fiber_per_100g: number;
}

export type UsdaQualityAssessment = {
  score: number;
  flags: string[];
};

/** Import/read-time nutrition integrity checks, independent of food names. */
export function assessUsdaNutritionQuality(row: UsdaMacroRow): UsdaQualityAssessment {
  const values = [
    row.kcal_per_100g,
    row.protein_per_100g,
    row.carbs_per_100g,
    row.fat_per_100g,
    row.fiber_per_100g,
  ];
  if (values.some((value) => !Number.isFinite(value) || value < 0)) {
    return { score: 0, flags: ['invalid_value'] };
  }

  const flags: string[] = [];
  let score = 1;
  if (row.kcal_per_100g <= 0) {
    flags.push('zero_energy');
    score -= 0.8;
  }
  const macroMass = row.protein_per_100g + row.carbs_per_100g + row.fat_per_100g;
  if (macroMass > 105) {
    flags.push('impossible_macro_mass');
    score -= 0.45;
  }
  if (row.fiber_per_100g > row.carbs_per_100g + 2) {
    flags.push('fiber_exceeds_carbs');
    score -= 0.3;
  }
  const atwaterEnergy =
    4 * row.protein_per_100g + 4 * row.carbs_per_100g + 9 * row.fat_per_100g;
  if (atwaterEnergy > 10) {
    const ratio = row.kcal_per_100g / atwaterEnergy;
    if (ratio < 0.55 || ratio > 1.65) {
      flags.push('energy_macro_mismatch');
      score -= 0.4;
    }
  } else if (row.kcal_per_100g > 50) {
    flags.push('energy_without_macros');
    score -= 0.25;
  }
  return { score: Math.max(0, Math.min(1, score)), flags };
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
