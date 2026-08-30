import { z } from 'zod';
import { zodToJsonSchema } from 'zod-to-json-schema';
import {
  PREPARATION_CODES,
  parseAndValidateInterpretation,
  type Evidence,
  type FoodInterpretationProposal,
  type InterpretationProposal,
  type NormalizedMealInput,
  type PreparationCode,
  type RecipeScenario,
  type ScenarioAssumption,
} from './domain.js';

const label = z.string().trim().min(1).max(160);
const originSchema = z.enum(['user_text', 'model_inferred']);
const mealTypeSchema = z.enum(['BREAKFAST', 'LUNCH', 'DINNER', 'SNACK']);
const preparationSchema = z.enum(PREPARATION_CODES);
const positiveRangeSchema = z.object({
  estimate: z.number().finite().positive().max(100_000),
  min: z.number().finite().positive().max(100_000),
  max: z.number().finite().positive().max(100_000),
  origin: originSchema,
}).strict().superRefine(validateRange);
const nonnegativeRangeSchema = z.object({
  estimate: z.number().finite().nonnegative().max(100_000),
  min: z.number().finite().nonnegative().max(100_000),
  max: z.number().finite().nonnegative().max(100_000),
  origin: originSchema,
}).strict().superRefine(validateRange);

function validateRange(
  value: { estimate: number; min: number; max: number },
  ctx: z.RefinementCtx,
): void {
  if (value.min > value.estimate || value.estimate > value.max) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'range must satisfy min <= estimate <= max' });
  }
}

const portionRangeFields = {
  estimate: z.number().finite().positive().max(10_000),
  min: z.number().finite().positive().max(10_000),
  max: z.number().finite().positive().max(10_000),
  origin: originSchema,
};

const amountPortionSchema = z.object({
  kind: z.literal('AMOUNT'),
  ...portionRangeFields,
  perUnitGrams: z.null(),
}).strict().superRefine((portion, ctx) => {
  validateRange(portion, ctx);
});

const countPortionSchema = z.object({
  kind: z.literal('COUNT'),
  ...portionRangeFields,
  perUnitGrams: positiveRangeSchema,
}).strict().superRefine((portion, ctx) => {
  validateRange(portion, ctx);
});

const portionSchema = z.union([amountPortionSchema, countPortionSchema]);

export const firstPassResponseSchema = z.object({
  food_detected: z.boolean(),
  mealNameCandidate: label.nullable(),
  mealTypeCandidate: z.object({
    value: mealTypeSchema.nullable(),
    origin: originSchema.nullable(),
  }).strict(),
  components: z.array(z.object({
    componentName: label,
    canonicalIdentity: label,
    portion: portionSchema,
    preparation: z.object({
      method: preparationSchema,
      origin: originSchema,
    }).strict(),
  }).strict()).max(20),
}).strict().superRefine((response, ctx) => {
  if (response.food_detected && (response.mealNameCandidate === null || response.components.length === 0)) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'detected food requires a meal name and components' });
  }
  if (!response.food_detected && response.components.length !== 0) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'no-food response cannot contain components' });
  }
  if ((response.mealTypeCandidate.value === null) !== (response.mealTypeCandidate.origin === null)) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'meal type value and origin must both be null or non-null' });
  }
  const names = response.components.map(({ componentName }) => normalized(componentName));
  if (new Set(names).size !== names.length) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'component names must be unique' });
  }
});

export const VARIATION_TYPES = [
  'COUNT',
  'PORTION_AMOUNT',
  'UNIT_SIZE',
  'INGREDIENT_AMOUNT',
  'INGREDIENT_VARIANT',
  'INGREDIENT_PRESENCE',
  'PREPARATION',
] as const;

export const variationTypeSchema = z.enum(VARIATION_TYPES);

export const secondPassResponseSchema = z.object({
  components: z.array(z.object({
    componentName: label,
    ingredients: z.array(z.object({
      ingredientName: label,
      canonicalIdentity: label,
      amountGrams: nonnegativeRangeSchema,
    }).strict()).min(1).max(24),
    variations: z.array(z.object({
      variationType: variationTypeSchema,
      ingredientName: label.nullable(),
      alternatives: z.array(label).max(3),
    }).strict()).max(4),
  }).strict()).min(1).max(20),
}).strict();

export type FirstPassResponse = z.infer<typeof firstPassResponseSchema>;
export type SecondPassResponse = z.infer<typeof secondPassResponseSchema>;
export type CompactComponent = FirstPassResponse['components'][number];
export type CompactIngredientComponent = SecondPassResponse['components'][number];

function openAiSchema(schema: z.ZodTypeAny): Record<string, unknown> {
  const result = zodToJsonSchema(schema, { $refStrategy: 'none', target: 'openAi' }) as Record<string, unknown>;
  normalizeExclusiveBounds(result);
  return result;
}

function normalizeExclusiveBounds(value: unknown): void {
  if (value === null || typeof value !== 'object') return;
  const record = value as Record<string, unknown>;
  if (record.exclusiveMinimum === true && typeof record.minimum === 'number') {
    record.exclusiveMinimum = record.minimum;
    delete record.minimum;
  }
  for (const child of Object.values(record)) normalizeExclusiveBounds(child);
}

export const FIRST_PASS_RESPONSE_JSON_SCHEMA = openAiSchema(firstPassResponseSchema);
export const SECOND_PASS_RESPONSE_JSON_SCHEMA = openAiSchema(secondPassResponseSchema);

export const FIRST_PASS_SYSTEM_PROMPT = `You are the first parsing pass of a nutrition calculator.
Return only the requested JSON. Do not list ingredients, variations, calories, or macros.

Tasks:
- Set food_detected=false when no usable food can be identified. In that case return no components and a null meal name and meal type.
- Split a meal into recognizable components using componentName from the input and a short generic English canonicalIdentity.
- Quantify continuous components as AMOUNT; estimate/min/max are always finished grams. Quantify discrete components as COUNT with perUnitGrams; do not return a unit field.
- Clamp user-provided quantities so min=estimate=max and origin=user_text.
- Use origin=model_inferred for every value not explicitly stated by the user, including image observations and context-based guesses.
- Use only user_text and model_inferred. Do not add evidence objects.
- Return one selected preparation method. Do not generate preparation alternatives.
- mealNameCandidate must not contain serving size, count, weight, calories, or advice.
- If meal type cannot be determined confidently, return value=null and origin=null.`;

export const SECOND_PASS_SYSTEM_PROMPT = `You are the second decomposition pass of a nutrition calculator.
Return only the requested JSON. Do not return calories, macros, question prose, labels, or option objects.

The first-pass JSON is supplied in the user message. For every component:
- Return a complete quantified recipe decomposed into ingredients.
- Ingredient amounts correspond to the first-pass point portion. For COUNT foods, amounts are for one unit; for AMOUNT foods, amounts are for the complete point serving.
- Use short generic English canonicalIdentity values suitable for food database lookup.
- Use origin=user_text only when the original meal input explicitly specifies the ingredient or amount; otherwise use model_inferred.
- Include material calorie sources such as oil, ghee, sugar, sauces, dressings, and milk. Water may be included.
- Declare only plausible material uncertainty using the standardized variationType enum.
- Numeric uncertainty lives in amountGrams min/estimate/max; an INGREDIENT_AMOUNT or INGREDIENT_PRESENCE variation references that ingredient without repeating numeric options.
- INGREDIENT_VARIANT alternatives contain canonical food identities such as skim milk or whole milk, excluding the baseline canonicalIdentity.
- PREPARATION alternatives contain preparation enum values.
- Do not repeat portion/count/unit-size variations already represented by first-pass ranges unless needed to correct an omission.
- Keep variations small: normally zero to two per component, never speculative trivia.`;

interface ScenarioState {
  count: number;
  consumedGrams: number;
  perUnitGrams: number;
  preparation: PreparationCode;
  ingredients: Array<{ name: string; canonicalIdentity: string; grams: number }>;
}

interface DimensionOption {
  code: string;
  label: string;
  point: boolean;
  numericValue?: number;
  apply(state: ScenarioState): ScenarioState;
}

interface Dimension {
  key: string;
  questionKind: ScenarioAssumption['questionKind'];
  origin: 'USER_TEXT' | 'MODEL_INFERRED';
  numeric?: { unitCode: 'COUNT' | 'GRAM'; min: number; max: number; step: number; integerOnly: boolean };
  options: DimensionOption[];
}

function normalized(value: string): string {
  return value.normalize('NFKC').trim().toLocaleLowerCase();
}

function slug(value: string): string {
  const result = value.normalize('NFKD').replace(/[^A-Za-z0-9]+/g, '-').replace(/^-|-$/g, '').toLowerCase();
  return result.slice(0, 48) || 'item';
}

function uniqueId(base: string, used: Set<string>): string {
  let candidate = base;
  let suffix = 2;
  while (used.has(candidate)) candidate = `${base}-${suffix++}`;
  used.add(candidate);
  return candidate;
}

function modelEvidence(text: string): Evidence {
  return { origin: 'MODEL_INFERRED', text };
}

function textEvidence(input: NormalizedMealInput, claim?: string): Evidence {
  if (input.kind !== 'TEXT') return modelEvidence('Inferred from the meal image.');
  const exact = claim && input.text.includes(claim) ? claim : input.text;
  const startUtf16 = input.text.indexOf(exact);
  return { origin: 'USER_TEXT', text: exact, startUtf16, endUtf16: startUtf16 + exact.length };
}

function internalOrigin(origin: 'user_text' | 'model_inferred', input: NormalizedMealInput): 'USER_TEXT' | 'MODEL_INFERRED' {
  return origin === 'user_text' && input.kind === 'TEXT' ? 'USER_TEXT' : 'MODEL_INFERRED';
}

function evidenceFor(origin: 'USER_TEXT' | 'MODEL_INFERRED', input: NormalizedMealInput, claim?: string): Evidence {
  return origin === 'USER_TEXT' ? textEvidence(input, claim) : modelEvidence('Estimated by the model.');
}

function distinctNumbers(values: number[]): number[] {
  return [...new Set(values)].sort((left, right) => left - right);
}

function numericOptions(
  values: number[],
  estimate: number,
  apply: (state: ScenarioState, value: number) => ScenarioState,
): DimensionOption[] {
  return distinctNumbers(values).map((value) => ({
    code: String(value).replace('.', '_'),
    label: String(value),
    point: value === estimate,
    numericValue: value,
    apply: (state) => apply(state, value),
  }));
}

function replaceIngredient(
  state: ScenarioState,
  ingredientName: string,
  update: (ingredient: ScenarioState['ingredients'][number]) => ScenarioState['ingredients'][number] | null,
): ScenarioState {
  const ingredients = state.ingredients.flatMap((ingredient) => {
    if (normalized(ingredient.name) !== normalized(ingredientName)) return [ingredient];
    const changed = update(ingredient);
    return changed ? [changed] : [];
  });
  return { ...state, ingredients };
}

function createDimensions(
  component: CompactComponent,
  recipe: CompactIngredientComponent,
  input: NormalizedMealInput,
): Dimension[] {
  const dimensions: Dimension[] = [];
  const portionOrigin = internalOrigin(component.portion.origin, input);
  if (component.portion.kind === 'COUNT' && component.portion.min !== component.portion.max) {
    dimensions.push({
      key: 'count',
      questionKind: 'COUNT',
      origin: portionOrigin,
      numeric: { unitCode: 'COUNT', min: component.portion.min, max: component.portion.max, step: 1, integerOnly: true },
      options: numericOptions(
        [component.portion.min, component.portion.estimate, component.portion.max],
        component.portion.estimate,
        (state, value) => ({ ...state, count: value }),
      ),
    });
  }
  if (component.portion.kind === 'AMOUNT' && component.portion.min !== component.portion.max) {
    dimensions.push({
      key: 'portion-amount',
      questionKind: 'TOTAL_AMOUNT',
      origin: portionOrigin,
      numeric: {
        unitCode: 'GRAM', min: component.portion.min, max: component.portion.max,
        step: 5, integerOnly: false,
      },
      options: numericOptions(
        [component.portion.min, component.portion.estimate, component.portion.max],
        component.portion.estimate,
        (state, value) => ({ ...state, consumedGrams: value }),
      ),
    });
  }
  const unit = component.portion.perUnitGrams;
  if (component.portion.kind === 'COUNT' && unit && unit.min !== unit.max) {
    const options = numericOptions(
      [unit.min, unit.estimate, unit.max],
      unit.estimate,
      (state, value) => {
        const ratio = value / state.perUnitGrams;
        return {
          ...state,
          perUnitGrams: value,
          ingredients: state.ingredients.map((ingredient) => ({ ...ingredient, grams: ingredient.grams * ratio })),
        };
      },
    ).map((option, index, all) => ({
      ...option,
      code: index === 0 ? 'small' : index === all.length - 1 ? 'large' : 'medium',
      label: index === 0 ? 'Small' : index === all.length - 1 ? 'Large' : 'Medium',
      numericValue: undefined,
    }));
    dimensions.push({ key: 'unit-size', questionKind: 'UNIT_SIZE', origin: internalOrigin(unit.origin, input), options });
  }

  const seen = new Set(dimensions.map(({ key }) => key));
  for (const variation of recipe.variations) {
    const ingredient = variation.ingredientName === null
      ? undefined
      : recipe.ingredients.find(({ ingredientName }) => normalized(ingredientName) === normalized(variation.ingredientName!));
    let dimension: Dimension | undefined;
    if (variation.variationType === 'INGREDIENT_AMOUNT' && ingredient) {
      const range = ingredient.amountGrams;
      if (range.min !== range.max) {
        dimension = {
          key: `ingredient-amount:${slug(ingredient.ingredientName)}`,
          questionKind: 'INGREDIENT_AMOUNT',
          origin: internalOrigin(range.origin, input),
          options: numericOptions([range.min, range.estimate, range.max], range.estimate, (state, value) =>
            replaceIngredient(state, ingredient.ingredientName, (item) => value === 0 ? null : { ...item, grams: value })
          ).map((option) => ({ ...option, label: `${option.numericValue} g`, numericValue: undefined })),
        };
      }
    } else if (variation.variationType === 'INGREDIENT_PRESENCE' && ingredient) {
      const presentGrams = ingredient.amountGrams.estimate > 0
        ? ingredient.amountGrams.estimate
        : Math.max(ingredient.amountGrams.max, 1);
      dimension = {
        key: `ingredient-presence:${slug(ingredient.ingredientName)}`,
        questionKind: 'INGREDIENT_PRESENCE',
        origin: 'MODEL_INFERRED',
        options: [
          { code: 'absent', label: 'No', point: ingredient.amountGrams.estimate === 0, apply: (state) =>
            replaceIngredient(state, ingredient.ingredientName, () => null) },
          { code: 'present', label: 'Yes', point: ingredient.amountGrams.estimate > 0, apply: (state) =>
            replaceIngredient(state, ingredient.ingredientName, (item) => ({ ...item, grams: presentGrams })) },
        ],
      };
    } else if (variation.variationType === 'INGREDIENT_VARIANT' && ingredient && variation.alternatives.length > 0) {
      dimension = {
        key: `ingredient-variant:${slug(ingredient.ingredientName)}`,
        questionKind: 'INGREDIENT_VARIANT',
        origin: 'MODEL_INFERRED',
        options: [ingredient.canonicalIdentity, ...variation.alternatives].map((identity, index) => ({
          code: slug(identity), label: identity, point: index === 0,
          apply: (state) => identity === 'none'
            ? replaceIngredient(state, ingredient.ingredientName, () => null)
            : replaceIngredient(state, ingredient.ingredientName, (item) => ({ ...item, canonicalIdentity: identity })),
        })),
      };
    } else if (variation.variationType === 'PREPARATION' && variation.alternatives.length > 0) {
      const methods = [component.preparation.method, ...variation.alternatives]
        .filter((method): method is PreparationCode => PREPARATION_CODES.includes(method as PreparationCode));
      dimension = {
        key: 'preparation', questionKind: 'PREPARATION', origin: 'MODEL_INFERRED',
        options: [...new Set(methods)].map((method, index) => ({
          code: method.toLowerCase(), label: method, point: index === 0,
          apply: (state) => ({ ...state, preparation: method }),
        })),
      };
    }
    if (dimension && dimension.options.length > 1 && !seen.has(dimension.key)) {
      seen.add(dimension.key);
      dimensions.push(dimension);
    }
  }
  return dimensions;
}

function assumption(dimension: Dimension, option: DimensionOption, input: NormalizedMealInput): ScenarioAssumption {
  const evidence = evidenceFor(dimension.origin, input);
  if (dimension.numeric && option.numericValue !== undefined) {
    return {
      answerKind: 'NUMBER', dimensionKey: dimension.key, questionKind: dimension.questionKind as 'COUNT' | 'TOTAL_AMOUNT',
      value: option.numericValue, unitCode: dimension.numeric.unitCode,
      min: dimension.numeric.min, max: dimension.numeric.max, step: dimension.numeric.step,
      integerOnly: dimension.numeric.integerOnly, origin: dimension.origin, evidence,
    };
  }
  return {
    answerKind: 'OPTION', dimensionKey: dimension.key, questionKind: dimension.questionKind,
    optionCode: option.code, optionLabel: option.label, origin: dimension.origin, evidence,
  };
}

function nutritionBasis(identity: string, ingredientName: string): {
  nutritionBasis: 'RAW' | 'DRY' | 'COOKED' | 'DRAINED' | 'RETAINED' | 'AS_SERVED';
  preparationCodes: PreparationCode[];
  retainedFat: boolean;
} {
  const value = normalized(`${ingredientName} ${identity}`);
  const retainedFat = /\b(?:oil|ghee|butter|fat)\b/.test(value) && /\b(?:added|cooking|retained|oil|ghee)\b/.test(value);
  if (retainedFat) return { nutritionBasis: 'RETAINED', preparationCodes: ['UNKNOWN'], retainedFat: true };
  if (/\b(?:dry|dried|flour|uncooked)\b/.test(value)) {
    return { nutritionBasis: 'DRY', preparationCodes: ['UNKNOWN'], retainedFat: false };
  }
  if (/\braw\b/.test(value)) return { nutritionBasis: 'RAW', preparationCodes: ['RAW'], retainedFat: false };
  if (/\b(?:cooked|boiled|steamed|baked|roasted|fried)\b/.test(value)) {
    return { nutritionBasis: 'COOKED', preparationCodes: ['COOKED_UNKNOWN'], retainedFat: false };
  }
  return { nutritionBasis: 'AS_SERVED', preparationCodes: ['UNKNOWN'], retainedFat: false };
}

function scenarioFromState(
  scenarioId: string,
  state: ScenarioState,
  assumptions: ScenarioAssumption[],
  component: CompactComponent,
): RecipeScenario {
  const usedLeafIds = new Set<string>();
  const ingredients = state.ingredients.filter(({ grams }) => grams > 0).map((ingredient) => {
    const leafId = uniqueId(slug(ingredient.name), usedLeafIds);
    const basis = nutritionBasis(ingredient.canonicalIdentity, ingredient.name);
    const water = normalized(ingredient.canonicalIdentity) === 'water';
    return {
      leafId,
      displayName: ingredient.name,
      canonicalIdentity: ingredient.canonicalIdentity,
      lookupAliases: [],
      role: water ? 'YIELD_ONLY' as const : 'ACTIVE_NUTRITION' as const,
      nutritionBasis: water ? 'AS_SERVED' as const : basis.nutritionBasis,
      nutritionBasisGrams: ingredient.grams,
      preparationCodes: water ? ['UNKNOWN' as const] : basis.preparationCodes,
      retainedFat: water ? false : basis.retainedFat,
    };
  });
  if (component.portion.kind === 'COUNT') {
    return {
      scenarioId, assumptions, ingredients,
      finishedYieldGrams: state.perUnitGrams,
      finishedYieldUnits: 1,
      effectivePortion: { kind: 'UNIT_COUNT', consumedCount: state.count, perUnitFinishedGrams: state.perUnitGrams },
      effectivePreparationCodes: [state.preparation],
    };
  }
  return {
    scenarioId, assumptions, ingredients,
    finishedYieldGrams: component.portion.estimate,
    finishedYieldUnits: null,
    effectivePortion: { kind: 'FINISHED_MASS', consumedGrams: state.consumedGrams },
    effectivePreparationCodes: [state.preparation],
  };
}

function componentProposal(
  component: CompactComponent,
  recipe: CompactIngredientComponent,
  input: NormalizedMealInput,
  componentId: string,
): FoodInterpretationProposal['components'][number] {
  const initial: ScenarioState = {
    count: component.portion.estimate,
    consumedGrams: component.portion.estimate,
    perUnitGrams: component.portion.perUnitGrams?.estimate ?? component.portion.estimate,
    preparation: component.preparation.method,
    ingredients: recipe.ingredients.map((ingredient) => ({
      name: ingredient.ingredientName,
      canonicalIdentity: ingredient.canonicalIdentity,
      grams: ingredient.amountGrams.estimate,
    })),
  };
  const dimensions = createDimensions(component, recipe, input);
  let combinations: Array<{ state: ScenarioState; assumptions: ScenarioAssumption[]; point: boolean; codes: string[] }> = [
    { state: initial, assumptions: [], point: true, codes: [] },
  ];
  for (const dimension of dimensions) {
    combinations = combinations.flatMap((combination) => dimension.options.map((option) => ({
      state: option.apply(combination.state),
      assumptions: [...combination.assumptions, assumption(dimension, option, input)],
      point: combination.point && option.point,
      codes: [...combination.codes, option.code],
    })));
  }
  if (combinations.length > 100) throw new Error(`Too many variations for ${component.componentName}`);
  const scenarios = combinations.map((combination, index) => scenarioFromState(
    `${componentId}:${combination.codes.join(':') || 'point'}:${index + 1}`,
    combination.state,
    combination.assumptions,
    component,
  ));
  const pointIndex = Math.max(0, combinations.findIndex(({ point }) => point));
  const pointScenarioId = scenarios[pointIndex]!.scenarioId;
  const componentEvidence = input.kind === 'TEXT' && input.text.includes(component.componentName)
    ? textEvidence(input, component.componentName)
    : modelEvidence('Identified as a meal component.');
  const portionOrigin = internalOrigin(component.portion.origin, input);
  const preparationOrigin = internalOrigin(component.preparation.origin, input);
  const portionConstraint = component.portion.kind === 'COUNT'
    ? {
        kind: 'COUNT' as const,
        count: {
          estimate: component.portion.estimate, min: component.portion.min, max: component.portion.max,
          origin: portionOrigin, evidence: evidenceFor(portionOrigin, input),
        },
        perUnitFinishedGrams: {
          ...component.portion.perUnitGrams!,
          origin: internalOrigin(component.portion.perUnitGrams!.origin, input),
          evidence: evidenceFor(internalOrigin(component.portion.perUnitGrams!.origin, input), input),
        },
        naturalUnitCode: slug(component.componentName).toUpperCase(),
      }
    : {
        kind: 'AMOUNT' as const,
        measurementBasis: 'FINISHED' as const,
        finishedGrams: {
          estimate: component.portion.estimate, min: component.portion.min, max: component.portion.max,
          origin: portionOrigin, evidence: evidenceFor(portionOrigin, input),
        },
        naturalMeasure: null,
        ingredientAnchorLeafId: null,
      };
  return {
    componentId,
    sourceName: component.componentName,
    displayName: component.componentName,
    canonicalIdentity: component.canonicalIdentity,
    evidence: [componentEvidence],
    portionConstraint,
    preparationConstraints: recipe.variations.some(({ variationType }) => variationType === 'PREPARATION')
      ? []
      : [{
          code: component.preparation.method,
          origin: preparationOrigin,
          evidence: evidenceFor(preparationOrigin, input),
        }],
    scenarios,
    pointScenarioId,
  };
}

export function buildInterpretationProposal(
  firstValue: unknown,
  secondValue: unknown,
  input: NormalizedMealInput,
): InterpretationProposal {
  const first = firstPassResponseSchema.parse(firstValue);
  if (!first.food_detected) {
    return { outcome: 'NO_FOOD', reason: 'No food was detected.' };
  }
  const second = secondPassResponseSchema.parse(secondValue);
  const secondByName = new Map(second.components.map((component) => [normalized(component.componentName), component]));
  if (secondByName.size !== first.components.length || second.components.length !== first.components.length) {
    throw new Error('Second pass must return exactly one recipe for every first-pass component');
  }
  const usedComponentIds = new Set<string>();
  const components = first.components.map((component) => {
    const recipe = secondByName.get(normalized(component.componentName));
    if (!recipe) throw new Error(`Second pass omitted component ${component.componentName}`);
    return componentProposal(component, recipe, input, uniqueId(slug(component.componentName), usedComponentIds));
  });
  const mealType = first.mealTypeCandidate;
  const candidateOrigin = mealType.origin === 'user_text' && input.kind === 'TEXT' ? 'USER_TEXT' : 'MODEL_INFERRED';
  const proposal: FoodInterpretationProposal = {
    outcome: 'FOOD',
    mealNameCandidate: first.mealNameCandidate!,
    components,
    mealTypeCandidate: mealType.value === null
      ? { value: null, origin: 'MODEL_INFERRED', confidence: 0.2, evidence: modelEvidence('Meal type is unresolved.') }
      : {
          value: mealType.value,
          origin: candidateOrigin,
          confidence: candidateOrigin === 'USER_TEXT' ? 1 : 0.7,
          evidence: evidenceFor(candidateOrigin, input),
        },
  };
  return parseAndValidateInterpretation(proposal, input);
}
