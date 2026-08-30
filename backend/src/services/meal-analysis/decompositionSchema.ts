import { z } from 'zod';
import { zodToJsonSchema } from 'zod-to-json-schema';

const reason = (description: string) => z.string().trim().min(1).max(240).describe(description);
const confidence = (description: string) => z.number().finite().min(0).max(1).describe(description);
const optionalCountValue = (description: string) =>
  z.number().finite().positive().max(20).nullable().describe(description);
const optionalUnitValue = (description: string) =>
  z.number().finite().positive().max(5000).nullable().describe(description);

export const portionSchema = z.object({
  kind: z.enum(['COUNT', 'BULK', 'PINCH']).describe(
    'Portion representation: counted discrete pieces, bulk or continuous food, or a trace or pinch amount.'
  ),
  grams_estimated: z.number().finite().positive().max(5000).describe(
    'Best estimate of total consumed grams across the entire item row, not grams per piece.'
  ),
  min_grams: z.number().finite().min(0).max(5000).describe(
    'Plausible lower bound for total consumed grams, no greater than grams_estimated.'
  ),
  max_grams: z.number().finite().min(0).max(5000).describe(
    'Plausible upper bound for total consumed grams, no less than grams_estimated.'
  ),
  count: optionalCountValue(
    'Number of discrete pieces for COUNT; null for BULK and PINCH and when a missing count needs clarification.'
  ),
  per_unit_grams: optionalUnitValue(
    'Best estimated grams per piece for COUNT; null for BULK and PINCH.'
  ),
  per_unit_min_grams: optionalUnitValue(
    'Plausible lower-bound grams per piece for COUNT; null for BULK and PINCH.'
  ),
  per_unit_max_grams: optionalUnitValue(
    'Plausible upper-bound grams per piece for COUNT; null for BULK and PINCH.'
  ),
  size_specified_by_user: z.boolean().describe(
    'Whether the user explicitly supplied the portion size; never infer this flag from a model estimate.'
  ),
}).strict().superRefine((portion, ctx) => {
  if (portion.min_grams > portion.grams_estimated || portion.grams_estimated > portion.max_grams) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'Total gram bounds must be ordered' });
  }
  const unitValues = [portion.per_unit_grams, portion.per_unit_min_grams, portion.per_unit_max_grams];
  if (portion.kind !== 'COUNT') {
    if (portion.count !== null || unitValues.some((value) => value !== null)) {
      ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'BULK and PINCH use null count and per-unit values' });
    }
    return;
  }
  if (unitValues.some((value) => value === null)) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'COUNT requires per-unit values' });
    return;
  }
  const [unit, unitMin, unitMax] = unitValues as [number, number, number];
  if (unitMin > unit || unit > unitMax) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'Per-unit gram bounds must be ordered' });
  }
  if (portion.count !== null) {
    const equal = (left: number, right: number) => Math.abs(left - right) < 0.051;
    if (!equal(portion.grams_estimated, portion.count * unit) ||
        !equal(portion.min_grams, portion.count * unitMin) ||
        !equal(portion.max_grams, portion.count * unitMax)) {
      ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'COUNT totals must equal count multiplied by per-unit values' });
    }
  }
});

export const usdaLookupProposalSchema = z.object({
  proposed_canonical_name: z.string().trim().min(1).max(120).describe(
    'Short generic English food identity optimized for database retrieval, separate from display name and preparation.'
  ),
  aliases: z.array(z.string().trim().min(1).max(120)).max(5).describe(
    'Ordered unique alternative database lookup identities for the same food, excluding the canonical name and preparation states.'
  ),
  preparation_states: z.array(z.string().trim().min(1).max(40)).max(5).describe(
    'Unique atomic nutrition-relevant preparation states, kept separate from identity terms; empty when unknown.'
  ),
}).strict().superRefine((lookup, ctx) => {
  const normalizedCanonical = lookup.proposed_canonical_name.toLocaleLowerCase();
  const aliases = lookup.aliases.map((value) => value.toLocaleLowerCase());
  if (new Set(aliases).size !== aliases.length || aliases.includes(normalizedCanonical)) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'Aliases must be unique and exclude the canonical name' });
  }
  const states = lookup.preparation_states.map((value) => value.toLocaleLowerCase());
  if (new Set(states).size !== states.length || states.some((value) => value.includes(',') || /\bor\b/i.test(value))) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'Preparation states must be unique and atomic' });
  }
});

const commonItemFields = {
  raw_name: z.string().trim().min(1).max(120).describe(
    'Short localized and regionally familiar item name displayed to the user; preserve explicit text-input terminology.'
  ),
  is_food_reason: reason(
    'Concise input-grounded evidence for whether the candidate belongs to the primary food or meal being analyzed.'
  ),
  is_food_confidence: confidence(
    'Confidence in is_food from 0 through 1, produced after is_food_reason; it does not override the boolean.'
  ),
};

export const foodItemSchema = z.object({
  raw_name: commonItemFields.raw_name,
  is_food: z.literal(true).describe(
    'Workflow-controlling classification that this candidate belongs to the primary food or meal being analyzed.'
  ),
  is_food_reason: commonItemFields.is_food_reason,
  is_food_confidence: commonItemFields.is_food_confidence,
  usda_lookup: usdaLookupProposalSchema.describe(
    'LLM-proposed retrieval input for a food item; never contains an actual USDA match.'
  ),
  portion: portionSchema.describe('Estimated total consumed portion for this food item.'),
}).strict();

export const nonFoodItemSchema = z.object({
  raw_name: commonItemFields.raw_name,
  is_food: z.literal(false).describe(
    'Workflow-controlling classification that this candidate does not belong to the primary food or meal being analyzed.'
  ),
  is_food_reason: commonItemFields.is_food_reason,
  is_food_confidence: commonItemFields.is_food_confidence,
  usda_lookup: z.null().describe('Null for a non-food item.'),
  portion: z.null().describe('Null for a non-food item.'),
}).strict();

export const generatedDecompositionOutputV3Schema = z.object({
  outcome: z.enum(['FOOD', 'NO_FOOD']).describe(
    'Workflow-controlling result: FOOD when at least one item belongs to the meal, otherwise terminal NO_FOOD.'
  ),
  outcome_reason: reason(
    'Concise input-grounded evidence for the overall food or no-food outcome, without internal reasoning.'
  ),
  outcome_confidence: confidence(
    'Confidence in the overall food or no-food outcome from 0 through 1, produced after outcome_reason.'
  ),
  meal_name: z.string().trim().min(1).max(60).nullable().describe(
    'Localized, regionally familiar two-to-six-word name for the whole meal; preserve explicit terminology; null for NO_FOOD.'
  ),
  items: z.array(z.discriminatedUnion('is_food', [foodItemSchema, nonFoodItemSchema])).max(20).describe(
    'Relevant candidate items that make up or may belong to the primary meal shown or described.'
  ),
  inferred_meal_type: z.enum(['BREAKFAST', 'LUNCH', 'DINNER', 'SNACK', 'UNKNOWN']).describe(
    'Meal occasion inferred from the meal and supplied user-local date, time, timezone, and locale context.'
  ),
  meal_type_reason: reason(
    'Concise evidence for the inferred meal occasion, produced before meal_type_confident.'
  ),
  meal_type_confident: z.boolean().describe(
    'Whether the inferred meal occasion is sufficiently supported; false with UNKNOWN for NO_FOOD.'
  ),
}).strict().superRefine((output, ctx) => {
  const foodCount = output.items.filter((item) => item.is_food).length;
  if (output.outcome === 'FOOD') {
    if (foodCount === 0 || output.meal_name === null) {
      ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'FOOD requires a meal name and at least one food item' });
    }
  } else if (foodCount !== 0 || output.meal_name !== null ||
      output.inferred_meal_type !== 'UNKNOWN' || output.meal_type_confident) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'NO_FOOD requires no food items, null meal name, UNKNOWN type, and low meal-type confidence' });
  }
});

export type GeneratedDecompositionOutputV3 = z.infer<typeof generatedDecompositionOutputV3Schema>;
export type FoodItemV3 = z.infer<typeof foodItemSchema>;

function normalizeNumericExclusiveBounds(value: unknown): void {
  if (value == null || typeof value !== 'object') return;
  const record = value as Record<string, unknown>;
  if (record.exclusiveMinimum === true && typeof record.minimum === 'number') {
    record.exclusiveMinimum = record.minimum;
    delete record.minimum;
  }
  for (const child of Object.values(record)) normalizeNumericExclusiveBounds(child);
}

const decompositionSchema = zodToJsonSchema(
  generatedDecompositionOutputV3Schema,
  { $refStrategy: 'none', target: 'openAi' }
) as Record<string, unknown>;
normalizeNumericExclusiveBounds(decompositionSchema);

export const DECOMPOSITION_SCHEMA = decompositionSchema;

export function parseGeneratedDecompositionOutput(value: unknown): GeneratedDecompositionOutputV3 {
  return generatedDecompositionOutputV3Schema.parse(value);
}
