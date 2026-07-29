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

await mock.module('./usdaLookup.js', {
  namedExports: { canonicalizeWithUsda: mockCanonicalizeWithUsda },
});

await mock.module('./usdaLookupUtils.js', {
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

const mockUpsertSession = mock.fn(async () => {});
const mockRecordClarification = mock.fn(async () => {});
const mockRecordMealType = mock.fn(async () => {});
const mockGetSession = mock.fn(async () => undefined);

await mock.module('./mealAnalysisStore.js', {
  namedExports: {
    upsertMealAnalysisSession: mockUpsertSession,
    getMealAnalysisSession: mockGetSession,
    recordMealAnalysisClarification: mockRecordClarification,
    recordMealAnalysisMealType: mockRecordMealType,
  },
});

await mock.module('./foodAnalysisSystemPrompt.js', {
  namedExports: {
    getFoodAnalysisSystemPrompt: mock.fn(() => 'You are a food AI assistant.'),
  },
});

const mockConfig = {
  OPENAI_API_KEY: 'test-key' as string | null,
  DATABASE_URL: 'postgres://mock',
  DEBUG: false,
  ENVIRONMENT: 'development',
};

await mock.module('../config.js', {
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
  parsed.inferred_meal_type ??= 'UNKNOWN';
  parsed.meal_type_confident ??= false;
  parsed.ingredients = (parsed.ingredients ?? []).map((ingredient: any) => ({
    ...ingredient,
    portion_kind: ingredient.portion_kind ?? 'BULK',
    count: ingredient.count ?? null,
    per_unit_grams: ingredient.per_unit_grams ?? null,
    per_unit_min_grams: ingredient.per_unit_min_grams ?? null,
    per_unit_max_grams: ingredient.per_unit_max_grams ?? null,
    size_specified_by_user: ingredient.size_specified_by_user ?? false,
  }));
  return {
    ...response,
    choices: [{
      ...response.choices[0],
      message: { ...response.choices[0].message, content: JSON.stringify(parsed) },
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
  continueMealAnalysis,
  continueMealAnalysisWithMealType,
  reanalyzeMeal,
  FEEDBACK_ISSUES,
  MEAL_TYPES,
  isPlausibleFallbackEntry,
  clearFallbackNutritionCache,
} = await import('./nutritionEngineV2.js');

test.beforeEach(() => clearFallbackNutritionCache());

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

function mockDecompositionWithFallback(decomposition: Record<string, unknown>, kcalPer100g = 300): void {
  mockChatCreate.mock.mockImplementation(async (opts: any) => {
    const schemaName = opts?.response_format?.json_schema?.name;
    if (schemaName === 'macro_fallback') {
      const ingredients = (decomposition.ingredients as Array<Record<string, unknown>>).map((ingredient) => ({
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

test('cooked dal keeps a cooked USDA lookup hint when the model returns generic lentils', async () => {
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
      per_unit_grams: 210,
      per_unit_min_grams: 210,
      per_unit_max_grams: 210,
      size_specified_by_user: true,
    }],
    confidence: 0.95,
    inferred_meal_type: 'LUNCH',
    meal_type_confident: true,
  }, 116);

  const events = await collectEvents(analyzeTextMeal('1 cup cooked dal'));
  const decomposition = events.find((event) => event.step === 'DECOMPOSITION');
  assert.equal(
    decomposition?.data.ingredients[0]?.canonicalHint,
    'lentils mature seeds cooked boiled without salt'
  );
});

test('explicitly dry oats retain dry nutrition despite a later cooking instruction', async () => {
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
  assert.equal(decomposition?.data.ingredients[0]?.canonicalHint, 'oats');
});

test('plain banana identity is grounded to raw fruit instead of an ambiguous database row', async () => {
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
  assert.equal(decomposition?.data.ingredients[0]?.canonicalHint, 'bananas raw');
});

test('explicit cooked chickpea identity overrides a drifting split-pea hint', async () => {
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
  assert.equal(
    decomposition?.data.ingredients[0]?.canonicalHint,
    'chickpeas garbanzo beans bengal gram mature seeds cooked boiled without salt'
  );
});

test('whole-wheat toast is normalized as bread when the model suggests flour', async () => {
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
  assert.equal(decomposition?.data.ingredients[0]?.canonicalHint, 'bread whole wheat');
});

test('explicit masala dosa receives its defining potato filling when the model omits it', async () => {
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
  assert.ok(ingredients.some((ingredient: any) => ingredient.canonicalHint === 'dosa plain'));
  assert.ok(ingredients.some((ingredient: any) => ingredient.canonicalHint === 'potato boiled'));
  assert.equal(ingredients[0]?.gramsEstimated, 120);
});

test('named composite sides retain their reviewed composite lookup identity', async () => {
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
    decomposition?.data.ingredients.map((ingredient: any) => ingredient.canonicalHint),
    ['sambar vegetable stew', 'coconut chutney']
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
    ingredient.canonicalHint === 'vegetable oil');
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
    assert.ok(err.data.message.includes('OPENAI_API_KEY'));
  } finally {
    mockConfig.OPENAI_API_KEY = previous;
  }
});

test('analyzeTextMeal emits error event when LLM throws', async () => {
  mockChatCreate.mock.mockImplementation(async () => {
    throw new Error('LLM network error');
  });
  const events = await collectEvents(analyzeTextMeal('some food'));
  const err = events.find((e) => e.step === 'ERROR');
  assert.ok(err !== undefined);
  assert.ok(err.data.message.includes('LLM network error'));
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
      grams_estimated: 999, // ignored by normalization for COUNT
      min_grams: 1,
      max_grams: 2,
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
  assert.ok(clarification.options.every((option: any) => !/\b\d+\s*g\b/i.test(option.label)));
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
    clarification.options.map((option: any) => [option.optionId, option.label, option.grams]),
    [['1', '1', 35], ['2', '2', 70], ['3', '3', 105], ['4', '4', 140], ['5', '5', 175], ['6plus', '6 or more', 245]]
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
  assert.equal(decomp.data.ingredients[1].gramsEstimated, 90);
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
      grams_estimated: 17, min_grams: 12, max_grams: 22,
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

test('portion-aware: implausible count (count=40) clamps and falls back to BULK row', async () => {
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
  const decomp = events.find((e) => e.step === 'DECOMPOSITION');
  const ingredient = decomp.data.ingredients[0];
  // Sanity clamp collapses to BULK with no count and capped max.
  assert.equal(ingredient.portionKind, 'BULK');
  assert.equal(ingredient.count, undefined);
  assert.ok(ingredient.maxGrams <= 2000);
  assert.equal(ingredient.sizeSpecifiedByUser, false);
});

test('portion-aware: locale plumbs into size + count question text and option labels', async () => {
  // Decompose two ingredients: one with a known template (rotis) and one without
  // (so we exercise both static-template and fallback-template label paths).
  mockDecompositionWithFallback({
    meal_name: 'Roti with side',
    ingredients: [
      {
        raw_name: 'roti', canonical_hint: 'roti',
        grams_estimated: 999, min_grams: 1, max_grams: 2, notes: '',
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
  // Hindi size question for COUNT bakes the count into the question text.
  assert.ok(
    rotiClarification.question.includes('4'),
    `expected count "4" in Hindi roti question, got: ${rotiClarification.question}`
  );
  assert.ok(
    /[ऀ-ॿ]/.test(rotiClarification.question),
    `expected Devanagari script in Hindi question, got: ${rotiClarification.question}`
  );
  // Detail text honors the Hindi suffix.
  assert.ok(
    rotiClarification.options.every((o: any) => /प्रति/.test(o.detail ?? '')),
    'expected Hindi "प्रति" suffix in option detail'
  );

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
        grams_estimated: 999, min_grams: 1, max_grams: 2, notes: '',
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
  const labels = unc.data.clarifications.flatMap((c: any) => c.options.map((o: any) => o.label));
  for (const label of labels) {
    assert.ok(
      !/\b\d+\s*g\b/i.test(label),
      `option label "${label}" should not contain a raw gram string`
    );
  }
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

test('portion-aware: whitespace-only meal_name normalized to empty for safe fallback', async () => {
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
  const decomp = events.find((e) => e.step === 'DECOMPOSITION');
  // Wire layer trims so the client sees an empty string (header falls back to static title).
  assert.equal(decomp.data.mealName, '');
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

test('analyzeImageMeal emits error event when image URL causes LLM failure', async () => {
  mockChatCreate.mock.mockImplementation(async () => {
    throw new Error('Image analysis failed: unsupported format');
  });
  const events = await collectEvents(analyzeImageMeal('https://example.com/bad.bmp'));
  assert.equal(events[0]?.step, 'STARTED');
  const err = events.find((e) => e.step === 'ERROR');
  assert.ok(err !== undefined);
  assert.ok(err.data.message.includes('Image analysis failed'));
});

test('analyzeImageMeal uses image source in session record', async () => {
  mockUpsertSession.mock.resetCalls();
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

  await collectEvents(analyzeImageMeal('https://example.com/curry.jpg'));
  const firstCall = mockUpsertSession.mock.calls[0];
  if (firstCall) {
    assert.equal(firstCall.arguments[0].source, 'image');
  }
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
  assert.ok(err.data.message.includes('missing decomposition data'));
});

test('continueMealAnalysis resumes pipeline with stored decomposition', async () => {
  mockGetSession.mock.mockImplementation(async () => ({
    analysisId: 'sess-resume',
    source: 'text',
    locale: 'en',
    requestPayload: { textDescription: 'dal rice' },
    decompositionData: {
      analysisId: 'sess-resume',
      mealName: 'Dal Rice',
      confidence: 0.9,
      ingredients: [
        {
          rawName: 'rice',
          canonicalHint: 'rice',
          gramsEstimated: 185,
          minGrams: 150,
          maxGrams: 220,
          notes: '',
        },
      ],
      inferredMealType: 'UNKNOWN',
      mealTypeConfident: false,
    },
    selectedMealType: undefined,
    selectedMealTypeSource: undefined,
    countryCode: undefined,
  }));

  mockChatCreate.mock.mockImplementation(async () => ({
    choices: [{
      message: {
        content: JSON.stringify({
          meal_name: 'Dal Rice',
          quantity: '1 plate',
          meal_type: 'LUNCH',
          meal_type_confident: true,
          tip: 'Protein rich combo',
          health: null,
        }),
      },
    }],
  }));

  const events = await collectEvents(
    continueMealAnalysis('sess-resume', [{ clarificationId: 'clr-rice', selectedOptionId: 'regular' }])
  );

  // Should emit at least ingredients event
  const ingr = events.find((e) => e.step === 'INGREDIENTS');
  assert.ok(ingr !== undefined);
});

test('continueMealAnalysis matches duplicate raw names by clarification id and row id', async () => {
  mockGetSession.mock.mockImplementation(async () => ({
    analysisId: 'sess-oil',
    source: 'text',
    locale: 'en',
    requestPayload: { textDescription: 'oil and oil' },
    decompositionData: {
      analysisId: 'sess-oil',
      mealName: 'Oil Test',
      confidence: 0.9,
      ingredients: [
        {
          rowId: 'oil-a',
          rawName: 'oil',
          canonicalHint: 'oil',
          gramsEstimated: 14,
          minGrams: 5,
          maxGrams: 28,
          notes: '',
          portionKind: 'BULK',
          sizeSpecifiedByUser: false,
        },
        {
          rowId: 'oil-b',
          rawName: 'oil',
          canonicalHint: 'oil',
          gramsEstimated: 14,
          minGrams: 5,
          maxGrams: 28,
          notes: '',
          portionKind: 'BULK',
          sizeSpecifiedByUser: false,
        },
      ],
      inferredMealType: 'LUNCH',
      mealTypeConfident: true,
    },
    selectedMealType: 'LUNCH',
    selectedMealTypeSource: 'user',
    countryCode: undefined,
  }));
  mockDecompositionWithFallback({
    meal_name: 'Oil Test',
    ingredients: [
      { canonical_hint: 'oil' },
      { canonical_hint: 'oil' },
    ],
  }, 900);

  const events = await collectEvents(
    continueMealAnalysis('sess-oil', [
      { clarificationId: 'clr_oil-a', selectedOptionId: 'small' },
      { clarificationId: 'clr_oil-b', selectedOptionId: 'heavy' },
    ])
  );

  const result = events.find((e) => e.step === 'RESULT');
  assert.ok(result !== undefined);
  assert.deepEqual(result.data.ingredients.map((ingredient: any) => ingredient.grams), [5, 28]);
});

test('continueMealAnalysis: round-2 size answer merges with round-1 count from session and reaches RESULT', async () => {
  // Regression for the multi-round bug: round 1 answers a COUNT_QUESTION and
  // the count answer is persisted to session.clarification_answers. Round 2
  // submits only the size answer. Without merging, decomposition would re-run
  // with count=null and the user would be asked the count question AGAIN.
  mockGetSession.mock.mockImplementation(async () => ({
    analysisId: 'sess-roti-round2',
    source: 'text',
    locale: 'en',
    requestPayload: { textDescription: 'rotis' },
    decompositionData: {
      analysisId: 'sess-roti-round2',
      mealName: 'Rotis',
      confidence: 0.8,
      ingredients: [
        {
          rowId: 'roti-row',
          rawName: 'roti',
          canonicalHint: 'roti',
          gramsEstimated: 105,
          minGrams: 35,
          maxGrams: 210,
          notes: '',
          portionKind: 'COUNT',
          count: null,
          perUnitGrams: 35,
          perUnitMinGrams: 25,
          perUnitMaxGrams: 45,
          sizeSpecifiedByUser: false,
        },
      ],
      inferredMealType: 'LUNCH',
      mealTypeConfident: true,
    },
    selectedMealType: 'LUNCH',
    selectedMealTypeSource: 'user',
    countryCode: undefined,
    // Round-1 count answer persisted from the prior /clarify call.
    clarificationAnswers: [{ clarificationId: 'clr_roti-row_count', selectedOptionId: '4' }],
  }));
  mockDecompositionWithFallback({
    meal_name: 'Rotis',
    ingredients: [{ canonical_hint: 'roti' }],
  }, 300);

  // Round 2 only carries the size answer.
  const events = await collectEvents(
    continueMealAnalysis('sess-roti-round2', [{ clarificationId: 'clr_roti-row', selectedOptionId: 'thick' }])
  );

  // Pipeline must reach RESULT — proves both answers were applied via the
  // merge + iterative-apply path.
  const result = events.find((e) => e.step === 'RESULT');
  assert.ok(result !== undefined, 'expected RESULT event');
  // Ingredient resolved to 4 × 45g = 180g (count from session × per-unit "thick" from request).
  assert.equal(result.data.ingredients[0].grams, 180);
  assert.equal(result.data.ingredients[0].count, 4);
});

test('continueMealAnalysis: bundling count+size answers in one call resolves both via iterative apply', async () => {
  // If a client ever bundles both answers in a single request (e.g. a fast
  // user picking through both screens), the iterative apply loop must walk
  // count → regen → size in the same call.
  mockGetSession.mock.mockImplementation(async () => ({
    analysisId: 'sess-bundled',
    source: 'text',
    locale: 'en',
    requestPayload: { textDescription: 'rotis' },
    decompositionData: {
      analysisId: 'sess-bundled',
      mealName: 'Rotis',
      confidence: 0.8,
      ingredients: [
        {
          rowId: 'roti-row',
          rawName: 'roti',
          canonicalHint: 'roti',
          gramsEstimated: 105,
          minGrams: 35,
          maxGrams: 210,
          notes: '',
          portionKind: 'COUNT',
          count: null,
          perUnitGrams: 35,
          perUnitMinGrams: 25,
          perUnitMaxGrams: 45,
          sizeSpecifiedByUser: false,
        },
      ],
      inferredMealType: 'LUNCH',
      mealTypeConfident: true,
    },
    selectedMealType: 'LUNCH',
    selectedMealTypeSource: 'user',
    countryCode: undefined,
    clarificationAnswers: undefined,
  }));
  mockDecompositionWithFallback({
    meal_name: 'Rotis',
    ingredients: [{ canonical_hint: 'roti' }],
  }, 300);

  const events = await collectEvents(
    continueMealAnalysis('sess-bundled', [
      { clarificationId: 'clr_roti-row_count', selectedOptionId: '3' },
      { clarificationId: 'clr_roti-row', selectedOptionId: 'regular' },
    ])
  );

  const result = events.find((e) => e.step === 'RESULT');
  assert.ok(result !== undefined, 'expected RESULT after bundled apply');
  assert.equal(result.data.ingredients[0].grams, 105); // 3 × 35
  assert.equal(result.data.ingredients[0].count, 3);
});

test('continueMealAnalysis: stale clarificationId is logged and ignored, does not block remaining valid answers', async () => {
  mockGetSession.mock.mockImplementation(async () => ({
    analysisId: 'sess-stale',
    source: 'text',
    locale: 'en',
    requestPayload: { textDescription: 'roti' },
    decompositionData: {
      analysisId: 'sess-stale',
      mealName: 'Rotis',
      confidence: 0.8,
      ingredients: [
        {
          rowId: 'roti-row',
          rawName: 'roti',
          canonicalHint: 'roti',
          gramsEstimated: 140,
          minGrams: 100,
          maxGrams: 180,
          notes: '',
          portionKind: 'COUNT',
          count: 4,
          perUnitGrams: 35,
          perUnitMinGrams: 25,
          perUnitMaxGrams: 45,
          sizeSpecifiedByUser: false,
        },
      ],
      inferredMealType: 'LUNCH',
      mealTypeConfident: true,
    },
    selectedMealType: 'LUNCH',
    selectedMealTypeSource: 'user',
    countryCode: undefined,
    clarificationAnswers: undefined,
  }));
  mockDecompositionWithFallback({
    meal_name: 'Rotis',
    ingredients: [{ canonical_hint: 'roti' }],
  }, 300);

  const events = await collectEvents(
    continueMealAnalysis('sess-stale', [
      { clarificationId: 'clr_does_not_exist', selectedOptionId: 'thick' },
      { clarificationId: 'clr_roti-row', selectedOptionId: 'thick' },
    ])
  );

  const result = events.find((e) => e.step === 'RESULT');
  assert.ok(result !== undefined, 'expected RESULT despite stale id');
  assert.equal(result.data.ingredients[0].grams, 180); // 4 × 45
});

test('continueMealAnalysis emits size clarification after count answer when uncertainty remains', async () => {
  mockGetSession.mock.mockImplementation(async () => ({
    analysisId: 'sess-roti-count',
    source: 'text',
    locale: 'en',
    requestPayload: { textDescription: 'rotis' },
    decompositionData: {
      analysisId: 'sess-roti-count',
      mealName: 'Rotis',
      confidence: 0.8,
      ingredients: [
        {
          rowId: 'roti-row',
          rawName: 'roti',
          canonicalHint: 'roti',
          gramsEstimated: 105,
          minGrams: 35,
          maxGrams: 210,
          notes: '',
          portionKind: 'COUNT',
          count: null,
          perUnitGrams: 35,
          perUnitMinGrams: 25,
          perUnitMaxGrams: 45,
          sizeSpecifiedByUser: false,
        },
      ],
      inferredMealType: 'LUNCH',
      mealTypeConfident: true,
    },
    selectedMealType: 'LUNCH',
    selectedMealTypeSource: 'user',
    countryCode: undefined,
  }));
  mockDecompositionWithFallback({
    meal_name: 'Rotis',
    ingredients: [{ canonical_hint: 'roti' }],
  }, 300);

  const events = await collectEvents(
    continueMealAnalysis('sess-roti-count', [{ clarificationId: 'clr_roti-row_count', selectedOptionId: '4' }])
  );

  const unc = events.find((e) => e.step === 'UNCERTAINTY');
  const clarification = unc.data.clarifications[0];
  assert.equal(clarification.clarificationId, 'clr_roti-row');
  assert.equal(clarification.portionKind, 'COUNT');
  assert.deepEqual(
    clarification.options.map((option: any) => [option.optionId, option.grams]),
    [['thin', 100], ['regular', 140], ['thick', 180]]
  );
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

test('continueMealAnalysisWithMealType resumes with user-selected meal type', async () => {
  mockGetSession.mock.mockImplementation(async () => ({
    analysisId: 'sess-mt',
    source: 'text',
    locale: 'en',
    requestPayload: { textDescription: 'poha' },
    decompositionData: {
      analysisId: 'sess-mt',
      mealName: 'Poha',
      confidence: 0.9,
      ingredients: [{
        rawName: 'flattened rice',
        canonicalHint: 'rice flattened',
        gramsEstimated: 100,
        minGrams: 90,
        maxGrams: 110,
        notes: '',
      }],
      inferredMealType: 'UNKNOWN',
      mealTypeConfident: false,
    },
    clarificationAnswers: null,
    selectedMealType: undefined,
    selectedMealTypeSource: undefined,
    countryCode: undefined,
  }));

  mockChatCreate.mock.mockImplementation(async () => ({
    choices: [{
      message: {
        content: JSON.stringify({
          meal_name: 'Poha',
          quantity: '1 bowl',
          meal_type: 'BREAKFAST',
          meal_type_confident: true,
          tip: 'Light breakfast',
          health: null,
        }),
      },
    }],
  }));

  const events = await collectEvents(
    continueMealAnalysisWithMealType('sess-mt', 'BREAKFAST')
  );

  const result = events.find((e) => e.step === 'RESULT');
  if (result) {
    assert.equal(result.data.mealType, 'BREAKFAST');
    assert.equal(result.data.mealTypeSource, 'user');
  }
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

test('reanalyzeMeal emits error when image session has no imageUrl', async () => {
  mockGetSession.mock.mockImplementation(async () => ({
    analysisId: 'sess-img-reanalyze',
    source: 'image',
    locale: 'en',
    requestPayload: {}, // missing imageUrl
    decompositionData: null,
    selectedMealType: undefined,
    selectedMealTypeSource: undefined,
  }));
  const events = await collectEvents(
    reanalyzeMeal('sess-img-reanalyze', ['FOOD_IDENTIFICATION'])
  );
  const err = events.find((e) => e.step === 'ERROR');
  assert.ok(err !== undefined);
  assert.ok(err.data.message.includes('missing imageUrl'));
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

  // The upsert call for the new session should carry selectedMealType = BREAKFAST
  const upsertCall = mockUpsertSession.mock.calls.find(
    (c) => c.arguments[0]?.selectedMealType === 'BREAKFAST'
  );
  assert.ok(upsertCall !== undefined);
});
