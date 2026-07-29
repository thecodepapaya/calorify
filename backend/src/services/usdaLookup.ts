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
  roti: 'wheat flour whole',
  chapati: 'wheat flour whole',
  phulka: 'wheat flour whole',
  atta: 'wheat flour whole',
  naan: 'wheat flour refined',
  maida: 'wheat flour refined',
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
  dal: 'lentils mature seeds cooked boiled without salt',
  'toor dal': 'lentils mature seeds cooked boiled without salt',
  'arhar dal': 'lentils mature seeds cooked boiled without salt',
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
  tel: 'oil vegetable',
  'cooking oil': 'oil vegetable',
  'vegetable oil': 'oil vegetable',
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
  if (bNorm.includes(aNorm)) return 0.9;
  const aWords = new Set(aNorm.split(' '));
  const bWords = new Set(bNorm.split(' '));
  let overlap = 0;
  for (const word of aWords) {
    if (bWords.has(word)) overlap++;
  }
  if (aWords.size === 0 || bWords.size === 0) return 0;
  const queryCoverage = overlap / aWords.size;
  const candidatePrecision = overlap / bWords.size;
  return queryCoverage * 0.8 + candidatePrecision * 0.2;
}

function scoreCandidate(term: string, candidate: UsdaFoodRow): number {
  const normalizedTerm = normalizeUsdaTerm(term);
  const candidateText = normalizeUsdaTerm(`${candidate.normalized_name} ${candidate.description}`);
  let score = Math.max(
    fuzzyScore(normalizedTerm, candidate.normalized_name),
    fuzzyScore(normalizedTerm, candidate.description)
  );

  const cookedRequested = /\b(?:cooked|boiled|steamed)\b/.test(normalizedTerm);
  const cookedCandidate = /\b(?:cooked|boiled|steamed)\b/.test(candidateText);
  const rawOrDryCandidate = /\b(?:raw|dry|dried|uncooked)\b/.test(candidateText);
  if (cookedRequested) {
    if (cookedCandidate) score += 0.15;
    else score -= 0.2;
    if (rawOrDryCandidate) score -= 0.35;
  }

  return Math.max(0, Math.min(1, score));
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
      const score = scoreCandidate(aliasNorm, candidate);
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
    const score = scoreCandidate(normalizedHint, candidate);
    if (score > bestScore) {
      best = candidate;
      bestScore = score;
    }
  }
  if (best && bestScore >= MATCH_THRESHOLD) return { row: best, matchType: 'fuzzy', score: bestScore };
  return { row: null, matchType: 'unmatched', score: 0 };
}
