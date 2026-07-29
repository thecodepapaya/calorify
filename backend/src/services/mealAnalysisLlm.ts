import OpenAI from 'openai';
import config from '../config.js';
import { OPENAI_MEAL_ANALYSIS_MODEL } from '../openaiModels.js';
import { instrumentAiCall } from './metrics.js';

type CompletionRequest = OpenAI.Chat.Completions.ChatCompletionCreateParamsNonStreaming;
type CompletionResponse = OpenAI.Chat.Completions.ChatCompletion;

export interface MealAnalysisLlmClient {
  chat: {
    completions: {
      create(request: CompletionRequest): Promise<CompletionResponse>;
    };
  };
}

type ProviderAttempt = {
  provider: 'openrouter' | 'openai';
  model: string;
  client: OpenAI;
};

type JsonSchema = {
  type?: string;
  enum?: unknown[];
  anyOf?: JsonSchema[];
  required?: string[];
  properties?: Record<string, JsonSchema>;
  items?: JsonSchema;
};

function assertMatchesSchema(value: unknown, schema: JsonSchema, path = '$'): void {
  if (schema.anyOf) {
    const matches = schema.anyOf.some((candidate) => {
      try {
        assertMatchesSchema(value, candidate, path);
        return true;
      } catch {
        return false;
      }
    });
    if (!matches) throw new Error(`${path} does not match any allowed schema`);
    return;
  }

  if (schema.enum && !schema.enum.includes(value)) {
    throw new Error(`${path} is not an allowed value`);
  }

  if (schema.type === 'null') {
    if (value !== null) throw new Error(`${path} must be null`);
    return;
  }
  if (schema.type === 'object') {
    if (value === null || typeof value !== 'object' || Array.isArray(value)) {
      throw new Error(`${path} must be an object`);
    }
    const object = value as Record<string, unknown>;
    for (const key of schema.required ?? []) {
      if (!(key in object)) throw new Error(`${path}.${key} is required`);
    }
    for (const [key, childSchema] of Object.entries(schema.properties ?? {})) {
      if (key in object) assertMatchesSchema(object[key], childSchema, `${path}.${key}`);
    }
    return;
  }
  if (schema.type === 'array') {
    if (!Array.isArray(value)) throw new Error(`${path} must be an array`);
    if (schema.items) {
      value.forEach((item, index) => assertMatchesSchema(item, schema.items!, `${path}[${index}]`));
    }
    return;
  }
  if (schema.type === 'string' && typeof value !== 'string') {
    throw new Error(`${path} must be a string`);
  }
  if (schema.type === 'number' && (typeof value !== 'number' || !Number.isFinite(value))) {
    throw new Error(`${path} must be a finite number`);
  }
  if (schema.type === 'boolean' && typeof value !== 'boolean') {
    throw new Error(`${path} must be a boolean`);
  }
}

function validateStructuredContent(response: CompletionResponse, request: CompletionRequest): void {
  const content = response.choices[0]?.message?.content;
  if (!content) throw new Error('LLM returned an empty response');

  if (request.response_format?.type === 'json_schema' || request.response_format?.type === 'json_object') {
    try {
      const parsed: unknown = JSON.parse(content);
      if (request.response_format.type === 'json_schema') {
        assertMatchesSchema(
          parsed,
          request.response_format.json_schema.schema as JsonSchema,
        );
      }
    } catch {
      throw new Error('LLM returned invalid JSON for a structured response');
    }
  }
}

function describeError(error: unknown): string {
  if (error instanceof Error) return error.message;
  return String(error);
}

/**
 * OpenRouter-first client for meal analysis.
 *
 * Order is intentionally explicit so malformed structured output also fails
 * over, not only transport/rate-limit errors handled by OpenRouter itself:
 * configured OpenRouter model -> OpenRouter free router -> direct OpenAI.
 */
export function createMealAnalysisLlmClient(): MealAnalysisLlmClient {
  const attempts: ProviderAttempt[] = [];

  if (config.OPENROUTER_API_KEY) {
    const headers: Record<string, string> = { 'X-Title': config.APP_NAME };
    if (config.OPENROUTER_HTTP_REFERER) {
      headers['HTTP-Referer'] = config.OPENROUTER_HTTP_REFERER;
    }
    const openRouter = new OpenAI({
      apiKey: config.OPENROUTER_API_KEY,
      baseURL: config.OPENROUTER_BASE_URL,
      defaultHeaders: headers,
      timeout: 25_000,
      maxRetries: 0,
    });
    attempts.push(
      { provider: 'openrouter', model: config.OPENROUTER_MEAL_MODEL, client: openRouter },
      { provider: 'openrouter', model: config.OPENROUTER_FREE_MODEL, client: openRouter },
    );
  }

  if (config.OPENAI_API_KEY) {
    attempts.push({
      provider: 'openai',
      model: OPENAI_MEAL_ANALYSIS_MODEL,
      client: new OpenAI({
        apiKey: config.OPENAI_API_KEY,
        timeout: 30_000,
        maxRetries: 2,
      }),
    });
  }

  if (attempts.length === 0) {
    throw new Error('OPENROUTER_API_KEY or OPENAI_API_KEY is not set');
  }

  return {
    chat: {
      completions: {
        async create(request: CompletionRequest): Promise<CompletionResponse> {
          const errors: string[] = [];
          for (const attempt of attempts) {
            try {
              const response = await instrumentAiCall(attempt.provider, () =>
                attempt.client.chat.completions.create({
                  ...request,
                  model: attempt.model,
                  stream: false,
                })
              );
              validateStructuredContent(response, request);
              return response;
            } catch (error) {
              errors.push(`${attempt.provider}/${attempt.model}: ${describeError(error)}`);
              console.warn('[meal-analysis-llm] provider attempt failed', {
                provider: attempt.provider,
                model: attempt.model,
                error: describeError(error),
              });
            }
          }
          throw new Error(`All meal analysis LLM providers failed: ${errors.join(' | ')}`);
        },
      },
    },
  };
}
