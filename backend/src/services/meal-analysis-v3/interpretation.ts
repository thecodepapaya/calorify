import { z } from 'zod';
import { zodToJsonSchema } from 'zod-to-json-schema';
import config from '../../config.js';
import { OPENAI_MEAL_ANALYSIS_MODEL } from '../../openaiModels.js';
import {
  createMealAnalysisLlmClient,
  type MealAnalysisLlmAttempt,
  type MealAnalysisLlmClient,
} from '../meal-analysis/llm.js';
import {
  interpretationProposalSchema,
  parseAndValidateInterpretation,
  type InterpretationProposal,
  type NormalizedMealInput,
} from './domain.js';

export interface MealInterpretationImage {
  bytes: Uint8Array;
  mediaType: 'image/jpeg' | 'image/png' | 'image/webp';
}

export interface MealInterpretationResult {
  proposal: InterpretationProposal;
  rawProposal?: unknown;
  normalizations?: string[];
  providerAttempts: MealAnalysisLlmAttempt[];
}

export interface MealInterpreter {
  interpret(
    input: NormalizedMealInput,
    image?: MealInterpretationImage
  ): Promise<MealInterpretationResult>;
}

const responseEnvelopeSchema = z.object({
  proposal: interpretationProposalSchema,
}).strict();

function normalizeNumericExclusiveBounds(value: unknown): void {
  if (value === null || typeof value !== 'object') return;
  const record = value as Record<string, unknown>;
  if (record.exclusiveMinimum === true && typeof record.minimum === 'number') {
    record.exclusiveMinimum = record.minimum;
    delete record.minimum;
  }
  for (const child of Object.values(record)) normalizeNumericExclusiveBounds(child);
}

const responseJsonSchema = zodToJsonSchema(responseEnvelopeSchema, {
  $refStrategy: 'none',
  target: 'openAi',
}) as Record<string, unknown>;
normalizeNumericExclusiveBounds(responseJsonSchema);

export const MEAL_INTERPRETATION_RESPONSE_SCHEMA = responseJsonSchema;

const INTERPRETATION_SYSTEM_PROMPT = `You are the interpretation stage of a nutrition calculator.
Return only the requested JSON. Never provide calories, macros, nutrient values, or health scores.

Classify the input as FOOD, NO_FOOD, or UNUSABLE. For FOOD, decompose what was consumed into recognizable components, then give every component a small set of complete, quantified, internally coherent recipe scenarios. The runtime calculates nutrition only from ingredient leaves, so do not use a prepared-dish nutrition record as a shortcut.

Rules:
- Use concise stable ASCII IDs unique across the meal.
- canonicalIdentity and lookupAliases are short generic English food identities for trusted database lookup. displayName is localized for the supplied locale and country. Country is only a weak recipe prior.
- Text evidence spans use JavaScript UTF-16 [startUtf16,endUtf16) offsets and must reproduce the exact source substring. Attach each USER_TEXT span only once. Split adjacent evidence: for "4 rotis", attach "4" to count and "rotis" to the component. Never mark an inference USER_TEXT.
- For images, use IMAGE_OBSERVED evidence. Assume the full visible serving was consumed, but preserve uncertainty about scale, occlusion, hidden ingredients, and recipes.
- User-specified count or amount has min=estimate=max and USER_TEXT evidence. Never invent an authoritative count of 1 when no count was specified.
- COUNT is for pieces/slices/units. AMOUNT is for continuous food or a natural measure. A pinch is an AMOUNT natural measure, not a food category.
- Every scenario has point ingredient grams, finished yield, one point effective portion, and one scaling kind. Countable recipes use UNIT_COUNT and consistent yield units/per-unit grams. Finished portions use FINISHED_MASS. Explicit dry/raw ingredient anchors consumed as a whole use WHOLE_RECIPE.
- Recipe scenarios must be plausible as complete recipes, not independent ingredient minima. Usually supply 3 lean/typical/rich or small/typical/large scenarios when material uncertainty exists; an explicit fully known atomic food may use one.
- Every scenario for one component declares the same assumption dimension keys. Use OPTION assumptions for material variants, presence, preparation, retained fat, unit size, or amount. Use NUMBER COUNT assumptions only when count is genuinely uncertain. Every assumption carries honest provenance and matching evidence: usually MODEL_INFERRED, or USER_TEXT only when the source explicitly fixes that option/value. Do not create assumptions for an already explicit dimension.
- ACTIVE_NUTRITION leaves include every material calorie source, including retained oil, sugar, butter, sauces, and dressings. YIELD_ONLY is only for water with a verified zero basis. Atomic foods use one ACTIVE_NUTRITION leaf.
- nutritionBasisGrams is the input quantity matching nutritionBasis. Water may change finished yield without adding nutrition. Oil added to a pan is not consumed oil; quantify retained oil.
- Raw/dry/cooked/drained basis and preparation codes must be compatible. UNKNOWN cannot coexist with another preparation code.
- pointScenarioId selects the ordinary typical scenario, not a midpoint calculation.
- mealNameCandidate has no amount, count, size, weight, calories, or advice.
- mealTypeCandidate uses explicit USER_TEXT evidence when the occasion is stated. Otherwise use MODEL_INFERRED with confidence and evidence; use null with confidence <=0.5 when genuinely uncertain.
- Return NO_FOOD for valid non-food input and UNUSABLE only when the text/image cannot support any meaningful meal interpretation.`;

function contextText(input: NormalizedMealInput): string {
  return [
    `Locale: ${input.context.locale}`,
    `Country: ${input.context.countryCode}`,
    `Time zone: ${input.context.timeZone}`,
    `Captured at: ${input.context.capturedAt}`,
  ].join('\n');
}

function dataUrl(image: MealInterpretationImage): string {
  return `data:${image.mediaType};base64,${Buffer.from(image.bytes).toString('base64')}`;
}

function requireImage(
  input: NormalizedMealInput,
  image: MealInterpretationImage | undefined
): MealInterpretationImage {
  if (input.kind === 'IMAGE' && image === undefined) {
    throw new Error('Image bytes are required for IMAGE input');
  }
  if (input.kind === 'TEXT' && image !== undefined) {
    throw new Error('Image bytes cannot accompany TEXT input');
  }
  return image!;
}

function parseEnvelope(value: unknown, input: NormalizedMealInput): InterpretationProposal {
  const envelope = responseEnvelopeSchema.parse(value);
  return parseAndValidateInterpretation(envelope.proposal, input);
}

interface NormalizedCandidate {
  value: unknown;
  changes: string[];
}

function record(value: unknown): Record<string, unknown> | undefined {
  return value !== null && typeof value === 'object' && !Array.isArray(value)
    ? value as Record<string, unknown>
    : undefined;
}

function exactOccurrences(source: string, claim: string): number[] {
  if (claim === '') return [];
  const positions: number[] = [];
  let from = 0;
  while (from <= source.length) {
    const position = source.indexOf(claim, from);
    if (position < 0) break;
    positions.push(position);
    from = position + Math.max(1, claim.length);
  }
  return positions;
}

/** Canonicalizes mechanical fields; it never invents food, quantities, or recipes. */
function normalizeModelCandidate(value: unknown, input: NormalizedMealInput): NormalizedCandidate {
  const cloned = structuredClone(value);
  const changes = new Set<string>();
  const envelope = record(cloned);
  const proposal = record(envelope?.proposal);
  if (proposal?.outcome !== 'FOOD') return { value: cloned, changes: [] };

  const normalizeEvidence = (candidate: unknown): void => {
    if (Array.isArray(candidate)) {
      candidate.forEach(normalizeEvidence);
      return;
    }
    const object = record(candidate);
    if (!object) return;
    if (
      input.kind === 'TEXT' &&
      object.origin === 'USER_TEXT' &&
      typeof object.text === 'string'
    ) {
      const positions = exactOccurrences(input.text, object.text);
      const currentStart = object.startUtf16;
      const currentEnd = object.endUtf16;
      const currentValid = typeof currentStart === 'number' && typeof currentEnd === 'number' &&
        input.text.slice(currentStart, currentEnd) === object.text;
      if (!currentValid && positions.length > 0) {
        object.startUtf16 = positions[0]!;
        object.endUtf16 = positions[0]! + object.text.length;
        changes.add('recomputed exact USER_TEXT UTF-16 spans');
      }
    }
    Object.values(object).forEach(normalizeEvidence);
  };
  normalizeEvidence(proposal);

  const components = Array.isArray(proposal.components) ? proposal.components : [];
  for (const componentValue of components) {
    const component = record(componentValue);
    if (!component) continue;
    if (input.kind === 'TEXT') {
      const componentEvidence = Array.isArray(component.evidence)
        ? component.evidence.map(record).filter((item): item is Record<string, unknown> => item !== undefined)
        : [];
      const sourceEvidence = componentEvidence.find((item) =>
        item.origin === 'USER_TEXT' &&
        typeof item.text === 'string' &&
        item.text.trim() !== ''
      );
      if (
        sourceEvidence &&
        typeof sourceEvidence.text === 'string' &&
        (typeof component.sourceName !== 'string' || !input.text.includes(component.sourceName))
      ) {
        component.sourceName = sourceEvidence.text;
        changes.add('aligned source names with exact USER_TEXT evidence');
      }
    }
    const portion = record(component.portionConstraint);
    const scenarios = Array.isArray(component.scenarios) ? component.scenarios : [];
    for (const scenarioValue of scenarios) {
      const scenario = record(scenarioValue);
      if (!scenario) continue;
      const ingredients = Array.isArray(scenario.ingredients) ? scenario.ingredients : [];
      for (const ingredientValue of ingredients) {
        const ingredient = record(ingredientValue);
        if (!ingredient || typeof ingredient.canonicalIdentity !== 'string' ||
            !Array.isArray(ingredient.lookupAliases)) continue;
        const canonical = ingredient.canonicalIdentity.normalize('NFKC').toLocaleLowerCase();
        const aliases = ingredient.lookupAliases.filter((alias, index, all) =>
          typeof alias === 'string' &&
          alias.normalize('NFKC').toLocaleLowerCase() !== canonical &&
          all.findIndex((candidate) => typeof candidate === 'string' &&
            candidate.normalize('NFKC').toLocaleLowerCase() ===
              alias.normalize('NFKC').toLocaleLowerCase()) === index
        );
        if (aliases.length !== ingredient.lookupAliases.length) {
          ingredient.lookupAliases = aliases;
          changes.add('removed duplicate lookup aliases');
        }
      }

      const effective = record(scenario.effectivePortion);
      if (!portion || !effective) continue;
      if (portion.kind === 'COUNT') {
        const countConstraint = record(portion.count);
        const unitConstraint = record(portion.perUnitFinishedGrams);
        const count = typeof countConstraint?.estimate === 'number'
          ? countConstraint.estimate
          : typeof effective.consumedCount === 'number'
            ? effective.consumedCount
            : undefined;
        const perUnit = typeof unitConstraint?.estimate === 'number'
          ? unitConstraint.estimate
          : typeof effective.perUnitFinishedGrams === 'number'
            ? effective.perUnitFinishedGrams
            : typeof effective.consumedGrams === 'number' && count
              ? effective.consumedGrams / count
              : undefined;
        if (count && perUnit) {
          scenario.effectivePortion = {
            kind: 'UNIT_COUNT',
            consumedCount: count,
            perUnitFinishedGrams: perUnit,
          };
          if (typeof scenario.finishedYieldGrams === 'number') {
            scenario.finishedYieldUnits = scenario.finishedYieldGrams / perUnit;
          }
          if (effective.kind !== 'UNIT_COUNT') {
            changes.add('aligned COUNT scenario scaling with the component portion');
          }
        }
      } else if (portion.kind === 'AMOUNT' && portion.measurementBasis === 'FINISHED') {
        const gramsConstraint = record(portion.finishedGrams);
        const consumedGrams = typeof effective.consumedGrams === 'number'
          ? effective.consumedGrams
          : typeof gramsConstraint?.estimate === 'number'
            ? gramsConstraint.estimate
            : typeof effective.consumedCount === 'number' &&
                typeof effective.perUnitFinishedGrams === 'number'
              ? effective.consumedCount * effective.perUnitFinishedGrams
              : undefined;
        if (consumedGrams) {
          scenario.effectivePortion = { kind: 'FINISHED_MASS', consumedGrams };
          scenario.finishedYieldUnits = null;
          if (effective.kind !== 'FINISHED_MASS') {
            changes.add('aligned finished-amount scenario scaling with the component portion');
          }
        }
      } else if (portion.kind === 'AMOUNT' && portion.measurementBasis === 'INGREDIENT') {
        scenario.effectivePortion = { kind: 'WHOLE_RECIPE' };
        scenario.finishedYieldUnits = null;
        if (effective.kind !== 'WHOLE_RECIPE') {
          changes.add('aligned ingredient-basis scenario scaling with the component portion');
        }
      }
    }
  }
  return { value: cloned, changes: [...changes] };
}

export function createModelMealInterpreter(
  suppliedClient?: MealAnalysisLlmClient,
  observeCandidate?: (value: unknown) => void
): MealInterpreter {
  return {
    async interpret(input, image) {
      const checkedImage = input.kind === 'IMAGE' || image !== undefined
        ? requireImage(input, image)
        : undefined;
      const providerAttempts: MealAnalysisLlmAttempt[] = [];
      const client = suppliedClient ?? createMealAnalysisLlmClient({
        onAttempt: (attempt) => providerAttempts.push(attempt),
        openRouterModel: config.OPENROUTER_MEAL_V3_MODEL,
      });
      const userText = input.kind === 'TEXT'
        ? `${contextText(input)}\n\nMeal text:\n${input.text}`
        : `${contextText(input)}\nImage origin: ${input.imageOrigin}\n\nAnalyze this meal image.`;
      const userContent = input.kind === 'TEXT'
        ? userText
        : [
            { type: 'text' as const, text: userText },
            { type: 'image_url' as const, image_url: { url: dataUrl(checkedImage!) } },
          ];

      const response = await client.chat.completions.create({
        model: OPENAI_MEAL_ANALYSIS_MODEL,
        messages: [
          { role: 'system', content: INTERPRETATION_SYSTEM_PROMPT },
          { role: 'user', content: userContent },
        ],
        response_format: {
          type: 'json_schema',
          json_schema: {
            name: 'meal_interpretation_v3',
            schema: MEAL_INTERPRETATION_RESPONSE_SCHEMA,
            strict: true,
          },
        },
        max_completion_tokens: 12_000,
      }, {
        operation: input.kind === 'TEXT' ? 'interpret_v3_text' : 'interpret_v3_image',
        validateStructuredContent: (value) => {
          observeCandidate?.(value);
          parseEnvelope(normalizeModelCandidate(value, input).value, input);
        },
      });

      const raw = response.choices[0]?.message?.content;
      if (!raw) throw new Error('Meal interpreter returned an empty response');
      const rawValue = JSON.parse(raw) as unknown;
      const normalized = normalizeModelCandidate(rawValue, input);
      return {
        proposal: parseEnvelope(normalized.value, input),
        rawProposal: record(rawValue)?.proposal,
        normalizations: normalized.changes,
        providerAttempts,
      };
    },
  };
}

export function createFixtureMealInterpreter(value: unknown): MealInterpreter {
  return {
    async interpret(input, image) {
      if (input.kind === 'IMAGE' || image !== undefined) requireImage(input, image);
      return {
        proposal: parseAndValidateInterpretation(value, input),
        rawProposal: value,
        normalizations: [],
        providerAttempts: [],
      };
    },
  };
}
