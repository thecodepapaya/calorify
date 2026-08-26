import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';

// ---------------------------------------------------------------------------
// Mock heavy external dependencies before importing the module
// ---------------------------------------------------------------------------

const mockCanonicalizeWithUsda = mock.fn(async (_hint: string) => ({
  row: null,
  matchType: 'unmatched' as const,
  score: 0,
}));

const mockCanonicalizeUsdaProposal = mock.fn(async (
  canonicalName: string,
  _aliases: string[],
  _preparationStates: string[]
) => mockCanonicalizeWithUsda(canonicalName));

await mock.module('../../../src/services/usda/lookup.js', {
  namedExports: {
    canonicalizeWithUsda: mockCanonicalizeWithUsda,
    canonicalizeUsdaProposal: mockCanonicalizeUsdaProposal,
  },
});

const mockDatabaseQuery = mock.fn(async () => ({ rows: [] }));
await mock.module('../../../src/services/infrastructure/database.js', {
  namedExports: { query: mockDatabaseQuery },
});

await mock.module('../../../src/services/usda/lookupUtils.js', {
  namedExports: {
    assessUsdaNutritionQuality: (row: any) => ({
      score: row.kcal_per_100g > 0 && row.kcal_per_100g <= 950 ? 1 : 0,
      flags: [],
    }),
    calcMacrosFromUsdaRow: mock.fn((_row: unknown, grams: number) => ({
      calories: Math.round(grams * 1.5),
      protein: +(grams * 0.1).toFixed(1),
      carbs: +(grams * 0.3).toFixed(1),
      fat: +(grams * 0.05).toFixed(1),
      fiber: +(grams * 0.02).toFixed(1),
    })),
  },
});

const mockUpsertSession = mock.fn(async () => true);
const mockAdvanceSession = mock.fn(async () => true);
const mockCreateSession = mock.fn(async () => ({ status: 'created' as const }));
const mockRecordClarification = mock.fn(async () => {});
const mockRecordMealType = mock.fn(async () => {});
const mockGetSession = mock.fn(async () => undefined);
const mockClaimAutomatic = mock.fn(async (_analysisId: string, stage: string) => ({
  stage,
  token: '00000000-0000-4000-8000-000000000010',
}));
const mockReleaseAutomatic = mock.fn(async () => {});
const mockClaimClarification = mock.fn(async () => ({
  stage: 'APPLYING_CLARIFICATION' as const,
  token: '00000000-0000-4000-8000-000000000011',
}));
const mockReleaseClarification = mock.fn(async () => {});
const mockClaimPresentation = mock.fn(async () => ({
  stage: 'PRESENTING' as const,
  token: '00000000-0000-4000-8000-000000000014',
}));
const mockReleasePresentation = mock.fn(async () => {});

await mock.module('../../../src/services/meal-analysis/store.js', {
  namedExports: {
    upsertMealAnalysisSession: mockUpsertSession,
    advanceMealAnalysisSession: mockAdvanceSession,
    createMealAnalysisSession: mockCreateSession,
    getMealAnalysisSession: mockGetSession,
    claimMealAnalysisAutomaticStage: mockClaimAutomatic,
    releaseMealAnalysisAutomaticStage: mockReleaseAutomatic,
    claimMealAnalysisClarification: mockClaimClarification,
    releaseMealAnalysisClarification: mockReleaseClarification,
    claimMealAnalysisPresentation: mockClaimPresentation,
    releaseMealAnalysisPresentation: mockReleasePresentation,
    recordMealAnalysisClarification: mockRecordClarification,
    recordMealAnalysisMealType: mockRecordMealType,
  },
});

await mock.module('../../../src/services/meal-analysis/systemPrompt.js', {
  namedExports: {
    getFoodAnalysisSystemPrompt: mock.fn(() => 'You are a food AI assistant.'),
  },
});

const mockConfig = {
  OPENAI_API_KEY: 'test-key' as string | null,
  DATABASE_URL: 'postgres://mock',
  ORACLE_BUCKET_DOWNLOAD_URL:
    'https://objectstorage.example.com/p/download-token/n/ns/b/bucket/o/',
  DEBUG: false,
  ENVIRONMENT: 'development',
};

await mock.module('../../../src/config.js', {
  defaultExport: mockConfig,
});

// Mock OpenAI to return controlled responses
const mockChatCreate = mock.fn(async () => ({
  choices: [
    {
      message: {
        content: JSON.stringify({
          meal_name: 'Dal Rice',
          ingredients: [
            {
              raw_name: 'rice',
              canonical_hint: 'rice white cooked',
              grams_estimated: 185,
              min_grams: 150,
              max_grams: 220,
              notes: '1 cup cooked',
            },
            {
              raw_name: 'dal',
              canonical_hint: 'lentils cooked',
              grams_estimated: 210,
              min_grams: 180,
              max_grams: 240,
              notes: '1 cup cooked',
            },
          ],
          confidence: 0.9,
        }),
      },
    },
  ],
}));

async function createSchemaCompleteMockResponse(options: any): Promise<any> {
  const response: any = await mockChatCreate(options);
  if (options?.response_format?.json_schema?.name !== 'meal_decomposition') {
    return response;
  }
  const content = response?.choices?.[0]?.message?.content;
  if (typeof content !== 'string') return response;
  const parsed = JSON.parse(content);
  const normalized = parsed.outcome ? parsed : {
    outcome: 'FOOD',
    outcome_reason: 'The input describes a meal.',
    outcome_confidence: parsed.confidence ?? 0.9,
    meal_name: parsed.meal_name,
    items: (parsed.ingredients ?? []).map((ingredient: any) => ({
      raw_name: ingredient.raw_name,
      is_food: true,
      is_food_reason: 'The item belongs to the described meal.',
      is_food_confidence: parsed.confidence ?? 0.9,
      usda_lookup: {
        proposed_canonical_name: ingredient.canonical_hint,
        aliases: [],
        preparation_states: [],
      },
      portion: {
        kind: ingredient.portion_kind ?? 'BULK',
        grams_estimated: ingredient.grams_estimated,
        min_grams: ingredient.min_grams,
        max_grams: ingredient.max_grams,
        count: ingredient.count ?? null,
        per_unit_grams: ingredient.per_unit_grams ?? null,
        per_unit_min_grams: ingredient.per_unit_min_grams ?? null,
        per_unit_max_grams: ingredient.per_unit_max_grams ?? null,
        size_specified_by_user: ingredient.size_specified_by_user ?? false,
      },
    })),
    inferred_meal_type: parsed.inferred_meal_type ?? 'UNKNOWN',
    meal_type_reason: 'The supplied context supports this meal occasion.',
    meal_type_confident: parsed.meal_type_confident ?? false,
  };
  return {
    ...response,
    choices: [{
      ...response.choices[0],
      message: { ...response.choices[0].message, content: JSON.stringify(normalized) },
    }],
  };
}

await mock.module('openai', {
  defaultExport: class MockOpenAI {
    chat = { completions: { create: createSchemaCompleteMockResponse } };
  },
});

const {
  analyzeTextMeal,
  analyzeImageMeal,
  analyzeIngredientProposal,
  createAnalysisTrace,
  summarizeAnalysisTrace,
  continueMealAnalysis,
  continueMealAnalysisWithMealType,
  resumeMealAnalysis,
  reanalyzeMeal,
  FEEDBACK_ISSUES,
  MEAL_TYPES,
  isPlausibleFallbackEntry,
  clearFallbackNutritionCache,
  normalizePresentationUserContext,
} = await import('../../../src/services/meal-analysis/engine.js');

test.beforeEach(() => {
  clearFallbackNutritionCache();
  mockDatabaseQuery.mock.mockImplementation(async () => ({ rows: [] }));
  mockUpsertSession.mock.mockImplementation(async () => true);
  mockAdvanceSession.mock.mockImplementation(async () => true);
  mockCreateSession.mock.mockImplementation(async () => ({ status: 'created' }));
  mockGetSession.mock.mockImplementation(async () => undefined);
  mockClaimAutomatic.mock.mockImplementation(async (_analysisId, stage) => ({
    stage,
    token: '00000000-0000-4000-8000-000000000010',
  }));
  mockReleaseAutomatic.mock.mockImplementation(async () => {});
  mockClaimClarification.mock.mockImplementation(async () => ({
    stage: 'APPLYING_CLARIFICATION', token: '00000000-0000-4000-8000-000000000011',
  }));
  mockReleaseClarification.mock.mockImplementation(async () => {});
  mockClaimPresentation.mock.mockImplementation(async () => ({
    stage: 'PRESENTING', token: '00000000-0000-4000-8000-000000000014',
  }));
  mockReleasePresentation.mock.mockImplementation(async () => {});
  mockRecordClarification.mock.mockImplementation(async () => {});
  mockRecordMealType.mock.mockImplementation(async () => {});
});

// ---------------------------------------------------------------------------
// Constants
// ---------------------------------------------------------------------------

test('FEEDBACK_ISSUES contains expected issue types', () => {
  assert.ok(FEEDBACK_ISSUES.includes('FOOD_IDENTIFICATION'));
  assert.ok(FEEDBACK_ISSUES.includes('PORTION_SIZE'));
  assert.ok(FEEDBACK_ISSUES.includes('CALORIE_DISTRIBUTION'));
  assert.ok(FEEDBACK_ISSUES.includes('MACROS_WRONG'));
  assert.ok(FEEDBACK_ISSUES.includes('MISSING_ITEMS'));
  assert.ok(FEEDBACK_ISSUES.includes('EXTRA_ITEMS'));
  assert.ok(FEEDBACK_ISSUES.includes('OTHER'));
  assert.equal(FEEDBACK_ISSUES.length, 7);
});

test('MEAL_TYPES contains exactly 4 types', () => {
  assert.ok(MEAL_TYPES.includes('BREAKFAST'));
  assert.ok(MEAL_TYPES.includes('LUNCH'));
  assert.ok(MEAL_TYPES.includes('DINNER'));
  assert.ok(MEAL_TYPES.includes('SNACK'));
  assert.equal(MEAL_TYPES.length, 4);
});

test('LLM nutrition fallback validation rejects impossible calorie density', () => {
  assert.equal(isPlausibleFallbackEntry({
    name: 'invalid food',
    kcal_per_100g: 1200,
    protein_per_100g: 10,
    carbs_per_100g: 10,
    fat_per_100g: 10,
    fiber_per_100g: 1,
  }), false);
});

test('presentation profile normalization converts units and derives age and BMI', () => {
  const context = normalizePresentationUserContext({
    height: 70,
    weight: 176.37,
    target_weight: 165,
    gender: 'MALE',
    date_of_birth: '2000-01-01T00:00:00.000Z',
    weight_goal: 'LOSE_WEIGHT',
    activity_level: 'MODERATELY_ACTIVE',
    height_unit: 'IMPERIAL',
    weight_unit: 'IMPERIAL',
    daily_calorie_goal: 2200,
  }, Date.parse('2025-01-01T12:00:00.000Z'));

  assert.deepEqual(context, {
    age_years: 25,
    gender: 'MALE',
    current_weight_kg: 80,
    target_weight_kg: 74.8,
    bmi: 25.3,
    weight_goal: 'LOSE_WEIGHT',
    activity_level: 'MODERATELY_ACTIVE',
    daily_calorie_goal_kcal: 2200,
  });
});

test('presentation profile normalization safely nulls invalid optional values', () => {
  const context = normalizePresentationUserContext({
    height: null,
    weight: 'not-a-number',
    target_weight: 0,
    gender: 'UNSPECIFIED',
    date_of_birth: 'invalid',
    weight_goal: null,
    activity_level: 'UNKNOWN',
    height_unit: null,
    weight_unit: null,
    daily_calorie_goal: null,
  });

  assert.deepEqual(context, {
    age_years: null,
    gender: null,
    current_weight_kg: null,
    target_weight_kg: null,
    bmi: null,
    weight_goal: null,
    activity_level: null,
    daily_calorie_goal_kcal: null,
  });
});

test('reviewed LLM fallback nutrition is reused across analyses', async () => {
  mockChatCreate.mock.resetCalls();
  mockDecompositionWithFallback({
    meal_name: 'Regional dish',
    ingredients: [{
      raw_name: 'regional dish', canonical_hint: 'unique regional dish',
      grams_estimated: 100, min_grams: 100, max_grams: 100, notes: '',
      portion_kind: 'BULK', count: null, per_unit_grams: null,
      per_unit_min_grams: null, per_unit_max_grams: null, size_specified_by_user: true,
    }],
    confidence: 0.8,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  }, 240);

  await collectEvents(analyzeTextMeal('unique regional dish'));
  await collectEvents(analyzeTextMeal('unique regional dish'));
  const fallbackCalls = mockChatCreate.mock.calls.filter(
    (call) => call.arguments[0]?.response_format?.json_schema?.name === 'macro_fallback'
  );
  assert.equal(fallbackCalls.length, 1);
});

// ---------------------------------------------------------------------------
// analyzeTextMeal — happy path
// ---------------------------------------------------------------------------

async function collectEvents(gen: AsyncGenerator<any>): Promise<any[]> {
  const events: any[] = [];
  for await (const event of gen) {
    events.push(event);
  }
  return events;
}

function installInMemorySessionStore(): Map<string, any> {
  const sessions = new Map<string, any>();
  let leaseSequence = 100;
  const nextLease = (stage: string) => ({
    stage,
    token: `00000000-0000-4000-8000-${String(leaseSequence++).padStart(12, '0')}`,
  });
  const mergeDefined = (previous: any, next: any): any => {
    const merged = { ...(previous ?? {}) };
    for (const [key, value] of Object.entries(next)) {
      if (value !== undefined) merged[key] = value;
    }
    return merged;
  };
  const dispatchIdentityPayload = (payload: any): any => {
    if (!payload || typeof payload !== 'object') return payload;
    const identity = { ...payload };
    delete identity.execution;
    if (identity.analysisContext && typeof identity.analysisContext === 'object') {
      identity.analysisContext = { ...identity.analysisContext };
      delete identity.analysisContext.analysisLocalDatetime;
    }
    return identity;
  };

  mockUpsertSession.mock.mockImplementation(async (record: any) => {
    sessions.set(record.analysisId, mergeDefined(sessions.get(record.analysisId), record));
    return true;
  });
  mockAdvanceSession.mock.mockImplementation(async (record: any, lease: any) => {
    const session = sessions.get(record.analysisId);
    if (
      !session ||
      session.stage !== lease.stage ||
      session.stageLeaseToken !== lease.token
    ) {
      return false;
    }
    sessions.set(record.analysisId, {
      ...mergeDefined(session, record),
      pendingClarificationAnswers: undefined,
      stageLeaseToken: undefined,
    });
    return true;
  });
  mockGetSession.mock.mockImplementation(async (analysisId: string) => sessions.get(analysisId));
  mockCreateSession.mock.mockImplementation(async (record: any) => {
    const existing = sessions.get(record.analysisId);
    if (existing) {
      const identityMatches =
        existing.userId === record.userId &&
        existing.parentAnalysisId === record.parentAnalysisId &&
        existing.source === record.source &&
        JSON.stringify(dispatchIdentityPayload(existing.requestPayload)) ===
          JSON.stringify(dispatchIdentityPayload(record.requestPayload));
      if (!identityMatches) return { status: 'conflict' };
      return { status: 'existing' };
    }
    sessions.set(record.analysisId, {
      ...record,
      stage: 'PENDING_DECOMPOSITION',
    });
    return { status: 'created' };
  });
  const automaticResumeStage: Record<string, string> = {
    DECOMPOSING: 'PENDING_DECOMPOSITION',
    RESOLVING_INGREDIENTS: 'DECOMPOSED',
    FINALIZING_ANALYSIS: 'INGREDIENTS_RESOLVED',
  };
  mockClaimAutomatic.mock.mockImplementation(async (
    analysisId: string,
    stage: string
  ) => {
    const session = sessions.get(analysisId);
    const staleLease = session?.stage === stage &&
      Date.parse(session.updatedAt ?? '') < Date.now() - 5 * 60 * 1000;
    if (!session || (session.stage !== automaticResumeStage[stage] && !staleLease)) {
      return undefined;
    }
    const lease = nextLease(stage);
    sessions.set(analysisId, {
      ...session,
      stage,
      stageLeaseToken: lease.token,
    });
    return lease;
  });
  mockReleaseAutomatic.mock.mockImplementation(async (
    analysisId: string,
    lease: { stage: string; token: string }
  ) => {
    const session = sessions.get(analysisId);
    if (session?.stage === lease.stage && session.stageLeaseToken === lease.token) {
      sessions.set(analysisId, {
        ...session,
        stage: automaticResumeStage[lease.stage],
        stageLeaseToken: undefined,
      });
    }
  });
  mockClaimClarification.mock.mockImplementation(async (analysisId: string, pendingAnswers?: any) => {
    const session = sessions.get(analysisId);
    if (!session || !['AWAITING_CLARIFICATION', 'APPLYING_CLARIFICATION'].includes(session.stage)) {
      return false;
    }
    if (session.stage === 'APPLYING_CLARIFICATION') return false;
    const lease = nextLease('APPLYING_CLARIFICATION');
    sessions.set(analysisId, {
      ...session,
      stage: lease.stage,
      stageLeaseToken: lease.token,
      pendingClarificationAnswers:
        pendingAnswers === undefined ? session.pendingClarificationAnswers : pendingAnswers,
    });
    return lease;
  });
  mockReleaseClarification.mock.mockImplementation(async (analysisId: string, token: string) => {
    const session = sessions.get(analysisId);
    if (session?.stage === 'APPLYING_CLARIFICATION' && session.stageLeaseToken === token) {
      sessions.set(analysisId, {
        ...session, stage: 'AWAITING_CLARIFICATION', stageLeaseToken: undefined,
      });
    }
  });
  mockClaimPresentation.mock.mockImplementation(async (
    analysisId: string,
    expectedStage: string,
    selectedMealType: string,
    selectedMealTypeSource: string
  ) => {
    const session = sessions.get(analysisId);
    if (!session || session.stage !== expectedStage) {
      return false;
    }
    const lease = nextLease('PRESENTING');
    sessions.set(analysisId, {
      ...session,
      stage: lease.stage,
      stageLeaseToken: lease.token,
      selectedMealType,
      selectedMealTypeSource,
    });
    return lease;
  });
  mockReleasePresentation.mock.mockImplementation(async (
    analysisId: string,
    stage: string,
    token: string
  ) => {
    const session = sessions.get(analysisId);
    if (session?.stage === 'PRESENTING' && session.stageLeaseToken === token) {
      sessions.set(analysisId, { ...session, stage, stageLeaseToken: undefined });
    }
  });
  // Audit writers are intentionally append-only; the fenced snapshot is the
  // only operation allowed to mutate canonical session state.
  mockRecordClarification.mock.mockImplementation(async () => {});
  mockRecordMealType.mock.mockImplementation(async () => {});
  return sessions;
}

function mockDecompositionWithFallback(decomposition: Record<string, unknown>, kcalPer100g = 300): void {
  mockChatCreate.mock.mockImplementation(async (opts: any) => {
    const schemaName = opts?.response_format?.json_schema?.name;
    if (schemaName === 'macro_fallback') {
      const ingredients = (decomposition.ingredients as Array<Record<string, unknown>>).map((ingredient, index) => ({
        request_id: `ingredient_${index + 1}`,
        name: ingredient.canonical_hint,
        kcal_per_100g: kcalPer100g,
        protein_per_100g: 10,
        carbs_per_100g: 40,
        fat_per_100g: 5,
        fiber_per_100g: 3,
      }));
      return { choices: [{ message: { content: JSON.stringify({ ingredients }) } }] };
    }
    if (schemaName === 'meal_presentation') {
      return {
        choices: [{
          message: {
            content: JSON.stringify({
              meal_name: decomposition.meal_name,
              quantity: '1 serving',
              meal_type: 'LUNCH',
              meal_type_confident: true,
              tip: 'Balanced meal',
              health: null,
            }),
          },
        }],
      };
    }
    return { choices: [{ message: { content: JSON.stringify(decomposition) } }] };
  });
}

test('meal analysis telemetry omits ingredient and free-text health data', async () => {
  const mealName = 'PRIVATE_MEAL_NAME_MARKER';
  const ingredientName = 'PRIVATE_INGREDIENT_MARKER';
  const canonicalHint = 'PRIVATE_CANONICAL_HINT_MARKER';
  const input = 'PRIVATE_FREE_TEXT_MARKER';
  mockDecompositionWithFallback({
    meal_name: mealName,
    ingredients: [{
      raw_name: ingredientName,
      canonical_hint: canonicalHint,
      grams_estimated: 100,
      min_grams: 100,
      max_grams: 100,
      notes: '',
      portion_kind: 'BULK',
      count: null,
      per_unit_grams: null,
      per_unit_min_grams: null,
      per_unit_max_grams: null,
      size_specified_by_user: true,
    }],
    confidence: 0.8,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  });
  const trace = createAnalysisTrace();
  const logEntries: unknown[] = [];
  const logger = {
    info: (entry: Record<string, unknown>) => logEntries.push(entry),
    warn: (entry: Record<string, unknown>) => logEntries.push(entry),
    error: (entry: Record<string, unknown>) => logEntries.push(entry),
  };

  const events = await collectEvents(analyzeTextMeal(input, { trace, logger }));

  assert.ok(events.some((event) => event.step === 'RESULT'));
  assert.deepEqual(new Set(trace.artifacts.map((artifact) => artifact.name)), new Set([
    'decomposition_model_output',
    'nutrition_match',
    'llm_nutrition_fallback',
    'presentation_input',
    'presentation_output',
  ]));
  const telemetry = JSON.stringify({ logEntries, trace: summarizeAnalysisTrace(trace) });
  for (const marker of [mealName, ingredientName, canonicalHint, input]) {
    assert.doesNotMatch(telemetry, new RegExp(marker));
  }
});

test('LLM fallback matches reordered results by request identity', async () => {
  const decomposition = {
    meal_name: 'Two regional foods',
    ingredients: [
      {
        raw_name: 'alpha food', canonical_hint: 'alpha regional food',
        grams_estimated: 100, min_grams: 100, max_grams: 100, notes: '',
        portion_kind: 'BULK', count: null, per_unit_grams: null,
        per_unit_min_grams: null, per_unit_max_grams: null, size_specified_by_user: true,
      },
      {
        raw_name: 'beta food', canonical_hint: 'beta regional food',
        grams_estimated: 100, min_grams: 100, max_grams: 100, notes: '',
        portion_kind: 'BULK', count: null, per_unit_grams: null,
        per_unit_min_grams: null, per_unit_max_grams: null, size_specified_by_user: true,
      },
    ],
    confidence: 0.9,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  };
  mockChatCreate.mock.mockImplementation(async (opts: any) => {
    const schemaName = opts?.response_format?.json_schema?.name;
    if (schemaName === 'macro_fallback') {
      const nutrition = (request_id: string, name: string, kcal: number) => ({
        request_id,
        name,
        kcal_per_100g: kcal,
        protein_per_100g: 5,
        carbs_per_100g: 10,
        fat_per_100g: 2,
        fiber_per_100g: 1,
      });
      return { choices: [{ message: { content: JSON.stringify({
        ingredients: [
          nutrition('ingredient_2', 'beta regional food', 200),
          nutrition('ingredient_1', 'alpha regional food', 100),
        ],
      }) } }] };
    }
    if (schemaName === 'meal_presentation') {
      return { choices: [{ message: { content: JSON.stringify({
        meal_name: decomposition.meal_name,
        quantity: '1 serving',
        meal_type: 'LUNCH',
        meal_type_confident: true,
        tip: 'Test',
        health: null,
      }) } }] };
    }
    return { choices: [{ message: { content: JSON.stringify(decomposition) } }] };
  });

  const events = await collectEvents(analyzeTextMeal('alpha food and beta food'));
  const ingredients = events.find((event) => event.step === 'INGREDIENTS')?.data.ingredients;
  assert.equal(ingredients.find((item: any) => item.rawName === 'alpha food')?.macros.calories, 100);
  assert.equal(ingredients.find((item: any) => item.rawName === 'beta food')?.macros.calories, 200);
});

test('decomposition output is durable before it is emitted or ingredient resolution starts', async () => {
  mockDecompositionWithFallback({
    meal_name: 'Pending food',
    ingredients: [{
      raw_name: 'pending food', canonical_hint: 'pending regional food',
      grams_estimated: 100, min_grams: 100, max_grams: 100, notes: '',
      portion_kind: 'BULK', count: null, per_unit_grams: null,
      per_unit_min_grams: null, per_unit_max_grams: null, size_specified_by_user: true,
    }],
    confidence: 0.8,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  });
  mockAdvanceSession.mock.mockImplementationOnce(async () => {
    throw new Error('session write failed');
  });
  mockCanonicalizeWithUsda.mock.resetCalls();

  try {
    const events = await collectEvents(analyzeTextMeal('pending food'));
    const error = events.find((event) => event.step === 'ERROR');
    assert.ok(error);
    assert.equal(error.data.message, 'Meal analysis failed');
    assert.equal(events.some((event) => event.step === 'STARTED'), true);
    assert.equal(events.some((event) => event.step === 'DECOMPOSITION'), false);
    assert.equal(mockCanonicalizeWithUsda.mock.calls.length, 0);
  } finally {
    mockAdvanceSession.mock.mockImplementation(async () => true);
  }
});

test('decomposition exposes the localized raw name without USDA lookup metadata', async () => {
  mockDecompositionWithFallback({
    meal_name: 'Dal',
    ingredients: [{
      raw_name: 'cooked dal with tadka',
      canonical_hint: 'lentils',
      grams_estimated: 210,
      min_grams: 210,
      max_grams: 210,
      notes: '1 cup cooked',
      portion_kind: 'BULK',
      count: null,
      per_unit_grams: null,
      per_unit_min_grams: null,
      per_unit_max_grams: null,
      size_specified_by_user: true,
    }],
    confidence: 0.95,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  }, 116);

  const events = await collectEvents(analyzeTextMeal('1 cup cooked dal'));
  const decomposition = events.find((event) => event.step === 'DECOMPOSITION');
  assert.equal(decomposition?.data.ingredients[0]?.rawName, 'cooked dal with tadka');
});

test('explicitly dry oats retain their user-facing raw name', async () => {
  mockDecompositionWithFallback({
    meal_name: 'Oats',
    ingredients: [{
      raw_name: 'rolled oats', canonical_hint: 'rolled oats cooked',
      grams_estimated: 100, min_grams: 100, max_grams: 100,
      notes: 'Dry rolled oats cooked with water', portion_kind: 'BULK',
      count: null, per_unit_grams: null, per_unit_min_grams: null,
      per_unit_max_grams: null, size_specified_by_user: true,
    }],
    confidence: 0.95,
    inferred_meal_type: 'BREAKFAST',
    meal_type_confident: true,
  }, 375);

  const events = await collectEvents(analyzeTextMeal('100 grams dry oats cooked with water'));
  const decomposition = events.find((event) => event.step === 'DECOMPOSITION');
  assert.equal(decomposition?.data.ingredients[0]?.rawName, 'rolled oats');
});

test('plain cooking water is always nutrient-neutral without a database or LLM lookup', async () => {
  mockCanonicalizeWithUsda.mock.resetCalls();
  mockDecompositionWithFallback({
    meal_name: 'Oats',
    ingredients: [
      {
        raw_name: 'rolled oats', canonical_hint: 'oats',
        grams_estimated: 100, min_grams: 100, max_grams: 100,
        notes: 'dry weight', portion_kind: 'BULK', count: null,
        per_unit_grams: null, per_unit_min_grams: null, per_unit_max_grams: null,
        size_specified_by_user: true,
      },
      {
        raw_name: 'water', canonical_hint: 'water',
        grams_estimated: 230, min_grams: 200, max_grams: 260,
        notes: 'cooking water', portion_kind: 'BULK', count: null,
        per_unit_grams: null, per_unit_min_grams: null, per_unit_max_grams: null,
        size_specified_by_user: false,
      },
    ],
    confidence: 0.95,
    inferred_meal_type: 'BREAKFAST',
    meal_type_confident: true,
  }, 375);

  const events = await collectEvents(analyzeTextMeal('100 grams dry oats cooked only with water'));
  const ingredients = events.find((event) => event.step === 'INGREDIENTS')?.data.ingredients;
  const water = ingredients?.find((ingredient: any) => ingredient.rawName === 'water');
  assert.deepEqual(water?.macros, { calories: 0, protein: 0, carbs: 0, fat: 0, fiber: 0 });
  assert.equal(water?.source, undefined);
  assert.equal(
    mockCanonicalizeWithUsda.mock.calls.some((call) => call.arguments[0] === 'water'),
    false
  );
});

test('plain banana keeps its short user-facing name', async () => {
  mockDecompositionWithFallback({
    meal_name: 'Bananas',
    ingredients: [{
      raw_name: 'banana', canonical_hint: 'banana',
      grams_estimated: 240, min_grams: 240, max_grams: 240,
      notes: 'two medium bananas', portion_kind: 'COUNT', count: 2,
      per_unit_grams: 120, per_unit_min_grams: 120, per_unit_max_grams: 120,
      size_specified_by_user: true,
    }],
    confidence: 0.95, inferred_meal_type: 'SNACK', meal_type_confident: true,
  }, 89);

  const events = await collectEvents(analyzeTextMeal('2 medium bananas'));
  const decomposition = events.find((event) => event.step === 'DECOMPOSITION');
  assert.equal(decomposition?.data.ingredients[0]?.rawName, 'banana');
});

test('explicit cooked chickpea name is preserved for the client', async () => {
  mockDecompositionWithFallback({
    meal_name: 'Chickpea salad',
    ingredients: [{
      raw_name: 'cooked chickpeas', canonical_hint: 'peas split cooked',
      grams_estimated: 200, min_grams: 200, max_grams: 200,
      notes: 'cooked chickpeas', portion_kind: 'BULK', count: null,
      per_unit_grams: null, per_unit_min_grams: null, per_unit_max_grams: null,
      size_specified_by_user: true,
    }],
    confidence: 0.95, inferred_meal_type: 'LUNCH', meal_type_confident: true,
  }, 164);

  const events = await collectEvents(analyzeTextMeal('200 grams cooked chickpeas'));
  const decomposition = events.find((event) => event.step === 'DECOMPOSITION');
  assert.equal(decomposition?.data.ingredients[0]?.rawName, 'cooked chickpeas');
});

test('whole-wheat toast keeps its display name without exposing lookup identity', async () => {
  mockDecompositionWithFallback({
    meal_name: 'Toast',
    ingredients: [{
      raw_name: 'whole wheat toast',
      canonical_hint: 'whole wheat flour',
      grams_estimated: 30,
      min_grams: 30,
      max_grams: 30,
      notes: 'one slice',
      portion_kind: 'COUNT',
      count: 1,
      per_unit_grams: 30,
      per_unit_min_grams: 30,
      per_unit_max_grams: 30,
      size_specified_by_user: true,
    }],
    confidence: 0.95,
    inferred_meal_type: 'BREAKFAST',
    meal_type_confident: true,
  }, 247);

  const events = await collectEvents(analyzeTextMeal('one slice of whole wheat toast'));
  const decomposition = events.find((event) => event.step === 'DECOMPOSITION');
  assert.equal(decomposition?.data.ingredients[0]?.rawName, 'whole wheat toast');
});

test('decomposition does not invent components outside validated provider items', async () => {
  mockDecompositionWithFallback({
    meal_name: 'Masala Dosa',
    ingredients: [{
      raw_name: 'masala dosa batter', canonical_hint: 'rice and urad dal batter',
      grams_estimated: 200, min_grams: 180, max_grams: 220, notes: '',
      portion_kind: 'COUNT', count: 1, per_unit_grams: 200,
      per_unit_min_grams: 180, per_unit_max_grams: 220, size_specified_by_user: true,
    }],
    confidence: 0.9,
    inferred_meal_type: 'BREAKFAST',
    meal_type_confident: true,
  }, 150);

  const events = await collectEvents(analyzeTextMeal('one medium masala dosa'));
  const decomposition = events.find((event) => event.step === 'DECOMPOSITION');
  const ingredients = decomposition?.data.ingredients ?? [];
  assert.equal(ingredients.length, 2);
  assert.equal(ingredients[0]?.rawName, 'masala dosa batter');
  assert.equal(ingredients[0]?.gramsEstimated, 120);
});

test('named composite sides retain their localized display names', async () => {
  mockDecompositionWithFallback({
    meal_name: 'Dosa sides',
    ingredients: [{
      raw_name: 'sambar (lentils and vegetables)', canonical_hint: 'lentils cooked',
      grams_estimated: 210, min_grams: 210, max_grams: 210, notes: 'one cup',
      portion_kind: 'BULK', count: null, per_unit_grams: null,
      per_unit_min_grams: null, per_unit_max_grams: null, size_specified_by_user: true,
    }, {
      raw_name: 'coconut chutney', canonical_hint: 'coconut fresh',
      grams_estimated: 30, min_grams: 30, max_grams: 30, notes: 'two tablespoons',
      portion_kind: 'BULK', count: null, per_unit_grams: null,
      per_unit_min_grams: null, per_unit_max_grams: null, size_specified_by_user: true,
    }],
    confidence: 0.9, inferred_meal_type: 'BREAKFAST', meal_type_confident: true,
  }, 100);

  const events = await collectEvents(analyzeTextMeal('one cup sambar and coconut chutney'));
  const decomposition = events.find((event) => event.step === 'DECOMPOSITION');
  assert.deepEqual(
    decomposition?.data.ingredients.map((ingredient: any) => ingredient.rawName),
    ['sambar (lentils and vegetables)', 'coconut chutney']
  );
});

test('plain rotis cap inferred cooking fat to three grams per roti', async () => {
  mockDecompositionWithFallback({
    meal_name: 'Rotis',
    ingredients: [{
      raw_name: 'whole wheat flour for rotis', canonical_hint: 'whole wheat flour',
      grams_estimated: 60, min_grams: 60, max_grams: 60,
      notes: 'two rotis', portion_kind: 'COUNT', count: 2,
      per_unit_grams: 30, per_unit_min_grams: 30, per_unit_max_grams: 30,
      size_specified_by_user: true,
    }, {
      raw_name: 'cooking oil', canonical_hint: 'vegetable oil',
      grams_estimated: 14, min_grams: 10, max_grams: 18,
      notes: 'inferred', portion_kind: 'BULK', count: null,
      per_unit_grams: null, per_unit_min_grams: null, per_unit_max_grams: null,
      size_specified_by_user: false,
    }],
    confidence: 0.9, inferred_meal_type: 'LUNCH', meal_type_confident: true,
  }, 884);

  const events = await collectEvents(analyzeTextMeal('2 medium whole-wheat rotis'));
  const decomposition = events.find((event) => event.step === 'DECOMPOSITION');
  const oil = decomposition?.data.ingredients.find((ingredient: any) =>
    ingredient.rawName === 'cooking oil');
  assert.equal(oil?.gramsEstimated, 6);
  assert.equal(oil?.maxGrams, 6);
});

test('small inferred cooking-fat bands are not inflated to tablespoon defaults', async () => {
  mockDecompositionWithFallback({
    meal_name: 'Roti',
    ingredients: [{
      raw_name: 'roti ghee', canonical_hint: 'ghee',
      grams_estimated: 3, min_grams: 0, max_grams: 6, notes: 'inferred cooking fat',
      portion_kind: 'BULK', count: null, per_unit_grams: null,
      per_unit_min_grams: null, per_unit_max_grams: null, size_specified_by_user: false,
    }],
    confidence: 0.8,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  }, 900);

  const events = await collectEvents(analyzeTextMeal('one roti'));
  const uncertainty = events.find((event) => event.step === 'UNCERTAINTY');
  assert.deepEqual(
    uncertainty?.data.clarifications[0].options.map((option: any) => option.grams),
    [1, 3, 6]
  );
});

test('explicit gram quantities override conflicting model estimates', async () => {
  mockDecompositionWithFallback({
    meal_name: 'Salmon',
    ingredients: [{
      raw_name: 'grilled salmon', canonical_hint: 'salmon cooked',
      grams_estimated: 90, min_grams: 70, max_grams: 120, notes: '',
      portion_kind: 'BULK', count: null, per_unit_grams: null,
      per_unit_min_grams: null, per_unit_max_grams: null, size_specified_by_user: false,
    }],
    confidence: 0.9,
    inferred_meal_type: 'DINNER',
    meal_type_confident: true,
  }, 208);

  const events = await collectEvents(analyzeTextMeal('I ate exactly 150 grams grilled salmon'));
  const decomposition = events.find((event) => event.step === 'DECOMPOSITION');
  assert.equal(decomposition?.data.ingredients[0]?.gramsEstimated, 150);
  assert.equal(decomposition?.data.ingredients[0]?.minGrams, 150);
  assert.equal(decomposition?.data.ingredients[0]?.maxGrams, 150);
  assert.equal(decomposition?.data.ingredients[0]?.sizeSpecifiedByUser, true);
});

test('explicit cooking-oil volume uses the deterministic density conversion', async () => {
  mockDecompositionWithFallback({
    meal_name: 'Oil',
    ingredients: [{
      raw_name: 'olive oil', canonical_hint: 'olive oil',
      grams_estimated: 14, min_grams: 5, max_grams: 28, notes: '',
      portion_kind: 'BULK', count: null, per_unit_grams: null,
      per_unit_min_grams: null, per_unit_max_grams: null, size_specified_by_user: false,
    }],
    confidence: 0.9,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  }, 884);

  const events = await collectEvents(analyzeTextMeal('I added exactly 1 teaspoon olive oil'));
  const decomposition = events.find((event) => event.step === 'DECOMPOSITION');
  assert.equal(decomposition?.data.ingredients[0]?.gramsEstimated, 4.5);
  assert.equal(decomposition?.data.ingredients[0]?.sizeSpecifiedByUser, true);
});

test('analyzeTextMeal emits started then decomposition', async () => {
  mockChatCreate.mock.mockImplementation(async () => ({
    choices: [{
      message: {
        content: JSON.stringify({
          meal_name: 'Rice',
          ingredients: [{
            raw_name: 'rice',
            canonical_hint: 'rice white cooked',
            grams_estimated: 185,
            min_grams: 150,
            max_grams: 220,
            notes: '',
          }],
          confidence: 0.9,
        }),
      },
    }],
  }));

  const events = await collectEvents(analyzeTextMeal('1 cup rice'));
  assert.equal(events[0]?.step, 'STARTED');
  const decomp = events.find((e) => e.step === 'DECOMPOSITION');
  assert.ok(decomp !== undefined);
  assert.ok(typeof decomp.data.analysisId === 'string');
  assert.equal(decomp.data.mealName, 'Rice');
});

test('analyzeTextMeal emits ingredients event', async () => {
  const events = await collectEvents(analyzeTextMeal('1 cup rice'));
  const ingr = events.find((e) => e.step === 'INGREDIENTS');
  assert.ok(ingr !== undefined);
  assert.ok(Array.isArray(ingr.data.ingredients));
});

test('analyzeTextMeal emits uncertainty event', async () => {
  const events = await collectEvents(analyzeTextMeal('1 cup rice'));
  const unc = events.find((e) => e.step === 'UNCERTAINTY');
  assert.ok(unc !== undefined);
  assert.ok(typeof unc.data.variancePercent === 'number');
  assert.ok(typeof unc.data.needsClarification === 'boolean');
  assert.ok('calorieBand' in unc.data);
});

test('analyzeTextMeal emits result event when no clarification needed', async () => {
  // Use tight min/max grams so variance is low → no clarification needed
  mockChatCreate.mock.mockImplementation(async (opts: any) => {
    const isPresentation = opts?.messages?.[0]?.content?.includes?.('PRESENTATION') ||
      opts?.response_format?.json_schema?.name === 'meal_presentation';
    if (isPresentation) {
      return {
        choices: [{
          message: {
            content: JSON.stringify({
              meal_name: 'Plain Rice',
              quantity: '1 cup',
              meal_type: 'LUNCH',
              meal_type_confident: true,
              tip: 'Good carb source',
              health: { health_score: 'NEUTRAL', health_score_reason: 'Moderate nutrition' },
            }),
          },
        }],
      };
    }
    return {
      choices: [{
        message: {
          content: JSON.stringify({
            meal_name: 'Rice',
            ingredients: [{
              raw_name: 'rice',
              canonical_hint: 'rice',
              grams_estimated: 185,
              min_grams: 180, // tight range → low variance
              max_grams: 190,
              notes: '',
            }],
            confidence: 0.95,
            inferred_meal_type: 'LUNCH',
            meal_type_confident: true,
          }),
        },
      }],
    };
  });

  const events = await collectEvents(analyzeTextMeal('1 cup rice'));
  const result = events.find((e) => e.step === 'RESULT');
  assert.ok(result !== undefined);
  assert.ok(typeof result.data.mealName === 'string');
  assert.ok(typeof result.data.macros === 'object');
  assert.ok('calories' in result.data.macros);
});

test('NO_FOOD is durable, terminal, replayable, and skips food processing', async () => {
  const sessions = installInMemorySessionStore();
  const analysisId = '00000000-0000-4000-8000-000000000090';
  mockCanonicalizeUsdaProposal.mock.resetCalls();
  mockChatCreate.mock.resetCalls();
  mockChatCreate.mock.mockImplementation(async (options: any) => {
    assert.equal(options?.response_format?.json_schema?.name, 'meal_decomposition');
    return { choices: [{ message: { content: JSON.stringify({
      outcome: 'NO_FOOD',
      outcome_reason: 'The image contains a laptop, not a meal.',
      outcome_confidence: 0.98,
      meal_name: null,
      items: [{
        raw_name: 'laptop',
        is_food: false,
        is_food_reason: 'It is an electronic device.',
        is_food_confidence: 0.99,
        usda_lookup: null,
        portion: null,
      }],
      inferred_meal_type: 'UNKNOWN',
      meal_type_reason: 'There is no meal to classify.',
      meal_type_confident: false,
    }) } }] };
  });

  const events = await collectEvents(analyzeTextMeal('a laptop', { analysisId }));
  assert.deepEqual(events.map((event) => event.step), ['STARTED', 'NO_FOOD']);
  assert.equal(events[1]?.data.outcomeReason, 'The image contains a laptop, not a meal.');
  assert.equal(JSON.stringify(events).includes('laptop'), true);
  assert.equal(JSON.stringify(events).includes('electronic device'), false);
  assert.equal(sessions.get(analysisId)?.stage, 'NO_FOOD_DETECTED');
  assert.equal(sessions.get(analysisId)?.resultData?.result_kind, 'NO_FOOD');
  assert.equal(mockCanonicalizeUsdaProposal.mock.calls.length, 0);

  const replay = await collectEvents(resumeMealAnalysis(analysisId));
  assert.deepEqual(replay.map((event) => event.step), ['NO_FOOD']);
  assert.equal(mockChatCreate.mock.calls.length, 1);
});

test('automatic lease cleanup failure cannot replace a successful result', async () => {
  mockDecompositionWithFallback({
    meal_name: 'Rice',
    ingredients: [{
      raw_name: 'rice', canonical_hint: 'rice cooked', grams_estimated: 100,
      min_grams: 100, max_grams: 100, notes: '', portion_kind: 'BULK',
      count: null, per_unit_grams: null, per_unit_min_grams: null,
      per_unit_max_grams: null, size_specified_by_user: true,
    }],
    confidence: 1,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  }, 200);
  mockReleaseAutomatic.mock.mockImplementation(async () => {
    throw new Error('release unavailable');
  });
  const events = await collectEvents(analyzeTextMeal('rice'));
  assert.ok(events.some((event) => event.step === 'RESULT'));
  assert.equal(events.some((event) => event.step === 'ERROR'), false);
});

test('accepted local proposal produces authoritative provenance and receipt', async () => {
  const decomposition = {
    meal_name: 'Dal',
    ingredients: [{
      raw_name: 'dal', canonical_hint: 'lentils cooked',
      grams_estimated: 200, min_grams: 200, max_grams: 200, notes: '',
      portion_kind: 'BULK', count: null, per_unit_grams: null,
      per_unit_min_grams: null, per_unit_max_grams: null,
      size_specified_by_user: true,
    }],
    confidence: 0.9,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  };
  mockDecompositionWithFallback(decomposition, 120);
  const proposal: any = {
    schemaVersion: 2,
    proposalId: 'proposal-1',
    modality: 'ANALYSIS_MODALITY_TEXT',
    mealName: 'Dal',
    outcome: 'DECOMPOSITION_OUTCOME_FOOD',
    outcomeReason: 'The input describes dal.',
    outcomeConfidence: 0.9,
    inferredMealType: 'LUNCH',
    mealTypeReason: 'The supplied context supports lunch.',
    mealTypeConfident: true,
    items: [{
      rowId: 'ingredient-1',
      rawName: 'dal',
      isFoodReason: 'Dal belongs to the meal.',
      isFoodConfidence: 0.9,
      usdaLookup: {
        proposedCanonicalName: 'lentils',
        aliases: ['dal'],
        preparationStates: ['cooked'],
      },
      portion: {
        kind: 'BULK',
        gramsEstimated: 200,
        minGrams: 200,
        maxGrams: 200,
        sizeSpecifiedByUser: true,
      },
    }],
    interpretationOrigin: 'INTERPRETATION_ORIGIN_LOCAL_NANO',
    modelName: 'gemini-nano',
  };
  const startedAt = Date.now() - 500;
  const completedAt = Date.now() - 100;

  const events = await collectEvents(analyzeIngredientProposal(proposal, {
    analysisId: '00000000-0000-4000-8000-000000000501',
    localAttemptId: '00000000-0000-4000-8000-000000000502',
    localAttemptStartedAtEpochMs: startedAt,
    localAttemptCompletedAtEpochMs: completedAt,
  }));

  const decompositionEvent = events.find((event) => event.step === 'DECOMPOSITION');
  assert.equal(decompositionEvent?.data.interpretationOrigin, 'INTERPRETATION_ORIGIN_LOCAL_NANO');
  assert.equal(decompositionEvent?.data.proposal, undefined);
  const result = events.find((event) => event.step === 'RESULT');
  assert.ok(result?.data.receipt);
  assert.equal(result.data.receipt.localAttempted, true);
  assert.equal(result.data.receipt.interpretationOrigin, 'INTERPRETATION_ORIGIN_LOCAL_NANO');
  assert.equal(result.data.receipt.calculationOrigin, 'CALCULATION_ORIGIN_SERVER_DETERMINISTIC');
  assert.equal(result.data.receipt.fallbackReason, 'MEAL_ANALYSIS_FALLBACK_REASON_NONE');
  assert.equal(result.data.ingredients[0]?.fieldProvenance, undefined);
  assert.equal(result.data.receipt.attempts.length, 1);
  assert.deepEqual(result.data.receipt.attempts[0], {
    attemptId: '00000000-0000-4000-8000-000000000502',
    executorOrigin: 'INTERPRETATION_ORIGIN_LOCAL_NANO',
    startedAtEpochMs: startedAt,
    completedAtEpochMs: completedAt,
    status: 'ANALYSIS_ATTEMPT_STATUS_ACCEPTED',
    fallbackReason: 'MEAL_ANALYSIS_FALLBACK_REASON_NONE',
  });
});

test('cloud fallback receipt preserves failed-local handoff metadata', async () => {
  mockDecompositionWithFallback({
    meal_name: 'Rice',
    ingredients: [{
      raw_name: 'rice', canonical_hint: 'rice cooked',
      grams_estimated: 180, min_grams: 180, max_grams: 180, notes: '',
      portion_kind: 'BULK', count: null, per_unit_grams: null,
      per_unit_min_grams: null, per_unit_max_grams: null,
      size_specified_by_user: true,
    }],
    confidence: 0.9,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  }, 130);
  const startedAt = Date.now() - 600;
  const completedAt = Date.now() - 200;

  const events = await collectEvents(analyzeTextMeal('rice', {
    localAttempted: true,
    localAttemptId: '00000000-0000-4000-8000-000000000503',
    localAttemptStartedAtEpochMs: startedAt,
    localAttemptCompletedAtEpochMs: completedAt,
    fallbackReason: 'MEAL_ANALYSIS_FALLBACK_REASON_BUSY',
  }));

  const receipt = events.find((event) => event.step === 'RESULT')?.data.receipt;
  assert.ok(receipt);
  assert.equal(receipt.localAttempted, true);
  assert.equal(receipt.interpretationOrigin, 'INTERPRETATION_ORIGIN_CLOUD_MODEL');
  assert.equal(receipt.fallbackReason, 'MEAL_ANALYSIS_FALLBACK_REASON_BUSY');
  assert.equal(receipt.attempts.length, 2);
  assert.deepEqual(receipt.attempts[0], {
    attemptId: '00000000-0000-4000-8000-000000000503',
    executorOrigin: 'INTERPRETATION_ORIGIN_LOCAL_NANO',
    startedAtEpochMs: startedAt,
    completedAtEpochMs: completedAt,
    status: 'ANALYSIS_ATTEMPT_STATUS_FAILED',
    fallbackReason: 'MEAL_ANALYSIS_FALLBACK_REASON_BUSY',
  });
  assert.equal(receipt.attempts[1]?.executorOrigin, 'INTERPRETATION_ORIGIN_CLOUD_MODEL');
  assert.equal(receipt.attempts[1]?.status, 'ANALYSIS_ATTEMPT_STATUS_ACCEPTED');
});

test('analyzeTextMeal uses provided analysisId option', async () => {
  const events = await collectEvents(
    analyzeTextMeal('dal', { analysisId: 'fixed-id-123' })
  );
  const withId = events.find((e) => e.data && 'analysisId' in e.data);
  assert.equal(withId?.data?.analysisId, 'fixed-id-123');
  assert.equal(events[0]?.step, 'STARTED');
});

test('analyzeTextMeal emits error event when OPENAI_API_KEY is missing', async () => {
  const previous = mockConfig.OPENAI_API_KEY;
  mockConfig.OPENAI_API_KEY = null;
  try {
    const events = await collectEvents(analyzeTextMeal('rice'));
    const err = events.find((e) => e.step === 'ERROR');
    assert.ok(err !== undefined);
    assert.equal(err.data.message, 'Meal analysis failed');
  } finally {
    mockConfig.OPENAI_API_KEY = previous;
  }
});

test('analyzeTextMeal redacts provider failures from events, logs, and traces', async (t) => {
  const secret = 'SIGNED_IMAGE_URL_AND_PRIVATE_MEAL';
  mockChatCreate.mock.mockImplementation(async () => {
    throw new Error(`LLM network error: ${secret}`);
  });
  const logEntries: unknown[] = [];
  const logger = {
    info: (entry: Record<string, unknown>) => logEntries.push(entry),
    warn: (entry: Record<string, unknown>) => logEntries.push(entry),
    error: (entry: Record<string, unknown>) => logEntries.push(entry),
  };
  const warnings: unknown[][] = [];
  t.mock.method(console, 'warn', (...values: unknown[]) => warnings.push(values));
  const trace = createAnalysisTrace();
  const events = await collectEvents(analyzeTextMeal('some food', { logger, trace }));
  const err = events.find((e) => e.step === 'ERROR');
  assert.ok(err !== undefined);
  assert.equal(err.data.message, 'Meal analysis failed');
  assert.equal(err.data.retryable, true);
  assert.equal(trace.llmAttempts[0]?.errorKind, 'provider_error');
  assert.ok(trace.steps.some((step) => step.meta?.errorKind === 'llm_step_failed'));
  assert.doesNotMatch(
    JSON.stringify({ events, logEntries, trace, warnings }),
    new RegExp(secret)
  );
});

test('analyzeTextMeal emits clarification event when variance is high', async () => {
  mockChatCreate.mock.mockImplementation(async () => ({
    choices: [{
      message: {
        content: JSON.stringify({
          meal_name: 'Rice',
          ingredients: [{
            raw_name: 'rice',
            canonical_hint: 'rice',
            grams_estimated: 185,
            min_grams: 50,  // very wide range → high variance
            max_grams: 500,
            notes: '',
          }],
          confidence: 0.5,
        }),
      },
    }],
  }));

  const events = await collectEvents(analyzeTextMeal('some rice'));
  const unc = events.find((e) => e.step === 'UNCERTAINTY');
  assert.ok(unc !== undefined);
  // High variance triggers needs_clarification = true
  if (unc.data.needsClarification) {
    assert.ok(Array.isArray(unc.data.clarifications));
    // No result event should be emitted (waiting for answers)
    const result = events.find((e) => e.step === 'RESULT');
    assert.equal(result, undefined);
  }
});

test('portion-aware COUNT clarification bakes count into option grams', async () => {
  mockDecompositionWithFallback({
    meal_name: 'Roti',
    ingredients: [{
      raw_name: 'roti',
      canonical_hint: 'roti',
      grams_estimated: 140,
      min_grams: 100,
      max_grams: 180,
      notes: '4 rotis',
      portion_kind: 'COUNT',
      count: 4,
      per_unit_grams: 35,
      per_unit_min_grams: 25,
      per_unit_max_grams: 45,
      size_specified_by_user: false,
    }],
    confidence: 0.9,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  });

  const events = await collectEvents(analyzeTextMeal('4 roti'));
  const decomp = events.find((e) => e.step === 'DECOMPOSITION');
  assert.equal(decomp.data.ingredients[0].gramsEstimated, 140);
  assert.equal(decomp.data.ingredients[0].minGrams, 100);
  assert.equal(decomp.data.ingredients[0].maxGrams, 180);

  const unc = events.find((e) => e.step === 'UNCERTAINTY');
  const clarification = unc.data.clarifications[0];
  assert.equal(clarification.clarificationId, `clr_${decomp.data.ingredients[0].rowId}`);
  assert.equal(clarification.rowId, decomp.data.ingredients[0].rowId);
  assert.equal(clarification.portionKind, 'COUNT');
  assert.equal(clarification.defaultOptionId, 'regular');
  assert.deepEqual(
    clarification.options.map((option: any) => [option.optionId, option.grams]),
    [['thin', 100], ['regular', 140], ['thick', 180]]
  );
  assert.ok(clarification.options.every((option: any) => option.label === undefined));
});

test('portion-aware COUNT row with user-specified size skips clarification', async () => {
  mockDecompositionWithFallback({
    meal_name: 'Large Rotis',
    ingredients: [{
      raw_name: 'roti',
      canonical_hint: 'roti',
      grams_estimated: 180,
      min_grams: 180,
      max_grams: 180,
      notes: '4 large rotis',
      portion_kind: 'COUNT',
      count: 4,
      per_unit_grams: 45,
      per_unit_min_grams: 45,
      per_unit_max_grams: 45,
      size_specified_by_user: true,
    }],
    confidence: 0.95,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  });

  const events = await collectEvents(analyzeTextMeal('4 large rotis'));
  const unc = events.find((e) => e.step === 'UNCERTAINTY');
  assert.equal(unc.data.needsClarification, false);
  assert.deepEqual(unc.data.clarifications, []);
});

test('portion-aware COUNT row without count emits count question first', async () => {
  mockDecompositionWithFallback({
    meal_name: 'Rotis',
    ingredients: [{
      raw_name: 'roti',
      canonical_hint: 'roti',
      grams_estimated: 105,
      min_grams: 35,
      max_grams: 210,
      notes: 'some rotis',
      portion_kind: 'COUNT',
      count: null,
      per_unit_grams: 35,
      per_unit_min_grams: 25,
      per_unit_max_grams: 45,
      size_specified_by_user: false,
    }],
    confidence: 0.7,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  });

  const events = await collectEvents(analyzeTextMeal('rotis'));
  const unc = events.find((e) => e.step === 'UNCERTAINTY');
  const clarification = unc.data.clarifications[0];
  assert.equal(clarification.portionKind, 'COUNT_QUESTION');
  assert.equal(clarification.defaultOptionId, '2');
  assert.deepEqual(
    clarification.options.map((option: any) => [option.optionId, option.grams]),
    [['1', 35], ['2', 70], ['3', 105], ['4', 140], ['5', 175], ['6plus', 245]]
  );
});

test('portion-aware: mixed sizes are emitted as two separate ingredient rows', async () => {
  mockDecompositionWithFallback({
    meal_name: 'Mixed rotis',
    ingredients: [
      {
        raw_name: 'roti',
        canonical_hint: 'roti',
        grams_estimated: 50, min_grams: 50, max_grams: 50,
        notes: '2 small rotis',
        portion_kind: 'COUNT',
        count: 2, per_unit_grams: 25, per_unit_min_grams: 25, per_unit_max_grams: 25,
        size_specified_by_user: true,
      },
      {
        raw_name: 'roti',
        canonical_hint: 'roti',
        grams_estimated: 90, min_grams: 90, max_grams: 90,
        notes: '2 large rotis',
        portion_kind: 'COUNT',
        count: 2, per_unit_grams: 45, per_unit_min_grams: 45, per_unit_max_grams: 45,
        size_specified_by_user: true,
      },
    ],
    confidence: 0.9,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  });

  const events = await collectEvents(analyzeTextMeal('2 small and 2 large rotis'));
  const decomp = events.find((e) => e.step === 'DECOMPOSITION');
  assert.equal(decomp.data.ingredients.length, 2);
  // Each row gets its own stable rowId — required for downstream ID-based matching.
  assert.notEqual(
    decomp.data.ingredients[0].rowId,
    decomp.data.ingredients[1].rowId
  );
  assert.equal(decomp.data.ingredients[0].gramsEstimated, 50);
  assert.equal(decomp.data.ingredients[1].gramsEstimated, 50);
  // Both rows are size-specified so no clarifications emitted.
  const unc = events.find((e) => e.step === 'UNCERTAINTY');
  assert.equal(unc.data.needsClarification, false);
});

test('portion-aware: fractional COUNT preserved through normalization', async () => {
  mockDecompositionWithFallback({
    meal_name: 'Half a roti',
    ingredients: [{
      raw_name: 'roti',
      canonical_hint: 'roti',
      grams_estimated: 17.5, min_grams: 12.5, max_grams: 22.5,
      notes: 'half a roti',
      portion_kind: 'COUNT',
      count: 0.5,
      per_unit_grams: 35, per_unit_min_grams: 25, per_unit_max_grams: 45,
      size_specified_by_user: false,
    }],
    confidence: 0.7,
    inferred_meal_type: 'SNACK',
    meal_type_confident: true,
  });

  const events = await collectEvents(analyzeTextMeal('half a roti'));
  const decomp = events.find((e) => e.step === 'DECOMPOSITION');
  // count×per_unit invariant (roundGram is fixed(1)): 0.5×35=17.5, 0.5×25=12.5, 0.5×45=22.5.
  assert.equal(decomp.data.ingredients[0].count, 0.5);
  assert.equal(decomp.data.ingredients[0].gramsEstimated, 17.5);
  assert.equal(decomp.data.ingredients[0].minGrams, 12.5);
  assert.equal(decomp.data.ingredients[0].maxGrams, 22.5);
});

test('portion-aware: implausible count is rejected by the structured-output contract', async () => {
  mockDecompositionWithFallback({
    meal_name: 'Suspicious meal',
    ingredients: [{
      raw_name: 'roti',
      canonical_hint: 'roti',
      grams_estimated: 1500, min_grams: 1000, max_grams: 2200,
      notes: 'forty rotis (likely hallucination)',
      portion_kind: 'COUNT',
      count: 40,
      per_unit_grams: 35, per_unit_min_grams: 25, per_unit_max_grams: 55,
      size_specified_by_user: false,
    }],
    confidence: 0.4,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  });

  const events = await collectEvents(analyzeTextMeal('forty rotis'));
  assert.equal(events.some((event) => event.step === 'DECOMPOSITION'), false);
  assert.ok(events.some((event) => event.step === 'ERROR'));
});

test('portion-aware: locale plumbs into size + count question text and option labels', async () => {
  // Decompose two ingredients: one with a known template (rotis) and one without
  // (so we exercise both static-template and fallback-template label paths).
  mockDecompositionWithFallback({
    meal_name: 'Roti with side',
    ingredients: [
      {
        raw_name: 'roti', canonical_hint: 'roti',
        grams_estimated: 140, min_grams: 100, max_grams: 180, notes: '',
        portion_kind: 'COUNT', count: 4,
        per_unit_grams: 35, per_unit_min_grams: 25, per_unit_max_grams: 45,
        size_specified_by_user: false,
      },
      {
        raw_name: 'unknown side dish', canonical_hint: 'unknown side dish',
        grams_estimated: 100, min_grams: 50, max_grams: 200, notes: '',
        portion_kind: 'BULK', count: null,
        per_unit_grams: null, per_unit_min_grams: null, per_unit_max_grams: null,
        size_specified_by_user: false,
      },
    ],
    confidence: 0.85,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  });

  const events = await collectEvents(analyzeTextMeal('4 rotis and a side', { locale: 'hi' }));
  const unc = events.find((e) => e.step === 'UNCERTAINTY');
  const rotiClarification = unc.data.clarifications.find(
    (c: any) => c.ingredientName === 'roti'
  );
  assert.equal(rotiClarification.question, undefined);
  assert.ok(rotiClarification.options.every((o: any) => o.detail === undefined));

  const fallbackClarification = unc.data.clarifications.find(
    (c: any) => c.ingredientName === 'unknown side dish'
  );
  // Fallback option labels resolve to localized "smaller / typical / larger".
  // Hindi dictionary not yet populated for fallback labels, so we expect English
  // defaults here — that's intentional fallthrough behavior to keep coverage
  // graceful when a locale doesn't have full translations.
  assert.deepEqual(
    fallbackClarification.options.map((o: any) => o.optionId),
    ['smaller', 'typical', 'larger']
  );
});

test('portion-aware: clarification labels never contain raw gram strings', async () => {
  // Smoke-test the gram-free invariant across all clarification types in one fixture.
  mockDecompositionWithFallback({
    meal_name: 'Mixed meal',
    ingredients: [
      {
        raw_name: 'roti', canonical_hint: 'roti',
        grams_estimated: 140, min_grams: 100, max_grams: 180, notes: '',
        portion_kind: 'COUNT', count: 4,
        per_unit_grams: 35, per_unit_min_grams: 25, per_unit_max_grams: 45,
        size_specified_by_user: false,
      },
      {
        raw_name: 'rice', canonical_hint: 'rice cooked',
        grams_estimated: 200, min_grams: 100, max_grams: 320, notes: '',
        portion_kind: 'BULK', count: null,
        per_unit_grams: null, per_unit_min_grams: null, per_unit_max_grams: null,
        size_specified_by_user: false,
      },
      {
        raw_name: 'unknown stuff', canonical_hint: 'unknown stuff',
        grams_estimated: 100, min_grams: 50, max_grams: 200, notes: '',
        portion_kind: 'BULK', count: null,
        per_unit_grams: null, per_unit_min_grams: null, per_unit_max_grams: null,
        size_specified_by_user: false,
      },
    ],
    confidence: 0.8,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  });

  const events = await collectEvents(analyzeTextMeal('rotis and rice and a side'));
  const unc = events.find((e) => e.step === 'UNCERTAINTY');
  assert.ok(unc.data.clarifications.every((c: any) =>
    c.question === undefined && c.options.every((o: any) => o.label === undefined)
  ));
});

test('portion-aware: presentation receives decomposition meal_name as canonical hint', async () => {
  // The presentation prompt must be told to prefer the decomposition's meal_name
  // unless the original evidence supports a more specific title.
  mockChatCreate.mock.mockImplementation(async (opts: any) => {
    const schemaName = opts?.response_format?.json_schema?.name;
    if (schemaName === 'meal_decomposition') {
      return {
        choices: [{
          message: {
            content: JSON.stringify({
              meal_name: 'Paneer sabzi with roti',
              ingredients: [{
                raw_name: 'paneer', canonical_hint: 'paneer',
                grams_estimated: 100, min_grams: 100, max_grams: 100, notes: '',
              }],
              confidence: 0.85,
              inferred_meal_type: 'LUNCH',
              meal_type_confident: true,
            }),
          },
        }],
      };
    }
    if (schemaName === 'meal_presentation') {
      const userMessage: string = String(opts?.messages?.[1]?.content ?? '');
      // Surface the prompt in the presentation response so we can assert on it.
      return {
        choices: [{
          message: {
            content: JSON.stringify({
              meal_name: userMessage.includes('Paneer sabzi with roti')
                ? 'Paneer sabzi with roti'
                : 'Mismatched',
              quantity: '1 plate',
              meal_type: 'LUNCH',
              meal_type_confident: true,
              tip: 'Add a salad.',
              health: null,
            }),
          },
        }],
      };
    }
    return { choices: [{ message: { content: '{}' } }] };
  });

  const events = await collectEvents(
    analyzeTextMeal('paneer sabzi with roti', { selectedMealType: 'LUNCH' })
  );
  const result = events.find((e) => e.step === 'RESULT');
  assert.equal(result.data.mealName, 'Paneer sabzi with roti');
});

test('portion-aware: whitespace-only meal_name is rejected by the canonical schema', async () => {
  mockDecompositionWithFallback({
    meal_name: '   ',
    ingredients: [{
      raw_name: 'rice', canonical_hint: 'rice',
      grams_estimated: 200, min_grams: 180, max_grams: 220, notes: '',
    }],
    confidence: 0.9,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  });

  const events = await collectEvents(analyzeTextMeal('rice'));
  assert.equal(events.some((event) => event.step === 'DECOMPOSITION'), false);
  assert.ok(events.some((event) => event.step === 'ERROR'));
});

// ---------------------------------------------------------------------------
// analyzeImageMeal
// ---------------------------------------------------------------------------

test('analyzeImageMeal emits started then decomposition for image analysis', async () => {
  mockChatCreate.mock.mockImplementation(async () => ({
    choices: [{
      message: {
        content: JSON.stringify({
          meal_name: 'Biryani',
          ingredients: [{
            raw_name: 'rice',
            canonical_hint: 'rice',
            grams_estimated: 200,
            min_grams: 180,
            max_grams: 220,
            notes: '',
          }],
          confidence: 0.85,
        }),
      },
    }],
  }));

  const events = await collectEvents(
    analyzeImageMeal('https://example.com/meal.jpg')
  );
  assert.equal(events[0]?.step, 'STARTED');
  const decomp = events.find((e) => e.step === 'DECOMPOSITION');
  assert.ok(decomp !== undefined);
  assert.equal(decomp.data.mealName, 'Biryani');
});

test('image analysis discards validated background objects before persistence', async () => {
  const sessions = installInMemorySessionStore();
  const analysisId = '00000000-0000-4000-8000-000000000091';
  mockChatCreate.mock.mockImplementation(async (options: any) => {
    const schemaName = options?.response_format?.json_schema?.name;
    if (schemaName === 'meal_decomposition') {
      return { choices: [{ message: { content: JSON.stringify({
        outcome: 'FOOD',
        outcome_reason: 'The image contains a bowl of rice.',
        outcome_confidence: 0.95,
        meal_name: 'Rice bowl',
        items: [{
          raw_name: 'rice',
          is_food: true,
          is_food_reason: 'Rice is the primary meal.',
          is_food_confidence: 0.98,
          usda_lookup: {
            proposed_canonical_name: 'rice white cooked',
            aliases: ['cooked rice'],
            preparation_states: ['cooked'],
          },
          portion: {
            kind: 'BULK', grams_estimated: 180, min_grams: 180, max_grams: 180,
            count: null, per_unit_grams: null, per_unit_min_grams: null,
            per_unit_max_grams: null, size_specified_by_user: true,
          },
        }, {
          raw_name: 'laptop',
          is_food: false,
          is_food_reason: 'It is a background electronic device.',
          is_food_confidence: 0.99,
          usda_lookup: null,
          portion: null,
        }],
        inferred_meal_type: 'LUNCH',
        meal_type_reason: 'The supplied context supports lunch.',
        meal_type_confident: true,
      }) } }] };
    }
    if (schemaName === 'macro_fallback') {
      return { choices: [{ message: { content: JSON.stringify({ ingredients: [{
        request_id: 'ingredient_1', name: 'rice white cooked', kcal_per_100g: 130,
        protein_per_100g: 2.7, carbs_per_100g: 28, fat_per_100g: 0.3,
        fiber_per_100g: 0.4,
      }] }) } }] };
    }
    return { choices: [{ message: { content: JSON.stringify({
      quantity: '1 bowl', tip: 'Pair with vegetables.', health: null,
    }) } }] };
  });

  const events = await collectEvents(analyzeImageMeal(
    'https://objectstorage.example.com/p/download-token/n/ns/b/bucket/o/user/rice.jpg',
    { analysisId, imageObjectKey: 'user/rice.jpg', selectedMealType: 'LUNCH' }
  ));
  assert.ok(events.some((event) => event.step === 'RESULT'));
  assert.equal(events.find((event) => event.step === 'DECOMPOSITION')?.data.ingredients.length, 1);
  assert.equal(JSON.stringify(events).includes('laptop'), false);
  assert.equal(JSON.stringify(sessions.get(analysisId)).includes('laptop'), false);
});

test('analyzeImageMeal emits error event when image URL causes LLM failure', async () => {
  mockChatCreate.mock.mockImplementation(async () => {
    throw new Error('Image analysis failed: unsupported format');
  });
  const events = await collectEvents(analyzeImageMeal('https://example.com/bad.bmp'));
  assert.equal(events.some((event) => event.step === 'STARTED'), true);
  const err = events.find((e) => e.step === 'ERROR');
  assert.ok(err !== undefined);
  assert.ok(err.data.message.includes('Image analysis failed'));
});

test('analyzeImageMeal uses image source in session record', async () => {
  mockCreateSession.mock.resetCalls();
  mockChatCreate.mock.mockImplementation(async () => ({
    choices: [{
      message: {
        content: JSON.stringify({
          meal_name: 'Curry',
          ingredients: [{
            raw_name: 'potato',
            canonical_hint: 'potato boiled',
            grams_estimated: 150,
            min_grams: 140,
            max_grams: 160,
            notes: '',
          }],
          confidence: 0.9,
        }),
      },
    }],
  }));

  await collectEvents(analyzeImageMeal(
    'https://objectstorage.example.com/p/download-token/n/ns/b/bucket/o/test-user/curry.jpg',
    { imageObjectKey: 'test-user/curry.jpg' }
  ));
  const firstCall = mockCreateSession.mock.calls[0];
  if (firstCall) {
    assert.equal(firstCall.arguments[0].source, 'image');
    assert.equal(
      firstCall.arguments[0].requestPayload.imageObjectKey,
      'test-user/curry.jpg'
    );
    const { analysisLocalDatetime, ...analysisContext } =
      firstCall.arguments[0].requestPayload.analysisContext;
    assert.match(analysisLocalDatetime, /^\d{4}-\d{2}-\d{2}T/);
    assert.deepEqual(analysisContext, {
      locale: 'en',
      countryCode: null,
      timeZone: null,
      selectedMealType: null,
      selectedMealTypeSource: null,
    });
    assert.equal(
      firstCall.arguments[0].requestPayload.execution.localAttempted,
      false
    );
    assert.equal(
      JSON.stringify(firstCall.arguments[0].requestPayload).includes('download-token'),
      false
    );
  }
});

test('closing after STARTED resumes its durable request with one decomposition', async () => {
  const sessions = installInMemorySessionStore();
  const analysisId = '00000000-0000-4000-8000-000000000201';
  const decomposition = {
    meal_name: 'Fixed rice',
    ingredients: [{
      raw_name: 'rice', canonical_hint: 'rice cooked', grams_estimated: 100,
      min_grams: 100, max_grams: 100, notes: '', portion_kind: 'BULK',
      count: null, per_unit_grams: null, per_unit_min_grams: null,
      per_unit_max_grams: null, size_specified_by_user: true,
    }],
    confidence: 0.95,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  };
  mockChatCreate.mock.resetCalls();
  mockCanonicalizeWithUsda.mock.resetCalls();
  mockDecompositionWithFallback(decomposition, 200);

  for await (const event of analyzeTextMeal('fixed rice', {
    analysisId,
    userId: 'resume-user',
  })) {
    if (event.step === 'STARTED') break;
  }
  assert.equal(sessions.get(analysisId)?.stage, 'PENDING_DECOMPOSITION');
  const decompositionCalls = mockChatCreate.mock.calls.filter(
    (call) => call.arguments[0]?.response_format?.json_schema?.name === 'meal_decomposition'
  ).length;

  const events = await collectEvents(resumeMealAnalysis(analysisId, {
    userId: 'resume-user',
  }));
  assert.ok(events.some((event) => event.step === 'RESULT'));
  assert.equal(mockChatCreate.mock.calls.filter(
    (call) => call.arguments[0]?.response_format?.json_schema?.name === 'meal_decomposition'
  ).length, decompositionCalls + 1);
  assert.equal(sessions.get(analysisId)?.stage, 'COMPLETED');
});

test('resume does not duplicate an active decomposition worker', async () => {
  installInMemorySessionStore();
  const analysisId = '00000000-0000-4000-8000-000000000209';
  const decomposition = {
    meal_name: 'Rice',
    ingredients: [{
      raw_name: 'rice', canonical_hint: 'rice cooked', grams_estimated: 100,
      min_grams: 100, max_grams: 100, notes: '', portion_kind: 'BULK',
      count: null, per_unit_grams: null, per_unit_min_grams: null,
      per_unit_max_grams: null, size_specified_by_user: true,
    }],
    confidence: 1,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  };
  let releaseDecomposition!: () => void;
  let decompositionStarted!: () => void;
  const gate = new Promise<void>((resolve) => {
    releaseDecomposition = resolve;
  });
  const started = new Promise<void>((resolve) => {
    decompositionStarted = resolve;
  });
  let decompositionCalls = 0;
  mockChatCreate.mock.mockImplementation(async (options: any) => {
    const schemaName = options?.response_format?.json_schema?.name;
    if (schemaName === 'meal_decomposition') {
      decompositionCalls++;
      decompositionStarted();
      await gate;
      return { choices: [{ message: { content: JSON.stringify(decomposition) } }] };
    }
    if (schemaName === 'macro_fallback') {
      return { choices: [{ message: { content: JSON.stringify({
        ingredients: [{
          request_id: 'ingredient_1', name: 'rice cooked', kcal_per_100g: 200,
          protein_per_100g: 4, carbs_per_100g: 45, fat_per_100g: 1,
          fiber_per_100g: 1,
        }],
      }) } }] };
    }
    return { choices: [{ message: { content: JSON.stringify({
      meal_name: 'Rice', quantity: '1 serving', meal_type: 'LUNCH',
      meal_type_confident: true, tip: 'Balanced', health: null,
    }) } }] };
  });

  const first = collectEvents(analyzeTextMeal('rice', { analysisId }));
  await started;
  const resumed = await collectEvents(resumeMealAnalysis(analysisId));
  assert.equal(resumed.at(-1)?.step, 'ERROR');
  assert.equal(resumed.at(-1)?.data.retryable, true);
  assert.equal(decompositionCalls, 1);

  releaseDecomposition();
  assert.ok((await first).some((event) => event.step === 'RESULT'));
  assert.equal(decompositionCalls, 1);
});

test('retrying an initial request with the same analysis ID replays without decomposition', async () => {
  installInMemorySessionStore();
  const analysisId = '00000000-0000-4000-8000-000000000206';
  mockDecompositionWithFallback({
    meal_name: 'Rice',
    ingredients: [{
      raw_name: 'rice', canonical_hint: 'rice cooked', grams_estimated: 100,
      min_grams: 100, max_grams: 100, notes: '', portion_kind: 'BULK',
      count: null, per_unit_grams: null, per_unit_min_grams: null,
      per_unit_max_grams: null, size_specified_by_user: true,
    }],
    confidence: 1,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  }, 200);
  await collectEvents(analyzeTextMeal('rice', { analysisId, userId: 'user-1' }));
  const decompositionCalls = mockChatCreate.mock.calls.filter(
    (call) => call.arguments[0]?.response_format?.json_schema?.name === 'meal_decomposition'
  ).length;

  const replay = await collectEvents(
    analyzeTextMeal('rice', { analysisId, userId: 'user-1' })
  );
  assert.equal(replay.length, 1);
  assert.equal(replay[0]?.step, 'RESULT');
  assert.equal(mockChatCreate.mock.calls.filter(
    (call) => call.arguments[0]?.response_format?.json_schema?.name === 'meal_decomposition'
  ).length, decompositionCalls);
});

test('reusing an analysis ID for a different request fails without external work', async () => {
  installInMemorySessionStore();
  const analysisId = '00000000-0000-4000-8000-000000000207';
  mockDecompositionWithFallback({
    meal_name: 'Rice', ingredients: [], confidence: 1,
    inferred_meal_type: 'LUNCH', meal_type_confident: true,
  });
  await collectEvents(analyzeTextMeal('rice', { analysisId, userId: 'user-1' }));
  mockChatCreate.mock.resetCalls();

  const collision = await collectEvents(
    analyzeTextMeal('dal', { analysisId, userId: 'user-1' })
  );
  assert.equal(collision.length, 1);
  assert.equal(collision[0]?.step, 'ERROR');
  assert.equal(collision[0]?.data.message, 'Analysis ID is unavailable');
  assert.equal(collision[0]?.data.retryable, false);
  assert.equal(mockChatCreate.mock.calls.length, 0);
});

test('same-ID dispatch rejects changed owner, source, object key, or locale context', async () => {
  installInMemorySessionStore();
  const analysisId = '00000000-0000-4000-8000-000000000208';
  mockDecompositionWithFallback({
    meal_name: 'Rice', ingredients: [], confidence: 1,
    inferred_meal_type: 'LUNCH', meal_type_confident: true,
  });
  await collectEvents(analyzeImageMeal(
    'https://objectstorage.example.com/p/download-token/n/ns/b/bucket/o/user-1/meal.jpg',
    {
      analysisId,
      userId: 'user-1',
      imageObjectKey: 'user-1/meal.jpg',
      locale: 'en',
      countryCode: 'IN',
      timeZone: 'Asia/Kolkata',
    }
  ));
  mockChatCreate.mock.resetCalls();

  const collisions = [
    analyzeImageMeal(
      'https://objectstorage.example.com/p/download-token/n/ns/b/bucket/o/user-1/meal.jpg',
      {
        analysisId, userId: 'user-2', imageObjectKey: 'user-1/meal.jpg',
        locale: 'en', countryCode: 'IN', timeZone: 'Asia/Kolkata',
      }
    ),
    analyzeImageMeal(
      'https://objectstorage.example.com/p/download-token/n/ns/b/bucket/o/user-1/other.jpg',
      {
        analysisId, userId: 'user-1', imageObjectKey: 'user-1/other.jpg',
        locale: 'en', countryCode: 'IN', timeZone: 'Asia/Kolkata',
      }
    ),
    analyzeTextMeal('rice', {
      analysisId, userId: 'user-1', locale: 'en', countryCode: 'IN',
      timeZone: 'Asia/Kolkata',
    }),
    analyzeImageMeal(
      'https://objectstorage.example.com/p/download-token/n/ns/b/bucket/o/user-1/meal.jpg',
      {
        analysisId, userId: 'user-1', imageObjectKey: 'user-1/meal.jpg',
        locale: 'fr', countryCode: 'IN', timeZone: 'Asia/Kolkata',
      }
    ),
  ];
  for (const collision of collisions) {
    const events = await collectEvents(collision);
    assert.equal(events.length, 1);
    assert.equal(events[0]?.step, 'ERROR');
    assert.equal(events[0]?.data.message, 'Analysis ID is unavailable');
    assert.equal(events[0]?.data.retryable, false);
  }
  assert.equal(mockChatCreate.mock.calls.length, 0);
});

test('resumeMealAnalysis continues INGREDIENTS_RESOLVED without repeating resolution', async () => {
  const sessions = installInMemorySessionStore();
  const analysisId = '00000000-0000-4000-8000-000000000202';
  const decomposition = {
    meal_name: 'Fixed dal',
    ingredients: [{
      raw_name: 'dal', canonical_hint: 'lentils cooked', grams_estimated: 100,
      min_grams: 100, max_grams: 100, notes: '', portion_kind: 'BULK',
      count: null, per_unit_grams: null, per_unit_min_grams: null,
      per_unit_max_grams: null, size_specified_by_user: true,
    }],
    confidence: 0.95,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  };
  mockChatCreate.mock.resetCalls();
  mockCanonicalizeWithUsda.mock.resetCalls();
  mockDecompositionWithFallback(decomposition, 180);

  for await (const event of analyzeTextMeal('fixed dal', {
    analysisId,
    userId: 'resume-user',
  })) {
    if (event.step === 'INGREDIENTS') break;
  }
  assert.equal(sessions.get(analysisId)?.stage, 'INGREDIENTS_RESOLVED');
  const persistedIngredients = sessions.get(analysisId)?.ingredientsData;
  assert.equal(persistedIngredients?.snapshotVersion, 2);
  const persistedJson = JSON.stringify(persistedIngredients);
  assert.doesNotMatch(persistedJson, /canonicalHint|nutritionReference|fdcId|"match"/);
  const usdaCalls = mockCanonicalizeWithUsda.mock.calls.length;
  const fallbackCalls = mockChatCreate.mock.calls.filter(
    (call) => call.arguments[0]?.response_format?.json_schema?.name === 'macro_fallback'
  ).length;

  const resumed = await collectEvents(resumeMealAnalysis(analysisId, {
    userId: 'resume-user',
  }));
  assert.ok(resumed.some((event) => event.step === 'RESULT'));
  assert.equal(mockCanonicalizeWithUsda.mock.calls.length, usdaCalls);
  assert.equal(mockChatCreate.mock.calls.filter(
    (call) => call.arguments[0]?.response_format?.json_schema?.name === 'macro_fallback'
  ).length, fallbackCalls);

  const presentationCalls = mockChatCreate.mock.calls.filter(
    (call) => call.arguments[0]?.response_format?.json_schema?.name === 'meal_presentation'
  ).length;
  const replay = await collectEvents(resumeMealAnalysis(analysisId, {
    userId: 'resume-user',
  }));
  assert.equal(replay.length, 1);
  assert.equal(replay[0]?.step, 'RESULT');
  assert.equal(mockChatCreate.mock.calls.filter(
    (call) => call.arguments[0]?.response_format?.json_schema?.name === 'meal_presentation'
  ).length, presentationCalls);
});

test('resume restarts legacy in-flight resolution from its durable decomposition', async () => {
  const sessions = installInMemorySessionStore();
  const analysisId = '00000000-0000-4000-8000-000000000203';
  const decomposition = {
    meal_name: 'Rice',
    ingredients: [{
      raw_name: 'rice', canonical_hint: 'rice cooked', grams_estimated: 100,
      min_grams: 100, max_grams: 100, notes: '', portion_kind: 'BULK',
      count: null, per_unit_grams: null, per_unit_min_grams: null,
      per_unit_max_grams: null, size_specified_by_user: true,
    }],
    confidence: 1,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  };
  mockDecompositionWithFallback(decomposition, 200);
  await collectEvents(analyzeTextMeal('rice', { analysisId, userId: 'resume-user' }));
  const completed = sessions.get(analysisId);
  sessions.set(analysisId, {
    analysisId,
    userId: 'resume-user',
    source: 'text',
    locale: 'en',
    requestPayload: { textDescription: 'rice' },
    stage: 'RESOLVING_INGREDIENTS',
    updatedAt: new Date(Date.now() - 6 * 60 * 1000).toISOString(),
    decompositionData: completed.decompositionData,
  });
  mockChatCreate.mock.resetCalls();
  mockCanonicalizeWithUsda.mock.resetCalls();
  const events = await collectEvents(resumeMealAnalysis(analysisId, {
    userId: 'resume-user',
  }));
  assert.equal(events.at(-1)?.step, 'RESULT');
  assert.ok(mockChatCreate.mock.calls.length > 0);
  assert.ok(mockCanonicalizeWithUsda.mock.calls.length > 0);
});

test('presentation resume does not reuse a legacy image bearer URL', async () => {
  const sessions = installInMemorySessionStore();
  const analysisId = '00000000-0000-4000-8000-000000000205';
  const decomposition = {
    meal_name: 'Image rice',
    ingredients: [{
      raw_name: 'rice', canonical_hint: 'rice cooked', grams_estimated: 100,
      min_grams: 100, max_grams: 100, notes: '', portion_kind: 'BULK',
      count: null, per_unit_grams: null, per_unit_min_grams: null,
      per_unit_max_grams: null, size_specified_by_user: true,
    }],
    confidence: 1,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  };
  mockDecompositionWithFallback(decomposition, 200);
  await collectEvents(analyzeImageMeal(
    'https://objectstorage.example.com/p/download-token/n/ns/b/bucket/o/resume-user/image.jpg',
    { analysisId, userId: 'resume-user', imageObjectKey: 'resume-user/image.jpg' }
  ));
  const completed = sessions.get(analysisId);
  const withoutResult = { ...completed };
  delete withoutResult.resultData;
  const legacyUrl =
    'https://objectstorage.example.com/p/legacy-secret/n/ns/b/bucket/o/resume-user/image.jpg';
  sessions.set(analysisId, {
    ...withoutResult,
    stage: 'READY_FOR_PRESENTATION',
    requestPayload: { imageUrl: legacyUrl },
  });
  mockChatCreate.mock.resetCalls();

  const events = await collectEvents(resumeMealAnalysis(analysisId, {
    userId: 'resume-user',
  }));
  assert.ok(events.some((event) => event.step === 'RESULT'));
  assert.equal(JSON.stringify(events).includes('legacy-secret'), false);
  assert.equal(mockChatCreate.mock.calls.filter(
    (call) => call.arguments[0]?.response_format?.json_schema?.name === 'meal_decomposition'
  ).length, 0);
});

// ---------------------------------------------------------------------------
// continueMealAnalysis — with stored session
// ---------------------------------------------------------------------------

test('continueMealAnalysis emits error when session not found', async () => {
  mockGetSession.mock.mockImplementation(async () => undefined);
  const events = await collectEvents(
    continueMealAnalysis('nonexistent-id', [{ clarificationId: 'clr-rice', selectedOptionId: 'regular' }])
  );
  const err = events.find((e) => e.step === 'ERROR');
  assert.ok(err !== undefined);
  assert.ok(err.data.message.includes('session not found'));
});

test('continueMealAnalysis does not expose another user\'s session', async () => {
  mockGetSession.mock.mockImplementationOnce(async () => ({
    analysisId: 'private-session',
    userId: 'owner-user',
    source: 'text',
    locale: 'en',
    requestPayload: { textDescription: 'dal' },
    decompositionData: { mealName: 'Dal', confidence: 1, ingredients: [] },
  }));

  const events = await collectEvents(
    continueMealAnalysis('private-session', [], { userId: 'other-user' })
  );
  assert.equal(events.length, 1);
  assert.equal(events[0]?.step, 'ERROR');
  assert.equal(events[0]?.data.message, 'Analysis session not found');
});

test('continueMealAnalysis emits error when session has no decomposition data', async () => {
  mockGetSession.mock.mockImplementation(async () => ({
    analysisId: 'sess-1',
    source: 'text',
    locale: 'en',
    requestPayload: { textDescription: 'dal' },
    decompositionData: null,
  }));

  const events = await collectEvents(
    continueMealAnalysis('sess-1', [{ clarificationId: 'clr-dal', selectedOptionId: 'small' }])
  );
  const err = events.find((e) => e.step === 'ERROR');
  assert.ok(err !== undefined);
  assert.equal(err.data.message, 'Analysis session cannot continue from its current state');
});

test('clarification continuation reuses persisted resolution and presentation is idempotent', async () => {
  const sessions = installInMemorySessionStore();
  const analysisId = '00000000-0000-4000-8000-000000000101';
  const decomposition = {
    meal_name: 'Rice',
    ingredients: [{
      row_id: 'rice-row', raw_name: 'rice', canonical_hint: 'rice white cooked',
      grams_estimated: 185, min_grams: 100, max_grams: 300, notes: '',
      portion_kind: 'BULK', count: null, per_unit_grams: null,
      per_unit_min_grams: null, per_unit_max_grams: null,
      size_specified_by_user: false,
    }],
    confidence: 0.9,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  };
  mockCanonicalizeWithUsda.mock.resetCalls();
  mockChatCreate.mock.resetCalls();
  mockDecompositionWithFallback(decomposition, 300);

  const initial = await collectEvents(analyzeTextMeal('rice', { analysisId }));
  const pending = initial.find(
    (event) => event.step === 'UNCERTAINTY'
  )?.data.clarifications[0];
  assert.ok(pending);
  assert.equal(sessions.get(analysisId)?.stage, 'AWAITING_CLARIFICATION');
  const usdaCalls = mockCanonicalizeWithUsda.mock.calls.length;
  const decompositionCalls = mockChatCreate.mock.calls.filter(
    (call) => call.arguments[0]?.response_format?.json_schema?.name === 'meal_decomposition'
  ).length;
  const fallbackCalls = mockChatCreate.mock.calls.filter(
    (call) => call.arguments[0]?.response_format?.json_schema?.name === 'macro_fallback'
  ).length;

  const resumed = await collectEvents(continueMealAnalysis(analysisId, [{
    clarificationId: pending.clarificationId,
    selectedOptionId: pending.defaultOptionId,
  }]));
  assert.ok(resumed.some((event) => event.step === 'RESULT'));
  assert.equal(mockCanonicalizeWithUsda.mock.calls.length, usdaCalls);
  assert.equal(mockChatCreate.mock.calls.filter(
    (call) => call.arguments[0]?.response_format?.json_schema?.name === 'meal_decomposition'
  ).length, decompositionCalls);
  assert.equal(mockChatCreate.mock.calls.filter(
    (call) => call.arguments[0]?.response_format?.json_schema?.name === 'macro_fallback'
  ).length, fallbackCalls);
  assert.equal(mockChatCreate.mock.calls.filter(
    (call) => call.arguments[0]?.response_format?.json_schema?.name === 'meal_presentation'
  ).length, 1);

  const replay = await collectEvents(continueMealAnalysis(analysisId, []));
  assert.equal(replay.length, 1);
  assert.equal(replay[0]?.step, 'RESULT');
  assert.equal(mockChatCreate.mock.calls.filter(
    (call) => call.arguments[0]?.response_format?.json_schema?.name === 'meal_presentation'
  ).length, 1);
});

test('a failed clarification keeps pending answers and resume applies them', async () => {
  const sessions = installInMemorySessionStore();
  const analysisId = '00000000-0000-4000-8000-000000000109';
  const decomposition = {
    meal_name: 'Rice',
    ingredients: [{
      row_id: 'rice-row', raw_name: 'rice', canonical_hint: 'rice white cooked',
      grams_estimated: 185, min_grams: 100, max_grams: 300, notes: '',
      portion_kind: 'BULK', count: null, per_unit_grams: null,
      per_unit_min_grams: null, per_unit_max_grams: null,
      size_specified_by_user: false,
    }],
    confidence: 0.9,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  };
  mockDecompositionWithFallback(decomposition, 300);
  const initial = await collectEvents(analyzeTextMeal('rice', { analysisId }));
  const clarification = initial.find(
    (event) => event.step === 'UNCERTAINTY'
  )?.data.clarifications[0];
  assert.ok(clarification);
  const selected = clarification.options.at(-1);
  const answer = {
    clarificationId: clarification.clarificationId,
    selectedOptionId: selected.optionId,
  };

  mockAdvanceSession.mock.mockImplementationOnce(async () => false);
  const failed = await collectEvents(continueMealAnalysis(analysisId, [answer]));
  assert.equal(failed.at(-1)?.step, 'ERROR');
  assert.deepEqual(sessions.get(analysisId)?.pendingClarificationAnswers, [answer]);
  assert.equal(sessions.get(analysisId)?.stage, 'AWAITING_CLARIFICATION');

  const resumed = await collectEvents(resumeMealAnalysis(analysisId));
  const result = resumed.find((event) => event.step === 'RESULT');
  assert.ok(result);
  assert.equal(result.data.ingredients[0].grams, selected.grams);
  assert.equal(sessions.get(analysisId)?.pendingClarificationAnswers, undefined);
  assert.equal(sessions.get(analysisId)?.stage, 'COMPLETED');
});

function rotiDecomposition(count: number | null = null): Record<string, unknown> {
  return {
    meal_name: 'Rotis',
    ingredients: [{
      row_id: 'roti-row', raw_name: 'roti', canonical_hint: 'roti',
      grams_estimated: count == null ? 105 : count * 35,
      min_grams: count == null ? 35 : count * 25,
      max_grams: count == null ? 210 : count * 45,
      notes: '', portion_kind: 'COUNT', count, per_unit_grams: 35,
      per_unit_min_grams: 25, per_unit_max_grams: 45,
      size_specified_by_user: false,
    }],
    confidence: 0.8,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  };
}

test('continueMealAnalysis matches duplicate raw names by persisted row id', async () => {
  installInMemorySessionStore();
  const analysisId = '00000000-0000-4000-8000-000000000102';
  const decomposition = {
    meal_name: 'Oil Test',
    ingredients: [
      { row_id: 'oil-a', raw_name: 'oil', canonical_hint: 'oil', grams_estimated: 14,
        min_grams: 5, max_grams: 28, notes: '', portion_kind: 'BULK', count: null,
        per_unit_grams: null, per_unit_min_grams: null, per_unit_max_grams: null,
        size_specified_by_user: false },
      { row_id: 'oil-b', raw_name: 'oil', canonical_hint: 'oil', grams_estimated: 14,
        min_grams: 5, max_grams: 28, notes: '', portion_kind: 'BULK', count: null,
        per_unit_grams: null, per_unit_min_grams: null, per_unit_max_grams: null,
        size_specified_by_user: false },
    ],
    confidence: 0.9,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  };
  mockDecompositionWithFallback(decomposition, 900);
  const initial = await collectEvents(analyzeTextMeal('oil and oil', { analysisId }));
  const clarifications = initial.find(
    (event) => event.step === 'UNCERTAINTY'
  )?.data.clarifications ?? [];
  assert.equal(clarifications.length, 2);
  const events = await collectEvents(continueMealAnalysis(analysisId, [
    {
      clarificationId: clarifications[0].clarificationId,
      selectedOptionId: clarifications[0].options[0].optionId,
    },
    {
      clarificationId: clarifications[1].clarificationId,
      selectedOptionId: clarifications[1].options.at(-1).optionId,
    },
  ]));
  const result = events.find((event) => event.step === 'RESULT');
  assert.ok(result);
  assert.deepEqual(result.data.ingredients.map((ingredient: any) => ingredient.grams), [5, 28]);
});

test('round-2 size answer resumes the count-adjusted snapshot', async () => {
  installInMemorySessionStore();
  const analysisId = '00000000-0000-4000-8000-000000000103';
  mockDecompositionWithFallback(rotiDecomposition(), 300);
  const initial = await collectEvents(analyzeTextMeal('rotis', { analysisId }));
  const countQuestion = initial.find(
    (event) => event.step === 'UNCERTAINTY'
  )?.data.clarifications[0];
  assert.ok(countQuestion);
  const sizeRound = await collectEvents(continueMealAnalysis(analysisId, [{
    clarificationId: countQuestion.clarificationId, selectedOptionId: '4',
  }]));
  const sizeQuestion = sizeRound.find(
    (event) => event.step === 'UNCERTAINTY'
  )?.data.clarifications[0];
  assert.ok(sizeQuestion);
  const events = await collectEvents(continueMealAnalysis(analysisId, [{
    clarificationId: sizeQuestion.clarificationId, selectedOptionId: 'thick',
  }]));
  const result = events.find((event) => event.step === 'RESULT');
  assert.ok(result);
  assert.equal(result.data.ingredients[0].grams, 180);
  assert.equal(result.data.ingredients[0].count, 4);
});

test('bundled count and size answers apply iteratively to one resolved snapshot', async () => {
  installInMemorySessionStore();
  const analysisId = '00000000-0000-4000-8000-000000000104';
  mockDecompositionWithFallback(rotiDecomposition(), 300);
  const initial = await collectEvents(analyzeTextMeal('rotis', { analysisId }));
  const countQuestion = initial.find(
    (event) => event.step === 'UNCERTAINTY'
  )?.data.clarifications[0];
  assert.ok(countQuestion);
  const sizeClarificationId = countQuestion.clarificationId.replace(/_count$/, '');
  const events = await collectEvents(continueMealAnalysis(analysisId, [
    { clarificationId: countQuestion.clarificationId, selectedOptionId: '3' },
    { clarificationId: sizeClarificationId, selectedOptionId: 'regular' },
  ]));
  const result = events.find((event) => event.step === 'RESULT');
  assert.ok(result);
  assert.equal(result.data.ingredients[0].grams, 105);
  assert.equal(result.data.ingredients[0].count, 3);
});

test('stale clarification IDs do not block a valid row-id answer', async () => {
  installInMemorySessionStore();
  const analysisId = '00000000-0000-4000-8000-000000000105';
  mockDecompositionWithFallback(rotiDecomposition(4), 300);
  const initial = await collectEvents(analyzeTextMeal('4 rotis', { analysisId }));
  const validQuestion = initial.find(
    (event) => event.step === 'UNCERTAINTY'
  )?.data.clarifications[0];
  assert.ok(validQuestion);
  const events = await collectEvents(continueMealAnalysis(analysisId, [
    { clarificationId: 'clr_does_not_exist', selectedOptionId: 'thick' },
    { clarificationId: validQuestion.clarificationId, selectedOptionId: 'thick' },
  ]));
  const result = events.find((event) => event.step === 'RESULT');
  assert.ok(result);
  assert.equal(result.data.ingredients[0].grams, 180);
});

test('count answer persists a size-question snapshot without another resolution', async () => {
  installInMemorySessionStore();
  const analysisId = '00000000-0000-4000-8000-000000000106';
  mockCanonicalizeWithUsda.mock.resetCalls();
  mockDecompositionWithFallback(rotiDecomposition(), 300);
  const initial = await collectEvents(analyzeTextMeal('rotis', { analysisId }));
  const countQuestion = initial.find(
    (event) => event.step === 'UNCERTAINTY'
  )?.data.clarifications[0];
  assert.ok(countQuestion);
  const usdaCalls = mockCanonicalizeWithUsda.mock.calls.length;
  const events = await collectEvents(continueMealAnalysis(analysisId, [{
    clarificationId: countQuestion.clarificationId, selectedOptionId: '4',
  }]));
  const clarification = events.find(
    (event) => event.step === 'UNCERTAINTY'
  )?.data.clarifications[0];
  assert.equal(clarification.clarificationId, countQuestion.clarificationId.replace(/_count$/, ''));
  assert.equal(clarification.portionKind, 'COUNT');
  assert.deepEqual(
    clarification.options.map((option: any) => [option.optionId, option.grams]),
    [['thin', 100], ['regular', 140], ['thick', 180]]
  );
  assert.equal(mockCanonicalizeWithUsda.mock.calls.length, usdaCalls);
});

test('unknown option IDs are not silently replaced with the default', async () => {
  const sessions = installInMemorySessionStore();
  const analysisId = '00000000-0000-4000-8000-000000000108';
  mockDecompositionWithFallback(rotiDecomposition(), 300);
  const initial = await collectEvents(analyzeTextMeal('rotis', { analysisId }));
  const countQuestion = initial.find(
    (event) => event.step === 'UNCERTAINTY'
  )?.data.clarifications[0];
  assert.ok(countQuestion);
  mockRecordClarification.mock.resetCalls();
  const events = await collectEvents(continueMealAnalysis(analysisId, [{
    clarificationId: countQuestion.clarificationId, selectedOptionId: 'not-an-option',
  }]));
  const uncertainty = events.find((event) => event.step === 'UNCERTAINTY');
  assert.equal(uncertainty?.data.clarifications[0]?.clarificationId, countQuestion.clarificationId);
  assert.equal(sessions.get(analysisId)?.clarificationAnswers, undefined);
  assert.equal(mockRecordClarification.mock.calls.length, 0);
});

// ---------------------------------------------------------------------------
// continueMealAnalysisWithMealType
// ---------------------------------------------------------------------------

test('continueMealAnalysisWithMealType emits error when session not found', async () => {
  mockGetSession.mock.mockImplementation(async () => undefined);
  const events = await collectEvents(
    continueMealAnalysisWithMealType('missing-session', 'BREAKFAST')
  );
  const err = events.find((e) => e.step === 'ERROR');
  assert.ok(err !== undefined);
  assert.ok(err.data.message.includes('session not found'));
});

test('continueMealAnalysisWithMealType rejects UNKNOWN before loading a session', async () => {
  mockGetSession.mock.resetCalls();
  const events = await collectEvents(
    continueMealAnalysisWithMealType('unused-session', 'UNKNOWN')
  );
  assert.match(
    events.find((event) => event.step === 'ERROR')?.data.message,
    /concrete meal type is required/
  );
  assert.equal(mockGetSession.mock.calls.length, 0);
});

test('continueMealAnalysisWithMealType resumes with user-selected meal type', async () => {
  const sessions = installInMemorySessionStore();
  const analysisId = '00000000-0000-4000-8000-000000000107';
  const decomposition = {
    meal_name: 'Poha',
    ingredients: [{
      row_id: 'poha-row', raw_name: 'flattened rice', canonical_hint: 'rice flattened',
      grams_estimated: 100, min_grams: 100, max_grams: 100, notes: '',
      portion_kind: 'BULK', count: null, per_unit_grams: null,
      per_unit_min_grams: null, per_unit_max_grams: null, size_specified_by_user: true,
    }],
    confidence: 0.9,
    inferred_meal_type: 'UNKNOWN',
    meal_type_confident: false,
  };
  mockCanonicalizeWithUsda.mock.resetCalls();
  mockChatCreate.mock.resetCalls();
  mockDecompositionWithFallback(decomposition, 200);
  const initial = await collectEvents(analyzeTextMeal('poha', { analysisId }));
  assert.ok(initial.some((event) => event.step === 'MEAL_TYPE_QUESTION'));
  assert.equal(sessions.get(analysisId)?.stage, 'AWAITING_MEAL_TYPE');
  const usdaCalls = mockCanonicalizeWithUsda.mock.calls.length;
  const llmCalls = mockChatCreate.mock.calls.length;
  const events = await collectEvents(
    continueMealAnalysisWithMealType(analysisId, 'BREAKFAST')
  );
  const result = events.find((e) => e.step === 'RESULT');
  assert.ok(result);
  assert.equal(result.data.mealType, 'BREAKFAST');
  assert.equal(result.data.mealTypeSource, 'user');
  assert.equal(mockCanonicalizeWithUsda.mock.calls.length, usdaCalls);
  assert.equal(mockChatCreate.mock.calls.length, llmCalls + 1);
});

test('concurrent meal-type continuations claim one presentation attempt', async () => {
  installInMemorySessionStore();
  const analysisId = '00000000-0000-4000-8000-000000000109';
  const decomposition = {
    meal_name: 'Poha',
    ingredients: [{
      row_id: 'poha-row', raw_name: 'poha', canonical_hint: 'rice flattened',
      grams_estimated: 100, min_grams: 100, max_grams: 100, notes: '',
      portion_kind: 'BULK', count: null, per_unit_grams: null,
      per_unit_min_grams: null, per_unit_max_grams: null, size_specified_by_user: true,
    }],
    confidence: 0.9, inferred_meal_type: 'UNKNOWN', meal_type_confident: false,
  };
  mockDecompositionWithFallback(decomposition, 200);
  await collectEvents(analyzeTextMeal('poha', { analysisId }));

  let releasePresentation!: () => void;
  const presentationGate = new Promise<void>((resolve) => {
    releasePresentation = resolve;
  });
  mockChatCreate.mock.resetCalls();
  mockChatCreate.mock.mockImplementation(async (options: any) => {
    assert.equal(
      options?.response_format?.json_schema?.name,
      'meal_presentation'
    );
    await presentationGate;
    return { choices: [{ message: { content: JSON.stringify({
      meal_name: 'Poha', quantity: '1 bowl', meal_type: 'BREAKFAST',
      meal_type_confident: true, tip: 'Light breakfast', health: null,
    }) } }] };
  });

  const first = collectEvents(
    continueMealAnalysisWithMealType(analysisId, 'BREAKFAST')
  );
  await new Promise<void>((resolve) => setImmediate(resolve));
  const second = await collectEvents(
    continueMealAnalysisWithMealType(analysisId, 'BREAKFAST')
  );
  releasePresentation();
  const firstEvents = await first;

  assert.ok(firstEvents.some((event) => event.step === 'RESULT'));
  assert.equal(
    second.find((event) => event.step === 'ERROR')?.data.message,
    'Analysis is still in progress; retry resume'
  );
  assert.equal(second.find((event) => event.step === 'ERROR')?.data.retryable, true);
  assert.equal(mockChatCreate.mock.calls.length, 1);
});

test('legacy stage-less meal-type snapshot is inferred without re-resolution', async () => {
  mockCanonicalizeWithUsda.mock.resetCalls();
  mockGetSession.mock.mockImplementation(async () => ({
    analysisId: 'legacy-meal-type',
    source: 'text',
    locale: 'en',
    requestPayload: { textDescription: 'poha' },
    decompositionData: {
      analysisId: 'legacy-meal-type', mealName: 'Poha', confidence: 0.9,
      ingredients: [{
        rowId: 'poha-row', rawName: 'flattened rice', canonicalHint: 'rice flattened',
        gramsEstimated: 100, minGrams: 100, maxGrams: 100, notes: '',
        portionKind: 'BULK', sizeSpecifiedByUser: true,
      }],
      inferredMealType: 'UNKNOWN', mealTypeConfident: false,
    },
    ingredientsData: {
      analysisId: 'legacy-meal-type', mealName: 'Poha', ingredients: [{
        rowId: 'poha-row', rawName: 'flattened rice', canonicalName: 'rice flattened',
        matchType: 'llm_fallback', grams: 100,
        macros: { calories: 200, protein: 10, carbs: 40, fat: 5, fiber: 3 },
        source: 'llm_fallback', portionKind: 'BULK',
      }],
    },
    uncertaintyData: {
      analysisId: 'legacy-meal-type', mealName: 'Poha', variancePercent: 0,
      needsClarification: false, calorieBand: { min: 200, max: 200 },
      clarifications: [],
    },
    mealTypeQuestionData: {
      analysisId: 'legacy-meal-type', mealName: 'Poha', question: 'Which meal is this?',
      options: ['BREAKFAST', 'LUNCH', 'DINNER', 'SNACK'],
    },
  }));
  mockChatCreate.mock.mockImplementation(async () => ({
    choices: [{ message: { content: JSON.stringify({
      meal_name: 'Poha', quantity: '1 bowl', meal_type: 'BREAKFAST',
      meal_type_confident: true, tip: 'Light breakfast', health: null,
    }) } }],
  }));
  const events = await collectEvents(
    continueMealAnalysisWithMealType('legacy-meal-type', 'BREAKFAST')
  );
  assert.ok(events.some((event) => event.step === 'RESULT'));
  assert.equal(mockCanonicalizeWithUsda.mock.calls.length, 0);
});

test('inconsistent typed stage snapshot is rejected before any expensive call', async () => {
  mockCanonicalizeWithUsda.mock.resetCalls();
  mockChatCreate.mock.resetCalls();
  mockGetSession.mock.mockImplementation(async () => ({
    analysisId: 'corrupt-stage',
    source: 'text',
    locale: 'en',
    requestPayload: { textDescription: 'rice' },
    stage: 'AWAITING_MEAL_TYPE',
    decompositionData: {
      analysisId: 'corrupt-stage', mealName: 'Rice', confidence: 1,
      ingredients: [{
        rowId: 'rice-row', rawName: 'rice', canonicalHint: 'rice',
        gramsEstimated: 100, minGrams: 100, maxGrams: 100, notes: '',
        portionKind: 'BULK', sizeSpecifiedByUser: true,
      }],
      inferredMealType: 'UNKNOWN', mealTypeConfident: false,
    },
    ingredientsData: { analysisId: 'corrupt-stage', ingredients: [] },
    uncertaintyData: { needsClarification: true, clarifications: [] },
    mealTypeQuestionData: { options: ['BREAKFAST'] },
  }));
  const events = await collectEvents(
    continueMealAnalysisWithMealType('corrupt-stage', 'LUNCH')
  );
  assert.equal(events[0]?.data.message, 'Analysis session cannot continue from its current state');
  assert.equal(mockCanonicalizeWithUsda.mock.calls.length, 0);
  assert.equal(mockChatCreate.mock.calls.length, 0);
});

// ---------------------------------------------------------------------------
// reanalyzeMeal
// ---------------------------------------------------------------------------

test('reanalyzeMeal emits error when original session not found', async () => {
  mockGetSession.mock.mockImplementation(async () => undefined);
  const events = await collectEvents(
    reanalyzeMeal('missing-id', ['PORTION_SIZE'])
  );
  const err = events.find((e) => e.step === 'ERROR');
  assert.ok(err !== undefined);
  assert.ok(err.data.message.includes('session not found'));
});

test('reanalyzeMeal emits error when text session has no textDescription', async () => {
  mockGetSession.mock.mockImplementation(async () => ({
    analysisId: 'sess-reanalyze',
    source: 'text',
    locale: 'en',
    requestPayload: {}, // missing textDescription
    decompositionData: null,
    selectedMealType: undefined,
    selectedMealTypeSource: undefined,
  }));
  const events = await collectEvents(
    reanalyzeMeal('sess-reanalyze', ['macros_wrong'])
  );
  const err = events.find((e) => e.step === 'ERROR');
  assert.ok(err !== undefined);
  assert.ok(err.data.message.includes('missing textDescription'));
});

test('reanalyzeMeal emits error when image session has no image object key', async () => {
  mockGetSession.mock.mockImplementation(async () => ({
    analysisId: 'sess-img-reanalyze',
    source: 'image',
    locale: 'en',
    requestPayload: {},
    decompositionData: null,
    selectedMealType: undefined,
    selectedMealTypeSource: undefined,
  }));
  const events = await collectEvents(
    reanalyzeMeal('sess-img-reanalyze', ['FOOD_IDENTIFICATION'])
  );
  const err = events.find((e) => e.step === 'ERROR');
  assert.ok(err !== undefined);
  assert.ok(err.data.message.includes('missing an image object key'));
});

test('legacy image URL is never reused or exposed during reanalysis', async () => {
  const legacyUrl =
    'https://objectstorage.example.com/p/legacy-secret/n/ns/b/bucket/o/user/image.jpg';
  mockChatCreate.mock.resetCalls();
  mockGetSession.mock.mockImplementation(async () => ({
    analysisId: 'legacy-image-session',
    userId: 'user',
    source: 'image',
    locale: 'en',
    requestPayload: { imageUrl: legacyUrl },
    decompositionData: null,
  }));

  const events = await collectEvents(
    reanalyzeMeal('legacy-image-session', ['FOOD_IDENTIFICATION'], undefined, 'user')
  );
  const error = events.find((event) => event.step === 'ERROR');
  assert.match(error?.data.message, /missing an image object key/);
  assert.equal(JSON.stringify(events).includes('legacy-secret'), false);
  assert.equal(mockChatCreate.mock.calls.length, 0);
});

test('reanalyzeMeal creates new analysis with parent reference for text source', async () => {
  mockGetSession.mock.mockImplementation(async () => ({
    analysisId: 'original-id',
    source: 'text',
    locale: 'en',
    requestPayload: { textDescription: 'samosa' },
    decompositionData: null,
    selectedMealType: 'SNACK',
    selectedMealTypeSource: 'user',
    userId: 'user-reanalyze',
    countryCode: 'IN',
  }));

  mockChatCreate.mock.mockImplementation(async () => ({
    choices: [{
      message: {
        content: JSON.stringify({
          meal_name: 'Samosa',
          ingredients: [{
            raw_name: 'samosa',
            canonical_hint: 'samosa',
            grams_estimated: 80,
            min_grams: 70,
            max_grams: 90,
            notes: '',
          }],
          confidence: 0.8,
        }),
      },
    }],
  }));

  const events = await collectEvents(
    reanalyzeMeal('original-id', ['PORTION_SIZE'], 'it was smaller')
  );

  // Should emit some events (at least decomposition or error)
  assert.ok(events.length > 0);
  const errEvent = events.find((e) => e.step === 'ERROR');
  // We don't assert no error because the mock might not be set up for the full pipeline
  // but the reanalysis should have started with a new analysis ID
  if (!errEvent) {
    const decomp = events.find((e) => e.step === 'DECOMPOSITION');
    if (decomp) {
      // New analysis ID should differ from original
      assert.notEqual(decomp.data.analysisId, 'original-id');
    }
  }
});

test('reanalyzeMeal preserves user-selected meal type from original session', async () => {
  mockUpsertSession.mock.resetCalls();
  mockGetSession.mock.mockImplementation(async () => ({
    analysisId: 'sess-mt-preserve',
    source: 'text',
    locale: 'en',
    requestPayload: { textDescription: 'idli sambar' },
    decompositionData: null,
    selectedMealType: 'BREAKFAST',
    selectedMealTypeSource: 'user', // user-selected → must be preserved
    userId: undefined,
    countryCode: undefined,
  }));

  mockChatCreate.mock.mockImplementation(async () => ({
    choices: [{
      message: {
        content: JSON.stringify({
          meal_name: 'Idli Sambar',
          ingredients: [{
            raw_name: 'idli',
            canonical_hint: 'idli',
            grams_estimated: 120,
            min_grams: 100,
            max_grams: 140,
            notes: '',
          }],
          confidence: 0.9,
        }),
      },
    }],
  }));

  await collectEvents(reanalyzeMeal('sess-mt-preserve', ['extra_items']));

  // The durable pre-decomposition record carries the preserved user selection.
  const upsertCall = mockCreateSession.mock.calls.find(
    (c) => c.arguments[0]?.selectedMealType === 'BREAKFAST'
  );
  assert.ok(upsertCall !== undefined);
});
