import { query } from './database.js';
import { normalizeUsdaTerm, stripQualifiers } from './usdaLookupUtils.js';

export interface UsdaFoodRow {
  fdc_id: string;
  description: string;
  data_type: string | null;
  normalized_name: string;
  kcal_per_100g: number;
  protein_per_100g: number;
  carbs_per_100g: number;
  fat_per_100g: number;
  fiber_per_100g: number;
}

export interface UsdaMatch {
  row: UsdaFoodRow | null;
  matchType: 'exact' | 'alias' | 'fuzzy' | 'unmatched';
  score: number;
}

const TRGM_THRESHOLD = 0.45;

const ALIASES: Record<string, string> = {
  // --- All aliases commented out; prompt drives correct canonical_hint directly ---
  // Indian flatbreads → correct USDA term 'whole wheat flour' (not 'wheat flour whole')
  // roti: 'whole wheat flour',
  // chapati: 'whole wheat flour',
  // phulka: 'whole wheat flour',
  // atta: 'whole wheat flour',
  // naan: 'naan',
  // maida: 'wheat flour',
  // Reverse aliases for LLM-generated wrong terms
  // 'wheat flour whole': 'whole wheat flour',
  // 'oil vegetable': 'vegetable oil',
  // aloo: 'potato boiled',
  // potato: 'potato boiled',
  // bhindi: 'okra cooked',
  // okra: 'okra cooked',
  // baingan: 'eggplant cooked',
  // eggplant: 'eggplant cooked',
  // palak: 'spinach cooked',
  // spinach: 'spinach cooked',
  // gobhi: 'cauliflower cooked',
  // cauliflower: 'cauliflower cooked',
  // gajar: 'carrot raw',
  // carrot: 'carrot raw',
  // matar: 'green peas cooked',
  // peas: 'green peas cooked',
  // tamatar: 'tomato raw',
  // tomato: 'tomato raw',
  // pyaaz: 'onion raw',
  // onion: 'onion raw',
  // dahi: 'yogurt plain',
  // curd: 'yogurt plain',
  // yogurt: 'yogurt plain',
  // chawal: 'rice white cooked',
  // rice: 'rice white cooked',
  // 'white rice': 'rice white cooked',
  // 'brown rice': 'rice brown cooked',
  // dal: 'lentils cooked',
  // 'toor dal': 'lentils cooked',
  // 'arhar dal': 'lentils cooked',
  // 'moong dal': 'mung beans cooked',
  // moong: 'mung beans cooked',
  // 'chana dal': 'chickpeas cooked',
  // 'masoor dal': 'lentils red cooked',
  // masoor: 'lentils red cooked',
  // 'red lentils': 'lentils red cooked',
  // rajma: 'kidney beans cooked',
  // 'kidney beans': 'kidney beans cooked',
  // chole: 'chickpeas cooked',
  // chickpeas: 'chickpeas cooked',
  // makhan: 'butter',
  // tel: 'vegetable oil',
  // 'cooking oil': 'vegetable oil',
  // 'vegetable oil': 'vegetable oil',
  // 'olive oil': 'oil olive',
  // 'coconut oil': 'oil coconut',
  // 'mustard oil': 'oil mustard',
  // namak: 'salt',
  // cheeni: 'sugar',
  // sugar: 'sugar',
  // gur: 'jaggery',
  // shahad: 'honey',
  // paneer: 'paneer',
  // ghee: 'ghee',
  // chicken: 'chicken breast cooked',
  // 'chicken breast': 'chicken breast cooked',
  // 'chicken thigh': 'chicken thigh cooked',
  // egg: 'egg whole cooked',
  // eggs: 'egg whole cooked',
  // salmon: 'salmon cooked',
  // lamb: 'lamb cooked',
  // shrimp: 'shrimp cooked',
  // tofu: 'tofu firm',
  // oats: 'oats rolled dry',
  // pasta: 'pasta cooked',
  // avocado: 'avocado',
  // banana: 'banana',
  // apple: 'apple',
  // mango: 'mango',
  // garlic: 'garlic',
  // ginger: 'ginger',
  // adrak: 'ginger',
  // lahsun: 'garlic',
  // haldi: 'turmeric powder',
  // turmeric: 'turmeric powder',
  // jeera: 'cumin seeds',
  // cumin: 'cumin seeds',
  // cabbage: 'cabbage cooked',
  // 'patta gobhi': 'cabbage cooked',
  // broccoli: 'broccoli cooked',
  // almond: 'almond',
  // almonds: 'almond',
  // badam: 'almond',
  // 'peanut butter': 'peanut butter',
  // bread: 'bread white',
  // 'white bread': 'bread white',
  // 'bread slice': 'bread white',
  // 'whole wheat bread': 'bread whole wheat',
  // milk: 'milk whole',
  // 'whole milk': 'milk whole',
  // 'skim milk': 'milk skim',
  // cheese: 'cheddar cheese',
  // cheddar: 'cheddar cheese',
  // cream: 'heavy cream',
  // coconut: 'coconut fresh',
  // 'coconut milk': 'coconut milk',
  // Peppers
  // 'bell pepper': 'peppers',
  // 'red bell pepper': 'peppers',
  // 'green bell pepper': 'peppers',
  // 'sweet pepper': 'peppers',
  // Chili / spice
  // 'chilli flakes': 'crushed red pepper',
  // 'chili flakes': 'crushed red pepper',
  // 'red pepper flakes': 'crushed red pepper',
  // Proteins
  // 'fish cake': 'fish cakes',
  // 'black pudding': 'blood sausage',
  // anchovy: 'anchovies',
  // 'anchovy fish paste': 'anchovies',
  // Noodles
  // noodles: 'noodles cooked',
  // 'yellow noodles': 'egg noodles',
  // Corn / grains
  // maize: 'corn',
  // 'corn, maize': 'corn',
  // 'cornmeal bread': 'cornmeal',
  // grits: 'corn grits',
  // Korean / global sauces
  // 'red chili paste': 'gochujang',
  // hogao: 'sofrito',
  // 'hogao (colombian sauce)': 'sofrito',
  // Green onion / scallion
  // 'green onion': 'onion raw',
  // 'spring onion': 'onion raw',
  // scallion: 'onion raw',
  // scallions: 'onion raw',
  // Labneh / strained yogurt
  // labneh: 'yogurt plain',
  // 'strained yogurt': 'yogurt plain',
  // Stew-form dish names → primary ingredient
  // 'red lentil stew': 'red lentils',
  // Lamb forms
  // 'lamb meat': 'lamb cooked',
  // Compound beverage catch
  // 'tea or coffee': 'tea',
};

export async function findUsdaExact(normalizedName: string): Promise<UsdaFoodRow | null> {
  const result = await query<UsdaFoodRow>(
    `SELECT fdc_id, description, data_type, normalized_name, kcal_per_100g, protein_per_100g, carbs_per_100g, fat_per_100g, fiber_per_100g
       FROM usda_foods
      WHERE normalized_name = $1
      LIMIT 1`,
    [normalizedName]
  );
  return result.rows[0] ?? null;
}

interface TrgmCandidate extends UsdaFoodRow {
  sim: number;
}

export async function findUsdaCandidates(term: string, limit = 5): Promise<TrgmCandidate[]> {
  const t = normalizeUsdaTerm(term);
  if (!t) return [];
  const result = await query<TrgmCandidate>(
    `SELECT fdc_id, description, data_type, normalized_name, kcal_per_100g, protein_per_100g, carbs_per_100g, fat_per_100g, fiber_per_100g,
            GREATEST(similarity(normalized_name, $1), similarity(description, $1)) AS sim
       FROM usda_foods
      WHERE normalized_name % $1 OR description % $1
      ORDER BY sim DESC
      LIMIT $2`,
    [t, limit]
  );
  return result.rows;
}

async function findBestTrgm(term: string): Promise<{ row: UsdaFoodRow; score: number } | null> {
  const candidates = await findUsdaCandidates(term, 1);
  const top = candidates[0];
  if (!top) return null;
  return { row: top, score: Number(top.sim) };
}

export async function canonicalizeWithUsda(hint: string): Promise<UsdaMatch> {
  const normalizedHint = normalizeUsdaTerm(hint);
  const alias = ALIASES[normalizedHint];

  if (alias) {
    const aliasNorm = normalizeUsdaTerm(alias);
    const aliasExact = await findUsdaExact(aliasNorm);
    if (aliasExact) return { row: aliasExact, matchType: 'alias', score: 1 };
    const aliasTrgm = await findBestTrgm(aliasNorm);
    if (aliasTrgm && aliasTrgm.score >= TRGM_THRESHOLD) {
      return { row: aliasTrgm.row, matchType: 'alias', score: aliasTrgm.score };
    }
  }

  const exact = await findUsdaExact(normalizedHint);
  if (exact) return { row: exact, matchType: 'exact', score: 1 };

  const stripped = stripQualifiers(normalizedHint);
  if (stripped && stripped !== normalizedHint) {
    const strippedExact = await findUsdaExact(stripped);
    if (strippedExact) return { row: strippedExact, matchType: 'exact', score: 1 };
  }

  const trgmTerm = stripped || normalizedHint;
  const trgm = await findBestTrgm(trgmTerm);
  if (trgm && trgm.score >= TRGM_THRESHOLD) {
    return { row: trgm.row, matchType: 'fuzzy', score: trgm.score };
  }
  return { row: null, matchType: 'unmatched', score: 0 };
}

