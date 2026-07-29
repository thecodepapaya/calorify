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
