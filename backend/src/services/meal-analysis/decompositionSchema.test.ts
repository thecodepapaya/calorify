import assert from 'node:assert/strict';
import { readFile } from 'node:fs/promises';
import test from 'node:test';
import {
  DECOMPOSITION_SCHEMA,
  parseGeneratedDecompositionOutput,
} from './decompositionSchema.js';

const food = {
  outcome: 'FOOD',
  outcome_reason: 'A banana is explicitly described.',
  outcome_confidence: 0.98,
  meal_name: 'Banana',
  items: [{
    raw_name: 'banana',
    is_food: true,
    is_food_reason: 'The banana is the described meal item.',
    is_food_confidence: 0.99,
    usda_lookup: {
      proposed_canonical_name: 'banana',
      aliases: ['bananas'],
      preparation_states: ['raw'],
    },
    portion: {
      kind: 'COUNT',
      grams_estimated: 120,
      min_grams: 100,
      max_grams: 140,
      count: 1,
      per_unit_grams: 120,
      per_unit_min_grams: 100,
      per_unit_max_grams: 140,
      size_specified_by_user: false,
    },
  }],
  inferred_meal_type: 'SNACK',
  meal_type_reason: 'A single fruit is commonly a snack.',
  meal_type_confident: true,
};

test('V2 generated decomposition accepts valid food and no-food outputs', () => {
  assert.equal(parseGeneratedDecompositionOutput(food).outcome, 'FOOD');
  assert.equal(parseGeneratedDecompositionOutput({
    outcome: 'NO_FOOD',
    outcome_reason: 'The input describes a laptop.',
    outcome_confidence: 0.95,
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
    meal_type_reason: 'There is no meal occasion to infer.',
    meal_type_confident: false,
  }).outcome, 'NO_FOOD');
});

test('V2 generated decomposition rejects unknown fields and inconsistent bounds', () => {
  assert.throws(() => parseGeneratedDecompositionOutput({ ...food, extra: true }));
  const broken = structuredClone(food);
  broken.items[0]!.portion.min_grams = 130;
  assert.throws(() => parseGeneratedDecompositionOutput(broken));
  assert.throws(() => parseGeneratedDecompositionOutput({
    ...food,
    outcome: 'NO_FOOD',
    meal_name: null,
  }));
});

test('provider schema keeps evidence before confidence and describes every property', () => {
  const root = DECOMPOSITION_SCHEMA as { properties: Record<string, unknown> };
  const keys = Object.keys(root.properties);
  assert.ok(keys.indexOf('outcome_reason') < keys.indexOf('outcome_confidence'));
  assert.ok(keys.indexOf('meal_type_reason') < keys.indexOf('meal_type_confident'));
  const visit = (value: unknown, path: string): void => {
    if (value == null || typeof value !== 'object') return;
    const record = value as Record<string, unknown>;
    if (record.properties != null) {
      for (const [name, property] of Object.entries(
        record.properties as Record<string, unknown>
      )) {
        assert.ok(
          typeof (property as { description?: unknown }).description === 'string',
          `${path}.${name} description`
        );
      }
    }
    for (const [name, child] of Object.entries(record)) visit(child, `${path}.${name}`);
  }
  visit(root, 'root');
  assert.equal('schema_version' in root.properties, false);
  assert.equal('proposal_id' in root.properties, false);
});

test('provider schema uses numeric exclusive bounds accepted by current OpenAI routes', () => {
  const visit = (value: unknown, path: string): void => {
    if (value == null || typeof value !== 'object') return;
    const record = value as Record<string, unknown>;
    if ('exclusiveMinimum' in record) {
      assert.equal(typeof record.exclusiveMinimum, 'number', `${path}.exclusiveMinimum`);
    }
    for (const [name, child] of Object.entries(record)) visit(child, `${path}.${name}`);
  };
  visit(DECOMPOSITION_SCHEMA, 'root');
});

test('on-device schema describes the same generated V2 semantic fields', async () => {
  const kotlin = await readFile(new URL(
    '../../../../app/android/app/src/main/kotlin/dev/thecodepapaya/calorify/LocalMealProposalSchema.kt',
    import.meta.url
  ), 'utf8');
  const fields = [
    'outcome', 'outcomeReason', 'outcomeConfidence', 'mealName', 'items',
    'inferredMealType', 'mealTypeReason', 'mealTypeConfident', 'rawName',
    'isFood', 'isFoodReason', 'isFoodConfidence', 'usdaLookup', 'portion',
    'proposedCanonicalName', 'aliases', 'preparationStates', 'kind',
    'gramsEstimated', 'minGrams', 'maxGrams', 'count', 'perUnitGrams',
    'perUnitMinGrams', 'perUnitMaxGrams', 'sizeSpecifiedByUser',
  ];
  for (const field of fields) {
    assert.match(
      kotlin,
      new RegExp(`@param:Guide\\(description = "[^"]+"[^)]*\\)\\s+val ${field}:`),
      `${field} needs a non-empty ML Kit description`
    );
  }
  assert.doesNotMatch(kotlin, /val (schemaVersion|proposalId|rowId):/);
});
