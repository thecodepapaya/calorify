import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';

// ---------------------------------------------------------------------------
// Default decomposition response (white rice, tight grams → zero variance)
// ---------------------------------------------------------------------------
const DEFAULT_DECOMP_RESPONSE = {
  meal_name: 'White Rice',
  ingredients: [
    {
      raw_name: 'white rice',
      canonical_hint: 'rice',
      grams_estimated: 200,
      min_grams: 200,
      max_grams: 200,
      notes: 'cooked',
    },
  ],
  confidence: 0.9,
};

// At 200g rice-white-cooked (130 kcal/100g, protein 2.7, carbs 28.2, fat 0.3, fiber 0.4):
// calories = Math.round(130 * 2) = 260
// protein  = +(2.7 * 2).toFixed(1) = 5.4
// carbs    = +(28.2 * 2).toFixed(1) = 56.4
// fat      = +(0.3 * 2).toFixed(1) = 0.6
// fiber    = +(0.4 * 2).toFixed(1) = 0.8

// ---------------------------------------------------------------------------
// Helper: drain the async generator into an array
// ---------------------------------------------------------------------------
async function collectEvents(gen: AsyncGenerator<any>): Promise<any[]> {
  const events: any[] = [];
  for await (const event of gen) {
    events.push(event);
  }
  return events;
}

// ---------------------------------------------------------------------------
// Mutable config object — lets us flip OPENAI_API_KEY without re-mocking
// ---------------------------------------------------------------------------
const mockConfig = { OPENAI_API_KEY: 'sk-test' as string | null };

await mock.module('../config.js', {
  defaultExport: mockConfig,
});

// ---------------------------------------------------------------------------
// Mock openai with a shared mockCreate function
// ---------------------------------------------------------------------------

const mockCreate = mock.fn(async () => ({
  choices: [{ message: { content: JSON.stringify(DEFAULT_DECOMP_RESPONSE) } }],
}));

await mock.module('openai', {
  defaultExport: class MockOpenAI {
    chat = { completions: { create: mockCreate } };
    constructor(_opts: any) {}
  },
});

const { analyzeMeal } = await import('./nutritionEngine.js');

// ---------------------------------------------------------------------------
// Default implementation helper
// ---------------------------------------------------------------------------
const defaultImpl = async () => ({
  choices: [{ message: { content: JSON.stringify(DEFAULT_DECOMP_RESPONSE) } }],
});

function resetToDefault() {
  mockCreate.mock.resetCalls();
  mockCreate.mock.mockImplementation(defaultImpl);
  mockConfig.OPENAI_API_KEY = 'sk-test';
}

// ---------------------------------------------------------------------------
// analyzeMeal — no API key
// ---------------------------------------------------------------------------

test('analyzeMeal yields error event when OPENAI_API_KEY is null', async () => {
  mockConfig.OPENAI_API_KEY = null;
  const events = await collectEvents(analyzeMeal('some food'));
  assert.equal(events.length, 1);
  assert.equal(events[0].step, 'error');
  assert.ok(events[0].data.message.includes('OPENAI_API_KEY is not set'));
  // Restore
  mockConfig.OPENAI_API_KEY = 'sk-test';
});

// ---------------------------------------------------------------------------
// analyzeMeal — decompose throws
// ---------------------------------------------------------------------------

test('analyzeMeal yields single error event when decompose throws', async () => {
  mockCreate.mock.resetCalls();
  mockCreate.mock.mockImplementation(async () => {
    throw new Error('Network failure');
  });

  const events = await collectEvents(analyzeMeal('some food'));
  assert.equal(events.length, 1);
  assert.equal(events[0].step, 'error');
  assert.ok(events[0].data.message.includes('Network failure'));

  resetToDefault();
});

// ---------------------------------------------------------------------------
// analyzeMeal — happy path: 4 events in order
// ---------------------------------------------------------------------------

test('analyzeMeal happy path produces exactly 4 events', async () => {
  resetToDefault();
  const events = await collectEvents(analyzeMeal('200g white rice'));
  assert.equal(events.length, 4);
});

test('analyzeMeal happy path events are in correct order', async () => {
  resetToDefault();
  const events = await collectEvents(analyzeMeal('200g white rice'));
  assert.equal(events[0].step, 'decomposition');
  assert.equal(events[1].step, 'ingredients');
  assert.equal(events[2].step, 'uncertainty');
  assert.equal(events[3].step, 'result');
});

// ---------------------------------------------------------------------------
// analyzeMeal — decomposition event
// ---------------------------------------------------------------------------

test('analyzeMeal decomposition event has correct meal_name and confidence', async () => {
  resetToDefault();
  const events = await collectEvents(analyzeMeal('200g white rice'));
  const decomp = events.find((e) => e.step === 'decomposition');
  assert.ok(decomp !== undefined);
  assert.equal(decomp.data.meal_name, 'White Rice');
  assert.equal(decomp.data.confidence, 0.9);
});

test('analyzeMeal decomposition event has ingredients array with 1 item', async () => {
  resetToDefault();
  const events = await collectEvents(analyzeMeal('200g white rice'));
  const decomp = events.find((e) => e.step === 'decomposition');
  assert.ok(Array.isArray(decomp.data.ingredients));
  assert.equal(decomp.data.ingredients.length, 1);
});

test('analyzeMeal decomposition event ingredient has correct fields', async () => {
  resetToDefault();
  const events = await collectEvents(analyzeMeal('200g white rice'));
  const decomp = events.find((e) => e.step === 'decomposition');
  const ing = decomp.data.ingredients[0];
  assert.equal(ing.raw_name, 'white rice');
  assert.equal(ing.canonical_hint, 'rice');
  assert.equal(ing.grams_estimated, 200);
});

// ---------------------------------------------------------------------------
// analyzeMeal — ingredients event resolves alias
// ---------------------------------------------------------------------------

test('analyzeMeal ingredients event resolves rice alias correctly', async () => {
  resetToDefault();
  const events = await collectEvents(analyzeMeal('200g white rice'));
  const ingr = events.find((e) => e.step === 'ingredients');
  assert.ok(ingr !== undefined);
  assert.ok(Array.isArray(ingr.data.ingredients));
  assert.equal(ingr.data.ingredients.length, 1);
  const ing = ingr.data.ingredients[0];
  assert.equal(ing.canonical_name, 'Rice, white, cooked');
  assert.equal(ing.match_type, 'alias');
  assert.equal(ing.grams, 200);
  assert.equal(ing.source, 'db');
});

// ---------------------------------------------------------------------------
// analyzeMeal — result event: correct macros
// ---------------------------------------------------------------------------

test('analyzeMeal result event has correct total calories', async () => {
  resetToDefault();
  const events = await collectEvents(analyzeMeal('200g white rice'));
  const result = events.find((e) => e.step === 'result');
  assert.ok(result !== undefined);
  assert.equal(result.data.macros.calories, 260);
});

test('analyzeMeal result event has correct protein', async () => {
  resetToDefault();
  const events = await collectEvents(analyzeMeal('200g white rice'));
  const result = events.find((e) => e.step === 'result');
  assert.equal(result.data.macros.protein, 5.4);
});

test('analyzeMeal result event has correct carbs', async () => {
  resetToDefault();
  const events = await collectEvents(analyzeMeal('200g white rice'));
  const result = events.find((e) => e.step === 'result');
  assert.equal(result.data.macros.carbs, 56.4);
});

// ---------------------------------------------------------------------------
// analyzeMeal — calorie_confidence HIGH when tight grams (zero variance)
// ---------------------------------------------------------------------------

test('analyzeMeal result has calorie_confidence HIGH when tight grams', async () => {
  resetToDefault();
  const events = await collectEvents(analyzeMeal('200g white rice'));
  const result = events.find((e) => e.step === 'result');
  assert.equal(result.data.calorie_confidence, 'HIGH');
});

// ---------------------------------------------------------------------------
// analyzeMeal — calorie_confidence MEDIUM for moderate variance
// min=180, max=220 → min_cal=234, max_cal=286, mid=260, variance=(286-234)/260 ≈ 0.2 → MEDIUM
// ---------------------------------------------------------------------------

test('analyzeMeal result has calorie_confidence MEDIUM for moderate variance', async () => {
  mockCreate.mock.resetCalls();
  mockCreate.mock.mockImplementation(async () => ({
    choices: [{
      message: {
        content: JSON.stringify({
          meal_name: 'White Rice',
          ingredients: [{
            raw_name: 'white rice',
            canonical_hint: 'rice',
            grams_estimated: 200,
            min_grams: 180,
            max_grams: 220,
            notes: 'cooked',
          }],
          confidence: 0.9,
        }),
      },
    }],
  }));

  const events = await collectEvents(analyzeMeal('white rice'));
  const result = events.find((e) => e.step === 'result');
  assert.ok(result !== undefined);
  assert.equal(result.data.calorie_confidence, 'MEDIUM');

  resetToDefault();
});

// ---------------------------------------------------------------------------
// analyzeMeal — uncertainty event: high variance → needs_clarification true
// min=100, max=400 → min_cal=130, max_cal=520, mid=260, variance=(520-130)/260=1.5 → needsClarification=true
// calorieSpread = 520-130 = 390 ≥ 50 → clarification generated
// ---------------------------------------------------------------------------

test('analyzeMeal uncertainty event has needs_clarification true for high variance', async () => {
  mockCreate.mock.resetCalls();
  mockCreate.mock.mockImplementation(async () => ({
    choices: [{
      message: {
        content: JSON.stringify({
          meal_name: 'White Rice',
          ingredients: [{
            raw_name: 'white rice',
            canonical_hint: 'rice',
            grams_estimated: 200,
            min_grams: 100,
            max_grams: 400,
            notes: 'cooked',
          }],
          confidence: 0.5,
        }),
      },
    }],
  }));

  const events = await collectEvents(analyzeMeal('white rice'));
  const unc = events.find((e) => e.step === 'uncertainty');
  assert.ok(unc !== undefined);
  assert.equal(unc.data.needs_clarification, true);

  resetToDefault();
});

test('analyzeMeal uncertainty event clarifications has at least 1 item for high variance', async () => {
  mockCreate.mock.resetCalls();
  mockCreate.mock.mockImplementation(async () => ({
    choices: [{
      message: {
        content: JSON.stringify({
          meal_name: 'White Rice',
          ingredients: [{
            raw_name: 'white rice',
            canonical_hint: 'rice',
            grams_estimated: 200,
            min_grams: 100,
            max_grams: 400,
            notes: 'cooked',
          }],
          confidence: 0.5,
        }),
      },
    }],
  }));

  const events = await collectEvents(analyzeMeal('white rice'));
  const unc = events.find((e) => e.step === 'uncertainty');
  assert.ok(unc.data.clarifications.length >= 1);

  resetToDefault();
});

test('analyzeMeal uncertainty clarification has correct ingredient_name, 3 options, default_option_index 1', async () => {
  mockCreate.mock.resetCalls();
  mockCreate.mock.mockImplementation(async () => ({
    choices: [{
      message: {
        content: JSON.stringify({
          meal_name: 'White Rice',
          ingredients: [{
            raw_name: 'white rice',
            canonical_hint: 'rice',
            grams_estimated: 200,
            min_grams: 100,
            max_grams: 400,
            notes: 'cooked',
          }],
          confidence: 0.5,
        }),
      },
    }],
  }));

  const events = await collectEvents(analyzeMeal('white rice'));
  const unc = events.find((e) => e.step === 'uncertainty');
  const clarification = unc.data.clarifications[0];
  assert.equal(clarification.ingredient_name, 'white rice');
  assert.equal(clarification.options.length, 3);
  assert.equal(clarification.default_option_index, 1);

  resetToDefault();
});

// ---------------------------------------------------------------------------
// analyzeMeal — uncertainty calorie_band: tight grams → min === max === 260
// ---------------------------------------------------------------------------

test('analyzeMeal uncertainty calorie_band min and max equal 260 for tight grams', async () => {
  resetToDefault();
  const events = await collectEvents(analyzeMeal('200g white rice'));
  const unc = events.find((e) => e.step === 'uncertainty');
  assert.equal(unc.data.calorie_band.min, 260);
  assert.equal(unc.data.calorie_band.max, 260);
});

// ---------------------------------------------------------------------------
// analyzeMeal — LLM fallback triggered for unmatched ingredient
// ---------------------------------------------------------------------------

test('analyzeMeal LLM fallback triggered for unmatched ingredient: source is llm_fallback', async () => {
  const fallbackResponse = {
    ingredients: [{
      name: 'xyzzyx-unknown-food-12345',
      kcal_per_100g: 100,
      protein_per_100g: 5,
      carbs_per_100g: 15,
      fat_per_100g: 3,
      fiber_per_100g: 1,
    }],
  };

  let callCount = 0;
  mockCreate.mock.resetCalls();
  mockCreate.mock.mockImplementation(async () => {
    callCount++;
    if (callCount === 1) {
      return {
        choices: [{
          message: {
            content: JSON.stringify({
              meal_name: 'Unknown Food',
              ingredients: [{
                raw_name: 'xyzzyx-unknown-food-12345',
                canonical_hint: 'xyzzyx-unknown-food-12345',
                grams_estimated: 150,
                min_grams: 150,
                max_grams: 150,
                notes: '',
              }],
              confidence: 0.5,
            }),
          },
        }],
      };
    }
    return {
      choices: [{
        message: {
          content: JSON.stringify(fallbackResponse),
        },
      }],
    };
  });

  const events = await collectEvents(analyzeMeal('xyzzyx-unknown-food-12345'));
  const ingr = events.find((e) => e.step === 'ingredients');
  assert.ok(ingr !== undefined);
  const resolvedIng = ingr.data.ingredients[0];
  assert.equal(resolvedIng.source, 'llm_fallback');

  resetToDefault();
});

test('analyzeMeal LLM fallback: mockCreate called twice for unmatched ingredient', async () => {
  const fallbackResponse = {
    ingredients: [{
      name: 'xyzzyx-unknown-food-12345',
      kcal_per_100g: 100,
      protein_per_100g: 5,
      carbs_per_100g: 15,
      fat_per_100g: 3,
      fiber_per_100g: 1,
    }],
  };

  let callCount = 0;
  mockCreate.mock.resetCalls();
  mockCreate.mock.mockImplementation(async () => {
    callCount++;
    if (callCount === 1) {
      return {
        choices: [{
          message: {
            content: JSON.stringify({
              meal_name: 'Unknown Food',
              ingredients: [{
                raw_name: 'xyzzyx-unknown-food-12345',
                canonical_hint: 'xyzzyx-unknown-food-12345',
                grams_estimated: 150,
                min_grams: 150,
                max_grams: 150,
                notes: '',
              }],
              confidence: 0.5,
            }),
          },
        }],
      };
    }
    return {
      choices: [{
        message: {
          content: JSON.stringify(fallbackResponse),
        },
      }],
    };
  });

  await collectEvents(analyzeMeal('xyzzyx-unknown-food-12345'));
  assert.equal(mockCreate.mock.calls.length, 2);

  resetToDefault();
});

// ---------------------------------------------------------------------------
// analyzeMeal — LLM fallback error is swallowed (generator completes, 4 events)
// ---------------------------------------------------------------------------

test('analyzeMeal LLM fallback error is swallowed and generator still produces 4 events', async () => {
  let callCount = 0;
  mockCreate.mock.resetCalls();
  mockCreate.mock.mockImplementation(async () => {
    callCount++;
    if (callCount === 1) {
      return {
        choices: [{
          message: {
            content: JSON.stringify({
              meal_name: 'Unknown Food',
              ingredients: [{
                raw_name: 'xyzzyx-unknown-food-12345',
                canonical_hint: 'xyzzyx-unknown-food-12345',
                grams_estimated: 150,
                min_grams: 150,
                max_grams: 150,
                notes: '',
              }],
              confidence: 0.5,
            }),
          },
        }],
      };
    }
    throw new Error('Fallback LLM failure');
  });

  const events = await collectEvents(analyzeMeal('xyzzyx-unknown-food-12345'));
  assert.equal(events.length, 4);
  const errEvent = events.find((e) => e.step === 'error');
  assert.equal(errEvent, undefined);

  resetToDefault();
});

// ---------------------------------------------------------------------------
// analyzeMeal — empty input still calls OpenAI
// ---------------------------------------------------------------------------

test('analyzeMeal empty input still calls OpenAI and produces events', async () => {
  resetToDefault();
  const events = await collectEvents(analyzeMeal(''));
  assert.ok(mockCreate.mock.calls.length >= 1);
  assert.ok(events.length > 0);
});

// ---------------------------------------------------------------------------
// analyzeMeal — result event ingredients array matches ingredients event
// ---------------------------------------------------------------------------

test('analyzeMeal result ingredients raw_name matches ingredients event raw_name', async () => {
  resetToDefault();
  const events = await collectEvents(analyzeMeal('200g white rice'));
  const ingr = events.find((e) => e.step === 'ingredients');
  const result = events.find((e) => e.step === 'result');
  assert.ok(ingr !== undefined);
  assert.ok(result !== undefined);

  const ingrNames = ingr.data.ingredients.map((i: any) => i.raw_name).sort();
  const resultNames = result.data.ingredients.map((i: any) => i.raw_name).sort();
  assert.deepEqual(ingrNames, resultNames);
});
