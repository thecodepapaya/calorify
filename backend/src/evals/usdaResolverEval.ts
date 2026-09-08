import {
  FOOD_RETRIEVAL_INTENTS,
  recipeScenarioSchema,
  type FoodRetrievalIntent,
  type IngredientLeaf,
  type RecipeScenario,
} from '../services/meal-analysis-v3/domain.js';
import type {
  NutritionCandidateDiagnostic,
  NutritionLeafResolution,
  NutritionResolver,
} from '../services/meal-analysis-v3/nutrition.js';
import { nutritionBasis } from '../services/meal-analysis-v3/twoPassInterpretation.js';
import { normalized } from '../services/meal-analysis-v3/text.js';
import type { MealAnalysisEvalDataset } from './mealAnalysisEval.js';

const MAX_LOOKUP_ALIASES = 3;

export interface UsdaResolverCorpusEntry {
  caseId: string;
  componentKey?: string;
  groupIndex: number;
  terms: string[];
  canonicalIdentity: string;
  lookupAliases: string[];
  retrievalIntent: FoodRetrievalIntent;
  productQuery?: string;
  water: boolean;
  scenarioId: string;
}

export interface UsdaResolverEvalMiss {
  caseId: string;
  componentKey?: string;
  groupIndex: number;
  terms: string[];
  rejectionReasons: string[];
  candidates: NutritionCandidateDiagnostic[];
}

export interface UsdaResolverEvalCaseSummary {
  caseId: string;
  activeLeaves: number;
  resolved: number;
}

export interface UsdaResolverEvalReport {
  datasetVersion: number;
  caseCount: number;
  corpusSize: number;
  waterLeaves: number;
  resolvedCount: number;
  resolveRate: number;
  rejectionReasons: Array<{ reason: string; count: number }>;
  caseSummaries: UsdaResolverEvalCaseSummary[];
  misses: UsdaResolverEvalMiss[];
}

/**
 * Extracts one resolver corpus entry per required ingredient group of the
 * meal-analysis eval dataset. The first group alternative becomes the
 * canonical identity and the remaining alternatives become lookup aliases,
 * capped at three to mirror the second-pass schema. Entries repeat the
 * pipeline's own leaf construction: the regex nutrition-basis inference and
 * the water yield-only rule, so the corpus measures the resolver exactly as
 * pass-2 output would reach it. Duplicate identities are resolved once.
 */
export function extractUsdaResolverCorpus(
  dataset: MealAnalysisEvalDataset,
  caseId?: string,
): UsdaResolverCorpusEntry[] {
  const entries: UsdaResolverCorpusEntry[] = [];
  const seen = new Set<string>();
  for (const evalCase of dataset.cases) {
    if (caseId !== undefined && evalCase.id !== caseId) continue;
    for (const component of evalCase.expectedComponents) {
      component.requiredIngredientGroups.forEach((group, index) => {
        const [canonicalIdentity, ...rest] = group;
        if (canonicalIdentity === undefined) return;
        const lookupAliases = rest.slice(0, MAX_LOOKUP_ALIASES);
        const dedupeKey = JSON.stringify([
          normalized(canonicalIdentity),
          ...lookupAliases.map(normalized).sort(),
        ]);
        if (seen.has(dedupeKey)) return;
        seen.add(dedupeKey);
        entries.push({
          caseId: evalCase.id,
          componentKey: component.key,
          groupIndex: index + 1,
          terms: [...group],
          canonicalIdentity,
          lookupAliases,
          retrievalIntent: 'GENERIC_INGREDIENT',
          water: normalized(canonicalIdentity) === 'water',
          scenarioId: `${evalCase.id}:${component.key}:g${index + 1}`,
        });
      });
    }
  }
  return entries;
}

export interface UsdaResolverCaseGroup {
  terms: string[];
  intent?: FoodRetrievalIntent;
  productQuery?: string;
}

export interface UsdaResolverCase {
  id: string;
  groups: UsdaResolverCaseGroup[];
}

export interface UsdaResolverCasesDataset {
  version: number;
  description: string;
  cases: UsdaResolverCase[];
}

function isRecord(value: unknown): value is Record<string, unknown> {
  return typeof value === 'object' && value !== null;
}

/**
 * Validates the standalone USDA resolver cases dataset. The rules mirror the
 * ingredient-leaf contract the corpus feeds: terms are non-empty and unique
 * within a group (the first is the canonical identity, the rest lookup
 * aliases), the retrieval intent is one of the pass-2 intents, and a product
 * query is present exactly when the intent is a branded product.
 */
export function parseUsdaResolverCases(parsed: unknown): UsdaResolverCasesDataset {
  if (
    !isRecord(parsed) ||
    !Number.isInteger(parsed.version) ||
    !Array.isArray(parsed.cases) ||
    parsed.cases.length === 0
  ) {
    throw new Error('USDA resolver cases dataset requires an integer version and a non-empty cases array');
  }
  const caseIds = new Set<string>();
  parsed.cases.forEach((evalCase, caseIndex) => {
    if (!isRecord(evalCase) || typeof evalCase.id !== 'string' || evalCase.id === '') {
      throw new Error(`USDA resolver case ${caseIndex + 1} requires a non-empty id`);
    }
    if (caseIds.has(evalCase.id)) {
      throw new Error(`Duplicate USDA resolver case id: ${evalCase.id}`);
    }
    caseIds.add(evalCase.id);
    if (!Array.isArray(evalCase.groups) || evalCase.groups.length === 0) {
      throw new Error(`USDA resolver case ${evalCase.id} requires a non-empty groups array`);
    }
    evalCase.groups.forEach((group, groupIndex) => {
      const where = `USDA resolver case ${evalCase.id} group ${groupIndex + 1}`;
      if (!isRecord(group) || !Array.isArray(group.terms) || group.terms.length === 0) {
        throw new Error(`${where} requires a non-empty terms array`);
      }
      const seenTerms = new Set<string>();
      for (const term of group.terms) {
        if (typeof term !== 'string' || term.trim() === '') {
          throw new Error(`${where} requires non-empty term strings`);
        }
        const normalizedTerm = normalized(term);
        if (seenTerms.has(normalizedTerm)) {
          throw new Error(`${where} repeats the term "${term}"`);
        }
        seenTerms.add(normalizedTerm);
      }
      if (
        group.intent !== undefined &&
        !(FOOD_RETRIEVAL_INTENTS as readonly string[]).includes(group.intent as string)
      ) {
        throw new Error(`${where} has an unknown retrieval intent: ${String(group.intent)}`);
      }
      if (
        group.productQuery !== undefined &&
        (typeof group.productQuery !== 'string' || group.productQuery.trim() === '')
      ) {
        throw new Error(`${where} requires a non-empty productQuery string`);
      }
      if (group.intent === 'BRANDED_PRODUCT' && group.productQuery === undefined) {
        throw new Error(`${where} is a branded product and requires a productQuery`);
      }
      if (group.intent !== 'BRANDED_PRODUCT' && group.productQuery !== undefined) {
        throw new Error(`${where} is not a branded product and must not carry a productQuery`);
      }
    });
  });
  return parsed as unknown as UsdaResolverCasesDataset;
}

/**
 * Extracts one resolver corpus entry per term group of the standalone cases
 * dataset: the first term is the canonical identity, the rest are lookup
 * aliases capped at three, and the group's retrieval intent and product
 * query flow into the leaf exactly as pass 2 would emit them. Duplicate term
 * groups are resolved once and attributed to their first case.
 */
export function extractUsdaResolverCasesCorpus(
  dataset: UsdaResolverCasesDataset,
  caseId?: string,
): UsdaResolverCorpusEntry[] {
  const entries: UsdaResolverCorpusEntry[] = [];
  const seen = new Set<string>();
  for (const evalCase of dataset.cases) {
    if (caseId !== undefined && evalCase.id !== caseId) continue;
    evalCase.groups.forEach((group, index) => {
      const [canonicalIdentity, ...rest] = group.terms;
      if (canonicalIdentity === undefined) return;
      const lookupAliases = rest.slice(0, MAX_LOOKUP_ALIASES);
      const dedupeKey = JSON.stringify([
        normalized(canonicalIdentity),
        ...lookupAliases.map(normalized).sort(),
        group.intent ?? 'GENERIC_INGREDIENT',
        group.productQuery ?? null,
      ]);
      if (seen.has(dedupeKey)) return;
      seen.add(dedupeKey);
      entries.push({
        caseId: evalCase.id,
        groupIndex: index + 1,
        terms: [...group.terms],
        canonicalIdentity,
        lookupAliases,
        retrievalIntent: group.intent ?? 'GENERIC_INGREDIENT',
        productQuery: group.productQuery,
        water: normalized(canonicalIdentity) === 'water',
        scenarioId: `${evalCase.id}:g${index + 1}`,
      });
    });
  }
  return entries;
}

function corpusLeaf(entry: UsdaResolverCorpusEntry): IngredientLeaf {
  const basis = nutritionBasis(entry.canonicalIdentity, entry.canonicalIdentity);
  return {
    leafId: 'ingredient',
    displayName: entry.canonicalIdentity,
    canonicalIdentity: entry.canonicalIdentity,
    lookupAliases: entry.lookupAliases,
    retrievalIntent: entry.retrievalIntent,
    productQuery: entry.productQuery,
    role: 'ACTIVE_NUTRITION',
    nutritionBasis: basis.nutritionBasis,
    nutritionBasisGrams: 100,
    preparationCodes: basis.preparationCodes,
    retainedFat: basis.retainedFat,
  };
}

function corpusScenario(entry: UsdaResolverCorpusEntry): RecipeScenario {
  return recipeScenarioSchema.parse({
    scenarioId: entry.scenarioId,
    assumptions: [],
    ingredients: [corpusLeaf(entry)],
    finishedYieldGrams: 100,
    finishedYieldUnits: null,
    effectivePortion: { kind: 'FINISHED_MASS', consumedGrams: 100 },
    effectivePreparationCodes: ['UNKNOWN'],
  });
}

const RESOLVE_BATCH_SIZE = 8;

/**
 * Resolves the corpus in bounded batches. Batches of eight lookups keep at
 * most nine USDA queries in flight at once (eight cohort lookups plus the
 * per-batch dataset probe), inside the USDA pool's ten-connection limit, so
 * connection acquisition never waits and the production query limiter's
 * queue timeout is never approached. The resolver returns one leaf
 * resolution per scenario in input order, so concatenated batches stay
 * aligned with the corpus entries by index.
 */
async function resolveCorpusLeaves(
  entries: UsdaResolverCorpusEntry[],
  resolver: NutritionResolver,
): Promise<NutritionLeafResolution[]> {
  const leaves: NutritionLeafResolution[] = [];
  for (let start = 0; start < entries.length; start += RESOLVE_BATCH_SIZE) {
    const batch = entries.slice(start, start + RESOLVE_BATCH_SIZE);
    const run = await resolver.resolve(batch.map(corpusScenario));
    if (run.leaves.length !== batch.length) {
      throw new Error('Resolver returned a different number of leaves than the corpus');
    }
    leaves.push(...run.leaves);
  }
  return leaves;
}

/**
 * Resolves the corpus through the supplied resolver and aggregates the
 * USDA hit-rate baseline: resolve rate over active leaves, rejection-reason
 * histogram, per-case summaries, and per-miss candidate diagnostics. Water
 * leaves are counted but never sent to the resolver; they resolve through
 * the builtin physical invariant, not the USDA database.
 */
async function runCorpusEval(
  corpus: UsdaResolverCorpusEntry[],
  caseIds: string[],
  datasetVersion: number,
  resolver: NutritionResolver,
): Promise<UsdaResolverEvalReport> {
  const active = corpus.filter((entry) => !entry.water);
  const leaves = await resolveCorpusLeaves(active, resolver);

  const rejectionCounts = new Map<string, number>();
  const caseStats = new Map<string, { activeLeaves: number; resolved: number }>();
  for (const caseId of caseIds) {
    caseStats.set(caseId, { activeLeaves: 0, resolved: 0 });
  }
  const misses: UsdaResolverEvalMiss[] = [];
  let resolvedCount = 0;

  active.forEach((entry, index) => {
    const leaf = leaves[index]!;
    const stat = caseStats.get(entry.caseId)!;
    stat.activeLeaves += 1;
    if (leaf.reference !== null) {
      resolvedCount += 1;
      stat.resolved += 1;
      return;
    }
    for (const reason of leaf.rejectionReasons) {
      rejectionCounts.set(reason, (rejectionCounts.get(reason) ?? 0) + 1);
    }
    misses.push({
      caseId: entry.caseId,
      componentKey: entry.componentKey,
      groupIndex: entry.groupIndex,
      terms: entry.terms,
      rejectionReasons: [...leaf.rejectionReasons],
      candidates: leaf.candidates,
    });
  });

  return {
    datasetVersion,
    caseCount: caseIds.length,
    corpusSize: active.length,
    waterLeaves: corpus.length - active.length,
    resolvedCount,
    resolveRate: active.length === 0 ? 0 : resolvedCount / active.length,
    rejectionReasons: [...rejectionCounts.entries()]
      .map(([reason, count]) => ({ reason, count }))
      .sort((left, right) => right.count - left.count || left.reason.localeCompare(right.reason)),
    caseSummaries: [...caseStats.entries()].map(([id, stat]) => ({ caseId: id, ...stat })),
    misses,
  };
}

/**
 * Resolves the meal-analysis-derived corpus (required ingredient groups of
 * the meal-analysis eval dataset) through the supplied resolver.
 */
export async function runUsdaResolverEval(
  dataset: MealAnalysisEvalDataset,
  resolver: NutritionResolver,
  caseId?: string,
): Promise<UsdaResolverEvalReport> {
  const cases = caseId === undefined
    ? dataset.cases
    : dataset.cases.filter((evalCase) => evalCase.id === caseId);
  if (cases.length === 0) throw new Error(`Unknown eval case: ${caseId}`);
  return runCorpusEval(
    extractUsdaResolverCorpus(dataset, caseId),
    cases.map((evalCase) => evalCase.id),
    dataset.version,
    resolver,
  );
}

/**
 * Resolves the standalone USDA resolver cases dataset through the supplied
 * resolver. This is the canonical hit-rate corpus; the meal-analysis-derived
 * corpus above predates it and stays available for continuity.
 */
export async function runUsdaResolverCasesEval(
  dataset: UsdaResolverCasesDataset,
  resolver: NutritionResolver,
  caseId?: string,
): Promise<UsdaResolverEvalReport> {
  const cases = caseId === undefined
    ? dataset.cases
    : dataset.cases.filter((evalCase) => evalCase.id === caseId);
  if (cases.length === 0) throw new Error(`Unknown eval case: ${caseId}`);
  return runCorpusEval(
    extractUsdaResolverCasesCorpus(dataset, caseId),
    cases.map((evalCase) => evalCase.id),
    dataset.version,
    resolver,
  );
}
