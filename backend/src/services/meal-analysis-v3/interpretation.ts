import config from '../../config.js';
import {
  createMealAnalysisLlmClient,
  type MealAnalysisLlmAttempt,
  type MealAnalysisLlmClient,
} from '../meal-analysis/llm.js';
import {
  parseAndValidateInterpretation,
  type InterpretationProposal,
  type NormalizedMealInput,
} from './domain.js';
import {
  FIRST_PASS_RESPONSE_JSON_SCHEMA,
  FIRST_PASS_SYSTEM_PROMPT,
  SECOND_PASS_RESPONSE_JSON_SCHEMA,
  SECOND_PASS_SYSTEM_PROMPT,
  buildInterpretationProposal,
  firstPassResponseSchema,
  secondPassResponseSchema,
  type FirstPassResponse,
  type SecondPassResponse,
} from './twoPassInterpretation.js';

export interface MealInterpretationImage {
  bytes: Uint8Array;
  mediaType: 'image/jpeg' | 'image/png' | 'image/webp';
}

export interface MealInterpretationResult {
  proposal: InterpretationProposal;
  firstPass?: FirstPassResponse;
  secondPass?: SecondPassResponse;
  rawProposal?: unknown;
  normalizations?: string[];
  providerAttempts: MealAnalysisLlmAttempt[];
}

export interface MealInterpretationPassSnapshot {
  firstPass: FirstPassResponse;
  secondPass?: SecondPassResponse;
}

export interface MealInterpreter {
  interpret(input: NormalizedMealInput, image?: MealInterpretationImage): Promise<MealInterpretationResult>;
}

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
): MealInterpretationImage | undefined {
  if (input.kind === 'IMAGE' && image === undefined) throw new Error('Image bytes are required for IMAGE input');
  if (input.kind === 'TEXT' && image !== undefined) throw new Error('Image bytes cannot accompany TEXT input');
  return image;
}

function userContent(text: string, image: MealInterpretationImage | undefined): string | Array<
  | { type: 'text'; text: string }
  | { type: 'image_url'; image_url: { url: string } }
> {
  if (!image) return text;
  return [
    { type: 'text', text },
    { type: 'image_url', image_url: { url: dataUrl(image) } },
  ];
}

async function structuredCall(
  client: MealAnalysisLlmClient,
  options: {
    systemPrompt: string;
    userContent: ReturnType<typeof userContent>;
    schemaName: string;
    schema: Record<string, unknown>;
    maxCompletionTokens: number;
    operation: string;
    reasoningEffort: 'none' | 'minimal';
    validate(value: unknown): void;
  },
): Promise<unknown> {
  const response = await client.chat.completions.create({
    model: config.OPENROUTER_MEAL_V3_MODEL,
    messages: [
      { role: 'system', content: options.systemPrompt },
      { role: 'user', content: options.userContent },
    ],
    response_format: {
      type: 'json_schema',
      json_schema: { name: options.schemaName, schema: options.schema, strict: true },
    },
    // The installed SDK types predate GPT-5.6 Luna's `none` value.
    reasoning_effort: options.reasoningEffort as 'low',
    max_completion_tokens: options.maxCompletionTokens,
  }, {
    operation: options.operation,
    validateStructuredContent: options.validate,
  });
  const raw = response.choices[0]?.message?.content;
  if (!raw) throw new Error(`${options.schemaName} returned an empty response`);
  return JSON.parse(raw) as unknown;
}

/** Runs the compact component pass followed by the quantified ingredient pass. */
export function createModelMealInterpreter(
  suppliedClient?: MealAnalysisLlmClient,
  observeCandidate?: (value: unknown) => void,
  options: {
    writeProviderTrace?: (entry: unknown) => void | Promise<void>;
    reasoningEffort?: 'none' | 'minimal';
    onPassCompleted?: (snapshot: MealInterpretationPassSnapshot) => void;
  } = {}
): MealInterpreter {
  return {
    async interpret(input, image) {
      const checkedImage = requireImage(input, image);
      const providerAttempts: MealAnalysisLlmAttempt[] = [];
      const client = suppliedClient ?? createMealAnalysisLlmClient({
        onAttempt: (attempt) => providerAttempts.push(attempt),
        openRouterModel: config.OPENROUTER_MEAL_V3_MODEL,
        writeProviderTrace: options.writeProviderTrace,
      });
      const inputDescription = input.kind === 'TEXT'
        ? `${contextText(input)}\n\nMeal text:\n${input.text}`
        : `${contextText(input)}\nImage origin: ${input.imageOrigin}\n\nAnalyze this meal image.`;
      const firstValue = await structuredCall(client, {
        systemPrompt: FIRST_PASS_SYSTEM_PROMPT,
        userContent: userContent(inputDescription, checkedImage),
        schemaName: 'meal_components_v3',
        schema: FIRST_PASS_RESPONSE_JSON_SCHEMA,
          maxCompletionTokens: 3_000,
          operation: input.kind === 'TEXT' ? 'interpret_v3_components_text' : 'interpret_v3_components_image',
          reasoningEffort: options.reasoningEffort ?? 'none',
        validate(value) {
          observeCandidate?.({ pass: 1, value });
          firstPassResponseSchema.parse(value);
        },
      });
      const firstPass = firstPassResponseSchema.parse(firstValue);
      options.onPassCompleted?.({ firstPass });
      if (!firstPass.food_detected) {
        return {
          proposal: buildInterpretationProposal(firstPass, {}, input),
          firstPass,
          rawProposal: { firstPass, secondPass: null },
          normalizations: [],
          providerAttempts,
        };
      }

      const secondDescription = `${inputDescription}\n\nFirst-pass JSON:\n${JSON.stringify(firstPass)}`;
      const secondValue = await structuredCall(client, {
        systemPrompt: SECOND_PASS_SYSTEM_PROMPT,
        userContent: userContent(secondDescription, checkedImage),
        schemaName: 'meal_ingredients_v3',
        schema: SECOND_PASS_RESPONSE_JSON_SCHEMA,
          maxCompletionTokens: 6_000,
          operation: input.kind === 'TEXT' ? 'interpret_v3_ingredients_text' : 'interpret_v3_ingredients_image',
          reasoningEffort: options.reasoningEffort ?? 'none',
        validate(value) {
          observeCandidate?.({ pass: 2, value });
          secondPassResponseSchema.parse(value);
          buildInterpretationProposal(firstPass, value, input);
        },
      });
      const secondPass = secondPassResponseSchema.parse(secondValue);
      options.onPassCompleted?.({ firstPass, secondPass });
      const proposal = buildInterpretationProposal(firstPass, secondPass, input);
      return {
        proposal,
        firstPass,
        secondPass,
        rawProposal: { firstPass, secondPass },
        normalizations: [],
        providerAttempts,
      };
    },
  };
}

/** Keeps old strict proposal fixtures available for downstream engine replay. */
export function createFixtureMealInterpreter(value: unknown): MealInterpreter {
  return {
    async interpret(input, image) {
      requireImage(input, image);
      return {
        proposal: parseAndValidateInterpretation(value, input),
        rawProposal: value,
        normalizations: [],
        providerAttempts: [],
      };
    },
  };
}

/** Replays both compact LLM outputs through the same deterministic adapter. */
export function createTwoPassFixtureMealInterpreter(
  firstPassValue: unknown,
  secondPassValue: unknown,
): MealInterpreter {
  return {
    async interpret(input, image) {
      requireImage(input, image);
      const firstPass = firstPassResponseSchema.parse(firstPassValue);
      const secondPass = firstPass.food_detected ? secondPassResponseSchema.parse(secondPassValue) : undefined;
      return {
        proposal: buildInterpretationProposal(firstPass, secondPass ?? {}, input),
        firstPass,
        ...(secondPass ? { secondPass } : {}),
        rawProposal: { firstPass, secondPass: secondPass ?? null },
        normalizations: [],
        providerAttempts: [],
      };
    },
  };
}

export { FIRST_PASS_RESPONSE_JSON_SCHEMA, SECOND_PASS_RESPONSE_JSON_SCHEMA };
