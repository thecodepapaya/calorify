import { usdaQuery } from './database.js';
import { assessUsdaNutritionQuality, normalizeUsdaTerm, stripQualifiers } from './usdaLookupUtils.js';

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
  dataset_version?: string;
}

export interface UsdaMatch {
  row: UsdaFoodRow | null;
  matchType: 'exact' | 'alias' | 'fuzzy' | 'unmatched';
  score: number;
  confidenceMargin: number;
}

interface TrgmCandidate extends UsdaFoodRow {
  sim?: number;
}

const MATCH_THRESHOLD = 0.45;
const CANDIDATE_LIMIT = 20;
const AMBIGUITY_MARGIN = 0.04;
// Deduplicate only concurrent lookups. A persistent process-local cache can
// outlive an atomic refresh performed by another replica and return rows from
// the previous release.
const inFlightLookups = new Map<string, Promise<UsdaMatch>>();

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
  tamatar: 'tomatoes red ripe raw year round average',
  tomato: 'tomatoes red ripe raw year round average',
  pyaaz: 'onions raw',
  onion: 'onions raw',
  cucumber: 'cucumber raw',
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
  chickpeas: 'chickpeas garbanzo beans bengal gram mature seeds cooked boiled without salt',
  'chickpeas cooked': 'chickpeas garbanzo beans bengal gram mature seeds cooked boiled without salt',
  'chickpeas cooked boiled without salt': 'chickpeas garbanzo beans bengal gram mature seeds cooked boiled without salt',
  'idli': 'idli',
  'steamed idli': 'idli',
  'sambar': 'sambar vegetable stew',
  'sambar cooked': 'sambar vegetable stew',
  dosa: 'dosa plain',
  'plain dosa': 'dosa plain',
  'masala dosa': 'dosa with filling',
  makhan: 'butter',
  tel: 'vegetable oil',
  'oil vegetable': 'vegetable oil',
  'cooking oil': 'vegetable oil',
  'vegetable oil': 'vegetable oil',
  'olive oil': 'oil olive salad or cooking',
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
  banana: 'bananas raw',
  bananas: 'bananas raw',
  apple: 'apple raw',
  apples: 'apple raw',
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
  'plain curd': 'yogurt plain',
  'curd plain': 'yogurt plain',
  'milk curd plain': 'yogurt plain',
};

function resolveAlias(normalizedHint: string): string | undefined {
  const mentionsOats = /\b(?:oat|oats)\b/.test(normalizedHint);
  const explicitlyDry = /\b(?:dry|raw|uncooked|rolled)\b/.test(normalizedHint);
  const explicitlyPrepared = /\b(?:cooked|prepared|boiled|water)\b/.test(normalizedHint);
  if (mentionsOats && explicitlyDry && !explicitlyPrepared) return 'oats';
  if (/\beggs?\b/.test(normalizedHint)) {
    if (/\bfried\b/.test(normalizedHint)) return 'egg whole cooked fried';
    return 'egg whole cooked ns as to cooking method';
  }
  return ALIASES[normalizedHint];
}

/**
 * A previous importer accepted both USDA kcal and kilojoule Energy rows. Repair
 * legacy reference rows at the read boundary when the stored value is clearly
 * ~4.184x the energy implied by their macronutrients.
 */
function normalizeEnergyUnit<T extends UsdaFoodRow>(row: T): T {
  if (!['sr_legacy_food', 'foundation_food'].includes(row.data_type ?? '')) return row;
  const macroEnergy = 4 * row.protein_per_100g + 4 * row.carbs_per_100g + 9 * row.fat_per_100g;
  if (macroEnergy <= 10) return row;
  const ratio = row.kcal_per_100g / macroEnergy;
  if (ratio < 3.5 || ratio > 4.8) return row;
  return { ...row, kcal_per_100g: row.kcal_per_100g / 4.184 };
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

const PREPARED_FORM_WORDS = new Set([
  'candy', 'cereal', 'dessert', 'dip', 'dressing', 'drink', 'flour', 'juice',
  'mix', 'pie', 'powder', 'sauce', 'snack', 'soup', 'spread', 'syrup',
]);

/**
 * A bounded quality adjustment derived from the row itself. This catches
 * entire classes of bad data (empty nutrients, impossible totals, energy that
 * disagrees with macros, and overly processed candidates) without knowing a
 * list of individual food names.
 */
function candidateQualityAdjustment(term: string, candidate: TrgmCandidate): number {
  let adjustment = 0;
  const source = candidate.data_type ?? '';
  if (['survey_fndds_food', 'sr_legacy_food', 'foundation_food'].includes(source)) adjustment += 0.04;
  else if (source === 'branded_food') adjustment -= 0.12;
  else adjustment -= 0.08;

  const nutritionQuality = assessUsdaNutritionQuality(candidate);
  adjustment -= (1 - nutritionQuality.score) * 0.45;
  if (nutritionQuality.score >= 0.95) adjustment += 0.03;

  const requestedTokens = identityTokens(term);
  const candidateTokens = identityTokens(`${candidate.normalized_name} ${candidate.description}`);
  for (const form of PREPARED_FORM_WORDS) {
    if (candidateTokens.has(form) && !requestedTokens.has(form)) {
      adjustment -= 0.3;
      break;
    }
  }
  return Math.max(-0.5, Math.min(0.08, adjustment));
}

// Preparation and database-description words are useful for choosing between
// two rows for the same food, but they must never establish food identity. For
// example, "steamed idli" and "steamed pork" share a preparation state while
// referring to entirely different foods.
const IDENTITY_STOP_WORDS = new Set([
  'cooked', 'boiled', 'steamed', 'prepared', 'fried', 'roasted', 'raw', 'dry',
  'dried', 'uncooked', 'with', 'without', 'salt', 'water', 'made', 'food',
  'ingredient', 'vegetable', 'fresh', 'chopped', 'minced', 'sliced', 'large',
  'small', 'medium', 'organic', 'natural', 'pure', 'extra',
]);

function identityTokens(value: string): Set<string> {
  return new Set(
    normalizeUsdaTerm(value)
      .split(' ')
      .filter((token) => token.length > 1 && !IDENTITY_STOP_WORDS.has(token))
  );
}

function sharesFoodIdentity(term: string, candidateText: string): boolean {
  const requested = identityTokens(term);
  const candidate = identityTokens(candidateText);
  if (requested.size === 0 || candidate.size === 0) return false;
  let overlap = 0;
  for (const token of requested) if (candidate.has(token)) overlap += 1;
  if (requested.size <= 2) return overlap === requested.size;
  return overlap / requested.size >= 0.5;
}

function scoreCandidate(term: string, candidate: TrgmCandidate): number {
  const normalizedTerm = normalizeUsdaTerm(term);
  const candidateText = normalizeUsdaTerm(`${candidate.normalized_name} ${candidate.description}`);
  if (!sharesFoodIdentity(normalizedTerm, candidateText)) return 0;
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
  score += candidateQualityAdjustment(normalizedTerm, candidate);
  return Math.max(0, Math.min(1, score));
}

function bestCandidate(
  term: string,
  candidates: TrgmCandidate[]
): { row: UsdaFoodRow; score: number; confidenceMargin: number } | null {
  let best: UsdaFoodRow | null = null;
  let bestScore = 0;
  let secondBestScore = 0;
  for (const candidate of candidates) {
    const score = scoreCandidate(term, candidate);
    if (score > bestScore) {
      secondBestScore = bestScore;
      best = candidate;
      bestScore = score;
    } else if (score > secondBestScore) {
      secondBestScore = score;
    }
  }
  const confidenceMargin = bestScore - secondBestScore;
  if (!best || bestScore < MATCH_THRESHOLD) return null;
  if (bestScore < 0.75 && confidenceMargin < AMBIGUITY_MARGIN) return null;
  return { row: best, score: bestScore, confidenceMargin };
}

export async function findUsdaExact(normalizedName: string): Promise<UsdaFoodRow | null> {
  const result = await usdaQuery<UsdaFoodRow>(
    `SELECT fdc_id, description, data_type, normalized_name, kcal_per_100g, protein_per_100g, carbs_per_100g, fat_per_100g, fiber_per_100g,
            (SELECT dataset_version FROM usda_dataset_version WHERE is_active = TRUE AND is_materialized = TRUE LIMIT 1) AS dataset_version
      FROM usda_foods
      WHERE EXISTS (
        SELECT 1
          FROM usda_dataset_version
         WHERE is_active = TRUE
           AND is_materialized = TRUE
      )
        AND normalized_name = $1
      ORDER BY
        CASE data_type
          WHEN 'survey_fndds_food' THEN 0
          WHEN 'sr_legacy_food' THEN 1
          WHEN 'foundation_food' THEN 2
          WHEN 'branded_food' THEN 3
          ELSE 4
        END,
        CASE WHEN kcal_per_100g > 0 THEN 0 ELSE 1 END,
        fdc_id
      LIMIT 1`,
    [normalizedName]
  );
  if (!result.rows[0]) return null;
  const row = normalizeEnergyUnit(result.rows[0]);
  return assessUsdaNutritionQuality(row).score >= 0.55 ? row : null;
}

export async function findUsdaCandidates(term: string, limit = CANDIDATE_LIMIT): Promise<TrgmCandidate[]> {
  const normalizedTerm = normalizeUsdaTerm(term);
  if (!normalizedTerm) return [];
  const result = await usdaQuery<TrgmCandidate>(
    `SELECT fdc_id, description, data_type, normalized_name, kcal_per_100g, protein_per_100g, carbs_per_100g, fat_per_100g, fiber_per_100g,
            (SELECT dataset_version FROM usda_dataset_version WHERE is_active = TRUE AND is_materialized = TRUE LIMIT 1) AS dataset_version,
            GREATEST(similarity(normalized_name, $1), similarity(description, $1)) AS sim
       FROM usda_foods
      WHERE EXISTS (
        SELECT 1
          FROM usda_dataset_version
         WHERE is_active = TRUE
           AND is_materialized = TRUE
      )
        AND (normalized_name % $1 OR description % $1)
      ORDER BY sim DESC
      LIMIT $2`,
    [normalizedTerm, limit]
  );
  return result.rows.map(normalizeEnergyUnit);
}

async function lookupTerm(
  term: string
): Promise<{ row: UsdaFoodRow; score: number; confidenceMargin: number } | null> {
  const exact = await findUsdaExact(term);
  if (exact) return { row: exact, score: 1, confidenceMargin: 1 };
  return bestCandidate(term, await findUsdaCandidates(term));
}

async function canonicalizeUncached(hint: string): Promise<UsdaMatch> {
  const normalizedHint = normalizeUsdaTerm(hint);
  const alias = resolveAlias(normalizedHint);
  if (alias) {
    const match = await lookupTerm(normalizeUsdaTerm(alias));
    if (match) return { row: match.row, matchType: 'alias', score: match.score, confidenceMargin: match.confidenceMargin };
  }

  const exact = await findUsdaExact(normalizedHint);
  if (exact) return { row: exact, matchType: 'exact', score: 1, confidenceMargin: 1 };

  const stripped = stripQualifiers(normalizedHint);
  if (stripped && stripped !== normalizedHint) {
    const strippedExact = await findUsdaExact(stripped);
    if (strippedExact) return { row: strippedExact, matchType: 'exact', score: 1, confidenceMargin: 1 };
  }

  const candidates = await findUsdaCandidates(stripped || normalizedHint);
  // Score against the original hint so preparation-state bonuses/penalties survive
  // harmless qualifier stripping and can override a lexically closer wrong-state row.
  const best = bestCandidate(normalizedHint, candidates);
  if (best) return { row: best.row, matchType: 'fuzzy', score: best.score, confidenceMargin: best.confidenceMargin };
  return { row: null, matchType: 'unmatched', score: 0, confidenceMargin: 0 };
}

export function clearUsdaLookupCache(): void {
  inFlightLookups.clear();
}

export async function canonicalizeWithUsda(hint: string): Promise<UsdaMatch> {
  const key = normalizeUsdaTerm(hint);
  const inFlight = inFlightLookups.get(key);
  if (inFlight) return inFlight;

  const value = canonicalizeUncached(hint).finally(() => {
    if (inFlightLookups.get(key) === value) inFlightLookups.delete(key);
  });
  inFlightLookups.set(key, value);
  return value;
}
