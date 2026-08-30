import assert from 'node:assert/strict';
import test from 'node:test';
import {
  interpretationProposalSchema,
  normalizedMealInputSchema,
  parseAndValidateInterpretation,
  preparationUmbrella,
} from '../../../src/services/meal-analysis-v3/domain.js';
import { input, proposalValue, text } from './fixtures.js';

test('strict V3 schemas accept FOOD and terminal outcomes', () => {
  const food = parseAndValidateInterpretation(proposalValue(), input);
  assert.equal(food.outcome, 'FOOD');
  assert.equal(food.components.length, 3);
  assert.equal(food.components[1]!.pointScenarioId, 'roti-small');

  assert.deepEqual(interpretationProposalSchema.parse({ outcome: 'NO_FOOD', reason: 'No food is present.' }), {
    outcome: 'NO_FOOD',
    reason: 'No food is present.',
  });
  assert.deepEqual(interpretationProposalSchema.parse({ outcome: 'UNUSABLE', reason: 'The image is unreadable.' }), {
    outcome: 'UNUSABLE',
    reason: 'The image is unreadable.',
  });
  assert.throws(() => interpretationProposalSchema.parse({
    outcome: 'NO_FOOD',
    reason: 'No food is present.',
    components: [],
  }));
});

test('food labels and count units reject punctuation-only model artifacts', () => {
  const invalidName = proposalValue();
  invalidName.mealNameCandidate = ': {';
  assert.throws(() => parseAndValidateInterpretation(invalidName, input), /food labels/);

  const invalidUnit = proposalValue();
  const components = invalidUnit.components as Array<Record<string, unknown>>;
  const portion = components[1]!.portionConstraint as Record<string, unknown>;
  portion.naturalUnitCode = '},';
  assert.throws(() => parseAndValidateInterpretation(invalidUnit, input), /count unit codes/);
});

test('text evidence uses exact JavaScript UTF-16 spans', () => {
  assert.equal(text.indexOf('kaddu sabzi'), 3, 'emoji occupies two UTF-16 code units plus one space');
  const invalid = proposalValue();
  const components = invalid.components as Array<Record<string, unknown>>;
  const evidence = components[0]!.evidence as Array<Record<string, unknown>>;
  evidence[0]!.startUtf16 = 2;
  assert.throws(
    () => parseAndValidateInterpretation(invalid, input),
    /UTF-16 evidence span/
  );

  const imageInput = {
    kind: 'IMAGE',
    imageId: 'owned-image-1',
    imageOrigin: 'CAMERA_NOW',
    context: input.context,
  };
  assert.throws(
    () => parseAndValidateInterpretation(proposalValue(), imageInput),
    /USER_TEXT evidence is invalid for image input/
  );
});

test('normalized input rejects invalid context and preserves text indices', () => {
  const parsed = normalizedMealInputSchema.parse(input);
  assert.equal(parsed.kind, 'TEXT');
  assert.equal(parsed.text, text);
  assert.throws(() => normalizedMealInputSchema.parse({
    ...input,
    context: { ...input.context, countryCode: 'in' },
  }));
  assert.throws(() => normalizedMealInputSchema.parse({
    ...input,
    context: { ...input.context, timeZone: 'not/a-zone' },
  }));
});

test('semantic validation rejects broken point, scale, yield, and assumption invariants', () => {
  const missingPoint = proposalValue();
  const missingPointComponents = missingPoint.components as Array<Record<string, unknown>>;
  missingPointComponents[0]!.pointScenarioId = 'absent';
  assert.throws(() => parseAndValidateInterpretation(missingPoint, input), /pointScenarioId/);

  const badYield = proposalValue();
  const badYieldComponents = badYield.components as Array<Record<string, unknown>>;
  const rotiScenarios = badYieldComponents[1]!.scenarios as Array<Record<string, unknown>>;
  rotiScenarios[0]!.finishedYieldGrams = 41;
  assert.throws(() => parseAndValidateInterpretation(badYield, input), /per-unit finished grams/);

  const incompleteAssumptions = proposalValue();
  const incompleteComponents = incompleteAssumptions.components as Array<Record<string, unknown>>;
  const incompleteScenarios = incompleteComponents[1]!.scenarios as Array<Record<string, unknown>>;
  incompleteScenarios[1]!.assumptions = [];
  assert.throws(() => parseAndValidateInterpretation(incompleteAssumptions, input), /same assumption dimensions/);

  const wrongScale = proposalValue();
  const wrongScaleComponents = wrongScale.components as Array<Record<string, unknown>>;
  const oatsScenarios = wrongScaleComponents[2]!.scenarios as Array<Record<string, unknown>>;
  oatsScenarios[0]!.effectivePortion = { kind: 'UNIT_COUNT', consumedCount: 1, perUnitFinishedGrams: 300 };
  assert.throws(() => parseAndValidateInterpretation(wrongScale, input), /FINISHED_MASS/);

  const legacyMeasurementBasis = proposalValue();
  const legacyMeasurementComponents = legacyMeasurementBasis.components as Array<Record<string, unknown>>;
  const legacyMeasurementPortion = legacyMeasurementComponents[0]!.portionConstraint as Record<string, unknown>;
  legacyMeasurementPortion.measurementBasis = 'FINISHED';
  assert.throws(() => parseAndValidateInterpretation(legacyMeasurementBasis, input));

  const legacyFinishedGrams = proposalValue();
  const legacyGramsComponents = legacyFinishedGrams.components as Array<Record<string, unknown>>;
  const legacyGramsPortion = legacyGramsComponents[0]!.portionConstraint as Record<string, unknown>;
  legacyGramsPortion.finishedGrams = 150;
  assert.throws(() => parseAndValidateInterpretation(legacyFinishedGrams, input));

  const preparationEvidence = proposalValue();
  const preparationComponents = preparationEvidence.components as Array<Record<string, unknown>>;
  const preparationConstraints = preparationComponents[0]!.preparationConstraints as Array<Record<string, unknown>>;
  preparationConstraints.push({
    code: 'SAUTEED',
    origin: 'MODEL_INFERRED',
    evidence: null,
  });
  assert.throws(() => parseAndValidateInterpretation(preparationEvidence, input));

  const missingBrandedProductQuery = proposalValue();
  const missingBrandedComponents = missingBrandedProductQuery.components as Array<Record<string, unknown>>;
  const brandedLeaf = ((missingBrandedComponents[0]!.scenarios as Array<Record<string, unknown>>)[0]!
    .ingredients as Array<Record<string, unknown>>)[0]!;
  brandedLeaf.retrievalIntent = 'BRANDED_PRODUCT';
  assert.throws(() => parseAndValidateInterpretation(missingBrandedProductQuery, input), /product query/);

  const genericProductQuery = proposalValue();
  const genericComponents = genericProductQuery.components as Array<Record<string, unknown>>;
  const genericLeaf = ((genericComponents[0]!.scenarios as Array<Record<string, unknown>>)[0]!
    .ingredients as Array<Record<string, unknown>>)[0]!;
  genericLeaf.productQuery = 'pumpkin';
  assert.throws(() => parseAndValidateInterpretation(genericProductQuery, input), /only branded products/);
});

test('ingredient roles and preparation taxonomy stay calculation-safe', () => {
  const retainedWater = proposalValue();
  const components = retainedWater.components as Array<Record<string, unknown>>;
  const scenarios = components[1]!.scenarios as Array<Record<string, unknown>>;
  const ingredients = scenarios[0]!.ingredients as Array<Record<string, unknown>>;
  ingredients[1]!.retainedFat = true;
  assert.throws(() => parseAndValidateInterpretation(retainedWater, input), /yield-only ingredients/);

  assert.equal(preparationUmbrella('BOILED'), 'MOIST_HEAT');
  assert.equal(preparationUmbrella('DEEP_FRIED'), 'FAT_HEAT');
  assert.equal(preparationUmbrella('FERMENTED'), 'PROCESSED');
});

test('uncertainty assumptions carry provenance and unresolved meal type cannot claim user text', () => {
  const missingOrigin = proposalValue();
  const components = missingOrigin.components as Array<Record<string, unknown>>;
  const scenarios = components[0]!.scenarios as Array<Record<string, unknown>>;
  const assumptions = scenarios[0]!.assumptions as Array<Record<string, unknown>>;
  delete assumptions[0]!.origin;
  assert.throws(() => parseAndValidateInterpretation(missingOrigin, input));

  const falseMealTypeClaim = proposalValue();
  falseMealTypeClaim.mealTypeCandidate = {
    value: null,
    origin: 'USER_TEXT',
    confidence: 0,
    evidence: {
      origin: 'USER_TEXT',
      text: 'kaddu sabzi',
      startUtf16: text.indexOf('kaddu sabzi'),
      endUtf16: text.indexOf('kaddu sabzi') + 'kaddu sabzi'.length,
    },
  };
  assert.throws(
    () => parseAndValidateInterpretation(falseMealTypeClaim, input),
    /unresolved meal type cannot claim USER_TEXT/
  );
});
