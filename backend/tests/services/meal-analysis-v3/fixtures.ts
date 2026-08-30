import assert from 'node:assert/strict';
import {
  parseAndValidateInterpretation,
  type FoodInterpretationProposal,
  type MacroVector,
  type NormalizedMealInput,
  type ResolvedNutritionReference,
} from '../../../src/services/meal-analysis-v3/domain.js';

export const text = '🥣 kaddu sabzi and 4 rotis';

export const input: NormalizedMealInput = {
  kind: 'TEXT',
  text,
  context: {
    locale: 'en-IN',
    countryCode: 'IN',
    timeZone: 'Asia/Kolkata',
    capturedAt: '2026-08-26T06:30:00.000Z',
  },
};

const modelEvidence = (description: string) => ({
  origin: 'MODEL_INFERRED' as const,
  text: description,
});

const modelConstraint = (estimate: number, min: number, max: number, description: string) => ({
  estimate,
  min,
  max,
  origin: 'MODEL_INFERRED' as const,
  evidence: modelEvidence(description),
});

const userEvidence = (claim: string) => {
  const startUtf16 = text.indexOf(claim);
  assert.notEqual(startUtf16, -1);
  return {
    origin: 'USER_TEXT' as const,
    text: claim,
    startUtf16,
    endUtf16: startUtf16 + claim.length,
  };
};

const activeLeaf = (
  leafId: string,
  displayName: string,
  canonicalIdentity: string,
  nutritionBasisGrams: number,
  nutritionBasis: 'RAW' | 'DRY' | 'RETAINED' = 'RAW'
) => ({
  leafId,
  displayName,
  canonicalIdentity,
  lookupAliases: [],
  retrievalIntent: 'GENERIC_INGREDIENT' as const,
  role: 'ACTIVE_NUTRITION' as const,
  nutritionBasis,
  nutritionBasisGrams,
  preparationCodes: nutritionBasis === 'RAW' ? ['RAW' as const] : ['COOKED_UNKNOWN' as const],
  retainedFat: nutritionBasis === 'RETAINED',
});

const waterLeaf = (grams: number) => ({
  leafId: 'water',
  displayName: 'Water',
  canonicalIdentity: 'water',
  lookupAliases: [],
  retrievalIntent: 'GENERIC_INGREDIENT' as const,
  role: 'YIELD_ONLY' as const,
  nutritionBasis: 'AS_SERVED' as const,
  nutritionBasisGrams: grams,
  preparationCodes: ['COOKED_UNKNOWN' as const],
  retainedFat: false,
});

export function proposalValue(): Record<string, unknown> {
  return {
    outcome: 'FOOD',
    mealNameCandidate: 'Kaddu sabzi with roti and oats',
    mealTypeCandidate: {
      value: null,
      origin: 'MODEL_INFERRED',
      confidence: 0.2,
      evidence: modelEvidence('The occasion is not stated.'),
    },
    components: [
      {
        componentId: 'sabzi',
        sourceName: 'kaddu sabzi',
        displayName: 'Kaddu sabzi',
        canonicalIdentity: 'pumpkin curry',
        evidence: [userEvidence('kaddu sabzi')],
        portionConstraint: {
          kind: 'AMOUNT',
          naturalMeasure: {
            unitCode: 'GRAM',
            quantity: modelConstraint(150, 150, 150, 'A 150 g serving is assumed.'),
          },
        },
        preparationConstraints: [],
        pointScenarioId: 'sabzi-lean',
        scenarios: [
          {
            scenarioId: 'sabzi-lean',
            assumptions: [{
              answerKind: 'OPTION',
              dimensionKey: 'retained-fat',
              questionKind: 'ADDED_OR_RETAINED_FAT',
              optionCode: 'light',
              optionLabel: 'Lightly oiled',
              origin: 'MODEL_INFERRED',
              evidence: modelEvidence('A light-oil recipe is plausible.'),
            }],
            ingredients: [
              activeLeaf('pumpkin', 'Pumpkin', 'pumpkin', 120),
              activeLeaf('oil', 'Oil', 'vegetable oil', 5, 'RETAINED'),
            ],
            finishedYieldGrams: 150,
            finishedYieldUnits: null,
            effectivePortion: { kind: 'FINISHED_MASS', consumedGrams: 150 },
            effectivePreparationCodes: ['SAUTEED'],
          },
          {
            scenarioId: 'sabzi-rich',
            assumptions: [{
              answerKind: 'OPTION',
              dimensionKey: 'retained-fat',
              questionKind: 'ADDED_OR_RETAINED_FAT',
              optionCode: 'rich',
              optionLabel: 'Heavily oiled',
              origin: 'MODEL_INFERRED',
              evidence: modelEvidence('A rich-oil recipe is plausible.'),
            }],
            ingredients: [
              activeLeaf('pumpkin', 'Pumpkin', 'pumpkin', 120),
              activeLeaf('oil', 'Oil', 'vegetable oil', 15, 'RETAINED'),
            ],
            finishedYieldGrams: 150,
            finishedYieldUnits: null,
            effectivePortion: { kind: 'FINISHED_MASS', consumedGrams: 150 },
            effectivePreparationCodes: ['SAUTEED'],
          },
        ],
      },
      {
        componentId: 'roti',
        sourceName: 'rotis',
        displayName: 'Roti',
        canonicalIdentity: 'whole wheat flatbread',
        evidence: [userEvidence('rotis')],
        portionConstraint: {
          kind: 'COUNT',
          count: {
            estimate: 4,
            min: 4,
            max: 4,
            origin: 'USER_TEXT',
            evidence: userEvidence('4'),
          },
          perUnitFinishedGrams: modelConstraint(50, 40, 60, 'Roti unit size remains uncertain.'),
          naturalUnitCode: 'ROTI',
        },
        preparationConstraints: [],
        pointScenarioId: 'roti-small',
        scenarios: [
          {
            scenarioId: 'roti-small',
            assumptions: [{
              answerKind: 'OPTION',
              dimensionKey: 'unit-size',
              questionKind: 'UNIT_SIZE',
              optionCode: 'small',
              optionLabel: 'Small',
              origin: 'MODEL_INFERRED',
              evidence: modelEvidence('A small roti is plausible.'),
            }],
            ingredients: [
              activeLeaf('flour', 'Whole-wheat flour', 'whole wheat flour', 30, 'DRY'),
              waterLeaf(10),
            ],
            finishedYieldGrams: 40,
            finishedYieldUnits: 1,
            effectivePortion: { kind: 'UNIT_COUNT', consumedCount: 4, perUnitFinishedGrams: 40 },
            effectivePreparationCodes: ['TOASTED'],
          },
          {
            scenarioId: 'roti-large',
            assumptions: [{
              answerKind: 'OPTION',
              dimensionKey: 'unit-size',
              questionKind: 'UNIT_SIZE',
              optionCode: 'large',
              optionLabel: 'Large',
              origin: 'MODEL_INFERRED',
              evidence: modelEvidence('A large roti is plausible.'),
            }],
            ingredients: [
              activeLeaf('flour', 'Whole-wheat flour', 'whole wheat flour', 45, 'DRY'),
              waterLeaf(15),
            ],
            finishedYieldGrams: 60,
            finishedYieldUnits: 1,
            effectivePortion: { kind: 'UNIT_COUNT', consumedCount: 4, perUnitFinishedGrams: 60 },
            effectivePreparationCodes: ['TOASTED'],
          },
        ],
      },
      {
        componentId: 'oats',
        sourceName: 'oats',
        displayName: 'Oats',
        canonicalIdentity: 'oat porridge',
        evidence: [modelEvidence('Oats are included as a 300 g prepared serving.')],
        portionConstraint: {
          kind: 'AMOUNT',
          naturalMeasure: {
            unitCode: 'GRAM',
            quantity: modelConstraint(300, 300, 300, 'The prepared oat serving is 300 g.'),
          },
        },
        preparationConstraints: [],
        pointScenarioId: 'oats-whole',
        scenarios: [{
          scenarioId: 'oats-whole',
          assumptions: [],
          ingredients: [
            activeLeaf('oats', 'Dry oats', 'oats', 100, 'DRY'),
            waterLeaf(200),
          ],
          finishedYieldGrams: 300,
          finishedYieldUnits: null,
          effectivePortion: { kind: 'FINISHED_MASS', consumedGrams: 300 },
          effectivePreparationCodes: ['BOILED'],
        }],
      },
    ],
  };
}

export function foodProposal(): FoodInterpretationProposal {
  const parsed = parseAndValidateInterpretation(proposalValue(), input);
  assert.equal(parsed.outcome, 'FOOD');
  return parsed;
}

const ZERO: MacroVector = {
  caloriesKcal: 0,
  proteinGrams: 0,
  carbsGrams: 0,
  fatGrams: 0,
  fiberGrams: 0,
};

const NUTRITION: Record<string, MacroVector> = {
  pumpkin: { caloriesKcal: 26, proteinGrams: 1, carbsGrams: 6.5, fatGrams: 0.1, fiberGrams: 0.5 },
  oil: { caloriesKcal: 900, proteinGrams: 0, carbsGrams: 0, fatGrams: 100, fiberGrams: 0 },
  flour: { caloriesKcal: 340, proteinGrams: 13, carbsGrams: 72, fatGrams: 2, fiberGrams: 10 },
  oats: { caloriesKcal: 389, proteinGrams: 16.9, carbsGrams: 66.3, fatGrams: 6.9, fiberGrams: 10.6 },
};

export function nutritionReferences(proposal = foodProposal()): ResolvedNutritionReference[] {
  return proposal.components.flatMap((component) => component.scenarios.flatMap((scenario) =>
    scenario.ingredients.map((ingredient) => {
      const yieldOnly = ingredient.role === 'YIELD_ONLY';
      return {
        scenarioId: scenario.scenarioId,
        leafId: ingredient.leafId,
        source: 'USDA',
        sourceRecordId: `${scenario.scenarioId}:${ingredient.leafId}`,
        datasetVersion: 'fixture-1',
        verifiedZero: yieldOnly,
        per100g: yieldOnly ? ZERO : NUTRITION[ingredient.leafId]!,
      };
    })
  ));
}

export function countQuestionProposal(): FoodInterpretationProposal {
  const value = proposalValue();
  const components = value.components as Array<Record<string, unknown>>;
  const roti = structuredClone(components[1]!);
  const modelCount = modelConstraint(4, 2, 6, 'The roti count may be between two and six.');
  roti.portionConstraint = {
    kind: 'COUNT',
    count: modelCount,
    perUnitFinishedGrams: modelConstraint(40, 40, 40, 'Each roti is held at 40 g.'),
    naturalUnitCode: 'ROTI',
  };
  roti.pointScenarioId = 'count-4';
  const baseScenario = (components[1]!.scenarios as Array<Record<string, unknown>>)[0]!;
  roti.scenarios = [2, 4].map((count) => ({
    ...structuredClone(baseScenario),
    scenarioId: `count-${count}`,
    assumptions: [{
      answerKind: 'NUMBER',
      dimensionKey: 'count',
      questionKind: 'COUNT',
      value: count,
      unitCode: 'COUNT',
      min: 2,
      max: 6,
      step: 1,
      integerOnly: true,
      origin: 'MODEL_INFERRED',
      evidence: modelEvidence(`A count of ${count} is plausible.`),
    }],
    effectivePortion: { kind: 'UNIT_COUNT', consumedCount: count, perUnitFinishedGrams: 40 },
  }));
  value.components = [roti];
  value.mealNameCandidate = 'Roti';
  const parsed = parseAndValidateInterpretation(value, input);
  assert.equal(parsed.outcome, 'FOOD');
  return parsed;
}
