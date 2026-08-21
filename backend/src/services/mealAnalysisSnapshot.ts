import type { MealClarificationAnswer } from '../protos/calorify/http_api.js';
import {
  MEAL_TYPES,
  roundGram,
  scaleMacros,
  type CanonicalMatch,
  type Macros,
  type MealTypeValue,
  type NormalizedDecomposition,
  type NormalizedIngredient,
  type PortionKindValue,
  type ResolvedIngredient,
  type UncertaintyReport,
} from './mealAnalysisDomain.js';
import type { MealAnalysisSessionRecord } from './mealAnalysisStore.js';
import { InvalidMealAnalysisSnapshotError } from './mealAnalysisStage.js';

const RESOLVED_INGREDIENT_SNAPSHOT_VERSION = 1;

/**
 * The public INGREDIENTS event intentionally stays compact. Continuations need
 * the complete resolution band and match identity, so persistence uses this
 * richer versioned snapshot instead of reconstructing nutrition via USDA/LLM.
 */
export function toResolvedIngredientsSnapshot(
  analysisId: string,
  mealName: string,
  resolved: ResolvedIngredient[]
): Record<string, unknown> {
  return {
    snapshotVersion: RESOLVED_INGREDIENT_SNAPSHOT_VERSION,
    analysisId,
    mealName,
    ingredients: resolved.map((ingredient) => ({
      rowId: ingredient.rowId,
      rawName: ingredient.rawName,
      canonicalHint: ingredient.canonicalHint,
      match: ingredient.match,
      grams: ingredient.grams,
      minGrams: ingredient.minGrams,
      maxGrams: ingredient.maxGrams,
      macros: ingredient.macros,
      minMacros: ingredient.minMacros,
      maxMacros: ingredient.maxMacros,
      source: ingredient.source,
      portionKind: ingredient.portionKind,
      count: ingredient.count,
      perUnitGrams: ingredient.perUnitGrams,
      perUnitMinGrams: ingredient.perUnitMinGrams,
      perUnitMaxGrams: ingredient.perUnitMaxGrams,
      sizeSpecifiedByUser: ingredient.sizeSpecifiedByUser,
    })),
  };
}

export function snapshotRecord(
  value: unknown,
  label: string
): Record<string, unknown> {
  if (value == null || typeof value !== 'object' || Array.isArray(value)) {
    throw new InvalidMealAnalysisSnapshotError(`${label} is not an object`);
  }
  return value as Record<string, unknown>;
}

export function snapshotString(
  value: unknown,
  label: string,
  allowEmpty: boolean = false
): string {
  if (typeof value !== 'string' || (!allowEmpty && value.trim() === '')) {
    throw new InvalidMealAnalysisSnapshotError(`${label} is not a valid string`);
  }
  return value;
}

export function snapshotNumber(value: unknown, label: string): number {
  if (typeof value !== 'number' || !Number.isFinite(value) || value < 0) {
    throw new InvalidMealAnalysisSnapshotError(
      `${label} is not a non-negative number`
    );
  }
  return value;
}

function snapshotOptionalNumber(value: unknown, label: string): number | null {
  if (value == null) return null;
  return snapshotNumber(value, label);
}

export function snapshotMacros(value: unknown, label: string): Macros {
  const raw = snapshotRecord(value, label);
  return {
    calories: snapshotNumber(raw.calories, `${label}.calories`),
    protein: snapshotNumber(raw.protein, `${label}.protein`),
    carbs: snapshotNumber(raw.carbs, `${label}.carbs`),
    fat: snapshotNumber(raw.fat, `${label}.fat`),
    fiber: snapshotNumber(raw.fiber, `${label}.fiber`),
  };
}

export function snapshotMealType(value: unknown, label: string): MealTypeValue {
  if (
    value === 'UNKNOWN' ||
    (typeof value === 'string' &&
      (MEAL_TYPES as readonly string[]).includes(value))
  ) {
    return value as MealTypeValue;
  }
  throw new InvalidMealAnalysisSnapshotError(
    `${label} is not a supported meal type`
  );
}

function snapshotPortionKind(value: unknown, label: string): PortionKindValue {
  if (
    value === 'COUNT' ||
    value === 'BULK' ||
    value === 'PINCH' ||
    value === 'COUNT_QUESTION'
  ) {
    return value;
  }
  throw new InvalidMealAnalysisSnapshotError(
    `${label} is not a supported portion kind`
  );
}

export function sessionToNormalizedDecomposition(
  session: MealAnalysisSessionRecord
): NormalizedDecomposition {
  const raw = snapshotRecord(session.decompositionData, 'decomposition data');
  if (raw.analysisId != null && raw.analysisId !== session.analysisId) {
    throw new InvalidMealAnalysisSnapshotError(
      'decomposition analysisId does not match the row'
    );
  }
  const ingredientsRaw = raw.ingredients;
  if (!Array.isArray(ingredientsRaw) || ingredientsRaw.length === 0) {
    throw new InvalidMealAnalysisSnapshotError(
      'decomposition ingredients are missing'
    );
  }

  const rowIds = new Set<string>();
  const ingredients = ingredientsRaw.map(
    (value, index): NormalizedIngredient => {
      const ingredient = snapshotRecord(
        value,
        `decomposition ingredient ${index}`
      );
      const rowId = snapshotString(
        ingredient.rowId ?? ingredient.row_id,
        `decomposition ingredient ${index}.rowId`
      );
      if (rowIds.has(rowId)) {
        throw new InvalidMealAnalysisSnapshotError(
          `duplicate decomposition rowId ${rowId}`
        );
      }
      rowIds.add(rowId);

      const gramsEstimated = snapshotNumber(
        ingredient.gramsEstimated ?? ingredient.grams_estimated,
        `${rowId}.gramsEstimated`
      );
      const minGrams = snapshotNumber(
        ingredient.minGrams ?? ingredient.min_grams,
        `${rowId}.minGrams`
      );
      const maxGrams = snapshotNumber(
        ingredient.maxGrams ?? ingredient.max_grams,
        `${rowId}.maxGrams`
      );
      if (minGrams > gramsEstimated || gramsEstimated > maxGrams) {
        throw new InvalidMealAnalysisSnapshotError(
          `${rowId} has an unordered gram band`
        );
      }

      const portionValue =
        ingredient.portionKind ?? ingredient.portion_kind ?? 'BULK';
      return {
        rowId,
        rawName: snapshotString(
          ingredient.rawName ?? ingredient.raw_name,
          `${rowId}.rawName`
        ),
        canonicalHint: snapshotString(
          ingredient.canonicalHint ?? ingredient.canonical_hint,
          `${rowId}.canonicalHint`
        ),
        gramsEstimated,
        minGrams,
        maxGrams,
        notes: typeof ingredient.notes === 'string' ? ingredient.notes : '',
        portionKind: snapshotPortionKind(
          portionValue,
          `${rowId}.portionKind`
        ),
        count: snapshotOptionalNumber(ingredient.count, `${rowId}.count`),
        perUnitGrams: snapshotOptionalNumber(
          ingredient.perUnitGrams ?? ingredient.per_unit_grams,
          `${rowId}.perUnitGrams`
        ),
        perUnitMinGrams: snapshotOptionalNumber(
          ingredient.perUnitMinGrams ?? ingredient.per_unit_min_grams,
          `${rowId}.perUnitMinGrams`
        ),
        perUnitMaxGrams: snapshotOptionalNumber(
          ingredient.perUnitMaxGrams ?? ingredient.per_unit_max_grams,
          `${rowId}.perUnitMaxGrams`
        ),
        sizeSpecifiedByUser:
          ingredient.sizeSpecifiedByUser === true ||
          ingredient.size_specified_by_user === true,
      };
    }
  );

  const confidence = snapshotNumber(
    raw.confidence ?? 0,
    'decomposition confidence'
  );
  if (confidence > 1) {
    throw new InvalidMealAnalysisSnapshotError(
      'decomposition confidence exceeds 1'
    );
  }
  return {
    mealName: snapshotString(
      raw.mealName ?? raw.meal_name,
      'decomposition mealName',
      true
    ),
    confidence,
    ingredients,
    inferredMealType: snapshotMealType(
      raw.inferredMealType ?? raw.inferred_meal_type ?? 'UNKNOWN',
      'decomposition inferredMealType'
    ),
    mealTypeConfident:
      raw.mealTypeConfident === true || raw.meal_type_confident === true,
  };
}

function snapshotMatchType(
  value: unknown,
  label: string
): CanonicalMatch['matchType'] {
  const values: CanonicalMatch['matchType'][] = [
    'exact',
    'alias',
    'fuzzy',
    'deterministic',
    'llm_fallback',
    'unmatched',
  ];
  if (
    typeof value === 'string' &&
    values.includes(value as CanonicalMatch['matchType'])
  ) {
    return value as CanonicalMatch['matchType'];
  }
  throw new InvalidMealAnalysisSnapshotError(
    `${label} is not a supported match type`
  );
}

function snapshotSource(
  value: unknown,
  label: string
): ResolvedIngredient['source'] {
  if (value === 'db' || value === 'deterministic' || value === 'llm_fallback') {
    return value;
  }
  throw new InvalidMealAnalysisSnapshotError(
    `${label} is not a supported nutrition source`
  );
}

function parseFullResolvedIngredient(
  value: unknown,
  index: number
): ResolvedIngredient {
  const raw = snapshotRecord(value, `resolved ingredient ${index}`);
  const rowId = snapshotString(
    raw.rowId,
    `resolved ingredient ${index}.rowId`
  );
  const grams = snapshotNumber(raw.grams, `${rowId}.grams`);
  const minGrams = snapshotNumber(raw.minGrams, `${rowId}.minGrams`);
  const maxGrams = snapshotNumber(raw.maxGrams, `${rowId}.maxGrams`);
  if (minGrams > grams || grams > maxGrams) {
    throw new InvalidMealAnalysisSnapshotError(
      `${rowId} has an unordered resolved gram band`
    );
  }
  const match = snapshotRecord(raw.match, `${rowId}.match`);
  return {
    rowId,
    rawName: snapshotString(raw.rawName, `${rowId}.rawName`),
    canonicalHint: snapshotString(raw.canonicalHint, `${rowId}.canonicalHint`),
    match: {
      foodId: snapshotString(match.foodId, `${rowId}.match.foodId`, true),
      canonicalName: snapshotString(
        match.canonicalName,
        `${rowId}.match.canonicalName`,
        true
      ),
      score: snapshotNumber(match.score, `${rowId}.match.score`),
      matchType: snapshotMatchType(
        match.matchType,
        `${rowId}.match.matchType`
      ),
    },
    grams,
    minGrams,
    maxGrams,
    macros: snapshotMacros(raw.macros, `${rowId}.macros`),
    minMacros: snapshotMacros(raw.minMacros, `${rowId}.minMacros`),
    maxMacros: snapshotMacros(raw.maxMacros, `${rowId}.maxMacros`),
    source: snapshotSource(raw.source, `${rowId}.source`),
    portionKind: snapshotPortionKind(raw.portionKind, `${rowId}.portionKind`),
    count: snapshotOptionalNumber(raw.count, `${rowId}.count`),
    perUnitGrams: snapshotOptionalNumber(
      raw.perUnitGrams,
      `${rowId}.perUnitGrams`
    ),
    perUnitMinGrams: snapshotOptionalNumber(
      raw.perUnitMinGrams,
      `${rowId}.perUnitMinGrams`
    ),
    perUnitMaxGrams: snapshotOptionalNumber(
      raw.perUnitMaxGrams,
      `${rowId}.perUnitMaxGrams`
    ),
    sizeSpecifiedByUser: raw.sizeSpecifiedByUser === true,
  };
}

function legacyResolvedIngredient(
  value: unknown,
  index: number,
  decomposition: NormalizedIngredient,
  session: MealAnalysisSessionRecord
): ResolvedIngredient {
  const raw = snapshotRecord(value, `legacy resolved ingredient ${index}`);
  const rowId = snapshotString(
    raw.rowId,
    `legacy resolved ingredient ${index}.rowId`
  );
  const grams = snapshotNumber(raw.grams, `${rowId}.grams`);
  const macros = snapshotMacros(raw.macros, `${rowId}.macros`);
  const count =
    snapshotOptionalNumber(raw.count, `${rowId}.count`) ?? decomposition.count;
  const perUnitGrams =
    snapshotOptionalNumber(raw.perUnitGrams, `${rowId}.perUnitGrams`) ??
    decomposition.perUnitGrams;

  const priorAnswers = Array.isArray(session.clarificationAnswers)
    ? (session.clarificationAnswers as Array<Record<string, unknown>>)
    : [];
  const sizeWasAnswered = priorAnswers.some(
    (answer) => answer.clarificationId === `clr_${rowId}`
  );
  let minGrams: number;
  let maxGrams: number;
  if (sizeWasAnswered) {
    minGrams = grams;
    maxGrams = grams;
  } else if (decomposition.portionKind === 'COUNT' && count != null) {
    minGrams = roundGram(
      count *
        (decomposition.perUnitMinGrams ?? perUnitGrams ?? grams)
    );
    maxGrams = roundGram(
      count *
        (decomposition.perUnitMaxGrams ?? perUnitGrams ?? grams)
    );
  } else {
    minGrams = decomposition.minGrams;
    maxGrams = decomposition.maxGrams;
  }
  minGrams = Math.min(minGrams, grams);
  maxGrams = Math.max(maxGrams, grams);

  const matchType = snapshotMatchType(raw.matchType, `${rowId}.matchType`);
  const canonicalName = snapshotString(
    raw.canonicalName,
    `${rowId}.canonicalName`,
    true
  );
  return {
    rowId,
    rawName: snapshotString(raw.rawName, `${rowId}.rawName`),
    canonicalHint: decomposition.canonicalHint,
    match: {
      foodId: canonicalName,
      canonicalName,
      score: 0,
      matchType,
    },
    grams,
    minGrams,
    maxGrams,
    macros,
    minMacros: scaleMacros(macros, grams, minGrams),
    maxMacros: scaleMacros(macros, grams, maxGrams),
    source: snapshotSource(raw.source, `${rowId}.source`),
    portionKind: snapshotPortionKind(
      raw.portionKind ?? decomposition.portionKind,
      `${rowId}.portionKind`
    ),
    count,
    perUnitGrams,
    perUnitMinGrams: decomposition.perUnitMinGrams,
    perUnitMaxGrams: decomposition.perUnitMaxGrams,
    sizeSpecifiedByUser: decomposition.sizeSpecifiedByUser,
  };
}

export function sessionToResolvedIngredients(
  session: MealAnalysisSessionRecord,
  decomposition: NormalizedDecomposition
): ResolvedIngredient[] {
  const raw = snapshotRecord(
    session.ingredientsData,
    'resolved ingredients data'
  );
  if (raw.analysisId != null && raw.analysisId !== session.analysisId) {
    throw new InvalidMealAnalysisSnapshotError(
      'ingredients analysisId does not match the row'
    );
  }
  const values = raw.ingredients;
  if (
    !Array.isArray(values) ||
    values.length !== decomposition.ingredients.length
  ) {
    throw new InvalidMealAnalysisSnapshotError(
      'resolved ingredients do not match the decomposition row count'
    );
  }

  const byRowId = new Map(
    decomposition.ingredients.map((item) => [item.rowId, item])
  );
  const isFullSnapshot =
    raw.snapshotVersion === RESOLVED_INGREDIENT_SNAPSHOT_VERSION;
  const seen = new Set<string>();
  return values.map((value, index) => {
    const record = snapshotRecord(value, `resolved ingredient ${index}`);
    const rowId = snapshotString(
      record.rowId,
      `resolved ingredient ${index}.rowId`
    );
    const decomposed = byRowId.get(rowId);
    if (!decomposed || seen.has(rowId)) {
      throw new InvalidMealAnalysisSnapshotError(
        `resolved row ${rowId} is missing from or duplicated against decomposition`
      );
    }
    seen.add(rowId);
    const ingredient = isFullSnapshot
      ? parseFullResolvedIngredient(record, index)
      : legacyResolvedIngredient(record, index, decomposed, session);
    if (
      ingredient.rawName !== decomposed.rawName ||
      ingredient.canonicalHint !== decomposed.canonicalHint
    ) {
      throw new InvalidMealAnalysisSnapshotError(
        `resolved row ${rowId} changed decomposition identity`
      );
    }
    return ingredient;
  });
}

export function validatePersistedUncertaintySnapshot(
  session: MealAnalysisSessionRecord,
  calculated: UncertaintyReport,
  expectedClarificationIds: string[]
): UncertaintyReport {
  const persisted = snapshotRecord(session.uncertaintyData, 'uncertainty data');
  if (
    persisted.needsClarification !== (expectedClarificationIds.length > 0)
  ) {
    throw new InvalidMealAnalysisSnapshotError(
      'uncertainty flag disagrees with the resolved ingredient bands'
    );
  }
  const persistedVariance = snapshotNumber(
    persisted.variancePercent,
    'uncertainty variancePercent'
  );
  const calorieBand = snapshotRecord(
    persisted.calorieBand,
    'uncertainty calorieBand'
  );
  const persistedMinCalories = snapshotNumber(
    calorieBand.min,
    'uncertainty calorieBand.min'
  );
  const persistedMaxCalories = snapshotNumber(
    calorieBand.max,
    'uncertainty calorieBand.max'
  );
  if (
    Math.abs(persistedVariance - calculated.variancePercent) > 0.001 ||
    persistedMinCalories !== calculated.minTotal.calories ||
    persistedMaxCalories !== calculated.maxTotal.calories
  ) {
    throw new InvalidMealAnalysisSnapshotError(
      'uncertainty totals disagree with the resolved ingredient bands'
    );
  }
  const persistedClarifications = persisted.clarifications;
  if (!Array.isArray(persistedClarifications)) {
    throw new InvalidMealAnalysisSnapshotError(
      'uncertainty clarifications are not an array'
    );
  }
  const persistedIds = persistedClarifications.map((value, index) => {
    const item = snapshotRecord(value, `persisted clarification ${index}`);
    return snapshotString(
      item.clarificationId,
      `persisted clarification ${index}.id`
    );
  });
  if (
    persistedIds.length !== expectedClarificationIds.length ||
    persistedIds.some(
      (id, index) => id !== expectedClarificationIds[index]
    )
  ) {
    throw new InvalidMealAnalysisSnapshotError(
      'pending clarification IDs disagree with the resolved snapshot'
    );
  }
  return calculated;
}

function parseClarificationAnswers(
  value: unknown,
  label: string
): MealClarificationAnswer[] {
  if (value == null) return [];
  if (!Array.isArray(value)) {
    throw new InvalidMealAnalysisSnapshotError(
      `${label} are not an array`
    );
  }
  return value.map((item, index) => {
    const answer = snapshotRecord(item, `${label} ${index}`);
    return {
      clarificationId: snapshotString(
        answer.clarificationId,
        `${label} ${index}.clarificationId`
      ),
      selectedOptionId: snapshotString(
        answer.selectedOptionId,
        `${label} ${index}.selectedOptionId`
      ),
    };
  });
}

export function clarificationAnswersFromSession(
  session: MealAnalysisSessionRecord
): MealClarificationAnswer[] {
  return parseClarificationAnswers(
    session.clarificationAnswers,
    'clarification answer'
  );
}

export function pendingClarificationAnswersFromSession(
  session: MealAnalysisSessionRecord
): MealClarificationAnswer[] {
  return parseClarificationAnswers(
    session.pendingClarificationAnswers,
    'pending clarification answer'
  );
}
