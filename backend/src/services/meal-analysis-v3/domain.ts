import { z } from 'zod';
import { MEAL_TYPES } from './mealType.js';

const shortText = z.string().trim().min(1).max(160);
const foodLabel = shortText.refine(
  (value) => /[\p{L}\p{N}]/u.test(value),
  'food labels must contain a letter or number'
);
const countUnitCode = z.string().trim().min(1).max(40).regex(
  /^[\p{L}\p{N}]+(?:[ _'-][\p{L}\p{N}]+)*$/u,
  'count unit codes may contain only words, spaces, underscores, apostrophes, and hyphens'
);
const identifier = z.string().regex(/^[A-Za-z0-9][A-Za-z0-9._:-]{0,79}$/);
const positiveNumber = z.number().finite().positive().max(100_000);

export const IMAGE_ORIGINS = ['CAMERA_NOW', 'GALLERY'] as const;

export const mealContextSchema = z.object({
  locale: z.string().trim().min(2).max(35).refine((value) => {
    try {
      new Intl.Locale(value);
      return true;
    } catch {
      return false;
    }
  }, 'locale must be a valid BCP 47 language tag'),
  countryCode: z.string().regex(/^[A-Z]{2}$/),
  timeZone: z.string().trim().min(1).max(80).refine((value) => {
    try {
      new Intl.DateTimeFormat('en', { timeZone: value });
      return true;
    } catch {
      return false;
    }
  }, 'timeZone must be a valid IANA time-zone name'),
  capturedAt: z.string().datetime({ offset: true }),
}).strict();

export type MealContext = z.infer<typeof mealContextSchema>;

const textMealInputSchema = z.object({
  kind: z.literal('TEXT'),
  text: z.string().min(1).max(10_000).refine((value) => value.trim().length > 0, 'text must contain non-whitespace content'),
  context: mealContextSchema,
}).strict();

const imageMealInputSchema = z.object({
  kind: z.literal('IMAGE'),
  imageId: identifier,
  imageOrigin: z.enum(IMAGE_ORIGINS),
  context: mealContextSchema,
}).strict();

export const normalizedMealInputSchema = z.discriminatedUnion('kind', [
  textMealInputSchema,
  imageMealInputSchema,
]);

export type NormalizedMealInput = z.infer<typeof normalizedMealInputSchema>;

export const PROVENANCE_ORIGINS = [
  'USER_TEXT',
  'USER_CLARIFICATION',
  'IMAGE_OBSERVED',
  'CONTEXT_DEFAULT',
  'MODEL_INFERRED',
  'REFERENCE_DEFAULT',
  'DERIVED',
] as const;

export const provenanceOriginSchema = z.enum(PROVENANCE_ORIGINS);

export type ProvenanceOrigin = z.infer<typeof provenanceOriginSchema>;

const userTextEvidenceSchema = z.object({
  origin: z.literal('USER_TEXT'),
  text: z.string().min(1).max(500),
  startUtf16: z.number().int().nonnegative(),
  endUtf16: z.number().int().positive(),
}).strict();

const imageEvidenceSchema = z.object({
  origin: z.literal('IMAGE_OBSERVED'),
  text: z.string().trim().min(1).max(500),
}).strict();

const modelEvidenceSchema = z.object({
  origin: z.literal('MODEL_INFERRED'),
  text: z.string().trim().min(1).max(500),
}).strict();

export const evidenceSchema = z.discriminatedUnion('origin', [
  userTextEvidenceSchema,
  imageEvidenceSchema,
  modelEvidenceSchema,
]).superRefine((evidence, ctx) => {
  if (evidence.origin === 'USER_TEXT' && evidence.endUtf16 <= evidence.startUtf16) {
    ctx.addIssue({
      code: z.ZodIssueCode.custom,
      message: 'endUtf16 must be greater than startUtf16',
      path: ['endUtf16'],
    });
  }
});

export type Evidence = z.infer<typeof evidenceSchema>;

const numericConstraintObjectSchema = z.object({
  estimate: positiveNumber,
  min: positiveNumber,
  max: positiveNumber,
  origin: provenanceOriginSchema,
  evidence: evidenceSchema.nullable(),
}).strict();

export const numericConstraintSchema = numericConstraintObjectSchema.superRefine(
  (constraint, ctx) => {
    if (constraint.min > constraint.estimate || constraint.estimate > constraint.max) {
      ctx.addIssue({
        code: z.ZodIssueCode.custom,
        message: 'constraint must satisfy min <= estimate <= max',
      });
    }
    validateOriginEvidence(constraint.origin, constraint.evidence, ctx, ['evidence']);
  }
);

export type NumericConstraint = z.infer<typeof numericConstraintSchema>;

export const NATURAL_MEASURE_UNITS = [
  'GRAM',
  'MILLILITER',
  'CUP',
  'BOWL',
  'PLATE',
  'TABLESPOON',
  'TEASPOON',
  'HANDFUL',
  'PINCH',
  'SERVING',
] as const;

export const naturalMeasureUnitSchema = z.enum(NATURAL_MEASURE_UNITS);
export const MEASUREMENT_BASES = ['FINISHED', 'INGREDIENT'] as const;

export type NaturalMeasureUnit = z.infer<typeof naturalMeasureUnitSchema>;

const naturalMeasureConstraintSchema = z.object({
  unitCode: naturalMeasureUnitSchema,
  quantity: numericConstraintSchema,
}).strict();

const countPortionConstraintSchema = z.object({
  kind: z.literal('COUNT'),
  count: numericConstraintSchema,
  perUnitFinishedGrams: numericConstraintSchema,
  naturalUnitCode: countUnitCode,
}).strict();

const amountPortionConstraintSchema = z.object({
  kind: z.literal('AMOUNT'),
  measurementBasis: z.enum(MEASUREMENT_BASES),
  finishedGrams: numericConstraintSchema.nullable(),
  naturalMeasure: naturalMeasureConstraintSchema.nullable(),
  ingredientAnchorLeafId: identifier.nullable(),
}).strict().superRefine((portion, ctx) => {
  if (portion.measurementBasis === 'FINISHED' && portion.ingredientAnchorLeafId !== null) {
    ctx.addIssue({
      code: z.ZodIssueCode.custom,
      message: 'a finished-food amount cannot bind an ingredient leaf',
      path: ['ingredientAnchorLeafId'],
    });
  }
  if (portion.measurementBasis === 'INGREDIENT') {
    if (portion.finishedGrams !== null) {
      ctx.addIssue({
        code: z.ZodIssueCode.custom,
        message: 'an ingredient-basis amount cannot also constrain finished grams',
        path: ['finishedGrams'],
      });
    }
    if (portion.ingredientAnchorLeafId === null || portion.naturalMeasure === null) {
      ctx.addIssue({
        code: z.ZodIssueCode.custom,
        message: 'an ingredient-basis amount requires an anchor leaf and natural measure',
      });
    }
  }
});

export const portionConstraintSchema = z.union([
  countPortionConstraintSchema,
  amountPortionConstraintSchema,
]);

export type PortionConstraint = z.infer<typeof portionConstraintSchema>;

export const PREPARATION_CODES = [
  'RAW',
  'BOILED',
  'SIMMERED',
  'POACHED',
  'STEAMED',
  'PRESSURE_COOKED',
  'BAKED',
  'ROASTED',
  'GRILLED',
  'TOASTED',
  'SAUTEED',
  'STIR_FRIED',
  'SHALLOW_FRIED',
  'DEEP_FRIED',
  'FERMENTED',
  'PICKLED',
  'DRIED',
  'SMOKED',
  'BLENDED',
  'JUICED',
  'COOKED_UNKNOWN',
  'UNKNOWN',
  'OTHER',
] as const;

export const preparationCodeSchema = z.enum(PREPARATION_CODES);
export type PreparationCode = z.infer<typeof preparationCodeSchema>;

export const PREPARATION_UMBRELLA_CODES = [
  'RAW',
  'MOIST_HEAT',
  'DRY_HEAT',
  'FAT_HEAT',
  'PROCESSED',
  'COOKED_UNKNOWN',
  'UNKNOWN',
  'OTHER',
] as const;

export const preparationUmbrellaSchema = z.enum(PREPARATION_UMBRELLA_CODES);

export type PreparationUmbrella = z.infer<typeof preparationUmbrellaSchema>;

const PREPARATION_UMBRELLAS: Record<PreparationCode, PreparationUmbrella> = {
  RAW: 'RAW',
  BOILED: 'MOIST_HEAT',
  SIMMERED: 'MOIST_HEAT',
  POACHED: 'MOIST_HEAT',
  STEAMED: 'MOIST_HEAT',
  PRESSURE_COOKED: 'MOIST_HEAT',
  BAKED: 'DRY_HEAT',
  ROASTED: 'DRY_HEAT',
  GRILLED: 'DRY_HEAT',
  TOASTED: 'DRY_HEAT',
  SAUTEED: 'FAT_HEAT',
  STIR_FRIED: 'FAT_HEAT',
  SHALLOW_FRIED: 'FAT_HEAT',
  DEEP_FRIED: 'FAT_HEAT',
  FERMENTED: 'PROCESSED',
  PICKLED: 'PROCESSED',
  DRIED: 'PROCESSED',
  SMOKED: 'PROCESSED',
  BLENDED: 'PROCESSED',
  JUICED: 'PROCESSED',
  COOKED_UNKNOWN: 'COOKED_UNKNOWN',
  UNKNOWN: 'UNKNOWN',
  OTHER: 'OTHER',
};

export function preparationUmbrella(code: PreparationCode): PreparationUmbrella {
  return PREPARATION_UMBRELLAS[code];
}

const preparationConstraintSchema = z.object({
  code: preparationCodeSchema,
  origin: provenanceOriginSchema,
  evidence: evidenceSchema.nullable(),
}).strict().superRefine((constraint, ctx) => {
  validateOriginEvidence(constraint.origin, constraint.evidence, ctx, ['evidence']);
});

export const QUESTION_KINDS = [
  'COUNT',
  'UNIT_SIZE',
  'TOTAL_AMOUNT',
  'INGREDIENT_VARIANT',
  'INGREDIENT_AMOUNT',
  'INGREDIENT_PRESENCE',
  'PREPARATION',
  'ADDED_OR_RETAINED_FAT',
] as const;

export const questionKindSchema = z.enum(QUESTION_KINDS);
export const NUMBER_QUESTION_KINDS = ['COUNT', 'TOTAL_AMOUNT'] as const;
export const NUMBER_UNIT_CODES = ['COUNT', ...NATURAL_MEASURE_UNITS] as const;

export type NutritionQuestionKind = z.infer<typeof questionKindSchema>;

const optionAssumptionSchema = z.object({
  answerKind: z.literal('OPTION'),
  dimensionKey: identifier,
  questionKind: questionKindSchema,
  optionCode: identifier,
  optionLabel: shortText,
  origin: provenanceOriginSchema,
  evidence: evidenceSchema.nullable(),
}).strict();

const numberAssumptionSchema = z.object({
  answerKind: z.literal('NUMBER'),
  dimensionKey: identifier,
  questionKind: z.enum(NUMBER_QUESTION_KINDS),
  value: positiveNumber,
  unitCode: z.enum(NUMBER_UNIT_CODES),
  min: positiveNumber,
  max: positiveNumber,
  step: positiveNumber,
  integerOnly: z.boolean(),
  origin: provenanceOriginSchema,
  evidence: evidenceSchema.nullable(),
}).strict();

export const scenarioAssumptionSchema = z.discriminatedUnion('answerKind', [
  optionAssumptionSchema,
  numberAssumptionSchema,
]).superRefine((assumption, ctx) => {
  validateOriginEvidence(assumption.origin, assumption.evidence, ctx, ['evidence']);
  if (assumption.answerKind !== 'NUMBER') return;
  if (assumption.min > assumption.value || assumption.value > assumption.max) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'numeric value must be within its bounds' });
  }
  if (assumption.integerOnly && !Number.isInteger(assumption.value)) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'numeric value must be an integer' });
  }
  if (!isOnStep(assumption.value, assumption.min, assumption.step)) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'numeric value must be on-step' });
  }
  if (assumption.questionKind === 'COUNT' && assumption.unitCode !== 'COUNT') {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'COUNT questions use the COUNT unit' });
  }
});

export type ScenarioAssumption = z.infer<typeof scenarioAssumptionSchema>;

export const INGREDIENT_ROLES = ['ACTIVE_NUTRITION', 'YIELD_ONLY'] as const;
export const ingredientRoleSchema = z.enum(INGREDIENT_ROLES);
export type IngredientRole = z.infer<typeof ingredientRoleSchema>;

export const NUTRITION_BASES = ['RAW', 'DRY', 'COOKED', 'DRAINED', 'RETAINED', 'AS_SERVED'] as const;

export const ingredientLeafSchema = z.object({
  leafId: identifier,
  displayName: foodLabel,
  canonicalIdentity: foodLabel,
  lookupAliases: z.array(shortText).max(6),
  role: ingredientRoleSchema,
  nutritionBasis: z.enum(NUTRITION_BASES),
  nutritionBasisGrams: positiveNumber,
  preparationCodes: z.array(preparationCodeSchema).min(1).max(6),
  retainedFat: z.boolean(),
}).strict().superRefine((leaf, ctx) => {
  if (leaf.role === 'YIELD_ONLY' && leaf.retainedFat) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'yield-only ingredients cannot be retained fat' });
  }
  requireUnique(leaf.lookupAliases.map(normalized), ctx, ['lookupAliases'], 'lookup aliases');
  if (leaf.lookupAliases.map(normalized).includes(normalized(leaf.canonicalIdentity))) {
    ctx.addIssue({
      code: z.ZodIssueCode.custom,
      message: 'lookup aliases must exclude the canonical identity',
      path: ['lookupAliases'],
    });
  }
  requireUnique(leaf.preparationCodes, ctx, ['preparationCodes'], 'preparation codes');
});

export type IngredientLeaf = z.infer<typeof ingredientLeafSchema>;

const wholeRecipePortionSchema = z.object({
  kind: z.literal('WHOLE_RECIPE'),
}).strict();

const finishedMassPortionSchema = z.object({
  kind: z.literal('FINISHED_MASS'),
  consumedGrams: positiveNumber,
}).strict();

const unitCountPortionSchema = z.object({
  kind: z.literal('UNIT_COUNT'),
  consumedCount: positiveNumber,
  perUnitFinishedGrams: positiveNumber,
}).strict();

export const effectivePortionSchema = z.discriminatedUnion('kind', [
  wholeRecipePortionSchema,
  finishedMassPortionSchema,
  unitCountPortionSchema,
]);

export type EffectivePortion = z.infer<typeof effectivePortionSchema>;

export const recipeScenarioSchema = z.object({
  scenarioId: identifier,
  assumptions: z.array(scenarioAssumptionSchema).max(8),
  ingredients: z.array(ingredientLeafSchema).min(1).max(24),
  finishedYieldGrams: positiveNumber,
  finishedYieldUnits: positiveNumber.nullable(),
  effectivePortion: effectivePortionSchema,
  effectivePreparationCodes: z.array(preparationCodeSchema).min(1).max(6),
}).strict().superRefine((scenario, ctx) => {
  requireUnique(scenario.assumptions.map((item) => item.dimensionKey), ctx, ['assumptions'], 'assumption dimensions');
  requireUnique(scenario.ingredients.map((item) => item.leafId), ctx, ['ingredients'], 'ingredient leaf IDs');
  requireUnique(scenario.effectivePreparationCodes, ctx, ['effectivePreparationCodes'], 'preparation codes');
  if (scenario.effectivePreparationCodes.includes('UNKNOWN') && scenario.effectivePreparationCodes.length > 1) {
    ctx.addIssue({
      code: z.ZodIssueCode.custom,
      message: 'UNKNOWN cannot coexist with another effective preparation code',
      path: ['effectivePreparationCodes'],
    });
  }
  if (!scenario.ingredients.some((ingredient) => ingredient.role === 'ACTIVE_NUTRITION')) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'a scenario needs an active nutrition ingredient' });
  }

  if (scenario.effectivePortion.kind === 'UNIT_COUNT') {
    if (scenario.finishedYieldUnits === null) {
      ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'UNIT_COUNT requires finishedYieldUnits' });
    } else if (!nearlyEqual(
      scenario.finishedYieldGrams / scenario.finishedYieldUnits,
      scenario.effectivePortion.perUnitFinishedGrams
    )) {
      ctx.addIssue({
        code: z.ZodIssueCode.custom,
        message: 'per-unit finished grams must equal finished yield grams divided by units',
        path: ['effectivePortion', 'perUnitFinishedGrams'],
      });
    }
  } else if (scenario.finishedYieldUnits !== null) {
    ctx.addIssue({
      code: z.ZodIssueCode.custom,
      message: 'only UNIT_COUNT scenarios carry finishedYieldUnits',
      path: ['finishedYieldUnits'],
    });
  }

  for (const [index, assumption] of scenario.assumptions.entries()) {
    if (assumption.answerKind !== 'NUMBER') continue;
    if (assumption.questionKind === 'COUNT') {
      if (scenario.effectivePortion.kind !== 'UNIT_COUNT' ||
          !nearlyEqual(assumption.value, scenario.effectivePortion.consumedCount)) {
        ctx.addIssue({
          code: z.ZodIssueCode.custom,
          message: 'COUNT assumption value must equal the effective consumed count',
          path: ['assumptions', index, 'value'],
        });
      }
    } else if (scenario.effectivePortion.kind !== 'FINISHED_MASS') {
      ctx.addIssue({
        code: z.ZodIssueCode.custom,
        message: 'TOTAL_AMOUNT numeric assumptions require FINISHED_MASS scaling',
        path: ['assumptions', index],
      });
    } else if (assumption.unitCode === 'GRAM' &&
        !nearlyEqual(assumption.value, scenario.effectivePortion.consumedGrams)) {
      ctx.addIssue({
        code: z.ZodIssueCode.custom,
        message: 'a gram TOTAL_AMOUNT must equal the effective consumed grams',
        path: ['assumptions', index, 'value'],
      });
    }
  }
});

export type RecipeScenario = z.infer<typeof recipeScenarioSchema>;

const componentProposalObjectSchema = z.object({
  componentId: identifier,
  sourceName: foodLabel,
  displayName: foodLabel,
  canonicalIdentity: foodLabel,
  evidence: z.array(evidenceSchema).min(1).max(12),
  portionConstraint: portionConstraintSchema,
  preparationConstraints: z.array(preparationConstraintSchema).max(6),
  scenarios: z.array(recipeScenarioSchema).min(1).max(100),
  pointScenarioId: identifier,
}).strict();

type ComponentProposalValue = z.infer<typeof componentProposalObjectSchema>;

export const componentProposalSchema = componentProposalObjectSchema.superRefine(validateComponent);

export type ComponentProposal = z.infer<typeof componentProposalSchema>;

const mealTypeCandidateSchema = z.object({
  value: z.enum(MEAL_TYPES).nullable(),
  origin: provenanceOriginSchema,
  confidence: z.number().finite().min(0).max(1),
  evidence: evidenceSchema.nullable(),
}).strict().superRefine((candidate, ctx) => {
  validateOriginEvidence(candidate.origin, candidate.evidence, ctx, ['evidence']);
  if (candidate.value === null && candidate.confidence > 0.5) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'an unresolved meal type cannot be high confidence' });
  }
  if (candidate.value === null && candidate.origin === 'USER_TEXT') {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'an unresolved meal type cannot claim USER_TEXT provenance' });
  }
});

const foodInterpretationProposalSchema = z.object({
  outcome: z.literal('FOOD'),
  mealNameCandidate: foodLabel,
  components: z.array(componentProposalSchema).min(1).max(20),
  mealTypeCandidate: mealTypeCandidateSchema,
}).strict();

const noFoodInterpretationProposalSchema = z.object({
  outcome: z.literal('NO_FOOD'),
  reason: z.string().trim().min(1).max(500),
}).strict();

const unusableInterpretationProposalSchema = z.object({
  outcome: z.literal('UNUSABLE'),
  reason: z.string().trim().min(1).max(500),
}).strict();

export const interpretationProposalSchema = z.discriminatedUnion('outcome', [
  foodInterpretationProposalSchema,
  noFoodInterpretationProposalSchema,
  unusableInterpretationProposalSchema,
]).superRefine((proposal, ctx) => {
  if (proposal.outcome !== 'FOOD') return;
  requireUnique(proposal.components.map((component) => component.componentId), ctx, ['components'], 'component IDs');
  const scenarioIds = proposal.components.flatMap((component) =>
    component.scenarios.map((scenario) => scenario.scenarioId)
  );
  requireUnique(scenarioIds, ctx, ['components'], 'scenario IDs across the meal');
});

export type InterpretationProposal = z.infer<typeof interpretationProposalSchema>;
export type FoodInterpretationProposal = Extract<InterpretationProposal, { outcome: 'FOOD' }>;

export function parseAndValidateInterpretation(
  value: unknown,
  input: unknown
): InterpretationProposal {
  const normalizedInput = normalizedMealInputSchema.parse(input);
  const inputAwareSchema = interpretationProposalSchema.superRefine((proposal, ctx) => {
    if (proposal.outcome !== 'FOOD') return;
    visitProposalEvidence(proposal, (evidence, path) => {
      if (evidence.origin === 'USER_TEXT') {
        if (normalizedInput.kind !== 'TEXT') {
          ctx.addIssue({
            code: z.ZodIssueCode.custom,
            message: 'USER_TEXT evidence is invalid for image input',
            path,
          });
          return;
        }
        if (evidence.endUtf16 > normalizedInput.text.length ||
            normalizedInput.text.slice(evidence.startUtf16, evidence.endUtf16) !== evidence.text) {
          ctx.addIssue({
            code: z.ZodIssueCode.custom,
            message: 'UTF-16 evidence span must reproduce the exact input text',
            path,
          });
        }
      } else if (evidence.origin === 'IMAGE_OBSERVED' && normalizedInput.kind !== 'IMAGE') {
        ctx.addIssue({
          code: z.ZodIssueCode.custom,
          message: 'IMAGE_OBSERVED evidence is invalid for text input',
          path,
        });
      }
    });
  });
  return inputAwareSchema.parse(value);
}

export interface MacroVector {
  caloriesKcal: number;
  proteinGrams: number;
  carbsGrams: number;
  fatGrams: number;
  fiberGrams: number;
}

export interface MacroEstimate {
  estimate: number;
  min: number;
  max: number;
}

export interface MacroEstimates {
  caloriesKcal: MacroEstimate;
  proteinGrams: MacroEstimate;
  carbsGrams: MacroEstimate;
  fatGrams: MacroEstimate;
  fiberGrams: MacroEstimate;
}

export interface ResolvedNutritionReference {
  scenarioId: string;
  leafId: string;
  source: string;
  sourceRecordId: string;
  datasetVersion: string;
  verifiedZero: boolean;
  per100g: MacroVector;
}

export type ResolvedIngredientLeaf = IngredientLeaf & {
  nutritionReference: Omit<ResolvedNutritionReference, 'scenarioId' | 'leafId'>;
};

export type ResolvedRecipeScenario = Omit<RecipeScenario, 'ingredients'> & {
  ingredients: ResolvedIngredientLeaf[];
};

export type ResolvedComponent = Omit<ComponentProposal, 'scenarios'> & {
  scenarios: ResolvedRecipeScenario[];
};

export type ResolvedInterpretation = Omit<FoodInterpretationProposal, 'components'> & {
  components: ResolvedComponent[];
};

function validateOriginEvidence(
  origin: ProvenanceOrigin,
  evidence: Evidence | null,
  ctx: z.RefinementCtx,
  path: (string | number)[]
): void {
  if (origin === 'USER_TEXT' || origin === 'IMAGE_OBSERVED' || origin === 'MODEL_INFERRED') {
    if (evidence?.origin !== origin) {
      ctx.addIssue({
        code: z.ZodIssueCode.custom,
        message: `${origin} provenance requires matching evidence`,
        path,
      });
    }
  } else if (evidence !== null) {
    ctx.addIssue({
      code: z.ZodIssueCode.custom,
      message: `${origin} provenance cannot carry source evidence`,
      path,
    });
  }
}

function validateComponent(component: ComponentProposalValue, ctx: z.RefinementCtx): void {
  requireUnique(component.scenarios.map((scenario) => scenario.scenarioId), ctx, ['scenarios'], 'scenario IDs');
  if (!component.scenarios.some((scenario) => scenario.scenarioId === component.pointScenarioId)) {
    ctx.addIssue({
      code: z.ZodIssueCode.custom,
      message: 'pointScenarioId must select exactly one component scenario',
      path: ['pointScenarioId'],
    });
  }

  const referenceDimensions = [...component.scenarios[0]!.assumptions]
    .map((assumption) => assumption.dimensionKey)
    .sort();
  const dimensionSignatures = new Map<string, string>();
  const optionLabels = new Map<string, string>();
  for (const [scenarioIndex, scenario] of component.scenarios.entries()) {
    const dimensions = scenario.assumptions.map((assumption) => assumption.dimensionKey).sort();
    if (!sameStrings(referenceDimensions, dimensions)) {
      ctx.addIssue({
        code: z.ZodIssueCode.custom,
        message: 'every scenario must define the same assumption dimensions',
        path: ['scenarios', scenarioIndex, 'assumptions'],
      });
    }
    for (const assumption of scenario.assumptions) {
      const signature = assumption.answerKind === 'OPTION'
        ? `${assumption.answerKind}:${assumption.questionKind}:${assumption.origin}`
        : `${assumption.answerKind}:${assumption.questionKind}:${assumption.unitCode}:${assumption.min}:${assumption.max}:${assumption.step}:${assumption.integerOnly}:${assumption.origin}`;
      const existing = dimensionSignatures.get(assumption.dimensionKey);
      if (existing !== undefined && existing !== signature) {
        ctx.addIssue({
          code: z.ZodIssueCode.custom,
          message: `assumption metadata differs for dimension ${assumption.dimensionKey}`,
          path: ['scenarios', scenarioIndex, 'assumptions'],
        });
      }
      dimensionSignatures.set(assumption.dimensionKey, signature);
      if (assumption.answerKind === 'OPTION') {
        const key = `${assumption.dimensionKey}\u0000${assumption.optionCode}`;
        const existingLabel = optionLabels.get(key);
        if (existingLabel !== undefined && existingLabel !== assumption.optionLabel) {
          ctx.addIssue({
            code: z.ZodIssueCode.custom,
            message: `option label differs for ${assumption.dimensionKey}:${assumption.optionCode}`,
            path: ['scenarios', scenarioIndex, 'assumptions'],
          });
        }
        optionLabels.set(key, assumption.optionLabel);
      }
    }

    const missingPreparation = component.preparationConstraints.find(
      (constraint) => !scenario.effectivePreparationCodes.includes(constraint.code)
    );
    if (missingPreparation !== undefined) {
      ctx.addIssue({
        code: z.ZodIssueCode.custom,
        message: `scenario is incompatible with preparation constraint ${missingPreparation.code}`,
        path: ['scenarios', scenarioIndex, 'effectivePreparationCodes'],
      });
    }
    validateScenarioAgainstPortion(component.portionConstraint, scenario, scenarioIndex, ctx);
  }
}

function validateScenarioAgainstPortion(
  constraint: PortionConstraint,
  scenario: RecipeScenario,
  scenarioIndex: number,
  ctx: z.RefinementCtx
): void {
  const path = ['scenarios', scenarioIndex, 'effectivePortion'];
  if (constraint.kind === 'COUNT') {
    if (scenario.effectivePortion.kind !== 'UNIT_COUNT') {
      ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'COUNT components require UNIT_COUNT scenarios', path });
      return;
    }
    if (constraint.count !== null && !constraintContains(constraint.count, scenario.effectivePortion.consumedCount)) {
      ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'scenario count violates the component constraint', path });
    }
    if (constraint.perUnitFinishedGrams !== null &&
        !constraintContains(constraint.perUnitFinishedGrams, scenario.effectivePortion.perUnitFinishedGrams)) {
      ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'scenario unit size violates the component constraint', path });
    }
    return;
  }

  if (constraint.measurementBasis === 'FINISHED') {
    if (scenario.effectivePortion.kind !== 'FINISHED_MASS') {
      ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'finished AMOUNT components require FINISHED_MASS scenarios', path });
      return;
    }
    const gramsConstraint = constraint.finishedGrams ??
      (constraint.naturalMeasure?.unitCode === 'GRAM' ? constraint.naturalMeasure.quantity : null);
    if (gramsConstraint !== null && !constraintContains(gramsConstraint, scenario.effectivePortion.consumedGrams)) {
      ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'scenario finished mass violates the component constraint', path });
    }
    return;
  }

  if (scenario.effectivePortion.kind !== 'WHOLE_RECIPE') {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'ingredient-basis AMOUNT requires WHOLE_RECIPE scenarios', path });
    return;
  }
  const anchor = scenario.ingredients.find((ingredient) => ingredient.leafId === constraint.ingredientAnchorLeafId);
  if (anchor === undefined) {
    ctx.addIssue({
      code: z.ZodIssueCode.custom,
      message: 'ingredient-basis anchor leaf must exist in every scenario',
      path: ['scenarios', scenarioIndex, 'ingredients'],
    });
  } else if (constraint.naturalMeasure?.unitCode === 'GRAM' &&
      !constraintContains(constraint.naturalMeasure.quantity, anchor.nutritionBasisGrams)) {
    ctx.addIssue({
      code: z.ZodIssueCode.custom,
      message: 'ingredient anchor grams violate the natural-measure constraint',
      path: ['scenarios', scenarioIndex, 'ingredients'],
    });
  }
}

function visitProposalEvidence(
  proposal: FoodInterpretationProposal,
  visitor: (evidence: Evidence, path: (string | number)[]) => void
): void {
  for (const [componentIndex, component] of proposal.components.entries()) {
    component.evidence.forEach((evidence, evidenceIndex) =>
      visitor(evidence, ['components', componentIndex, 'evidence', evidenceIndex])
    );
    visitConstraintEvidence(component.portionConstraint, (evidence, path) =>
      visitor(evidence, ['components', componentIndex, 'portionConstraint', ...path])
    );
    component.preparationConstraints.forEach((constraint, constraintIndex) => {
      if (constraint.evidence !== null) {
        visitor(constraint.evidence, [
          'components', componentIndex, 'preparationConstraints', constraintIndex, 'evidence',
        ]);
      }
    });
    component.scenarios.forEach((scenario, scenarioIndex) => {
      scenario.assumptions.forEach((assumption, assumptionIndex) => {
        if (assumption.evidence !== null) {
          visitor(assumption.evidence, [
            'components', componentIndex, 'scenarios', scenarioIndex,
            'assumptions', assumptionIndex, 'evidence',
          ]);
        }
      });
    });
  }
  if (proposal.mealTypeCandidate.evidence !== null) {
    visitor(proposal.mealTypeCandidate.evidence, ['mealTypeCandidate', 'evidence']);
  }
}

function visitConstraintEvidence(
  constraint: PortionConstraint,
  visitor: (evidence: Evidence, path: (string | number)[]) => void
): void {
  const visitNumeric = (numeric: NumericConstraint | null, path: string[]): void => {
    if (numeric?.evidence !== null && numeric?.evidence !== undefined) {
      visitor(numeric.evidence, [...path, 'evidence']);
    }
  };
  if (constraint.kind === 'COUNT') {
    visitNumeric(constraint.count, ['count']);
    visitNumeric(constraint.perUnitFinishedGrams, ['perUnitFinishedGrams']);
    return;
  }
  visitNumeric(constraint.finishedGrams, ['finishedGrams']);
  if (constraint.naturalMeasure !== null) {
    visitNumeric(constraint.naturalMeasure.quantity, ['naturalMeasure', 'quantity']);
  }
}

function requireUnique(
  values: readonly string[],
  ctx: z.RefinementCtx,
  path: (string | number)[],
  label: string
): void {
  if (new Set(values).size !== values.length) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: `${label} must be unique`, path });
  }
}

function normalized(value: string): string {
  return value.normalize('NFKC').toLocaleLowerCase();
}

function constraintContains(constraint: NumericConstraint, value: number): boolean {
  return value >= constraint.min - 1e-9 && value <= constraint.max + 1e-9;
}

function nearlyEqual(left: number, right: number): boolean {
  return Math.abs(left - right) <= 1e-7 * Math.max(1, Math.abs(left), Math.abs(right));
}

function sameStrings(left: readonly string[], right: readonly string[]): boolean {
  return left.length === right.length && left.every((value, index) => value === right[index]);
}

function isOnStep(value: number, min: number, step: number): boolean {
  const steps = (value - min) / step;
  return nearlyEqual(steps, Math.round(steps));
}
