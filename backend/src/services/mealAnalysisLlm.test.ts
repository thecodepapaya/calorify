import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';

const mockConfig = {
  APP_NAME: 'CalorifyTest',
  OPENROUTER_API_KEY: 'openrouter-test-key' as string | null,
  OPENROUTER_BASE_URL: 'https://openrouter.ai/api/v1',
  OPENROUTER_MEAL_MODEL: 'openai/gpt-4.1-nano',
  OPENROUTER_FREE_MODEL: 'openrouter/free',
  OPENROUTER_HTTP_REFERER: 'https://example.test' as string | null,
  OPENAI_API_KEY: 'openai-test-key' as string | null,
};

await mock.module('../config.js', { defaultExport: mockConfig });

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

const { createMealAnalysisLlmClient } = await import('./mealAnalysisLlm.js');
type MealAnalysisLlmAttempt = import('./mealAnalysisLlm.js').MealAnalysisLlmAttempt;

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
  assert.deepEqual(calls, [{ provider: 'openrouter', model: 'openai/gpt-4.1-nano' }]);
});

test('uses OpenRouter free router when the primary model fails', async () => {
  reset();
  implementation = async (_provider, model) => {
    if (model === 'openai/gpt-4.1-nano') throw new Error('quota exhausted');
    return validResponse;
  };
  await createMealAnalysisLlmClient().chat.completions.create(request);
  assert.deepEqual(calls.map((call) => call.model), ['openai/gpt-4.1-nano', 'openrouter/free']);
});

test('reports every provider attempt with its operation and outcome', async () => {
  reset();
  implementation = async (_provider, model) => {
    if (model === 'openai/gpt-4.1-nano') throw new Error('quota exhausted');
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
        model: 'openai/gpt-4.1-nano',
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
    { provider: 'openrouter', model: 'openai/gpt-4.1-nano' },
    { provider: 'openrouter', model: 'openrouter/free' },
    { provider: 'openai', model: 'gpt-4.1-nano' },
  ]);
});

test('fails over when a provider returns malformed structured output', async () => {
  reset();
  implementation = async (_provider, model) => model === 'openai/gpt-4.1-nano'
    ? { ...validResponse, choices: [{ ...validResponse.choices[0], message: { role: 'assistant', content: 'not json' } }] }
    : validResponse;
  await createMealAnalysisLlmClient().chat.completions.create(request);
  assert.deepEqual(calls.map((call) => call.model), ['openai/gpt-4.1-nano', 'openrouter/free']);
});

test('fails over when JSON does not match the requested schema', async () => {
  reset();
  implementation = async (_provider, model) => model === 'openai/gpt-4.1-nano'
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
  assert.deepEqual(calls.map((call) => call.model), ['openai/gpt-4.1-nano', 'openrouter/free']);
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
