import OpenAI from 'openai';
import config from '../../config.js';
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
   * structurally valid but unusable response fails the call.
   */
  validateStructuredContent?: (value: unknown) => void;
}

export interface MealAnalysisLlmAttempt {
  operation?: string;
  provider: 'openrouter';
  model: string;
  outcome: 'success' | 'error';
  durationMs: number;
  errorKind?: string;
}

export interface MealAnalysisLlmClientOptions {
  onAttempt?: (attempt: MealAnalysisLlmAttempt) => void;
  /** Optional primary OpenRouter model for a workflow with a different complexity budget. */
  openRouterModel?: string;
  /** Local CLI diagnostic sink. Never enable this for production requests. */
  writeProviderTrace?: (entry: unknown) => void | Promise<void>;
}

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

export class MealAnalysisLlmResponseError extends Error {
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

export class MealAnalysisLlmProviderError extends Error {
  constructor(
    readonly errorKind: string,
    override readonly cause: unknown,
  ) {
    super('Meal analysis LLM provider failed', { cause });
    this.name = 'MealAnalysisLlmProviderError';
  }
}

function completionDebugDetail(response: CompletionResponse): Readonly<Record<string, unknown>> {
  const choice = response.choices[0];
  const message = choice?.message as (typeof choice.message & {
    refusal?: unknown;
    reasoning?: unknown;
  }) | undefined;
  return {
    choiceCount: response.choices.length,
    finishReason: choice?.finish_reason,
    hasRefusal: typeof message?.refusal === 'string' && message.refusal.length > 0,
    reasoningLength: typeof message?.reasoning === 'string' ? message.reasoning.length : undefined,
  };
}

function modelOutputForTrace(response: CompletionResponse): unknown {
  const responseValue = response as unknown;
  const choices = responseValue !== null && typeof responseValue === 'object'
    ? (responseValue as { choices?: unknown }).choices
    : undefined;
  const content = Array.isArray(choices)
    ? (choices[0] as { message?: { content?: unknown } } | undefined)?.message?.content
    : undefined;
  if (typeof content !== 'string') return content ?? null;
  try {
    return JSON.parse(content) as unknown;
  } catch {
    return content;
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
  if (!content) {
    throw new MealAnalysisLlmResponseError('empty_response', completionDebugDetail(response));
  }

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
    } catch (error) {
      throw new MealAnalysisLlmResponseError('invalid_structured_response', {
        ...completionDebugDetail(response),
        contentLength: content.length,
        validationError: error instanceof Error ? error.message : 'unknown validation error',
      });
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
      requestId: error.requestID,
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

function observableProviderError(error: unknown): unknown {
  if (!(error instanceof Error)) return error;
  const providerError = error as Error & {
    status?: unknown;
    code?: unknown;
    type?: unknown;
    error?: unknown;
    request_id?: unknown;
    debugDetail?: unknown;
  };
  return {
    name: providerError.name,
    message: providerError.message,
    status: providerError.status,
    code: providerError.code,
    type: providerError.type,
    requestId: providerError.request_id,
    providerBody: providerError.error,
    debugDetail: providerError.debugDetail,
    stack: providerError.stack,
  };
}

/**
 * OpenRouter-only client for meal analysis.
 */
export function createMealAnalysisLlmClient(
  options: MealAnalysisLlmClientOptions = {}
): MealAnalysisLlmClient {
  if (!config.OPENROUTER_API_KEY) {
    throw new MealAnalysisLlmProviderError(
      'configuration_missing',
      new Error('OPENROUTER_API_KEY is not set'),
    );
  }
  const provider = 'openrouter' as const;
  const model = options.openRouterModel ?? config.OPENROUTER_MEAL_MODEL;
  const headers: Record<string, string> = { 'X-Title': config.APP_NAME };
  if (config.OPENROUTER_HTTP_REFERER) {
    headers['HTTP-Referer'] = config.OPENROUTER_HTTP_REFERER;
  }
  const client = new OpenAI({
    apiKey: config.OPENROUTER_API_KEY,
    baseURL: config.OPENROUTER_BASE_URL,
    defaultHeaders: headers,
    timeout: 25_000,
    maxRetries: 0,
  });

  return {
    chat: {
      completions: {
        async create(
          request: CompletionRequest,
          context: MealAnalysisLlmCallContext = {}
        ): Promise<CompletionResponse> {
          const startedAt = Date.now();
          try {
            const response = await instrumentAiCall(provider, () =>
              client.chat.completions.create({
                ...request,
                provider: { require_parameters: true },
                model,
                stream: false,
              } as CompletionRequest)
            );
            if (options.writeProviderTrace) {
              await options.writeProviderTrace({
                event: 'provider_response',
                provider,
                model,
                operation: context.operation,
                response,
              });
              await options.writeProviderTrace({
                event: 'model_output',
                provider,
                model,
                operation: context.operation,
                output: modelOutputForTrace(response),
              });
            }
            const structuredContent = validateStructuredContent(response, request);
            try {
              context.validateStructuredContent?.(structuredContent);
            } catch (error) {
              throw new MealAnalysisLlmResponseError('invalid_structured_response', {
                ...completionDebugDetail(response),
                validationError: error instanceof Error ? error.message : 'unknown semantic validation error',
              });
            }
            options.onAttempt?.({
              operation: context.operation,
              provider,
              model,
              outcome: 'success',
              durationMs: Date.now() - startedAt,
            });
            return response;
          } catch (error) {
            if (options.writeProviderTrace) {
              await options.writeProviderTrace({
                event: 'provider_error',
                provider,
                model,
                operation: context.operation,
                error: observableProviderError(error),
              });
            }
            const errorKind = describeErrorKind(error);
            options.onAttempt?.({
              operation: context.operation,
              provider,
              model,
              outcome: 'error',
              durationMs: Date.now() - startedAt,
              errorKind,
            });
            if (!options.writeProviderTrace) {
              console.warn('[meal-analysis-llm] provider attempt failed', {
                provider,
                model,
                operation: context.operation,
                errorKind,
              });
              logDebugError(error);
            }
            throw new MealAnalysisLlmProviderError(errorKind, error);
          }
        },
      },
    },
  };
}
