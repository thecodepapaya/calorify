import { usdaQuery } from '../infrastructure/database.js';
import {
  preparationUmbrella,
  type IngredientLeaf,
  type MacroVector,
  type PreparationCode,
  type RecipeScenario,
  type ResolvedNutritionReference,
} from './domain.js';

const QUERY_CANDIDATE_LIMIT = 16;
const DIAGNOSTIC_CANDIDATE_LIMIT = 5;

export type NutritionRejectionReason =
  | 'NO_ACTIVE_DATASET'
  | 'DATASET_NOT_MATERIALIZED'
  | 'DATASET_CHANGED_DURING_RESOLUTION'
  | 'NO_CANDIDATES'
  | 'IDENTITY_MISMATCH'
  | 'PREPARATION_MISMATCH'
  | 'MISSING_REQUIRED_NUTRIENT'
  | 'INVALID_NUTRIENT_VALUES'
  | 'AMBIGUOUS_MATCH'
  | 'LOWER_MATCH_TIER'
  | 'UNSUPPORTED_YIELD_ONLY';

export type IdentityMatchTier =
  | 'CANONICAL_EXACT'
  | 'CANONICAL_TOKEN_SET'
  | 'ALIAS_EXACT'
  | 'ALIAS_TOKEN_SET';

export type PreparationMatchTier =
  | 'EXACT_CODE'
  | 'SAME_HEAT_UMBRELLA'
  | 'BASIS_ONLY'
  | 'UNSPECIFIED_COMPATIBLE';

export interface NutritionCandidateDiagnostic {
  sourceRecordId: string;
  description: string;
  dataType: string | null;
  similarity: number | null;
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
}

interface EvaluatedCandidate {
  row: CandidateRow;
  diagnostic: NutritionCandidateDiagnostic;
  identityRank: number;
  preparationRank: number;
  sourceRank: number;
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

const PREPARATION_RANK: Record<PreparationMatchTier, number> = {
  EXACT_CODE: 0,
  SAME_HEAT_UMBRELLA: 1,
  BASIS_ONLY: 2,
  UNSPECIFIED_COMPATIBLE: 3,
};

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
  WITH lookup_terms(term) AS (
    SELECT DISTINCT unnest($1::text[])
  ), active_dataset AS (
    SELECT dataset_version
      FROM usda_dataset_version
     WHERE is_active = TRUE
       AND is_materialized = TRUE
     ORDER BY imported_at DESC
     LIMIT 1
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
         )) AS identity_similarity
    FROM usda_foods food
    JOIN lookup_terms terms
      ON food.normalized_name % terms.term
      OR food.description % terms.term
      OR food.normalized_name ILIKE '%' || terms.term || '%'
      OR food.description ILIKE '%' || terms.term || '%'
    CROSS JOIN active_dataset dataset
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
   ORDER BY identity_similarity DESC, food.fdc_id
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

  return {
    async resolve(scenarios) {
      const targets = scenarios.flatMap((scenario) =>
        scenario.ingredients.map((leaf) => ({ scenarioId: scenario.scenarioId, leaf }))
      );
      const activeTargets = targets.filter(({ leaf }) => leaf.role === 'ACTIVE_NUTRITION');
      const dataset = activeTargets.length > 0
        ? await loadActiveDataset(query)
        : {
            datasetVersion: null,
            nutrientPresenceMaterialized: false,
            rejectionReasons: [],
          };
      const lookupCache = new Map<string, Promise<LookupOutcome>>();

      const leaves = await Promise.all(targets.map(async ({ scenarioId, leaf }) => {
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

        const key = lookupKey(leaf);
        let lookup = lookupCache.get(key);
        if (lookup === undefined) {
          lookup = resolveLookup(
            query,
            leaf,
            dataset.datasetVersion,
            dataset.nutrientPresenceMaterialized,
            candidateLimit
          );
          lookupCache.set(key, lookup);
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

      return {
        datasetVersion: dataset.datasetVersion,
        leaves,
      };
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
  candidateLimit: number
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

  const result = await query(CANDIDATE_SQL, [terms, candidateLimit]);
  const evaluated = result.rows
    .map(candidateRow)
    .filter((row): row is CandidateRow => row !== null)
    .map((row) => evaluateCandidate(
      leaf,
      row,
      datasetVersion,
      nutrientPresenceMaterialized
    ));

  if (evaluated.length === 0) {
    return {
      selected: null,
      per100g: null,
      rejectionReasons: ['NO_CANDIDATES'],
      candidates: [],
    };
  }

  const eligible = evaluated.filter((candidate) => candidate.eligible);
  if (eligible.length === 0) {
    return {
      selected: null,
      per100g: null,
      rejectionReasons: deepestRejectionReasons(evaluated),
      candidates: boundedDiagnostics(evaluated),
    };
  }

  eligible.sort(compareCandidateRank);
  const best = eligible[0]!;
  const top = eligible.filter((candidate) => sameRank(candidate, best));
  if (top.length > 1) {
    for (const candidate of top) {
      candidate.diagnostic.rejectionReasons.push('AMBIGUOUS_MATCH');
    }
    for (const candidate of eligible.filter((candidate) => !top.includes(candidate))) {
      candidate.diagnostic.rejectionReasons.push('LOWER_MATCH_TIER');
    }
    return {
      selected: null,
      per100g: null,
      rejectionReasons: ['AMBIGUOUS_MATCH'],
      candidates: boundedDiagnostics(evaluated),
    };
  }

  best.diagnostic.selected = true;
  for (const candidate of eligible) {
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
  nutrientPresenceMaterialized: boolean
): EvaluatedCandidate {
  const identityMatch = hardIdentityMatch(leaf, row);
  const identityTier = identityMatch?.tier ?? null;
  const preparationTier = identityTier === null ? null : hardPreparationTier(leaf, row);
  const missingNutrients = missingNutrientsFor(row, nutrientPresenceMaterialized);
  const per100g = missingNutrients.length === 0
    ? macroVector(row, nutrientPresenceMaterialized)
    : null;
  const rejectionReasons: NutritionRejectionReason[] = [];

  if (row.dataset_version !== datasetVersion) {
    rejectionReasons.push('DATASET_CHANGED_DURING_RESOLUTION');
  }
  if (identityTier === null) rejectionReasons.push('IDENTITY_MISMATCH');
  if (identityTier !== null && preparationTier === null) {
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
    similarity: Number.isFinite(row.identity_similarity) ? row.identity_similarity : null,
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
    sourceRank: trustedSourceRank(row.data_type),
    per100g,
    eligible: rejectionReasons.length === 0 && per100g !== null,
  };
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

function hardIdentityMatch(leaf: IngredientLeaf, row: CandidateRow): IdentityMatch | null {
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
  return null;
}

function sameIdentityTokenSet(candidateName: string, requestedName: string): boolean {
  const requested = identityTokenSignature(requestedName);
  return requested !== '' && identityTokenSignature(candidateName) === requested;
}

function identityTokenSignature(value: string): string {
  return [...new Set(
    normalizeIdentity(value)
      .split(' ')
      .filter((token) => token !== '' && !IDENTITY_STOP_WORDS.has(token))
  )].sort().join('|');
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

function lookupKey(leaf: IngredientLeaf): string {
  return JSON.stringify({
    canonicalIdentity: normalizeIdentity(leaf.canonicalIdentity),
    aliases: leaf.lookupAliases.map(normalizeIdentity).sort(),
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

function trustedSourceRank(dataType: string | null): number {
  switch (normalizeIdentity(dataType ?? '')) {
    case 'survey fndds food': return 0;
    case 'sr legacy food': return 1;
    case 'foundation food': return 2;
    case 'branded food': return 3;
    default: return 4;
  }
}

function compareCandidateRank(left: EvaluatedCandidate, right: EvaluatedCandidate): number {
  return left.identityRank - right.identityRank ||
    left.preparationRank - right.preparationRank ||
    left.sourceRank - right.sourceRank ||
    left.row.fdc_id.localeCompare(right.row.fdc_id);
}

function sameRank(left: EvaluatedCandidate, right: EvaluatedCandidate): boolean {
  return left.identityRank === right.identityRank &&
    left.preparationRank === right.preparationRank &&
    left.sourceRank === right.sourceRank;
}

function boundedDiagnostics(candidates: EvaluatedCandidate[]): NutritionCandidateDiagnostic[] {
  return [...candidates]
    .sort((left, right) => {
      if (left.eligible !== right.eligible) return left.eligible ? -1 : 1;
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
