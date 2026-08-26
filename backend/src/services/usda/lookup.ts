import { usdaQuery } from '../infrastructure/database.js';
import { assessUsdaNutritionQuality, normalizeUsdaTerm, stripQualifiers } from './lookupUtils.js';

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
  matchType: 'exact' | 'fuzzy' | 'unmatched';
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

async function canonicalizeUncached(hint: string): Promise<UsdaMatch> {
  const normalizedHint = normalizeUsdaTerm(hint);

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

export async function canonicalizeUsdaProposal(
  canonicalName: string,
  aliases: string[],
  preparationStates: string[]
): Promise<UsdaMatch> {
  const terms = [canonicalName, ...aliases]
    .map((value) => normalizeUsdaTerm(value))
    .filter((value, index, values) => value !== '' && values.indexOf(value) === index);
  const candidates = await Promise.all(terms.map(async (term, termIndex) => {
    const [exact, fuzzy] = await Promise.all([
      findUsdaExact(term),
      findUsdaCandidates(term),
    ]);
    const rows = [exact, ...fuzzy]
      .filter((row): row is UsdaFoodRow => row != null)
      .filter((row, index, values) =>
        values.findIndex((candidate) => candidate.fdc_id === row.fdc_id) === index
      );
    const ranked = bestCandidate([term, ...preparationStates].join(' '), rows);
    const matchType = ranked && normalizeUsdaTerm(ranked.row.normalized_name) === term
      ? 'exact' as const
      : 'fuzzy' as const;
    return {
      termIndex,
      match: ranked
        ? { row: ranked.row, matchType, score: ranked.score, confidenceMargin: ranked.confidenceMargin }
        : { row: null, matchType: 'unmatched' as const, score: 0, confidenceMargin: 0 },
    };
  }));
  return candidates
    .filter((candidate) => candidate.match.row !== null)
    .sort((left, right) =>
      right.match.score - left.match.score || left.termIndex - right.termIndex
    )[0]?.match ?? { row: null, matchType: 'unmatched', score: 0, confidenceMargin: 0 };
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
