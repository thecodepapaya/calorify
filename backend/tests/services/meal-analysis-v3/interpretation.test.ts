import assert from 'node:assert/strict';
import test from 'node:test';
import type OpenAI from 'openai';
import type { MealAnalysisLlmClient } from '../../../src/services/meal-analysis/llm.js';
import {
  FIRST_PASS_RESPONSE_JSON_SCHEMA,
  SECOND_PASS_RESPONSE_JSON_SCHEMA,
  createFixtureMealInterpreter,
  createModelMealInterpreter,
  createTwoPassFixtureMealInterpreter,
} from '../../../src/services/meal-analysis-v3/interpretation.js';
import {
  FIRST_PASS_PROMPT_EXAMPLES,
  SECOND_PASS_PROMPT_EXAMPLES,
  firstPassResponseSchema,
  secondPassResponseSchema,
} from '../../../src/services/meal-analysis-v3/twoPassInterpretation.js';
import { input, proposalValue } from './fixtures.js';

test('both compact model response schemas are strict and use normalized numeric bounds', () => {
  const visit = (value: unknown): void => {
    if (value === null || typeof value !== 'object') return;
    const record = value as Record<string, unknown>;
    assert.notEqual(record.exclusiveMinimum, true);
    Object.values(record).forEach(visit);
  };
  for (const schema of [FIRST_PASS_RESPONSE_JSON_SCHEMA, SECOND_PASS_RESPONSE_JSON_SCHEMA]) {
    assert.equal(schema.type, 'object');
    assert.equal(schema.additionalProperties, false);
    visit(schema);
  }
});

test('prompt examples satisfy their compact response schemas', () => {
  for (const example of FIRST_PASS_PROMPT_EXAMPLES) {
    assert.equal(firstPassResponseSchema.safeParse(example.response).success, true);
  }
  for (const example of SECOND_PASS_PROMPT_EXAMPLES) {
    assert.equal(firstPassResponseSchema.safeParse(example.firstPass).success, true);
    assert.equal(secondPassResponseSchema.safeParse(example.response).success, true);
  }
});

test('fixture interpreter returns a semantically validated proposal without provider calls', async () => {
  const result = await createFixtureMealInterpreter(proposalValue()).interpret(input);

  assert.equal(result.proposal.outcome, 'FOOD');
  if (result.proposal.outcome === 'FOOD') {
    assert.deepEqual(
      result.proposal.components.map(({ componentId }) => componentId),
      ['sabzi', 'roti', 'oats']
    );
  }
  assert.deepEqual(result.providerAttempts, []);
});

test('fixture interpreter rejects schema and semantic violations', async () => {
  const unknownField = { ...proposalValue(), unexpected: true };
  await assert.rejects(
    createFixtureMealInterpreter(unknownField).interpret(input),
    /unrecognized|unexpected/i
  );

  const missingPoint = proposalValue();
  const components = missingPoint.components as Array<Record<string, unknown>>;
  components[0]!.pointScenarioId = 'missing-scenario';
  await assert.rejects(
    createFixtureMealInterpreter(missingPoint).interpret(input),
    /pointScenarioId/
  );
});

test('fixture interpreter enforces text/image input pairing', async () => {
  const interpreter = createFixtureMealInterpreter({
    outcome: 'NO_FOOD',
    reason: 'No food is present.',
  });
  const imageInput = {
    kind: 'IMAGE' as const,
    imageId: 'owned-image-1',
    imageOrigin: 'GALLERY' as const,
    context: input.context,
  };
  const image = {
    bytes: new Uint8Array([1, 2, 3]),
    mediaType: 'image/png' as const,
  };

  await assert.rejects(interpreter.interpret(imageInput), /Image bytes are required/);
  assert.deepEqual((await interpreter.interpret(imageInput, image)).proposal, {
    outcome: 'NO_FOOD',
    reason: 'No food is present.',
  });
  await assert.rejects(
    interpreter.interpret(input, image),
    /Image bytes cannot accompany TEXT input/
  );
});

const compactInput = {
  kind: 'TEXT' as const,
  text: 'daal and 4 roti',
  context: input.context,
};

const firstPass = {
  food_detected: true,
  mealName: 'Daal with roti',
  tip: 'Lentil dishes are a staple across many South Asian cuisines.',
  mealTypeCandidate: { value: null, origin: null },
  mealItems: [
    {
      mealItemName: 'daal', canonicalIdentity: 'cooked lentil curry',
      portion: {
        kind: 'AMOUNT', estimate: 150, min: 120, max: 180,
        origin: 'model_inferred',
      },
      preparation: { method: 'SIMMERED', origin: 'model_inferred' },
    },
    {
      mealItemName: 'roti', canonicalIdentity: 'whole wheat flatbread',
      portion: {
        kind: 'COUNT', count: 4, countMin: 4, countMax: 4,
        origin: 'user_stated',
        unitGrams: { estimate: 50, min: 40, max: 60, origin: 'model_inferred' },
      },
      preparation: { method: 'TOASTED', origin: 'model_inferred' },
    },
  ],
};

const secondPass = {
  mealItems: [
    {
      mealItemName: 'daal',
      ingredients: [
        {
          ingredientName: 'lentils', canonicalIdentity: 'dry pigeon peas',
          lookupAliases: ['toor dal', 'arhar dal'],
          retrievalIntent: 'GENERIC_INGREDIENT',
          amountGrams: { estimate: 45, min: 40, max: 50, origin: 'model_inferred' },
        },
        {
          ingredientName: 'water', canonicalIdentity: 'water',
          lookupAliases: [],
          retrievalIntent: 'GENERIC_INGREDIENT',
          amountGrams: { estimate: 95, min: 80, max: 110, origin: 'model_inferred' },
        },
        {
          ingredientName: 'cooking fat', canonicalIdentity: 'vegetable oil',
          lookupAliases: ['cooking oil'],
          retrievalIntent: 'GENERIC_INGREDIENT',
          amountGrams: { estimate: 8, min: 4, max: 14, origin: 'model_inferred' },
        },
      ],
      variations: [
        { variationType: 'INGREDIENT_AMOUNT', ingredientName: 'cooking fat', alternatives: [] },
        { variationType: 'INGREDIENT_VARIANT', ingredientName: 'cooking fat', alternatives: ['ghee'] },
      ],
    },
    {
      mealItemName: 'roti',
      ingredients: [
        {
          ingredientName: 'whole wheat flour', canonicalIdentity: 'whole wheat flour',
          lookupAliases: ['wholemeal flour', 'atta'],
          retrievalIntent: 'GENERIC_INGREDIENT',
          amountGrams: { estimate: 37.5, min: 30, max: 45, origin: 'model_inferred' },
        },
        {
          ingredientName: 'water', canonicalIdentity: 'water',
          lookupAliases: [],
          retrievalIntent: 'GENERIC_INGREDIENT',
          amountGrams: { estimate: 12.5, min: 10, max: 15, origin: 'model_inferred' },
        },
      ],
      variations: [],
    },
  ],
};

test('two-pass fixtures reject the redundant portion unit field', async () => {
  const withUnit = structuredClone(firstPass) as typeof firstPass & {
    mealItems: Array<{ portion: Record<string, unknown> }>;
  };
  withUnit.mealItems[0]!.portion.unit = 'GRAM';

  await assert.rejects(
    createTwoPassFixtureMealInterpreter(withUnit, secondPass).interpret(compactInput),
    /unrecognized|unit/i
  );
});

test('compact schemas enforce canonical preparation and variation enums', () => {
  const lowercaseMethod = structuredClone(firstPass);
  lowercaseMethod.mealItems[0]!.preparation.method = 'simmered';
  assert.equal(firstPassResponseSchema.safeParse(lowercaseMethod).success, false);

  const validPreparationVariation = structuredClone(secondPass);
  validPreparationVariation.mealItems[0]!.variations = [{
    variationType: 'PREPARATION', ingredientName: null, alternatives: ['PRESSURE_COOKED'],
  }] as typeof validPreparationVariation.mealItems[0]['variations'];
  assert.equal(secondPassResponseSchema.safeParse(validPreparationVariation).success, true);

  const lowercaseAlternative = structuredClone(validPreparationVariation) as unknown as {
    mealItems: Array<{ variations: Array<{ alternatives: string[] }> }>;
  };
  lowercaseAlternative.mealItems[0]!.variations[0]!.alternatives = ['pressure_cooked'];
  assert.equal(secondPassResponseSchema.safeParse(lowercaseAlternative).success, false);

  const obsoletePortionVariation = structuredClone(secondPass) as unknown as {
    mealItems: Array<{ variations: unknown[] }>;
  };
  obsoletePortionVariation.mealItems[0]!.variations = [{
    variationType: 'COUNT', ingredientName: null, alternatives: [],
  }];
  assert.equal(secondPassResponseSchema.safeParse(obsoletePortionVariation).success, false);

  const invalidIngredientVariation = structuredClone(secondPass);
  invalidIngredientVariation.mealItems[0]!.variations = [{
    variationType: 'INGREDIENT_AMOUNT', ingredientName: 'cooking fat', alternatives: ['10 grams'],
  }] as typeof invalidIngredientVariation.mealItems[0]['variations'];
  assert.equal(secondPassResponseSchema.safeParse(invalidIngredientVariation).success, false);
});

test('compact ingredient aliases are unique and exclude the canonical identity', () => {
  const duplicate = structuredClone(secondPass);
  duplicate.mealItems[0]!.ingredients[0]!.lookupAliases = ['toor dal', 'Toor Dal'];
  assert.equal(secondPassResponseSchema.safeParse(duplicate).success, false);

  const canonical = structuredClone(secondPass);
  canonical.mealItems[0]!.ingredients[0]!.lookupAliases = ['Dry Pigeon Peas'];
  assert.equal(secondPassResponseSchema.safeParse(canonical).success, false);
});

test('compact schema normalizes null optional product queries to omission', () => {
  const response = structuredClone(secondPass);
  const ingredient = response.mealItems[0]!.ingredients[0]! as typeof response.mealItems[0]['ingredients'][number] & {
    productQuery?: null;
  };
  ingredient.productQuery = null;

  const parsed = secondPassResponseSchema.parse(response);
  assert.equal(parsed.mealItems[0]!.ingredients[0]!.productQuery, undefined);
});

test('first-pass tip is required and strictly validated', () => {
  const withoutTip = { ...firstPass };
  delete withoutTip.tip;
  assert.equal(firstPassResponseSchema.safeParse(withoutTip).success, false);

  const emptyTip = {
    ...firstPass,
    tip: '   ',
  };
  assert.equal(firstPassResponseSchema.safeParse(emptyTip).success, false);

  const malformedTip = {
    ...firstPass,
    tip: 42,
  };
  assert.equal(firstPassResponseSchema.safeParse(malformedTip).success, false);
});

test('COUNT portions reject grams in the count slot and legacy field names', () => {
  // The observed model failure: "1 banana" returned COUNT estimate 118
  // (the USDA medium-banana weight). The renamed fields and integer cap
  // must reject that shape.
  const gramsAsCount = structuredClone(firstPass);
  const banana = gramsAsCount.mealItems[1]!;
  banana.portion = {
    kind: 'COUNT', count: 118, countMin: 118, countMax: 118, origin: 'user_stated',
    unitGrams: { estimate: 118, min: 118, max: 118, origin: 'model_inferred' },
  } as typeof banana.portion;
  assert.equal(firstPassResponseSchema.safeParse(gramsAsCount).success, false);

  // Legacy field names must no longer validate.
  const legacyNames = structuredClone(firstPass);
  const roti = legacyNames.mealItems[1]!;
  roti.portion = {
    kind: 'COUNT', estimate: 4, min: 4, max: 4, origin: 'user_stated',
    perUnitGrams: { estimate: 50, min: 40, max: 60, origin: 'model_inferred' },
  } as typeof roti.portion;
  assert.equal(firstPassResponseSchema.safeParse(legacyNames).success, false);

  // AMOUNT portions must not carry the removed perUnitGrams null marker.
  const staleNull = structuredClone(firstPass) as typeof firstPass & {
    mealItems: Array<{ portion: Record<string, unknown> }>;
  };
  staleNull.mealItems[0]!.portion.perUnitGrams = null;
  assert.equal(firstPassResponseSchema.safeParse(staleNull).success, false);
});

test('two-pass fixture expands compact daal and roti responses into calculation scenarios', async () => {
  const result = await createTwoPassFixtureMealInterpreter(firstPass, secondPass).interpret(compactInput);
  assert.equal(result.proposal.outcome, 'FOOD');
  assert.deepEqual(result.firstPass, firstPass);
  assert.deepEqual(result.secondPass, secondPass);
  if (result.proposal.outcome === 'FOOD') {
    assert.deepEqual(result.proposal.components.map(({ componentId }) => componentId), ['daal', 'roti']);
    assert.equal(result.proposal.components[0]!.scenarios.length, 12);
    assert.equal(result.proposal.components[1]!.scenarios.length, 3);
    const daalIngredients = result.proposal.components[0]!.scenarios[0]!.ingredients;
    assert.deepEqual(
      daalIngredients.find((ingredient) => ingredient.leafId === 'lentils')?.lookupAliases,
      ['toor dal', 'arhar dal']
    );
    assert.deepEqual(
      daalIngredients.find((ingredient) => ingredient.leafId === 'lentils')?.preparationCodes,
      ['UNKNOWN']
    );
    assert.deepEqual(
      daalIngredients.find((ingredient) => ingredient.leafId === 'cooking-fat')?.preparationCodes,
      ['UNKNOWN']
    );
    const gheeScenario = result.proposal.components[0]!.scenarios.find((scenario) =>
      scenario.ingredients.some((ingredient) => ingredient.canonicalIdentity === 'ghee'));
    assert.deepEqual(
      gheeScenario?.ingredients.find((ingredient) => ingredient.leafId === 'cooking-fat')?.lookupAliases,
      []
    );
  }
});

test('model adapter performs two observable compact calls', async () => {
  const values = [firstPass, secondPass];
  const requests: Array<{ name: string; operation?: string; reasoningEffort?: string }> = [];
  const passSnapshots: Array<{ hasIngredients: boolean; componentCount: number }> = [];
  const client: MealAnalysisLlmClient = {
    chat: {
      completions: {
        async create(request, context) {
          const value = values[requests.length]!;
          requests.push({ name: request.response_format?.type === 'json_schema'
            ? request.response_format.json_schema.name
            : '', operation: context?.operation,
          reasoningEffort: request.reasoning_effort });
          context?.validateStructuredContent?.(value);
          return {
            choices: [{ message: { content: JSON.stringify(value) } }],
          } as unknown as OpenAI.Chat.Completions.ChatCompletion;
        },
      },
    },
  };

  const result = await createModelMealInterpreter(client, undefined, {
    onPassCompleted(snapshot) {
      passSnapshots.push({
        hasIngredients: snapshot.secondPass !== undefined,
        componentCount: snapshot.firstPass.mealItems.length,
      });
    },
  }).interpret(compactInput);
  assert.equal(result.proposal.outcome, 'FOOD');
  assert.deepEqual(requests, [
    {
      name: 'meal_components_v3',
      operation: 'interpret_v3_components_text',
      reasoningEffort: 'none',
    },
    {
      name: 'meal_ingredients_v3',
      operation: 'interpret_v3_ingredients_text',
      reasoningEffort: 'none',
    },
  ]);
  assert.deepEqual(passSnapshots, [
    { hasIngredients: false, componentCount: 2 },
    { hasIngredients: true, componentCount: 2 },
  ]);
  assert.deepEqual(result.rawProposal, { firstPass, secondPass });
});
