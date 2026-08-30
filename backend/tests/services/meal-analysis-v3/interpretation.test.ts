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
  mealNameCandidate: 'Daal with roti',
  mealTypeCandidate: { value: null, origin: null },
  components: [
    {
      componentName: 'daal', canonicalIdentity: 'cooked lentil curry',
      portion: {
        kind: 'AMOUNT', estimate: 150, min: 120, max: 180,
        origin: 'model_inferred', perUnitGrams: null,
      },
      preparation: { method: 'SIMMERED', origin: 'model_inferred' },
    },
    {
      componentName: 'roti', canonicalIdentity: 'whole wheat flatbread',
      portion: {
        kind: 'COUNT', estimate: 4, min: 4, max: 4,
        origin: 'user_text',
        perUnitGrams: { estimate: 50, min: 40, max: 60, origin: 'model_inferred' },
      },
      preparation: { method: 'TOASTED', origin: 'model_inferred' },
    },
  ],
};

const secondPass = {
  components: [
    {
      componentName: 'daal',
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
      componentName: 'roti',
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
    components: Array<{ portion: Record<string, unknown> }>;
  };
  withUnit.components[0]!.portion.unit = 'GRAM';

  await assert.rejects(
    createTwoPassFixtureMealInterpreter(withUnit, secondPass).interpret(compactInput),
    /unrecognized|unit/i
  );
});

test('compact schemas enforce canonical preparation and variation enums', () => {
  const lowercaseMethod = structuredClone(firstPass);
  lowercaseMethod.components[0]!.preparation.method = 'simmered';
  assert.equal(firstPassResponseSchema.safeParse(lowercaseMethod).success, false);

  const validPreparationVariation = structuredClone(secondPass);
  validPreparationVariation.components[0]!.variations = [{
    variationType: 'PREPARATION', ingredientName: null, alternatives: ['PRESSURE_COOKED'],
  }] as typeof validPreparationVariation.components[0]['variations'];
  assert.equal(secondPassResponseSchema.safeParse(validPreparationVariation).success, true);

  const lowercaseAlternative = structuredClone(validPreparationVariation) as unknown as {
    components: Array<{ variations: Array<{ alternatives: string[] }> }>;
  };
  lowercaseAlternative.components[0]!.variations[0]!.alternatives = ['pressure_cooked'];
  assert.equal(secondPassResponseSchema.safeParse(lowercaseAlternative).success, false);

  const obsoletePortionVariation = structuredClone(secondPass) as unknown as {
    components: Array<{ variations: unknown[] }>;
  };
  obsoletePortionVariation.components[0]!.variations = [{
    variationType: 'COUNT', ingredientName: null, alternatives: [],
  }];
  assert.equal(secondPassResponseSchema.safeParse(obsoletePortionVariation).success, false);

  const invalidIngredientVariation = structuredClone(secondPass);
  invalidIngredientVariation.components[0]!.variations = [{
    variationType: 'INGREDIENT_AMOUNT', ingredientName: 'cooking fat', alternatives: ['10 grams'],
  }] as typeof invalidIngredientVariation.components[0]['variations'];
  assert.equal(secondPassResponseSchema.safeParse(invalidIngredientVariation).success, false);
});

test('compact ingredient aliases are unique and exclude the canonical identity', () => {
  const duplicate = structuredClone(secondPass);
  duplicate.components[0]!.ingredients[0]!.lookupAliases = ['toor dal', 'Toor Dal'];
  assert.equal(secondPassResponseSchema.safeParse(duplicate).success, false);

  const canonical = structuredClone(secondPass);
  canonical.components[0]!.ingredients[0]!.lookupAliases = ['Dry Pigeon Peas'];
  assert.equal(secondPassResponseSchema.safeParse(canonical).success, false);
});

test('compact schema normalizes null optional product queries to omission', () => {
  const response = structuredClone(secondPass);
  const ingredient = response.components[0]!.ingredients[0]! as typeof response.components[0]['ingredients'][number] & {
    productQuery?: null;
  };
  ingredient.productQuery = null;

  const parsed = secondPassResponseSchema.parse(response);
  assert.equal(parsed.components[0]!.ingredients[0]!.productQuery, undefined);
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

  const result = await createModelMealInterpreter(client).interpret(compactInput);
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
  assert.deepEqual(result.rawProposal, { firstPass, secondPass });
});
