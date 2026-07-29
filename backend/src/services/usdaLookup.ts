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

interface TrgmCandidate extends UsdaFoodRow {
  sim?: number;
}

const MATCH_THRESHOLD = 0.45;
const CANDIDATE_LIMIT = 20;

// Aliases remain intentionally focused on semantic translations and preparation state.
// pg_trgm handles harmless wording/order differences; aliases handle terms where a lexical
// match alone cannot know the correct food or whether its nutritional state is cooked/dry.
const ALIASES: Record<string, string> = {
  roti: 'whole wheat flour',
  chapati: 'whole wheat flour',
  phulka: 'whole wheat flour',
  atta: 'whole wheat flour',
  naan: 'naan',
  maida: 'wheat flour',
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
  tel: 'vegetable oil',
  'oil vegetable': 'vegetable oil',
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
  'lamb meat': 'lamb cooked',
  shrimp: 'shrimp cooked',
  tofu: 'tofu firm',
  oats: 'oats',
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
  'bread slice': 'bread white',
  'whole wheat bread': 'bread whole wheat',
  milk: 'milk whole',
  'whole milk': 'milk whole',
  'skim milk': 'milk skim',
  cheese: 'cheddar cheese',
  cheddar: 'cheddar cheese',
  cream: 'heavy cream',
  coconut: 'coconut fresh',
  'coconut milk': 'coconut milk',
  'bell pepper': 'peppers',
  'red bell pepper': 'peppers',
  'green bell pepper': 'peppers',
  'sweet pepper': 'peppers',
  'chilli flakes': 'crushed red pepper',
  'chili flakes': 'crushed red pepper',
  'red pepper flakes': 'crushed red pepper',
  'fish cake': 'fish cakes',
  'black pudding': 'blood sausage',
  anchovy: 'anchovies',
  'anchovy fish paste': 'anchovies',
  noodles: 'noodles cooked',
  'yellow noodles': 'egg noodles',
  maize: 'corn',
  'corn maize': 'corn',
  'cornmeal bread': 'cornmeal',
  grits: 'corn grits',
  'red chili paste': 'gochujang',
  hogao: 'sofrito',
  'hogao colombian sauce': 'sofrito',
  'green onion': 'onion raw',
  'spring onion': 'onion raw',
  scallion: 'onion raw',
  scallions: 'onion raw',
  labneh: 'yogurt plain',
  'strained yogurt': 'yogurt plain',
};

function resolveAlias(normalizedHint: string): string | undefined {
  const mentionsOats = /\b(?:oat|oats)\b/.test(normalizedHint);
  const explicitlyDry = /\b(?:dry|raw|uncooked|rolled)\b/.test(normalizedHint);
  const explicitlyPrepared = /\b(?:cooked|prepared|boiled|water)\b/.test(normalizedHint);
  if (mentionsOats && explicitlyDry && !explicitlyPrepared) return 'oats';
  return ALIASES[normalizedHint];
}

function fuzzyScore(a: string, b: string): number {
  const aNorm = normalizeUsdaTerm(a);
  const bNorm = normalizeUsdaTerm(b);
  if (aNorm === bNorm) return 1;
  if (bNorm.includes(aNorm)) return 0.9;
  const aWords = new Set(aNorm.split(' ').filter(Boolean));
  const bWords = new Set(bNorm.split(' ').filter(Boolean));
  if (aWords.size === 0 || bWords.size === 0) return 0;
  let overlap = 0;
  for (const word of aWords) if (bWords.has(word)) overlap += 1;
  return (overlap / aWords.size) * 0.8 + (overlap / bWords.size) * 0.2;
}

function scoreCandidate(term: string, candidate: TrgmCandidate): number {
  const normalizedTerm = normalizeUsdaTerm(term);
  const candidateText = normalizeUsdaTerm(`${candidate.normalized_name} ${candidate.description}`);
  let score = Math.max(
    Number(candidate.sim ?? 0),
    fuzzyScore(normalizedTerm, candidate.normalized_name),
    fuzzyScore(normalizedTerm, candidate.description)
  );
  const cookedRequested = /\b(?:cooked|boiled|steamed|prepared)\b/.test(normalizedTerm);
  const cookedCandidate = /\b(?:cooked|boiled|steamed|prepared|made with water)\b/.test(candidateText);
  const rawOrDryRequested = /\b(?:raw|dry|dried|uncooked)\b/.test(normalizedTerm);
  const rawOrDryCandidate = /\b(?:raw|dry|dried|uncooked)\b/.test(candidateText);
  if (cookedRequested) {
    if (cookedCandidate) score += 0.15;
    else score -= 0.2;
    if (rawOrDryCandidate) score -= 0.35;
  }
  if (rawOrDryRequested) {
    if (rawOrDryCandidate) score += 0.15;
    if (cookedCandidate) score -= 0.35;
  }
  return Math.max(0, Math.min(1, score));
}

function bestCandidate(term: string, candidates: TrgmCandidate[]): { row: UsdaFoodRow; score: number } | null {
  let best: UsdaFoodRow | null = null;
  let bestScore = 0;
  for (const candidate of candidates) {
    const score = scoreCandidate(term, candidate);
    if (score > bestScore) {
      best = candidate;
      bestScore = score;
    }
  }
  return best && bestScore >= MATCH_THRESHOLD ? { row: best, score: bestScore } : null;
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

export async function findUsdaCandidates(term: string, limit = CANDIDATE_LIMIT): Promise<TrgmCandidate[]> {
  const normalizedTerm = normalizeUsdaTerm(term);
  if (!normalizedTerm) return [];
  const result = await query<TrgmCandidate>(
    `SELECT fdc_id, description, data_type, normalized_name, kcal_per_100g, protein_per_100g, carbs_per_100g, fat_per_100g, fiber_per_100g,
            GREATEST(similarity(normalized_name, $1), similarity(description, $1)) AS sim
       FROM usda_foods
      WHERE normalized_name % $1 OR description % $1
      ORDER BY sim DESC
      LIMIT $2`,
    [normalizedTerm, limit]
  );
  return result.rows;
}

async function lookupTerm(term: string): Promise<{ row: UsdaFoodRow; score: number } | null> {
  const exact = await findUsdaExact(term);
  if (exact) return { row: exact, score: 1 };
  return bestCandidate(term, await findUsdaCandidates(term));
}

export async function canonicalizeWithUsda(hint: string): Promise<UsdaMatch> {
  const normalizedHint = normalizeUsdaTerm(hint);
  const alias = resolveAlias(normalizedHint);
  if (alias) {
    const match = await lookupTerm(normalizeUsdaTerm(alias));
    if (match) return { row: match.row, matchType: 'alias', score: match.score };
  }

  const exact = await findUsdaExact(normalizedHint);
  if (exact) return { row: exact, matchType: 'exact', score: 1 };

  const stripped = stripQualifiers(normalizedHint);
  if (stripped && stripped !== normalizedHint) {
    const strippedExact = await findUsdaExact(stripped);
    if (strippedExact) return { row: strippedExact, matchType: 'exact', score: 1 };
  }

  const candidates = await findUsdaCandidates(stripped || normalizedHint);
  // Score against the original hint so preparation-state bonuses/penalties survive
  // harmless qualifier stripping and can override a lexically closer wrong-state row.
  const best = bestCandidate(normalizedHint, candidates);
  if (best) return { row: best.row, matchType: 'fuzzy', score: best.score };
  return { row: null, matchType: 'unmatched', score: 0 };
}
