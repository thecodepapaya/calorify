import OpenAI from 'openai';
import config from '../../config.js';
import { OPENAI_MEAL_ANALYSIS_MODEL } from '../../openaiModels.js';
import { safeErrorKind } from '../../utils/safeError.js';
import { instrumentAiCall } from '../infrastructure/metrics.js';

type CompletionRequest = OpenAI.Chat.Completions.ChatCompletionCreateParamsNonStreaming;
type CompletionResponse = OpenAI.Chat.Completions.ChatCompletion;

export interface MealAnalysisLlmClient {
  chat: {
    completions: {
      create(request: CompletionRequest, context?: MealAnalysisLlmCallContext): Promise<CompletionResponse>;
    };
  };
}

export interface MealAnalysisLlmCallContext {
  operation?: string;
  /**
   * Runs inside each provider attempt, before the attempt is considered
   * successful. V3 uses this for complete Zod and semantic validation so a
   * structurally valid but unusable response advances provider failover.
   */
  validateStructuredContent?: (value: unknown) => void;
}

export interface MealAnalysisLlmAttempt {
  operation?: string;
  provider: 'openrouter' | 'openai';
  model: string;
  outcome: 'success' | 'error';
  durationMs: number;
  errorKind?: string;
}

export interface MealAnalysisLlmClientOptions {
  onAttempt?: (attempt: MealAnalysisLlmAttempt) => void;
  /** Optional primary OpenRouter model for a workflow with a different complexity budget. */
  openRouterModel?: string;
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

class MealAnalysisLlmResponseError extends Error {
  readonly errorKind: 'empty_response' | 'invalid_structured_response';
  readonly debugDetail?: Readonly<Record<string, unknown>>;

  constructor(
    errorKind: 'empty_response' | 'invalid_structured_response',
    debugDetail?: Readonly<Record<string, unknown>>,
  ) {
    super(errorKind === 'empty_response'
      ? 'LLM returned an empty response'
      : 'LLM returned an invalid structured response');
    this.name = 'MealAnalysisLlmResponseError';
    this.errorKind = errorKind;
    this.debugDetail = debugDetail;
  }
}

function validateStructuredContent(
  response: CompletionResponse,
  request: CompletionRequest
): unknown {
  const responseValue = response as unknown;
  if (
    responseValue === null
    || typeof responseValue !== 'object'
    || !Array.isArray((responseValue as { choices?: unknown }).choices)
  ) {
    const responseRecord = responseValue !== null && typeof responseValue === 'object'
      ? responseValue as Record<string, unknown>
      : undefined;
    throw new MealAnalysisLlmResponseError('invalid_structured_response', {
      responseType: responseValue === null ? 'null' : typeof responseValue,
      responseKeys: responseRecord ? Object.keys(responseRecord).slice(0, 20) : [],
      object: typeof responseRecord?.object === 'string' ? responseRecord.object : undefined,
      model: typeof responseRecord?.model === 'string' ? responseRecord.model : undefined,
      hasError: responseRecord?.error !== undefined,
    });
  }

  const content = response.choices[0]?.message?.content;
  if (!content) throw new MealAnalysisLlmResponseError('empty_response');

  if (request.response_format?.type === 'json_schema' || request.response_format?.type === 'json_object') {
    try {
      const parsed: unknown = JSON.parse(content);
      if (request.response_format.type === 'json_schema') {
        assertMatchesSchema(
          parsed,
          request.response_format.json_schema.schema as JsonSchema,
        );
      }
      return parsed;
    } catch {
      throw new MealAnalysisLlmResponseError('invalid_structured_response');
    }
  }
  return content;
}

function describeErrorKind(error: unknown): string {
  if (error instanceof MealAnalysisLlmResponseError) return error.errorKind;
  return safeErrorKind(error, 'provider_error');
}

function logDebugError(error: unknown): void {
  if (!config.DEBUG) return;

  if (error instanceof MealAnalysisLlmResponseError) {
    console.error('[meal-analysis-llm] response error detail', {
      name: error.name,
      message: error.message,
      errorKind: error.errorKind,
      ...error.debugDetail,
    });
    return;
  }

  if (typeof OpenAI.APIError === 'function' && error instanceof OpenAI.APIError) {
    console.error('[meal-analysis-llm] API error detail', {
      name: error.name,
      message: error.message,
      status: error.status,
      code: error.code,
      type: error.type,
      requestId: error.request_id,
    });
    return;
  }

  // Native programming errors are useful during local CLI development and do
  // not contain provider request/response objects. Avoid logging arbitrary SDK
  // errors here: they may carry headers, signed URLs, or meal input data.
  if (error instanceof TypeError || error instanceof SyntaxError || error instanceof RangeError) {
    console.error('[meal-analysis-llm] error detail', {
      name: error.name,
      message: error.message,
      stack: error.stack,
    });
  }
}

/**
 * OpenRouter-first client for meal analysis.
 *
 * Order is intentionally explicit so malformed structured output also fails
 * over, not only transport/rate-limit errors handled by OpenRouter itself:
 * configured OpenRouter model -> OpenRouter free router -> direct OpenAI.
 */
export function createMealAnalysisLlmClient(
  options: MealAnalysisLlmClientOptions = {}
): MealAnalysisLlmClient {
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
      {
        provider: 'openrouter',
        model: options.openRouterModel ?? config.OPENROUTER_MEAL_MODEL,
        client: openRouter,
      },
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
        async create(
          request: CompletionRequest,
          context: MealAnalysisLlmCallContext = {}
        ): Promise<CompletionResponse> {
          for (const attempt of attempts) {
            const startedAt = Date.now();
            try {
              const response = await instrumentAiCall(attempt.provider, () =>
                attempt.client.chat.completions.create({
                  ...request,
                  model: attempt.model,
                  stream: false,
                })
              );
              const structuredContent = validateStructuredContent(response, request);
              try {
                context.validateStructuredContent?.(structuredContent);
              } catch {
                throw new MealAnalysisLlmResponseError('invalid_structured_response');
              }
              options.onAttempt?.({
                operation: context.operation,
                provider: attempt.provider,
                model: attempt.model,
                outcome: 'success',
                durationMs: Date.now() - startedAt,
              });
              return response;
            } catch (error) {
              const errorKind = describeErrorKind(error);
              options.onAttempt?.({
                operation: context.operation,
                provider: attempt.provider,
                model: attempt.model,
                outcome: 'error',
                durationMs: Date.now() - startedAt,
                errorKind,
              });
              console.warn('[meal-analysis-llm] provider attempt failed', {
                provider: attempt.provider,
                model: attempt.model,
                operation: context.operation,
                errorKind,
              });
              logDebugError(error);
            }
          }
          throw new Error('All meal analysis LLM providers failed');
        },
      },
    },
  };
}
