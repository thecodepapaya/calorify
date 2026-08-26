import assert from 'node:assert/strict';
import test from 'node:test';
import type OpenAI from 'openai';
import type { MealAnalysisLlmClient } from '../../../src/services/meal-analysis/llm.js';
import {
  MEAL_INTERPRETATION_RESPONSE_SCHEMA,
  createFixtureMealInterpreter,
  createModelMealInterpreter,
} from '../../../src/services/meal-analysis-v3/interpretation.js';
import { input, proposalValue } from './fixtures.js';

test('model response schema is a strict proposal envelope with numeric exclusive bounds', () => {
  assert.equal(MEAL_INTERPRETATION_RESPONSE_SCHEMA.type, 'object');
  assert.equal(MEAL_INTERPRETATION_RESPONSE_SCHEMA.additionalProperties, false);
  assert.deepEqual(MEAL_INTERPRETATION_RESPONSE_SCHEMA.required, ['proposal']);
  assert.ok(
    typeof MEAL_INTERPRETATION_RESPONSE_SCHEMA.properties === 'object' &&
    MEAL_INTERPRETATION_RESPONSE_SCHEMA.properties !== null
  );

  const visit = (value: unknown): void => {
    if (value === null || typeof value !== 'object') return;
    const record = value as Record<string, unknown>;
    assert.notEqual(record.exclusiveMinimum, true);
    Object.values(record).forEach(visit);
  };
  visit(MEAL_INTERPRETATION_RESPONSE_SCHEMA);
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

test('model adapter reports bounded mechanical normalizations before semantic validation', async () => {
  const raw = proposalValue();
  const components = raw.components as Array<Record<string, unknown>>;
  const sabziScenarios = components[0]!.scenarios as Array<Record<string, unknown>>;
  const sabziIngredients = sabziScenarios[0]!.ingredients as Array<Record<string, unknown>>;
  sabziIngredients[0]!.lookupAliases = ['pumpkin'];
  const evidence = components[0]!.evidence as Array<Record<string, unknown>>;
  evidence[0]!.startUtf16 = 0;
  evidence[0]!.endUtf16 = 1;

  const rotiScenarios = components[1]!.scenarios as Array<Record<string, unknown>>;
  rotiScenarios[0]!.effectivePortion = { kind: 'FINISHED_MASS', consumedGrams: 160 };
  rotiScenarios[0]!.finishedYieldUnits = null;

  const envelope = { proposal: raw };
  const client: MealAnalysisLlmClient = {
    chat: {
      completions: {
        async create(_request, context) {
          context?.validateStructuredContent?.(envelope);
          return {
            choices: [{ message: { content: JSON.stringify(envelope) } }],
          } as unknown as OpenAI.Chat.Completions.ChatCompletion;
        },
      },
    },
  };

  const result = await createModelMealInterpreter(client).interpret(input);
  assert.equal(result.proposal.outcome, 'FOOD');
  assert.deepEqual(result.normalizations, [
    'recomputed exact USER_TEXT UTF-16 spans',
    'removed duplicate lookup aliases',
    'aligned COUNT scenario scaling with the component portion',
  ]);
  assert.equal((result.rawProposal as Record<string, unknown>).outcome, 'FOOD');
});
