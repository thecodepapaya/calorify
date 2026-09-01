import { z } from 'zod';
import { zodToJsonSchema } from 'zod-to-json-schema';
import {
  FOOD_RETRIEVAL_INTENTS,
  PREPARATION_CODES,
  parseAndValidateInterpretation,
  type Evidence,
  type FoodRetrievalIntent,
  type FoodInterpretationProposal,
  type InterpretationProposal,
  type NormalizedMealInput,
  type PreparationCode,
  type RecipeScenario,
  type ScenarioAssumption,
} from './domain.js';
import { MEAL_TYPES } from './mealType.js';
import { normalized } from './text.js';

const label = z.string().trim().min(1).max(160);
// Models commonly represent an optional JSON field as null. Normalize that
// transport form so downstream domain objects retain the omission invariant.
const optionalLabel = label.nullish().transform((value) => value ?? undefined);
export const MODEL_ORIGINS = ['user_stated', 'model_inferred'] as const;
const originSchema = z.enum(MODEL_ORIGINS).describe('user_stated when the user provided this serving indication in any form (count, weight, volume, household measure, or fraction) even if the model converted it; model_inferred when the model assumed it');
const mealTypeSchema = z.enum(MEAL_TYPES);
const preparationSchema = z.enum(PREPARATION_CODES);
const foodRetrievalIntentSchema = z.enum(FOOD_RETRIEVAL_INTENTS);
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
}).strict().superRefine((portion, ctx) => {
  validateRange(portion, ctx);
});

const countPortionSchema = z.object({
  kind: z.literal('COUNT'),
  count: z.number().finite().positive().max(100).describe('Number of units consumed; never grams'),
  countMin: z.number().finite().positive().max(100),
  countMax: z.number().finite().positive().max(100),
  origin: originSchema,
  unitGrams: positiveRangeSchema.describe('Finished grams for one unit'),
}).strict().superRefine((portion, ctx) => {
  if (portion.countMin > portion.count || portion.count > portion.countMax) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'count must satisfy countMin <= count <= countMax' });
  }
});

const portionSchema = z.union([amountPortionSchema, countPortionSchema]).describe('AMOUNT for continuous foods in finished grams; COUNT for discrete foods with count (number of units, never grams) and unitGrams for one unit');

export const firstPassResponseSchema = z.object({
  food_detected: z.boolean().describe('true only when at least one usable food or drink is identifiable'),
  mealName: label.nullable().describe('Concise localized meal name, around 40 characters, no serving size, count, weight, calories, or advice'),
  tip: z.string().trim().min(1).max(280).describe('Required short meal-related fact or practical suggestion based on identified meal'),
  mealTypeCandidate: z.object({
    value: mealTypeSchema.nullable().describe('BREAKFAST, LUNCH, DINNER, or SNACK; null when not confidently determinable'),
    origin: originSchema.nullable().describe('null exactly when value is null'),
  }).strict(),
  mealItems: z.array(z.object({
    mealItemName: label.describe('Name of one distinct food or drink in this meal, in the input language; keep a named prepared dish as one item'),
    canonicalIdentity: label.describe('Short generic English food identity for a nutrition database lookup, never a transliteration'),
    portion: portionSchema,
    preparation: z.object({
      method: preparationSchema,
      origin: originSchema,
    }).strict(),
  }).strict()).max(20).describe('Distinct foods or drinks consumed as part of the meal; do not promote fillings or toppings of a named dish to items'),
}).strict().superRefine((response, ctx) => {
  if (response.food_detected && (response.mealName === null || response.mealItems.length === 0)) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'detected food requires a meal name and meal items' });
  }
  if (!response.food_detected && response.mealItems.length !== 0) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'no-food response cannot contain meal items' });
  }
  if ((response.mealTypeCandidate.value === null) !== (response.mealTypeCandidate.origin === null)) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'meal type value and origin must both be null or non-null' });
  }
  const names = response.mealItems.map(({ mealItemName }) => normalized(mealItemName));
  if (new Set(names).size !== names.length) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'meal item names must be unique' });
  }
});

export const VARIATION_TYPES = [
  'INGREDIENT_AMOUNT',
  'INGREDIENT_VARIANT',
  'INGREDIENT_PRESENCE',
  'PREPARATION',
] as const;

const MAX_GENERATED_SCENARIOS_PER_COMPONENT = 12;

export const variationTypeSchema = z.enum(VARIATION_TYPES);

const ingredientAmountVariationSchema = z.object({
  variationType: z.literal('INGREDIENT_AMOUNT'),
  ingredientName: label,
  alternatives: z.array(label).length(0),
}).strict();

const ingredientPresenceVariationSchema = z.object({
  variationType: z.literal('INGREDIENT_PRESENCE'),
  ingredientName: label,
  alternatives: z.array(label).length(0),
}).strict();

const ingredientVariantVariationSchema = z.object({
  variationType: z.literal('INGREDIENT_VARIANT'),
  ingredientName: label,
  alternatives: z.array(label).min(1).max(3),
}).strict();

const preparationVariationSchema = z.object({
  variationType: z.literal('PREPARATION'),
  ingredientName: z.null(),
  alternatives: z.array(preparationSchema).min(1).max(3),
}).strict();

const variationSchema = z.discriminatedUnion('variationType', [
  ingredientAmountVariationSchema,
  ingredientVariantVariationSchema,
  ingredientPresenceVariationSchema,
  preparationVariationSchema,
]);

const compactIngredientSchema = z.object({
  ingredientName: label.describe('Ingredient name, may be in the input language'),
  canonicalIdentity: label.describe('Short generic English food identity for a nutrition database lookup, never a transliteration'),
  lookupAliases: z.array(label).max(3).describe('Up to three short English alternate food identities that could improve USDA lookup; no quantities, preparation-only terms, or speculative identities'),
  retrievalIntent: foodRetrievalIntentSchema,
  productQuery: optionalLabel.describe('Concise brand and product text for database lookup, such as "Pepsi cola"; required only for BRANDED_PRODUCT'),
  amountGrams: nonnegativeRangeSchema.describe('Finished grams for the first-pass point portion: per unit for COUNT foods, complete serving for AMOUNT foods'),
}).strict().superRefine((ingredient, ctx) => {
  const normalizedCanonical = normalized(ingredient.canonicalIdentity);
  const normalizedAliases = ingredient.lookupAliases.map(normalized);
  if (new Set(normalizedAliases).size !== normalizedAliases.length) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'lookupAliases must be unique', path: ['lookupAliases'] });
  }
  if (normalizedAliases.includes(normalizedCanonical)) {
    ctx.addIssue({
      code: z.ZodIssueCode.custom,
      message: 'lookupAliases must not repeat canonicalIdentity',
      path: ['lookupAliases'],
    });
  }
  if (ingredient.retrievalIntent === 'BRANDED_PRODUCT' && ingredient.productQuery === undefined) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'branded products require productQuery', path: ['productQuery'] });
  }
  if (ingredient.retrievalIntent !== 'BRANDED_PRODUCT' && ingredient.productQuery !== undefined) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'only branded products may provide productQuery', path: ['productQuery'] });
  }
});

export const secondPassResponseSchema = z.object({
  mealItems: z.array(z.object({
    mealItemName: label.describe('Must exactly match a mealItemName from the first-pass JSON'),
    ingredients: z.array(compactIngredientSchema).min(1).max(24).describe('Complete quantified recipe for this meal item, including material calorie sources such as oil, ghee, sugar, sauces, and milk'),
    variations: z.array(variationSchema).max(4).describe('Normally zero to two; only plausible material uncertainty'),
  }).strict().superRefine((mealItem, ctx) => {
    const ingredientNames = new Set(mealItem.ingredients.map(({ ingredientName }) => normalized(ingredientName)));
    for (const variation of mealItem.variations) {
      if (variation.ingredientName !== null && !ingredientNames.has(normalized(variation.ingredientName))) {
        ctx.addIssue({
          code: z.ZodIssueCode.custom,
          message: `variation references unknown ingredient ${variation.ingredientName}`,
          path: ['variations'],
        });
      }
    }
  })).min(1).max(20).describe('Exactly one entry for every first-pass meal item'),
}).strict();

export type FirstPassResponse = z.infer<typeof firstPassResponseSchema>;
export type SecondPassResponse = z.infer<typeof secondPassResponseSchema>;
export type MealItem = FirstPassResponse['mealItems'][number];
export type CompactComponent = MealItem;
export type CompactIngredientComponent = SecondPassResponse['mealItems'][number];

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

export const FIRST_PASS_PROMPT_EXAMPLES: Array<{
  input: string;
  response: FirstPassResponse;
}> = [
    {
      input: 'Dinner: 420 g chicken pot pie with 1 cup green beans on the side',
      response: {
        food_detected: true,
        mealName: 'Chicken pot pie with green beans',
        tip: 'A pie filling often combines protein, vegetables, and a savory sauce.',
        mealTypeCandidate: { value: 'DINNER', origin: 'user_stated' },
        mealItems: [
          {
            mealItemName: 'chicken pot pie',
            canonicalIdentity: 'chicken pot pie',
            portion: {
              kind: 'AMOUNT', estimate: 420, min: 420, max: 420,
              origin: 'user_stated',
            },
            preparation: { method: 'BAKED', origin: 'model_inferred' },
          },
          {
            mealItemName: 'green beans',
            canonicalIdentity: 'cooked green beans',
            portion: {
              kind: 'AMOUNT', estimate: 125, min: 100, max: 150,
              origin: 'user_stated',
            },
            preparation: { method: 'COOKED_UNKNOWN', origin: 'model_inferred' },
          },
        ],
      },
    },
    {
      input: 'The ramen used 90 g dry noodles, but the finished bowl weighed 360 g',
      response: {
        food_detected: true,
        mealName: 'Ramen',
        tip: 'Broth-based noodle soups vary widely in their ingredients and preparation.',
        mealTypeCandidate: { value: null, origin: null },
        mealItems: [
          {
            mealItemName: 'ramen',
            canonicalIdentity: 'prepared ramen noodle soup',
            portion: {
              kind: 'AMOUNT', estimate: 360, min: 360, max: 360,
              origin: 'user_stated',
            },
            preparation: { method: 'BOILED', origin: 'model_inferred' },
          },
        ],
      },
    },
  ];

export const SECOND_PASS_PROMPT_EXAMPLES: Array<{
  input: string;
  firstPass: FirstPassResponse;
  response: SecondPassResponse;
}> = [
    {
      input: FIRST_PASS_PROMPT_EXAMPLES[0]!.input,
      firstPass: FIRST_PASS_PROMPT_EXAMPLES[0]!.response,
      response: {
        mealItems: [
          {
            mealItemName: 'chicken pot pie',
            ingredients: [
              {
                ingredientName: 'chicken', canonicalIdentity: 'chicken meat',
                lookupAliases: ['cooked chicken'], retrievalIntent: 'GENERIC_INGREDIENT',
                amountGrams: { estimate: 120, min: 90, max: 150, origin: 'model_inferred' },
              },
              {
                ingredientName: 'pastry', canonicalIdentity: 'pie pastry',
                lookupAliases: ['pie crust'], retrievalIntent: 'GENERIC_INGREDIENT',
                amountGrams: { estimate: 130, min: 100, max: 160, origin: 'model_inferred' },
              },
              {
                ingredientName: 'carrots', canonicalIdentity: 'cooked carrots',
                lookupAliases: [], retrievalIntent: 'GENERIC_INGREDIENT',
                amountGrams: { estimate: 45, min: 30, max: 60, origin: 'model_inferred' },
              },
              {
                ingredientName: 'peas', canonicalIdentity: 'cooked green peas',
                lookupAliases: ['garden peas'], retrievalIntent: 'GENERIC_INGREDIENT',
                amountGrams: { estimate: 40, min: 25, max: 55, origin: 'model_inferred' },
              },
              {
                ingredientName: 'gravy', canonicalIdentity: 'chicken gravy',
                lookupAliases: [], retrievalIntent: 'GENERIC_INGREDIENT',
                amountGrams: { estimate: 85, min: 60, max: 110, origin: 'model_inferred' },
              },
            ],
            variations: [],
          },
          {
            mealItemName: 'green beans',
            ingredients: [
              {
                ingredientName: 'green beans', canonicalIdentity: 'cooked green beans',
                lookupAliases: ['string beans'], retrievalIntent: 'GENERIC_INGREDIENT',
                amountGrams: { estimate: 125, min: 100, max: 150, origin: 'user_stated' },
              },
            ],
            variations: [],
          },
        ],
      },
    },
  ];

function formatPromptExamples<T>(
  examples: Array<{ input: string; response: T; firstPass?: FirstPassResponse }>,
): string {
  return examples.map((example) => [
    `Meal text: ${JSON.stringify(example.input)}`,
    ...(example.firstPass ? [`First-pass JSON: ${JSON.stringify(example.firstPass)}`] : []),
    `Valid response: ${JSON.stringify(example.response)}`,
  ].join('\n')).join('\n\n');
}

export const FIRST_PASS_SYSTEM_PROMPT = `You are the first parsing pass of a nutrition calculator.
Return only the requested JSON. Do not list ingredients, variations, calories, or macros.

Tasks:
- Set food_detected=false when no usable food can be identified; then return no meal items and a null meal name and meal type.
- Split the meal into meal items. Keep a named prepared dish as one item unless its fillings or toppings are explicitly served separately. Itemize every separately named food or drink with its own quantity, even in a platter or combo; never emit the umbrella platter or combo instead of, or alongside, those items.
- Quantify continuous foods as AMOUNT and discrete foods as COUNT. For AMOUNT, estimate/min/max are finished grams. For COUNT, count is the number of units (never grams) and unitGrams is the finished grams for one unit. Do not return a unit field.
- Clamp user-provided quantities so min=estimate=max and origin=user_stated. A serving indication counts as user-provided in any form: counts, weights, volumes, household measures, and fractions, even when the model converts them to grams. Use origin=model_inferred for everything the model assumed, including image observations and context-based guesses.
- Return exactly one preparation method per meal item; do not generate preparation alternatives.
- If meal type cannot be determined confidently, return value=null and origin=null.

Examples demonstrate meal item boundaries and finished-gram portions; do not copy their food names:
Volume-to-gram conversions depend on the food; do not reuse an example's gram range for another food.
${formatPromptExamples(FIRST_PASS_PROMPT_EXAMPLES)}`;

export const SECOND_PASS_SYSTEM_PROMPT = `You are the second decomposition pass of a nutrition calculator.
Return only the requested JSON. Do not return calories, macros, question prose, labels, or option objects.

The first-pass JSON is supplied in the user message. For every meal item, return a complete quantified recipe decomposed into ingredients.
- Use GENERIC_INGREDIENT for ordinary ingredients, BRANDED_PRODUCT only when the input identifies a specific packaged or marketed product, and AMBIGUOUS when product-versus-generic identity is unclear; never guess a brand.
- Use origin=user_stated only when the original meal input explicitly specifies the ingredient or its amount in any form, including volumes and household measures the model converts to grams.
- A variation may only reference an ingredient that appears in the same meal item's ingredients list. Never declare a variation for an ingredient the input explicitly excluded; omit both the ingredient and its variation instead.
- Declare only plausible material uncertainty using the standardized variationType enum. Numeric uncertainty lives in amountGrams min/estimate/max; an INGREDIENT_AMOUNT or INGREDIENT_PRESENCE variation references that ingredient without repeating numeric options.
- INGREDIENT_VARIANT alternatives contain canonical food identities such as skim milk or whole milk, excluding the baseline canonicalIdentity. PREPARATION uses ingredientName=null and alternatives containing only preparation enum values.
- Portion, count, and unit-size uncertainty belongs only in the first-pass ranges, not in variations.

Examples demonstrate preserving every first-pass meal item and non-redundant lookup aliases; do not copy their food names:
${formatPromptExamples(SECOND_PASS_PROMPT_EXAMPLES)}`;

interface ScenarioState {
  count: number;
  consumedGrams: number;
  perUnitGrams: number;
  preparation: PreparationCode;
  ingredients: Array<{
    name: string;
    canonicalIdentity: string;
    lookupAliases: string[];
    retrievalIntent: FoodRetrievalIntent;
    productQuery?: string;
    grams: number;
  }>;
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

/** Stable component IDs shared by pass-level progress and the final proposal. */
export function componentIdsForFirstPass(first: FirstPassResponse): string[] {
  const used = new Set<string>();
  return first.mealItems.map((mealItem) =>
    uniqueId(slug(mealItem.mealItemName), used)
  );
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

function internalOrigin(origin: 'user_stated' | 'model_inferred', input: NormalizedMealInput): 'USER_TEXT' | 'MODEL_INFERRED' {
  return origin === 'user_stated' && input.kind === 'TEXT' ? 'USER_TEXT' : 'MODEL_INFERRED';
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
  if (component.portion.kind === 'COUNT' && component.portion.countMin !== component.portion.countMax) {
    dimensions.push({
      key: 'count',
      questionKind: 'COUNT',
      origin: portionOrigin,
      numeric: { unitCode: 'COUNT', min: component.portion.countMin, max: component.portion.countMax, step: 1, integerOnly: true },
      options: numericOptions(
        [component.portion.countMin, component.portion.count, component.portion.countMax],
        component.portion.count,
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
  const unit = component.portion.kind === 'COUNT' ? component.portion.unitGrams : undefined;
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
          {
            code: 'absent', label: 'No', point: ingredient.amountGrams.estimate === 0, apply: (state) =>
              replaceIngredient(state, ingredient.ingredientName, () => null)
          },
          {
            code: 'present', label: 'Yes', point: ingredient.amountGrams.estimate > 0, apply: (state) =>
              replaceIngredient(state, ingredient.ingredientName, (item) => ({ ...item, grams: presentGrams }))
          },
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
            : replaceIngredient(state, ingredient.ingredientName, (item) => ({
              ...item,
              canonicalIdentity: identity,
              lookupAliases: identity === ingredient.canonicalIdentity ? item.lookupAliases : [],
            })),
        })),
      };
    } else if (variation.variationType === 'PREPARATION' && variation.alternatives.length > 0) {
      const methods: PreparationCode[] = [component.preparation.method, ...variation.alternatives];
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
      lookupAliases: ingredient.lookupAliases,
      retrievalIntent: ingredient.retrievalIntent,
      ...(ingredient.productQuery === undefined ? {} : { productQuery: ingredient.productQuery }),
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

function limitScenarioCombinations<T extends { point: boolean; codes: string[] }>(
  combinations: readonly T[]
): T[] {
  if (combinations.length <= MAX_GENERATED_SCENARIOS_PER_COMPONENT) {
    return [...combinations];
  }
  const point = combinations.find((combination) => combination.point);
  if (!point) throw new Error('Generated scenarios must include a point scenario');
  const distance = (value: T) => value.codes.reduce(
    (total, code, index) => total + Number(code !== point.codes[index]),
    0
  );
  return [...combinations]
    .sort((left, right) =>
      Number(right.point) - Number(left.point) ||
      distance(left) - distance(right) ||
      left.codes.join(':').localeCompare(right.codes.join(':'))
    )
    .slice(0, MAX_GENERATED_SCENARIOS_PER_COMPONENT);
}

function componentProposal(
  component: CompactComponent,
  recipe: CompactIngredientComponent,
  input: NormalizedMealInput,
  componentId: string,
): FoodInterpretationProposal['components'][number] {
  const initial: ScenarioState = {
    count: component.portion.kind === 'COUNT' ? component.portion.count : 1,
    consumedGrams: component.portion.kind === 'COUNT'
      ? component.portion.count * component.portion.unitGrams.estimate
      : component.portion.estimate,
    perUnitGrams: component.portion.kind === 'COUNT' ? component.portion.unitGrams.estimate : component.portion.estimate,
    preparation: component.preparation.method,
    ingredients: recipe.ingredients.map((ingredient) => ({
      name: ingredient.ingredientName,
      canonicalIdentity: ingredient.canonicalIdentity,
      lookupAliases: ingredient.lookupAliases,
      retrievalIntent: ingredient.retrievalIntent,
      ...(ingredient.productQuery === undefined ? {} : { productQuery: ingredient.productQuery }),
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
  combinations = limitScenarioCombinations(combinations);
  const scenarios = combinations.map((combination, index) => scenarioFromState(
    `${componentId}:${combination.codes.join(':') || 'point'}:${index + 1}`,
    combination.state,
    combination.assumptions,
    component,
  ));
  const pointIndex = Math.max(0, combinations.findIndex(({ point }) => point));
  const pointScenarioId = scenarios[pointIndex]!.scenarioId;
  const componentEvidence = input.kind === 'TEXT' && input.text.includes(component.mealItemName)
    ? textEvidence(input, component.mealItemName)
    : modelEvidence('Identified as a meal component.');
  const portionOrigin = internalOrigin(component.portion.origin, input);
  const preparationOrigin = internalOrigin(component.preparation.origin, input);
  const portionConstraint = component.portion.kind === 'COUNT'
    ? {
      kind: 'COUNT' as const,
      count: {
        estimate: component.portion.count, min: component.portion.countMin, max: component.portion.countMax,
        origin: portionOrigin, evidence: evidenceFor(portionOrigin, input),
      },
      perUnitFinishedGrams: {
        ...component.portion.unitGrams,
        origin: internalOrigin(component.portion.unitGrams.origin, input),
        evidence: evidenceFor(internalOrigin(component.portion.unitGrams.origin, input), input),
      },
      naturalUnitCode: slug(component.mealItemName).toUpperCase(),
    }
    : {
      kind: 'AMOUNT' as const,
      naturalMeasure: {
        unitCode: 'GRAM' as const,
        quantity: {
          estimate: component.portion.estimate, min: component.portion.min, max: component.portion.max,
          origin: portionOrigin, evidence: evidenceFor(portionOrigin, input),
        },
      },
    };
  return {
    componentId,
    sourceName: component.mealItemName,
    displayName: component.mealItemName,
    canonicalIdentity: component.canonicalIdentity,
    evidence: [componentEvidence],
    portionConstraint,
    preparationConstraints: recipe.variations.some(({ variationType }) => variationType === 'PREPARATION')
      ? []
      : [{
        code: component.preparation.method,
        origin: preparationOrigin,
      }],
    scenarios,
    pointScenarioId,
  };
}

/**
 * Pairs every first-pass meal item with exactly one second-pass recipe,
 * using the same normalization as the production merge. Throws when the
 * passes disagree on the meal item set.
 */
export function pairMealItemsWithRecipes(
  first: FirstPassResponse,
  second: SecondPassResponse,
): Array<{ component: CompactComponent; recipe: CompactIngredientComponent }> {
  const secondByName = new Map(second.mealItems.map((mealItem) => [normalized(mealItem.mealItemName), mealItem]));
  if (secondByName.size !== first.mealItems.length || second.mealItems.length !== first.mealItems.length) {
    throw new Error('Second pass must return exactly one recipe for every first-pass meal item');
  }
  return first.mealItems.map((component) => {
    const recipe = secondByName.get(normalized(component.mealItemName));
    if (!recipe) throw new Error(`Second pass omitted meal item ${component.mealItemName}`);
    return { component, recipe };
  });
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
  const pairs = pairMealItemsWithRecipes(first, second);
  const componentIds = componentIdsForFirstPass(first);
  const components = pairs.map(({ component, recipe }, index) =>
    componentProposal(component, recipe, input, componentIds[index]!)
  );
  const mealType = first.mealTypeCandidate;
  const candidateOrigin = mealType.origin === 'user_stated' && input.kind === 'TEXT' ? 'USER_TEXT' : 'MODEL_INFERRED';
  const proposal: FoodInterpretationProposal = {
    outcome: 'FOOD',
    mealName: first.mealName!,
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
