import { query } from './database.js';
import { normalizeUsdaTerm } from './usdaLookupUtils.js';

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

const MATCH_THRESHOLD = 0.4;

const ALIASES: Record<string, string> = {
  // Indian flatbreads → correct USDA term 'whole wheat flour' (not 'wheat flour whole')
  roti: 'whole wheat flour',
  chapati: 'whole wheat flour',
  phulka: 'whole wheat flour',
  atta: 'whole wheat flour',
  naan: 'naan',
  maida: 'wheat flour',
  // Reverse aliases for LLM-generated wrong terms (prompt used to say "wheat flour whole" / "oil vegetable")
  'wheat flour whole': 'whole wheat flour',
  'oil vegetable': 'vegetable oil',
  aloo: 'potato boiled',
  potato: 'potato boiled',
  bhindi: 'okra cooked',
  okra: 'okra cooked',
  baingan: 'eggplant cooked',
  eggplant: 'eggplant cooked',
  palak: 'spinach cooked',
  spinach: 'spinach cooked',
  gobhi: 'cauliflower cooked',
  cauliflower: 'cauliflower cooked',
  gajar: 'carrot raw',
  carrot: 'carrot raw',
  matar: 'green peas cooked',
  peas: 'green peas cooked',
  tamatar: 'tomato raw',
  tomato: 'tomato raw',
  pyaaz: 'onion raw',
  onion: 'onion raw',
  dahi: 'yogurt plain',
  curd: 'yogurt plain',
  yogurt: 'yogurt plain',
  chawal: 'rice white cooked',
  rice: 'rice white cooked',
  'white rice': 'rice white cooked',
  'brown rice': 'rice brown cooked',
  dal: 'lentils cooked',
  'toor dal': 'lentils cooked',
  'arhar dal': 'lentils cooked',
  'moong dal': 'mung beans cooked',
  moong: 'mung beans cooked',
  'chana dal': 'chickpeas cooked',
  'masoor dal': 'lentils red cooked',
  masoor: 'lentils red cooked',
  'red lentils': 'lentils red cooked',
  rajma: 'kidney beans cooked',
  'kidney beans': 'kidney beans cooked',
  chole: 'chickpeas cooked',
  chickpeas: 'chickpeas cooked',
  makhan: 'butter',
  tel: 'vegetable oil',
  'cooking oil': 'vegetable oil',
  'vegetable oil': 'vegetable oil',
  'olive oil': 'oil olive',
  'coconut oil': 'oil coconut',
  'mustard oil': 'oil mustard',
  namak: 'salt',
  cheeni: 'sugar',
  sugar: 'sugar',
  gur: 'jaggery',
  shahad: 'honey',
  paneer: 'paneer',
  ghee: 'ghee',
  chicken: 'chicken breast cooked',
  'chicken breast': 'chicken breast cooked',
  'chicken thigh': 'chicken thigh cooked',
  egg: 'egg whole cooked',
  eggs: 'egg whole cooked',
  salmon: 'salmon cooked',
  lamb: 'lamb cooked',
  shrimp: 'shrimp cooked',
  tofu: 'tofu firm',
  oats: 'oats rolled dry',
  pasta: 'pasta cooked',
  avocado: 'avocado',
  banana: 'banana',
  apple: 'apple',
  mango: 'mango',
  garlic: 'garlic',
  ginger: 'ginger',
  adrak: 'ginger',
  lahsun: 'garlic',
  haldi: 'turmeric powder',
  turmeric: 'turmeric powder',
  jeera: 'cumin seeds',
  cumin: 'cumin seeds',
  cabbage: 'cabbage cooked',
  'patta gobhi': 'cabbage cooked',
  broccoli: 'broccoli cooked',
  almond: 'almond',
  almonds: 'almond',
  badam: 'almond',
  'peanut butter': 'peanut butter',
  bread: 'bread white',
  'white bread': 'bread white',
  'whole wheat bread': 'bread whole wheat',
  milk: 'milk whole',
  'whole milk': 'milk whole',
  'skim milk': 'milk skim',
  cheese: 'cheddar cheese',
  cheddar: 'cheddar cheese',
  cream: 'heavy cream',
  coconut: 'coconut fresh',
  'coconut milk': 'coconut milk',
};

function fuzzyScore(a: string, b: string): number {
  const aNorm = normalizeUsdaTerm(a);
  const bNorm = normalizeUsdaTerm(b);
  if (aNorm === bNorm) return 1;
  if (bNorm.includes(aNorm) || aNorm.includes(bNorm)) return 0.9;
  const aWords = new Set(aNorm.split(' '));
  const bWords = new Set(bNorm.split(' '));
  let overlap = 0;
  for (const word of aWords) {
    if (bWords.has(word)) overlap++;
  }
  const union = new Set([...aWords, ...bWords]).size;
  return union > 0 ? overlap / union : 0;
}

function getTokenCandidates(value: string): string[] {
  const tokens = normalizeUsdaTerm(value).split(' ').filter(Boolean);
  tokens.sort((a, b) => b.length - a.length);
  return tokens.slice(0, 4);
}

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

export async function findUsdaCandidates(term: string): Promise<UsdaFoodRow[]> {
  const tokens = getTokenCandidates(term);
  if (tokens.length === 0) return [];
  const likeParams = tokens.map((token) => `%${token}%`);
  const conditions = tokens
    .map((_, index) => `(normalized_name ILIKE $${index + 1} OR description ILIKE $${index + 1})`)
    .join(' OR ');
  const result = await query<UsdaFoodRow>(
    `SELECT fdc_id, description, data_type, normalized_name, kcal_per_100g, protein_per_100g, carbs_per_100g, fat_per_100g, fiber_per_100g
       FROM usda_foods
      WHERE ${conditions}
      LIMIT 50`,
    likeParams
  );
  return result.rows;
}

export async function canonicalizeWithUsda(hint: string): Promise<UsdaMatch> {
  const normalizedHint = normalizeUsdaTerm(hint);
  const alias = ALIASES[normalizedHint];

  if (alias) {
    const aliasNorm = normalizeUsdaTerm(alias);
    const aliasExact = await findUsdaExact(aliasNorm);
    if (aliasExact) return { row: aliasExact, matchType: 'alias', score: 1 };

    const candidates = await findUsdaCandidates(aliasNorm);
    let best: UsdaFoodRow | null = null;
    let bestScore = 0;
    for (const candidate of candidates) {
      const score = Math.max(
        fuzzyScore(aliasNorm, candidate.normalized_name),
        fuzzyScore(aliasNorm, candidate.description)
      );
      if (score > bestScore) {
        best = candidate;
        bestScore = score;
      }
    }
    if (best && bestScore >= MATCH_THRESHOLD) return { row: best, matchType: 'alias', score: bestScore };
  }

  const exact = await findUsdaExact(normalizedHint);
  if (exact) return { row: exact, matchType: 'exact', score: 1 };

  const candidates = await findUsdaCandidates(normalizedHint);
  let best: UsdaFoodRow | null = null;
  let bestScore = 0;
  for (const candidate of candidates) {
    const score = Math.max(
      fuzzyScore(normalizedHint, candidate.normalized_name),
      fuzzyScore(normalizedHint, candidate.description)
    );
    if (score > bestScore) {
      best = candidate;
      bestScore = score;
    }
  }
  if (best && bestScore >= MATCH_THRESHOLD) return { row: best, matchType: 'fuzzy', score: bestScore };
  return { row: null, matchType: 'unmatched', score: 0 };
}

