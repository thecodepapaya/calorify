import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';

const mockConfig = {
  APP_NAME: 'CalorifyTest',
  DEBUG: true,
  OPENROUTER_API_KEY: 'openrouter-test-key' as string | null,
  OPENROUTER_BASE_URL: 'https://openrouter.ai/api/v1',
  OPENROUTER_MEAL_MODEL: 'openai/gpt-5-nano',
  OPENROUTER_FREE_MODEL: 'openrouter/free',
  OPENROUTER_HTTP_REFERER: 'https://example.test' as string | null,
  OPENAI_API_KEY: 'openai-test-key' as string | null,
};

await mock.module('../../../src/config.js', { defaultExport: mockConfig });

type Provider = 'openrouter' | 'openai';
type Call = { provider: Provider; model: string };
const calls: Call[] = [];
let implementation: (provider: Provider, model: string) => Promise<unknown>;

await mock.module('openai', {
  defaultExport: class MockOpenAI {
    chat: { completions: { create: (request: { model: string }) => Promise<unknown> } };

    constructor(options: { baseURL?: string }) {
      const provider: Provider = options.baseURL ? 'openrouter' : 'openai';
      this.chat = {
        completions: {
          create: async (request) => {
            calls.push({ provider, model: request.model });
            return implementation(provider, request.model);
          },
        },
      };
    }
  },
});

const { createMealAnalysisLlmClient } = await import('../../../src/services/meal-analysis/llm.js');
type MealAnalysisLlmAttempt = import('../../../src/services/meal-analysis/llm.js').MealAnalysisLlmAttempt;

const validResponse = {
  id: 'completion-test',
  created: 0,
  model: 'test',
  object: 'chat.completion',
  choices: [{ index: 0, finish_reason: 'stop', logprobs: null, message: { role: 'assistant', content: '{"ok":true}', refusal: null } }],
};

function reset(): void {
  calls.length = 0;
  implementation = async () => validResponse;
}

const request = {
  model: 'ignored-by-router',
  messages: [{ role: 'user' as const, content: 'test' }],
  response_format: { type: 'json_object' as const },
};

test('uses the configured OpenRouter model first', async () => {
  reset();
  await createMealAnalysisLlmClient().chat.completions.create(request);
  assert.deepEqual(calls, [{ provider: 'openrouter', model: 'openai/gpt-5-nano' }]);
});

test('uses OpenRouter free router when the primary model fails', async () => {
  reset();
  implementation = async (_provider, model) => {
    if (model === 'openai/gpt-5-nano') throw new Error('quota exhausted');
    return validResponse;
  };
  await createMealAnalysisLlmClient().chat.completions.create(request);
  assert.deepEqual(calls.map((call) => call.model), ['openai/gpt-5-nano', 'openrouter/free']);
});

test('reports every provider attempt with its operation and outcome', async () => {
  reset();
  implementation = async (_provider, model) => {
    if (model === 'openai/gpt-5-nano') throw new Error('quota exhausted');
    return validResponse;
  };
  const attempts: MealAnalysisLlmAttempt[] = [];
  await createMealAnalysisLlmClient({ onAttempt: (attempt) => attempts.push(attempt) })
    .chat.completions.create(request, { operation: 'decompose_text' });
  assert.deepEqual(
    attempts.map(({ operation, provider, model, outcome, errorKind }) => ({
      operation,
      provider,
      model,
      outcome,
      errorKind,
    })),
    [
      {
        operation: 'decompose_text',
        provider: 'openrouter',
        model: 'openai/gpt-5-nano',
        outcome: 'error',
        errorKind: 'provider_error',
      },
      {
        operation: 'decompose_text',
        provider: 'openrouter',
        model: 'openrouter/free',
        outcome: 'success',
        errorKind: undefined,
      },
    ]
  );
  assert.ok(attempts.every((attempt) => attempt.durationMs >= 0));
});

test('falls back to direct OpenAI when both OpenRouter attempts fail', async () => {
  reset();
  implementation = async (provider) => {
    if (provider === 'openrouter') throw new Error('OpenRouter unavailable');
    return validResponse;
  };
  await createMealAnalysisLlmClient().chat.completions.create(request);
  assert.deepEqual(calls, [
    { provider: 'openrouter', model: 'openai/gpt-5-nano' },
    { provider: 'openrouter', model: 'openrouter/free' },
    { provider: 'openai', model: 'gpt-5-nano' },
  ]);
});

test('fails over when a provider returns malformed structured output', async () => {
  reset();
  implementation = async (_provider, model) => model === 'openai/gpt-5-nano'
    ? { ...validResponse, choices: [{ ...validResponse.choices[0], message: { role: 'assistant', content: 'not json' } }] }
    : validResponse;
  await createMealAnalysisLlmClient().chat.completions.create(request);
  assert.deepEqual(calls.map((call) => call.model), ['openai/gpt-5-nano', 'openrouter/free']);
});

test('fails over when JSON does not match the requested schema', async () => {
  reset();
  implementation = async (_provider, model) => model === 'openai/gpt-5-nano'
    ? { ...validResponse, choices: [{ ...validResponse.choices[0], message: { role: 'assistant', content: '{}' } }] }
    : validResponse;
  await createMealAnalysisLlmClient().chat.completions.create({
    ...request,
    response_format: {
      type: 'json_schema',
      json_schema: {
        name: 'required_ok',
        strict: true,
        schema: {
          type: 'object',
          properties: { ok: { type: 'boolean' } },
          required: ['ok'],
          additionalProperties: false,
        },
      },
    },
  });
  assert.deepEqual(calls.map((call) => call.model), ['openai/gpt-5-nano', 'openrouter/free']);
});

test('runs complete semantic validation inside each provider attempt', async () => {
  reset();
  implementation = async (_provider, model) => model === 'openai/gpt-5-nano'
    ? validResponse
    : { ...validResponse, choices: [{ ...validResponse.choices[0], message: { role: 'assistant', content: '{"ok":false}' } }] };

  await createMealAnalysisLlmClient().chat.completions.create(
    request,
    {
      operation: 'interpret_v3',
      validateStructuredContent(value) {
        if ((value as { ok?: boolean }).ok !== false) {
          throw new Error('semantic validation failed');
        }
      },
    }
  );

  assert.deepEqual(calls.map((call) => call.model), ['openai/gpt-5-nano', 'openrouter/free']);
});

test('provider failures expose only bounded error kinds', async (t) => {
  reset();
  const secret = 'SIGNED_URL_AND_MEAL_PROMPT_SECRET';
  implementation = async () => {
    const error = new Error(`provider echoed ${secret}`) as Error & { code: string };
    error.code = 'toString';
    throw error;
  };
  const attempts: MealAnalysisLlmAttempt[] = [];
  const warnings: unknown[][] = [];
  t.mock.method(console, 'warn', (...values: unknown[]) => {
    warnings.push(values);
  });

  await assert.rejects(
    () => createMealAnalysisLlmClient({ onAttempt: (attempt) => attempts.push(attempt) })
      .chat.completions.create(request, { operation: 'decompose_text' }),
    (error: Error) => {
      assert.equal(error.message, 'All meal analysis LLM providers failed');
      assert.doesNotMatch(error.message, new RegExp(secret));
      return true;
    }
  );

  assert.equal(attempts.length, 3);
  assert.ok(attempts.every((attempt) => attempt.errorKind === 'provider_error'));
  assert.doesNotMatch(JSON.stringify({ attempts, warnings }), new RegExp(secret));
});

test('prints native programming error details in debug mode', async (t) => {
  reset();
  implementation = async (_provider, model) => {
    if (model === 'openai/gpt-5-nano') throw new TypeError('invalid local request shape');
    return validResponse;
  };
  const errors: unknown[][] = [];
  t.mock.method(console, 'error', (...values: unknown[]) => {
    errors.push(values);
  });

  await createMealAnalysisLlmClient().chat.completions.create(request);

  assert.match(JSON.stringify(errors), /TypeError/);
  assert.match(JSON.stringify(errors), /invalid local request shape/);
});

test('handles a provider response without choices and prints its safe shape', async (t) => {
  reset();
  implementation = async (_provider, model) => model === 'openai/gpt-5-nano'
    ? { error: { message: 'do not log this provider body' }, provider: 'OpenAI' }
    : validResponse;
  const errors: unknown[][] = [];
  t.mock.method(console, 'error', (...values: unknown[]) => {
    errors.push(values);
  });

  await createMealAnalysisLlmClient().chat.completions.create(request);

  const output = JSON.stringify(errors);
  assert.match(output, /invalid_structured_response/);
  assert.match(output, /responseKeys/);
  assert.match(output, /hasError/);
  assert.doesNotMatch(output, /do not log this provider body/);
});
