import type {
  CacheableNutritionRecord,
  LocalNutritionLookup,
  LocalNutritionResolveResponse,
} from '../protos/calorify/http_api.js';
import { canonicalizeWithUsda } from './usdaLookup.js';
import { normalizeUsdaTerm } from './usdaLookupUtils.js';

function uniqueLookupKeys(
  requested: string,
  normalizedName: string,
  matchType: string
): string[] {
  const keys = new Set<string>([normalizedName]);
  // Fuzzy matches are useful for this request, but binding the original query
  // would turn a probabilistic choice into future local authority. Exact and
  // reviewed alias matches are safe to reuse.
  if (matchType === 'exact' || matchType === 'alias') {
    keys.add(normalizeUsdaTerm(requested));
  }
  return [...keys].filter(Boolean).sort();
}

async function resolveLookup(
  lookup: LocalNutritionLookup,
  retrievedAtEpochMs: number
): Promise<CacheableNutritionRecord | null> {
  const normalizedHint = normalizeUsdaTerm(lookup.canonicalHint);
  const normalizedPreparation = normalizeUsdaTerm(lookup.preparation);
  const hintTokens = new Set(normalizedHint.split(' ').filter(Boolean));
  const preparationAlreadyPresent = normalizedPreparation
    .split(' ')
    .filter(Boolean)
    .every((token) => hintTokens.has(token));
  const lookupTerm = normalizedPreparation && !preparationAlreadyPresent
    ? `${lookup.canonicalHint} ${lookup.preparation}`.trim()
    : lookup.canonicalHint;
  const match = await canonicalizeWithUsda(lookupTerm);
  const row = match.row;
  const datasetVersion = row?.dataset_version?.trim() ?? '';
  if (!row || !datasetVersion) return null;

  const normalizedName = normalizeUsdaTerm(row.normalized_name || row.description);
  const dataType = row.data_type ?? 'unknown';
  const nutrientsPer100g = {
    calories: row.kcal_per_100g,
    protein: row.protein_per_100g,
    carbs: row.carbs_per_100g,
    fat: row.fat_per_100g,
    fiber: row.fiber_per_100g,
  };
  return {
    rowId: lookup.rowId,
    fdcId: String(row.fdc_id),
    description: row.description,
    normalizedName,
    dataType,
    nutrientsPer100g,
    datasetVersion,
    retrievedAtEpochMs,
    lookupKeys: uniqueLookupKeys(
      lookupTerm,
      normalizedName,
      match.matchType
    ),
    matchType: match.matchType,
    matchConfidence: match.score,
  };
}

export async function resolveLocalNutritionLookups(
  analysisId: string,
  lookups: LocalNutritionLookup[]
): Promise<LocalNutritionResolveResponse> {
  const retrievedAtEpochMs = Date.now();
  const resolved = await Promise.all(
    lookups.map((lookup) => resolveLookup(lookup, retrievedAtEpochMs))
  );
  const records: CacheableNutritionRecord[] = [];
  const unresolvedRowIds: string[] = [];
  resolved.forEach((record, index) => {
    if (record == null) {
      unresolvedRowIds.push(lookups[index]!.rowId);
    } else {
      records.push(record);
    }
  });
  return { analysisId, records, unresolvedRowIds };
}
