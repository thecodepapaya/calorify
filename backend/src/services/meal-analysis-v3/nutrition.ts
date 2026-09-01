import {
  getUsdaQueryLimiterSnapshot,
  isTransientUsdaQueryError,
  usdaQuery,
} from '../infrastructure/database.js';
import type { UsdaQueryLimiterSnapshot } from '../infrastructure/usdaQueryLimiter.js';
import config from '../../config.js';
import {
  preparationUmbrella,
  type IngredientLeaf,
  type MacroVector,
  type PreparationCode,
  type RecipeScenario,
  type ResolvedNutritionReference,
} from './domain.js';

const QUERY_CANDIDATE_LIMIT = 30;
const DIAGNOSTIC_CANDIDATE_LIMIT = 5;
const PROCESS_LOOKUP_CACHE_LIMIT = 256;

export type NutritionRejectionReason =
  | 'NO_ACTIVE_DATASET'
  | 'DATASET_NOT_MATERIALIZED'
  | 'DATASET_CHANGED_DURING_RESOLUTION'
  | 'NO_CANDIDATES'
  | 'AMBIGUOUS_RETRIEVAL_INTENT'
  | 'IDENTITY_MISMATCH'
  | 'PREPARATION_MISMATCH'
  | 'MISSING_REQUIRED_NUTRIENT'
  | 'INVALID_NUTRIENT_VALUES'
  | 'AMBIGUOUS_MATCH'
  | 'LOW_CONFIDENCE_MATCH'
  | 'LOWER_MATCH_TIER'
  | 'UNSUPPORTED_YIELD_ONLY';

export type IdentityMatchTier =
  | 'CANONICAL_EXACT'
  | 'CANONICAL_TOKEN_SET'
  | 'ALIAS_EXACT'
  | 'ALIAS_TOKEN_SET'
  | 'STEMMED_TOKEN_SET'
  | 'PRODUCT_QUERY_PHRASE';

export type PreparationMatchTier =
  | 'EXACT_CODE'
  | 'SAME_HEAT_UMBRELLA'
  | 'BASIS_ONLY'
  | 'UNSPECIFIED_COMPATIBLE';

export interface NutritionCandidateDiagnostic {
  sourceRecordId: string;
  description: string;
  dataType: string | null;
  macrosPer100g: MacroVector | null;
  similarity: number | null;
  fullTextRank: number | null;
  identityTier: IdentityMatchTier | null;
  preparationTier: PreparationMatchTier | null;
  missingNutrients: string[];
  rejectionReasons: NutritionRejectionReason[];
  selected: boolean;
}

export interface NutritionLeafResolution {
  scenarioId: string;
  leafId: string;
  reference: ResolvedNutritionReference | null;
  rejectionReasons: NutritionRejectionReason[];
  candidates: NutritionCandidateDiagnostic[];
}

export interface NutritionResolutionRun {
  datasetVersion: string | null;
  leaves: NutritionLeafResolution[];
}

export interface NutritionResolver {
  resolve(scenarios: readonly RecipeScenario[]): Promise<NutritionResolutionRun>;
}

export type NutritionDatabaseQuery = (
  text: string,
  params?: unknown[]
) => Promise<{ rows: Record<string, unknown>[] }>;

export interface LocalUsdaNutritionResolverOptions {
  query?: NutritionDatabaseQuery;
  candidateLimit?: number;
  fullTextEnabled?: boolean;
  retryDelayMs?: () => number;
  useProcessCache?: boolean;
}

export class NutritionResolutionInfrastructureError extends Error {
  constructor(
    override readonly cause: unknown,
    readonly uniqueLookupCount: number,
    readonly limiter: UsdaQueryLimiterSnapshot,
  ) {
    super('USDA nutrition resolution failed', { cause });
    this.name = 'NutritionResolutionInfrastructureError';
  }
}

interface ActiveDataset {
  datasetVersion: string | null;
  nutrientPresenceMaterialized: boolean;
  rejectionReasons: NutritionRejectionReason[];
}

interface CandidateRow {
  fdc_id: string;
  description: string;
  data_type: string | null;
  normalized_name: string;
  kcal_per_100g: number;
  protein_per_100g: number;
  carbs_per_100g: number;
  fat_per_100g: number;
  fiber_per_100g: number;
  kcal_present: boolean;
  protein_present: boolean;
  carbs_present: boolean;
  fat_present: boolean;
  fiber_present: boolean;
  dataset_version: string;
  identity_similarity: number;
  full_text_rank: number;
  stemmed_identity_match: boolean;
}

interface EvaluatedCandidate {
  row: CandidateRow;
  diagnostic: NutritionCandidateDiagnostic;
  identityRank: number;
  preparationRank: number;
  per100g: MacroVector | null;
  eligible: boolean;
}

interface IdentityMatch {
  tier: IdentityMatchTier;
  rank: number;
}

interface LookupOutcome {
  selected: CandidateRow | null;
  per100g: MacroVector | null;
  rejectionReasons: NutritionRejectionReason[];
  candidates: NutritionCandidateDiagnostic[];
}

const processLookupCache = new Map<string, Promise<LookupOutcome>>();

export function clearLocalUsdaNutritionCache(): void {
  processLookupCache.clear();
}

function processCachedLookup(
  key: string,
  create: () => Promise<LookupOutcome>,
): Promise<LookupOutcome> {
  const existing = processLookupCache.get(key);
  if (existing !== undefined) {
    processLookupCache.delete(key);
    processLookupCache.set(key, existing);
    return existing;
  }

  const created = create();
  processLookupCache.set(key, created);
  while (processLookupCache.size > PROCESS_LOOKUP_CACHE_LIMIT) {
    const oldest = processLookupCache.keys().next().value as string | undefined;
    if (oldest === undefined) break;
    processLookupCache.delete(oldest);
  }
  void created.catch(() => {
    if (processLookupCache.get(key) === created) processLookupCache.delete(key);
  });
  return created;
}

function wait(ms: number): Promise<void> {
  if (ms <= 0) return Promise.resolve();
  return new Promise((resolve) => setTimeout(resolve, ms));
}

async function resolveLookupWithRetry(
  create: () => Promise<LookupOutcome>,
  retryDelayMs: () => number,
): Promise<LookupOutcome> {
  try {
    return await create();
  } catch (error) {
    if (!isTransientUsdaQueryError(error)) throw error;
    await wait(retryDelayMs());
    return create();
  }
}

const PREPARATION_RANK: Record<PreparationMatchTier, number> = {
  EXACT_CODE: 0,
  SAME_HEAT_UMBRELLA: 1,
  BASIS_ONLY: 2,
  UNSPECIFIED_COMPATIBLE: 3,
};

const FUZZY_MATCH_THRESHOLD = 0.75;
const FUZZY_MATCH_MARGIN = 0.05;
const MACRO_EQUIVALENCE_TOLERANCE = 0.05;
const MACRO_COMPARISON_FLOOR = 0.1;

const PREPARATION_TERMS: Partial<Record<PreparationCode, readonly string[]>> = {
  RAW: ['raw', 'uncooked'],
  BOILED: ['boiled'],
  SIMMERED: ['simmered'],
  POACHED: ['poached'],
  STEAMED: ['steamed'],
  PRESSURE_COOKED: ['pressure cooked', 'pressure-cooked'],
  BAKED: ['baked'],
  ROASTED: ['roasted'],
  GRILLED: ['grilled'],
  TOASTED: ['toasted'],
  SAUTEED: ['sauteed', 'sautéed'],
  STIR_FRIED: ['stir fried', 'stir-fried'],
  SHALLOW_FRIED: ['shallow fried', 'shallow-fried'],
  DEEP_FRIED: ['deep fried', 'deep-fried'],
  FERMENTED: ['fermented'],
  PICKLED: ['pickled'],
  DRIED: ['dry', 'dried', 'dehydrated'],
  SMOKED: ['smoked'],
  BLENDED: ['blended'],
  JUICED: ['juice', 'juiced'],
  COOKED_UNKNOWN: ['cooked', 'prepared'],
};

const IDENTITY_STOP_WORDS = new Set([
  'raw', 'uncooked', 'cooked', 'prepared', 'boiled', 'simmered', 'poached',
  'steamed', 'pressure', 'baked', 'roasted', 'grilled', 'toasted', 'sauteed',
  'stir', 'shallow', 'deep', 'fried', 'fermented', 'pickled', 'dry', 'dried',
  'dehydrated', 'smoked', 'blended', 'juice', 'juiced', 'drained', 'without',
  'salt', 'added', 'food', 'foods', 'regular', 'prepared', 'cooking', 'salad',
]);

// Fuzzy fallback may bridge a generic identity to a more-qualified USDA name,
// but it must not cross into another food or dish (for example paneer -> palak
// paneer or ginger -> ginger tea).
const FUZZY_QUALIFIER_TERMS = new Set([
  'gram', 'mature', 'nfs', 'red', 'ripe', 'roma', 'root', 'seeds', 'soft',
]);

const BUILTIN_WATER_IDENTITIES = new Set([
  'water',
  'plain water',
  'tap water',
  'drinking water',
]);

const ACTIVE_DATASET_SQL = `
  SELECT dataset_version, is_materialized, v3_nutrient_presence_materialized
    FROM usda_dataset_version
   WHERE is_active = TRUE
   ORDER BY imported_at DESC
   LIMIT 1
`;

const CANDIDATE_SQL = `
  WITH identity_stop_words(pattern) AS (
    VALUES ('\\m(raw|uncooked|cooked|prepared|boiled|simmered|poached|steamed|pressure|baked|roasted|grilled|toasted|sauteed|stir|shallow|deep|fried|fermented|pickled|dry|dried|dehydrated|smoked|blended|juice|juiced|drained|without|salt|added|food|foods|regular|cooking|salad)\\M')
  ), lookup_terms(term, identity_lexemes, full_text_query) AS (
    SELECT DISTINCT input.term,
           ARRAY(
             SELECT lexeme
               FROM unnest(tsvector_to_array(to_tsvector(
                 'english',
                 regexp_replace(input.term, (SELECT pattern FROM identity_stop_words), ' ', 'g')
               ))) AS lexeme
              ORDER BY lexeme
           ),
           plainto_tsquery('english', input.term)
      FROM unnest($1::text[]) AS input(term)
  ), active_dataset AS (
    SELECT dataset_version
      FROM usda_dataset_version
     WHERE is_active = TRUE
       AND is_materialized = TRUE
     ORDER BY imported_at DESC
     LIMIT 1
  ), candidate_foods AS (
    SELECT fdc_id,
           description,
           data_type,
           normalized_name,
           kcal_per_100g,
           protein_per_100g,
           carbs_per_100g,
           fat_per_100g,
           fiber_per_100g,
           kcal_present,
           protein_present,
           carbs_present,
           fat_present,
           fiber_present
      FROM usda_foods
     WHERE NOT $6::boolean
    UNION ALL
    SELECT fdc_id,
           description,
           data_type,
           normalized_name,
           kcal_per_100g,
           protein_per_100g,
           carbs_per_100g,
           fat_per_100g,
           fiber_per_100g,
           kcal_present,
           protein_present,
           carbs_present,
           fat_present,
           fiber_present
      FROM usda_resolver_fallback_foods
     WHERE $6::boolean
  )
  SELECT food.fdc_id,
         food.description,
         food.data_type,
         food.normalized_name,
         food.kcal_per_100g,
         food.protein_per_100g,
         food.carbs_per_100g,
         food.fat_per_100g,
         food.fiber_per_100g,
         food.kcal_present,
         food.protein_present,
         food.carbs_present,
         food.fat_present,
         food.fiber_present,
         dataset.dataset_version,
         MAX(GREATEST(
           similarity(food.normalized_name, terms.term),
           similarity(food.description, terms.term)
         )) AS identity_similarity,
         MAX(CASE
           WHEN $5::boolean THEN ts_rank_cd(
             to_tsvector('english', food.normalized_name || ' ' || food.description),
             terms.full_text_query
           )
           ELSE 0
         END) AS full_text_rank,
         MAX(CASE
           WHEN $5::boolean
             AND cardinality(terms.identity_lexemes) > 0
             AND ARRAY(
               SELECT lexeme
                 FROM unnest(tsvector_to_array(to_tsvector(
                   'english',
                   regexp_replace(
                     food.normalized_name,
                     (SELECT pattern FROM identity_stop_words),
                     ' ',
                     'g'
                   )
                 ))) AS lexeme
                ORDER BY lexeme
             ) = terms.identity_lexemes
           THEN 1
           ELSE 0
         END) = 1 AS stemmed_identity_match,
         MAX(CASE
           WHEN food.data_type = 'branded_food' AND food.normalized_name = $4::text THEN 2
           WHEN food.data_type = 'branded_food' AND (
             food.normalized_name % $4::text
             OR food.description % $4::text
             OR food.normalized_name ILIKE '%' || $4::text || '%'
             OR food.description ILIKE '%' || $4::text || '%'
           ) THEN 1
           ELSE 0
         END) AS product_match_rank,
         MAX(GREATEST(
           similarity(food.normalized_name, $4::text),
           similarity(food.description, $4::text)
         )) AS product_similarity
    FROM candidate_foods food
    JOIN lookup_terms terms
      ON food.normalized_name % terms.term
      OR food.description % terms.term
      OR food.normalized_name ILIKE '%' || terms.term || '%'
      OR food.description ILIKE '%' || terms.term || '%'
      OR (
        NOT $3::boolean
        AND $5::boolean
        AND to_tsvector('english', food.normalized_name || ' ' || food.description)
          @@ terms.full_text_query
      )
      OR (food.data_type = 'branded_food' AND $4::text IS NOT NULL AND (
        food.normalized_name % $4::text
        OR food.description % $4::text
        OR food.normalized_name ILIKE '%' || $4::text || '%'
        OR food.description ILIKE '%' || $4::text || '%'
      ))
    CROSS JOIN active_dataset dataset
   WHERE (
     ($3::boolean AND food.data_type = 'branded_food')
     OR (NOT $3::boolean AND food.data_type IN (
       'survey_fndds_food',
       'sr_legacy_food',
       'foundation_food',
       'local_fallback'
     ))
   )
   GROUP BY food.fdc_id,
            food.description,
            food.data_type,
            food.normalized_name,
            food.kcal_per_100g,
            food.protein_per_100g,
            food.carbs_per_100g,
            food.fat_per_100g,
            food.fiber_per_100g,
            food.kcal_present,
            food.protein_present,
            food.carbs_present,
            food.fat_present,
            food.fiber_present,
            dataset.dataset_version
   ORDER BY product_match_rank DESC,
            product_similarity DESC,
            stemmed_identity_match DESC,
            full_text_rank DESC,
            identity_similarity DESC,
            food.fdc_id
   LIMIT $2
`;

const defaultQuery: NutritionDatabaseQuery = async (text, params) => {
  const result = await usdaQuery<Record<string, unknown>>(text, params);
  return { rows: result.rows };
};

/**
 * Creates the production resolver backed by the local, read-only USDA
 * PostgreSQL snapshot. The query seam keeps domain tests independent of a
 * database and deliberately exposes no model or free-form nutrition fallback.
 */
export function createLocalUsdaNutritionResolver(
  options: LocalUsdaNutritionResolverOptions = {}
): NutritionResolver {
  const query = options.query ?? defaultQuery;
  const candidateLimit = boundedCandidateLimit(options.candidateLimit);
  const fullTextEnabled = options.fullTextEnabled ?? config.USDA_FTS_ENABLED;
  const retryDelayMs = options.retryDelayMs ?? (() => 50 + Math.floor(Math.random() * 101));
  const useProcessCache = options.useProcessCache ?? options.query === undefined;

  return {
    async resolve(scenarios) {
      const targets = scenarios.flatMap((scenario) =>
        scenario.ingredients.map((leaf) => ({ scenarioId: scenario.scenarioId, leaf }))
      );
      const activeTargets = targets.filter(({ leaf }) => leaf.role === 'ACTIVE_NUTRITION');
      const uniqueLookupCount = new Set(activeTargets.map(({ leaf }) => lookupKey(leaf))).size;
      try {
        const dataset = activeTargets.length > 0
          ? await loadActiveDataset(query)
          : {
              datasetVersion: null,
              nutrientPresenceMaterialized: false,
              rejectionReasons: [],
            };
        const lookupCache = new Map<string, Promise<LookupOutcome>>();

        const settled = await Promise.allSettled(targets.map(async ({ scenarioId, leaf }) => {
          if (isYieldOnlyWater(leaf)) {
            return builtinWaterResolution(scenarioId, leaf);
          }
          if (leaf.role === 'YIELD_ONLY') {
            return rejectedLeaf(
              scenarioId,
              leaf.leafId,
              ['UNSUPPORTED_YIELD_ONLY'],
              []
            );
          }
          if (dataset.datasetVersion === null || dataset.rejectionReasons.length > 0) {
            return rejectedLeaf(
              scenarioId,
              leaf.leafId,
              dataset.rejectionReasons,
              []
            );
          }

          const leafKey = lookupKey(leaf);
          let lookup = lookupCache.get(leafKey);
          if (lookup === undefined) {
            const create = () => resolveLookupWithRetry(() => resolveLookup(
              query,
              leaf,
              dataset.datasetVersion!,
              dataset.nutrientPresenceMaterialized,
              candidateLimit,
              fullTextEnabled
            ), retryDelayMs);
            const processKey = JSON.stringify([
              dataset.datasetVersion,
              dataset.nutrientPresenceMaterialized,
              candidateLimit,
              fullTextEnabled,
              leafKey,
            ]);
            lookup = useProcessCache
              ? processCachedLookup(processKey, create)
              : create();
            lookupCache.set(leafKey, lookup);
          }
          const outcome = await lookup;
          const reference = outcome.selected !== null && outcome.per100g !== null
            ? referenceFromCandidate(
                scenarioId,
                leaf.leafId,
                dataset.datasetVersion,
                outcome.selected,
                outcome.per100g
              )
            : null;
          return {
            scenarioId,
            leafId: leaf.leafId,
            reference,
            rejectionReasons: outcome.rejectionReasons,
            candidates: outcome.candidates,
          };
        }));

        const failed = settled.find(
          (item): item is PromiseRejectedResult => item.status === 'rejected'
        );
        if (failed !== undefined) throw failed.reason;
        return {
          datasetVersion: dataset.datasetVersion,
          leaves: settled.map((item) =>
            (item as PromiseFulfilledResult<NutritionLeafResolution>).value
          ),
        };
      } catch (error) {
        if (error instanceof NutritionResolutionInfrastructureError) throw error;
        throw new NutritionResolutionInfrastructureError(
          error,
          uniqueLookupCount,
          getUsdaQueryLimiterSnapshot(),
        );
      }
    },
  };
}

async function loadActiveDataset(query: NutritionDatabaseQuery): Promise<ActiveDataset> {
  const result = await query(ACTIVE_DATASET_SQL);
  const row = result.rows[0];
  if (row === undefined || typeof row.dataset_version !== 'string') {
    return {
      datasetVersion: null,
      nutrientPresenceMaterialized: false,
      rejectionReasons: ['NO_ACTIVE_DATASET'],
    };
  }

  const rejectionReasons: NutritionRejectionReason[] = [];
  if (row.is_materialized !== true) rejectionReasons.push('DATASET_NOT_MATERIALIZED');
  return {
    datasetVersion: row.dataset_version,
    nutrientPresenceMaterialized: row.v3_nutrient_presence_materialized === true,
    rejectionReasons,
  };
}

async function resolveLookup(
  query: NutritionDatabaseQuery,
  leaf: IngredientLeaf,
  datasetVersion: string,
  nutrientPresenceMaterialized: boolean,
  candidateLimit: number,
  fullTextEnabled: boolean
): Promise<LookupOutcome> {
  const terms = lookupTerms(leaf);
  if (terms.length === 0) {
    return {
      selected: null,
      per100g: null,
      rejectionReasons: ['IDENTITY_MISMATCH'],
      candidates: [],
    };
  }

  const primary = await resolveCandidateCohort(
    query,
    leaf,
    terms,
    datasetVersion,
    nutrientPresenceMaterialized,
    candidateLimit,
    fullTextEnabled,
    leaf.retrievalIntent === 'BRANDED_PRODUCT',
    leaf.productQuery === undefined ? null : normalizeIdentity(leaf.productQuery),
  );
  if (primary.selected !== null) return primary;

  const nfsFallback = nfsFallbackLeaf(leaf, primary);
  if (nfsFallback !== null) {
    const fallback = await resolveCandidateCohort(
      query,
      nfsFallback,
      lookupTerms(nfsFallback),
      datasetVersion,
      nutrientPresenceMaterialized,
      candidateLimit,
      fullTextEnabled,
      false,
      null,
    );
    if (fallback.selected !== null) return fallback;
  }

  if (localFallbackAllowed(leaf, primary)) {
    const fallback = await resolveCandidateCohort(
      query,
      leaf,
      lookupTerms(leaf),
      datasetVersion,
      nutrientPresenceMaterialized,
      candidateLimit,
      fullTextEnabled,
      false,
      null,
      true,
    );
    if (fallback.selected !== null) return fallback;
  }

  if (leaf.retrievalIntent !== 'BRANDED_PRODUCT') return primary;

  // The second pass is deliberately generic. Pass two supplies generic aliases
  // for branded products; without one, reuse the canonical identity rather than
  // guessing a product category from a brand name.
  const genericTerms = genericFallbackTerms(leaf);
  if (genericTerms.length === 0) return primary;
  const fallback = await resolveCandidateCohort(
    query,
    leaf,
    genericTerms,
    datasetVersion,
    nutrientPresenceMaterialized,
    candidateLimit,
    fullTextEnabled,
    false,
    null,
  );
  return fallback.selected === null ? primary : fallback;
}

function localFallbackAllowed(leaf: IngredientLeaf, primary: LookupOutcome): boolean {
  return leaf.retrievalIntent === 'GENERIC_INGREDIENT' &&
    hasUnspecifiedPreparation(leaf) &&
    primary.rejectionReasons.every((reason) =>
      reason === 'NO_CANDIDATES' ||
      reason === 'IDENTITY_MISMATCH' ||
      reason === 'LOW_CONFIDENCE_MATCH' ||
      reason === 'AMBIGUOUS_MATCH'
    );
}

function nfsFallbackLeaf(
  leaf: IngredientLeaf,
  primary: LookupOutcome
): IngredientLeaf | null {
  if (
    leaf.retrievalIntent !== 'GENERIC_INGREDIENT' ||
    !hasUnspecifiedPreparation(leaf) ||
    !primary.rejectionReasons.every((reason) =>
      reason === 'NO_CANDIDATES' ||
      reason === 'IDENTITY_MISMATCH' ||
      reason === 'LOW_CONFIDENCE_MATCH' ||
      reason === 'AMBIGUOUS_MATCH'
    )
  ) return null;

  const identity = normalizeIdentity(leaf.canonicalIdentity)
    .split(' ')
    .filter((token) => token !== '' && !IDENTITY_STOP_WORDS.has(token))
    .join(' ');
  if (identity === '') return null;

  return {
    ...leaf,
    canonicalIdentity: `${identity} nfs`,
    lookupAliases: [],
    nutritionBasis: 'AS_SERVED',
    preparationCodes: ['UNKNOWN'],
  };
}

function hasUnspecifiedPreparation(leaf: IngredientLeaf): boolean {
  if (['RAW', 'DRY', 'DRAINED'].includes(leaf.nutritionBasis)) return false;
  return leaf.preparationCodes.every((code) =>
    code === 'UNKNOWN' || code === 'OTHER' || code === 'COOKED_UNKNOWN'
  );
}

async function resolveCandidateCohort(
  query: NutritionDatabaseQuery,
  leaf: IngredientLeaf,
  terms: string[],
  datasetVersion: string,
  nutrientPresenceMaterialized: boolean,
  candidateLimit: number,
  fullTextEnabled: boolean,
  brandedOnly: boolean,
  productQuery: string | null,
  localFallbackOnly = false,
): Promise<LookupOutcome> {
  const result = await query(CANDIDATE_SQL, [
    terms,
    candidateLimit,
    brandedOnly,
    productQuery,
    fullTextEnabled,
    localFallbackOnly,
  ]);
  const evaluated = result.rows
    .map(candidateRow)
    .filter((row): row is CandidateRow => row !== null)
    .map((row) => evaluateCandidate(
      leaf,
      row,
      datasetVersion,
      nutrientPresenceMaterialized,
      fullTextEnabled
    ));

  if (evaluated.length === 0) {
    return {
      selected: null,
      per100g: null,
      rejectionReasons: ['NO_CANDIDATES'],
      candidates: [],
    };
  }

  const viable = evaluated.filter((candidate) => candidate.eligible);
  if (viable.length === 0) {
    return {
      selected: null,
      per100g: null,
      rejectionReasons: deepestRejectionReasons(evaluated),
      candidates: boundedDiagnostics(evaluated),
    };
  }

  const hardMatches = viable.filter((candidate) => candidate.diagnostic.identityTier !== null);
  if (hardMatches.length === 0) {
    return resolveFuzzyCandidate(evaluated, viable, leaf);
  }

  hardMatches.sort(compareCandidateRank);
  const best = hardMatches[0]!;
  const top = hardMatches.filter((candidate) => sameRank(candidate, best));
  if (top.length > 1) {
    const collisionWinner = resolveExactMacroCollision(top);
    if (collisionWinner !== null) {
      collisionWinner.diagnostic.selected = true;
      for (const candidate of hardMatches) {
        if (candidate !== collisionWinner) candidate.diagnostic.rejectionReasons.push('LOWER_MATCH_TIER');
      }
      return {
        selected: collisionWinner.row,
        per100g: collisionWinner.per100g,
        rejectionReasons: [],
        candidates: boundedDiagnostics(evaluated),
      };
    }
    const similarityWinner = resolveUniqueSimilarityCollision(top);
    if (similarityWinner !== null) {
      similarityWinner.diagnostic.selected = true;
      for (const candidate of hardMatches) {
        if (candidate !== similarityWinner) candidate.diagnostic.rejectionReasons.push('LOWER_MATCH_TIER');
      }
      return {
        selected: similarityWinner.row,
        per100g: similarityWinner.per100g,
        rejectionReasons: [],
        candidates: boundedDiagnostics(evaluated),
      };
    }
    for (const candidate of top) {
      candidate.diagnostic.rejectionReasons.push('AMBIGUOUS_MATCH');
    }
    for (const candidate of hardMatches.filter((candidate) => !top.includes(candidate))) {
      candidate.diagnostic.rejectionReasons.push('LOWER_MATCH_TIER');
    }
    return {
      selected: null,
      per100g: null,
      rejectionReasons: ['AMBIGUOUS_MATCH'],
      candidates: boundedDiagnostics(evaluated),
    };
  }

  if (!isExactIdentityMatch(best) && !passesFuzzyConfidence(best, hardMatches)) {
    best.diagnostic.rejectionReasons.push('LOW_CONFIDENCE_MATCH');
    return {
      selected: null,
      per100g: null,
      rejectionReasons: ['LOW_CONFIDENCE_MATCH'],
      candidates: boundedDiagnostics(evaluated),
    };
  }

  best.diagnostic.selected = true;
  for (const candidate of hardMatches) {
    if (candidate !== best) candidate.diagnostic.rejectionReasons.push('LOWER_MATCH_TIER');
  }
  return {
    selected: best.row,
    per100g: best.per100g,
    rejectionReasons: [],
    candidates: boundedDiagnostics(evaluated),
  };
}

function evaluateCandidate(
  leaf: IngredientLeaf,
  row: CandidateRow,
  datasetVersion: string,
  nutrientPresenceMaterialized: boolean,
  fullTextEnabled: boolean
): EvaluatedCandidate {
  const identityMatch = hardIdentityMatch(leaf, row, fullTextEnabled);
  const identityTier = identityMatch?.tier ?? null;
  const preparationTier = hardPreparationTier(leaf, row);
  const missingNutrients = missingNutrientsFor(row, nutrientPresenceMaterialized);
  const per100g = missingNutrients.length === 0
    ? macroVector(row, nutrientPresenceMaterialized)
    : null;
  const rejectionReasons: NutritionRejectionReason[] = [];

  if (row.dataset_version !== datasetVersion) {
    rejectionReasons.push('DATASET_CHANGED_DURING_RESOLUTION');
  }
  if (identityTier === null) rejectionReasons.push('IDENTITY_MISMATCH');
  if (preparationTier === null) {
    rejectionReasons.push('PREPARATION_MISMATCH');
  }
  if (missingNutrients.length > 0) rejectionReasons.push('MISSING_REQUIRED_NUTRIENT');
  if (missingNutrients.length === 0 && per100g === null) {
    rejectionReasons.push('INVALID_NUTRIENT_VALUES');
  }

  const diagnostic: NutritionCandidateDiagnostic = {
    sourceRecordId: row.fdc_id,
    description: row.description,
    dataType: row.data_type,
    macrosPer100g: per100g,
    similarity: Number.isFinite(row.identity_similarity) ? row.identity_similarity : null,
    fullTextRank: Number.isFinite(row.full_text_rank) ? row.full_text_rank : null,
    identityTier,
    preparationTier,
    missingNutrients,
    rejectionReasons,
    selected: false,
  };
  return {
    row,
    diagnostic,
    identityRank: identityMatch?.rank ?? Number.MAX_SAFE_INTEGER,
    preparationRank: preparationTier === null
      ? Number.MAX_SAFE_INTEGER
      : PREPARATION_RANK[preparationTier],
    per100g,
    // Identity mismatch is intentionally non-blocking here. Hard identity
    // matches are resolved first; only their absence unlocks the bounded fuzzy
    // fallback below. All other safety checks remain blocking.
    eligible: rejectionReasons.every((reason) => reason === 'IDENTITY_MISMATCH') && per100g !== null,
  };
}

function resolveFuzzyCandidate(
  evaluated: EvaluatedCandidate[],
  viable: EvaluatedCandidate[],
  leaf: IngredientLeaf
): LookupOutcome {
  const identityCompatible = viable.filter((candidate) =>
    fuzzyIdentityCompatible(leaf, candidate.row)
  );
  if (identityCompatible.length === 0) {
    return {
      selected: null,
      per100g: null,
      rejectionReasons: ['IDENTITY_MISMATCH'],
      candidates: boundedDiagnostics(evaluated),
    };
  }

  identityCompatible.sort((left, right) =>
    (right.diagnostic.similarity ?? 0) - (left.diagnostic.similarity ?? 0) ||
    left.row.fdc_id.localeCompare(right.row.fdc_id)
  );
  const best = identityCompatible[0]!;
  if (!passesFuzzyConfidence(best, identityCompatible)) {
    best.diagnostic.rejectionReasons.push('LOW_CONFIDENCE_MATCH');
    return {
      selected: null,
      per100g: null,
      rejectionReasons: ['LOW_CONFIDENCE_MATCH'],
      candidates: boundedDiagnostics(evaluated),
    };
  }

  best.diagnostic.rejectionReasons = best.diagnostic.rejectionReasons.filter(
    (reason) => reason !== 'IDENTITY_MISMATCH'
  );
  best.diagnostic.selected = true;
  return {
    selected: best.row,
    per100g: best.per100g,
    rejectionReasons: [],
    candidates: boundedDiagnostics(evaluated),
  };
}

function fuzzyIdentityCompatible(leaf: IngredientLeaf, row: CandidateRow): boolean {
  const candidates = [row.normalized_name, row.description].map(identityTokenSet);
  return [leaf.canonicalIdentity, ...leaf.lookupAliases].some((term) => {
    const requested = identityTokenSet(term);
    if (requested.size === 0) return false;
    return candidates.some((candidate) =>
      [...requested].every((token) => candidate.has(token)) &&
      [...candidate].every((token) =>
        requested.has(token) || FUZZY_QUALIFIER_TERMS.has(token)
      )
    );
  });
}

function candidateRow(value: Record<string, unknown>): CandidateRow | null {
  if (
    typeof value.fdc_id !== 'string' &&
    typeof value.fdc_id !== 'number'
  ) return null;
  if (
    typeof value.description !== 'string' ||
    typeof value.normalized_name !== 'string' ||
    typeof value.dataset_version !== 'string'
  ) return null;

  return {
    fdc_id: String(value.fdc_id),
    description: value.description,
    data_type: typeof value.data_type === 'string' ? value.data_type : null,
    normalized_name: value.normalized_name,
    kcal_per_100g: numericValue(value.kcal_per_100g),
    protein_per_100g: numericValue(value.protein_per_100g),
    carbs_per_100g: numericValue(value.carbs_per_100g),
    fat_per_100g: numericValue(value.fat_per_100g),
    fiber_per_100g: numericValue(value.fiber_per_100g),
    kcal_present: value.kcal_present === true,
    protein_present: value.protein_present === true,
    carbs_present: value.carbs_present === true,
    fat_present: value.fat_present === true,
    fiber_present: value.fiber_present === true,
    dataset_version: value.dataset_version,
    identity_similarity: numericValue(value.identity_similarity),
    full_text_rank: numericValue(value.full_text_rank),
    stemmed_identity_match: value.stemmed_identity_match === true,
  };
}

function numericValue(value: unknown): number {
  return typeof value === 'number' ? value : Number.NaN;
}

function missingNutrientsFor(
  row: CandidateRow,
  nutrientPresenceMaterialized: boolean
): string[] {
  // Legacy snapshots did not retain source presence. Their numeric columns
  // remain usable as imported, and an absent fiber value is intentionally 0.
  if (!nutrientPresenceMaterialized) return [];

  const missing: string[] = [];
  if (!row.kcal_present) missing.push('caloriesKcal');
  if (!row.protein_present) missing.push('proteinGrams');
  if (!row.carbs_present) missing.push('carbsGrams');
  if (!row.fat_present) missing.push('fatGrams');
  return missing;
}

function macroVector(
  row: CandidateRow,
  nutrientPresenceMaterialized: boolean
): MacroVector | null {
  const vector: MacroVector = {
    caloriesKcal: row.kcal_per_100g,
    proteinGrams: row.protein_per_100g,
    carbsGrams: row.carbs_per_100g,
    fatGrams: row.fat_per_100g,
    fiberGrams: nutrientPresenceMaterialized && !row.fiber_present
      ? 0
      : row.fiber_per_100g,
  };
  const values = Object.values(vector);
  if (values.some((value) => !Number.isFinite(value) || value < 0)) return null;
  if (vector.caloriesKcal > 1_000) return null;
  if ([vector.proteinGrams, vector.carbsGrams, vector.fatGrams, vector.fiberGrams]
    .some((value) => value > 100)) return null;
  if (vector.proteinGrams + vector.carbsGrams + vector.fatGrams > 110) return null;
  return vector;
}

function hardIdentityMatch(
  leaf: IngredientLeaf,
  row: CandidateRow,
  fullTextEnabled: boolean
): IdentityMatch | null {
  const normalizedName = normalizeIdentity(row.normalized_name);
  const description = normalizeIdentity(row.description);
  const canonical = normalizeIdentity(leaf.canonicalIdentity);
  if (normalizedName === canonical) return { tier: 'CANONICAL_EXACT', rank: 0 };
  if (description === canonical) return { tier: 'CANONICAL_EXACT', rank: 1 };
  if (sameIdentityTokenSet(normalizedName, canonical)) {
    return { tier: 'CANONICAL_TOKEN_SET', rank: 2 };
  }
  if (sameIdentityTokenSet(description, canonical)) {
    return { tier: 'CANONICAL_TOKEN_SET', rank: 3 };
  }

  for (const alias of leaf.lookupAliases.map(normalizeIdentity)) {
    if (normalizedName === alias) return { tier: 'ALIAS_EXACT', rank: 4 };
  }
  for (const alias of leaf.lookupAliases.map(normalizeIdentity)) {
    if (description === alias) return { tier: 'ALIAS_EXACT', rank: 5 };
  }
  for (const alias of leaf.lookupAliases.map(normalizeIdentity)) {
    if (sameIdentityTokenSet(normalizedName, alias)) {
      return { tier: 'ALIAS_TOKEN_SET', rank: 6 };
    }
  }
  for (const alias of leaf.lookupAliases.map(normalizeIdentity)) {
    if (sameIdentityTokenSet(description, alias)) {
      return { tier: 'ALIAS_TOKEN_SET', rank: 7 };
    }
  }

  if (fullTextEnabled && row.stemmed_identity_match) {
    return { tier: 'STEMMED_TOKEN_SET', rank: 8 };
  }

  // A branded product query can authorize its candidate set, but only through
  // a whole normalized phrase. Canonical and alias identity always win when
  // present, and fuzzy retrieval alone can never make a candidate eligible.
  if (
    leaf.retrievalIntent === 'BRANDED_PRODUCT' &&
    leaf.productQuery !== undefined &&
    (containsIdentityPhrase(normalizedName, leaf.productQuery) ||
      containsIdentityPhrase(description, leaf.productQuery))
  ) {
    return { tier: 'PRODUCT_QUERY_PHRASE', rank: 9 };
  }
  return null;
}

function sameIdentityTokenSet(candidateName: string, requestedName: string): boolean {
  const requested = identityTokenSignature(requestedName);
  return requested !== '' && identityTokenSignature(candidateName) === requested;
}

function containsIdentityPhrase(candidateName: string, requestedPhrase: string): boolean {
  const candidate = normalizeIdentity(candidateName);
  const phrase = normalizeIdentity(requestedPhrase);
  return phrase !== '' && ` ${candidate} `.includes(` ${phrase} `);
}

function identityTokenSignature(value: string): string {
  return [...identityTokenSet(value)].sort().join('|');
}

function identityTokenSet(value: string): Set<string> {
  return new Set(
    normalizeIdentity(value)
      .split(' ')
      .filter((token) => token !== '' && !IDENTITY_STOP_WORDS.has(token))
  );
}

function hardPreparationTier(
  leaf: IngredientLeaf,
  row: CandidateRow
): PreparationMatchTier | null {
  const candidateText = normalizeIdentity(`${row.normalized_name} ${row.description}`);
  const candidateCodes = detectedPreparationCodes(candidateText);
  const hasGenericCooked = hasAnyTerm(candidateText, ['cooked', 'prepared']);
  const hasHeat = [...candidateCodes].some((code) =>
    ['MOIST_HEAT', 'DRY_HEAT', 'FAT_HEAT'].includes(preparationUmbrella(code))
  );
  const hasRaw = candidateCodes.has('RAW');
  const hasDry = candidateCodes.has('DRIED');
  const hasDrained = hasAnyTerm(candidateText, ['drained']);

  switch (leaf.nutritionBasis) {
    case 'RAW':
      if (!hasRaw || hasHeat || hasGenericCooked || hasDry) return null;
      break;
    case 'DRY':
      // USDA often describes inherently dry staples (for example flour and
      // rolled oats) without a literal "dry" qualifier. Absence is compatible;
      // an explicit raw/cooked state is not.
      if (hasHeat || hasGenericCooked || hasRaw) return null;
      break;
    case 'COOKED':
      if ((!hasHeat && !hasGenericCooked) || hasRaw || hasDry) return null;
      break;
    case 'DRAINED':
      if (!hasDrained) return null;
      break;
    case 'RETAINED':
    case 'AS_SERVED':
      break;
  }

  const requested = leaf.preparationCodes.filter((code) =>
    code !== 'UNKNOWN' && code !== 'OTHER' && code !== 'COOKED_UNKNOWN'
  );
  if (requested.some((code) => candidateCodes.has(code))) return 'EXACT_CODE';

  const requestedHeatUmbrellas = new Set(requested
    .map(preparationUmbrella)
    .filter((umbrella) => ['MOIST_HEAT', 'DRY_HEAT', 'FAT_HEAT'].includes(umbrella)));
  const candidateHeatUmbrellas = new Set([...candidateCodes]
    .map(preparationUmbrella)
    .filter((umbrella) => ['MOIST_HEAT', 'DRY_HEAT', 'FAT_HEAT'].includes(umbrella)));
  if ([...requestedHeatUmbrellas].some((umbrella) => candidateHeatUmbrellas.has(umbrella))) {
    return 'SAME_HEAT_UMBRELLA';
  }

  if (requested.length > 0) {
    if (
      leaf.nutritionBasis === 'DRY' &&
      !hasDry &&
      requested.every((code) => code === 'DRIED')
    ) return 'BASIS_ONLY';
    const heatOnly = requested.every((code) =>
      ['MOIST_HEAT', 'DRY_HEAT', 'FAT_HEAT'].includes(preparationUmbrella(code))
    );
    if (heatOnly && hasGenericCooked) return 'BASIS_ONLY';
    return null;
  }
  if (leaf.preparationCodes.includes('COOKED_UNKNOWN')) {
    return hasHeat || hasGenericCooked ? 'BASIS_ONLY' : null;
  }
  if (leaf.nutritionBasis === 'AS_SERVED' || leaf.nutritionBasis === 'RETAINED') {
    return 'UNSPECIFIED_COMPATIBLE';
  }
  return 'BASIS_ONLY';
}

function detectedPreparationCodes(text: string): Set<PreparationCode> {
  const codes = new Set<PreparationCode>();
  for (const [code, terms] of Object.entries(PREPARATION_TERMS) as Array<
    [PreparationCode, readonly string[]]
  >) {
    if (hasAnyTerm(text, terms)) codes.add(code);
  }
  return codes;
}

function hasAnyTerm(text: string, terms: readonly string[]): boolean {
  const padded = ` ${text} `;
  return terms.some((term) => padded.includes(` ${normalizeIdentity(term)} `));
}

function lookupTerms(leaf: IngredientLeaf): string[] {
  return [...new Set([leaf.canonicalIdentity, ...leaf.lookupAliases]
    .map(normalizeIdentity)
    .filter((term) => term !== ''))];
}

function genericFallbackTerms(leaf: IngredientLeaf): string[] {
  const aliases = leaf.lookupAliases.map(normalizeIdentity).filter(Boolean);
  return aliases.length > 0 ? aliases : lookupTerms(leaf);
}

function isExactIdentityMatch(candidate: EvaluatedCandidate): boolean {
  return candidate.diagnostic.identityTier === 'CANONICAL_EXACT' ||
    candidate.diagnostic.identityTier === 'ALIAS_EXACT' ||
    candidate.diagnostic.identityTier === 'STEMMED_TOKEN_SET';
}

function sameMacros(left: MacroVector, right: MacroVector): boolean {
  return left.caloriesKcal === right.caloriesKcal &&
    left.proteinGrams === right.proteinGrams &&
    left.carbsGrams === right.carbsGrams &&
    left.fatGrams === right.fatGrams &&
    left.fiberGrams === right.fiberGrams;
}

function withinMacroTolerance(left: MacroVector, right: MacroVector): boolean {
  return [
    [left.caloriesKcal, right.caloriesKcal],
    [left.proteinGrams, right.proteinGrams],
    [left.carbsGrams, right.carbsGrams],
    [left.fatGrams, right.fatGrams],
    [left.fiberGrams, right.fiberGrams],
  ].every(([a, b]) =>
    Math.abs(a - b) / Math.max(Math.abs(a), Math.abs(b), MACRO_COMPARISON_FLOOR)
      <= MACRO_EQUIVALENCE_TOLERANCE
  );
}

function resolveExactMacroCollision(
  candidates: readonly EvaluatedCandidate[]
): EvaluatedCandidate | null {
  if (!candidates.every(isExactIdentityMatch) || candidates.some((candidate) => candidate.per100g === null)) {
    return null;
  }
  const vectors = candidates.map((candidate) => candidate.per100g!);
  if (vectors.every((vector) => sameMacros(vector, vectors[0]!))) {
    return [...candidates].sort((left, right) => left.row.fdc_id.localeCompare(right.row.fdc_id))[0]!;
  }
  if (vectors.every((vector) => withinMacroTolerance(vector, vectors[0]!))) {
    return [...candidates].sort((left, right) =>
      left.per100g!.caloriesKcal - right.per100g!.caloriesKcal ||
      left.row.fdc_id.localeCompare(right.row.fdc_id)
    )[0]!;
  }
  return null;
}

function resolveUniqueSimilarityCollision(
  candidates: readonly EvaluatedCandidate[]
): EvaluatedCandidate | null {
  const ranked = [...candidates].sort((left, right) =>
    (right.diagnostic.similarity ?? Number.NEGATIVE_INFINITY) -
      (left.diagnostic.similarity ?? Number.NEGATIVE_INFINITY) ||
    left.row.fdc_id.localeCompare(right.row.fdc_id)
  );
  const winner = ranked[0];
  const runnerUp = ranked[1];
  if (winner === undefined || runnerUp === undefined) return winner ?? null;
  return winner.diagnostic.similarity !== null &&
    winner.diagnostic.similarity > (runnerUp.diagnostic.similarity ?? Number.NEGATIVE_INFINITY)
    ? winner
    : null;
}

function passesFuzzyConfidence(
  candidate: EvaluatedCandidate,
  eligible: readonly EvaluatedCandidate[]
): boolean {
  const score = candidate.diagnostic.similarity ?? 0;
  const runnerUp = eligible
    .filter((other) => other !== candidate)
    .reduce((best, other) => Math.max(best, other.diagnostic.similarity ?? 0), 0);
  return score >= FUZZY_MATCH_THRESHOLD && score - runnerUp >= FUZZY_MATCH_MARGIN;
}

function lookupKey(leaf: IngredientLeaf): string {
  return JSON.stringify({
    canonicalIdentity: normalizeIdentity(leaf.canonicalIdentity),
    aliases: leaf.lookupAliases.map(normalizeIdentity).sort(),
    retrievalIntent: leaf.retrievalIntent,
    productQuery: leaf.productQuery === undefined ? null : normalizeIdentity(leaf.productQuery),
    nutritionBasis: leaf.nutritionBasis,
    preparationCodes: [...leaf.preparationCodes].sort(),
  });
}

function normalizeIdentity(value: string): string {
  return value
    .normalize('NFKD')
    .toLowerCase()
    .replace(/\p{M}/gu, '')
    .replace(/[^\p{L}\p{N}]+/gu, ' ')
    .replace(/\s+/g, ' ')
    .trim();
}

function compareCandidateRank(left: EvaluatedCandidate, right: EvaluatedCandidate): number {
  return left.identityRank - right.identityRank ||
    left.preparationRank - right.preparationRank ||
    left.row.fdc_id.localeCompare(right.row.fdc_id);
}

function sameRank(left: EvaluatedCandidate, right: EvaluatedCandidate): boolean {
  return left.identityRank === right.identityRank &&
    left.preparationRank === right.preparationRank;
}

function boundedDiagnostics(candidates: EvaluatedCandidate[]): NutritionCandidateDiagnostic[] {
  return [...candidates]
    .sort((left, right) => {
      if (left.diagnostic.selected !== right.diagnostic.selected) {
        return left.diagnostic.selected ? -1 : 1;
      }
      if (left.eligible !== right.eligible) return left.eligible ? -1 : 1;
      if (
        left.diagnostic.identityTier === null &&
        right.diagnostic.identityTier === null
      ) {
        return (right.diagnostic.similarity ?? -1) - (left.diagnostic.similarity ?? -1) ||
          left.row.fdc_id.localeCompare(right.row.fdc_id);
      }
      return compareCandidateRank(left, right) ||
        (right.diagnostic.similarity ?? -1) - (left.diagnostic.similarity ?? -1);
    })
    .slice(0, DIAGNOSTIC_CANDIDATE_LIMIT)
    .map((candidate) => candidate.diagnostic);
}

function deepestRejectionReasons(
  candidates: readonly EvaluatedCandidate[]
): NutritionRejectionReason[] {
  const identityCompatible = candidates.filter((candidate) =>
    candidate.diagnostic.identityTier !== null
  );
  if (identityCompatible.length === 0) return ['IDENTITY_MISMATCH'];

  const preparationCompatible = identityCompatible.filter((candidate) =>
    candidate.diagnostic.preparationTier !== null
  );
  if (preparationCompatible.length === 0) return ['PREPARATION_MISMATCH'];

  const reasons = new Set<NutritionRejectionReason>();
  for (const candidate of preparationCompatible) {
    for (const reason of candidate.diagnostic.rejectionReasons) {
      if (
        reason === 'DATASET_CHANGED_DURING_RESOLUTION' ||
        reason === 'MISSING_REQUIRED_NUTRIENT' ||
        reason === 'INVALID_NUTRIENT_VALUES'
      ) reasons.add(reason);
    }
  }
  return reasons.size > 0 ? [...reasons] : ['NO_CANDIDATES'];
}

function referenceFromCandidate(
  scenarioId: string,
  leafId: string,
  datasetVersion: string,
  row: CandidateRow,
  per100g: MacroVector
): ResolvedNutritionReference {
  return {
    scenarioId,
    leafId,
    source: 'USDA_FOODDATA_CENTRAL',
    sourceRecordId: row.fdc_id,
    datasetVersion,
    verifiedZero: Object.values(per100g).every((value) => value === 0),
    per100g,
  };
}

function rejectedLeaf(
  scenarioId: string,
  leafId: string,
  rejectionReasons: NutritionRejectionReason[],
  candidates: NutritionCandidateDiagnostic[]
): NutritionLeafResolution {
  return {
    scenarioId,
    leafId,
    reference: null,
    rejectionReasons: [...rejectionReasons],
    candidates,
  };
}

function isYieldOnlyWater(leaf: IngredientLeaf): boolean {
  return leaf.role === 'YIELD_ONLY' &&
    BUILTIN_WATER_IDENTITIES.has(normalizeIdentity(leaf.canonicalIdentity));
}

function builtinWaterResolution(
  scenarioId: string,
  leaf: IngredientLeaf
): NutritionLeafResolution {
  return {
    scenarioId,
    leafId: leaf.leafId,
    reference: {
      scenarioId,
      leafId: leaf.leafId,
      source: 'BUILTIN_PHYSICAL_INVARIANT',
      sourceRecordId: 'builtin:water',
      datasetVersion: 'builtin-water-v1',
      verifiedZero: true,
      per100g: zeroMacros(),
    },
    rejectionReasons: [],
    candidates: [],
  };
}

function zeroMacros(): MacroVector {
  return {
    caloriesKcal: 0,
    proteinGrams: 0,
    carbsGrams: 0,
    fatGrams: 0,
    fiberGrams: 0,
  };
}

function boundedCandidateLimit(value: number | undefined): number {
  if (value === undefined) return QUERY_CANDIDATE_LIMIT;
  if (!Number.isInteger(value) || value < 1) {
    throw new Error('candidateLimit must be a positive integer');
  }
  return Math.min(value, QUERY_CANDIDATE_LIMIT);
}
