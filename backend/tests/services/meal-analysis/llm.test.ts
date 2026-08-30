import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';

const mockConfig = {
  APP_NAME: 'CalorifyTest',
  DEBUG: true,
  OPENROUTER_API_KEY: 'openrouter-test-key' as string | null,
  OPENROUTER_BASE_URL: 'https://openrouter.ai/api/v1',
  OPENROUTER_MEAL_MODEL: 'openai/gpt-5.6-luna',
  OPENROUTER_HTTP_REFERER: 'https://example.test' as string | null,
};

await mock.module('../../../src/config.js', { defaultExport: mockConfig });

type Call = { model: string; requireParameters: boolean };
const calls: Call[] = [];
let implementation: (model: string) => Promise<unknown>;

await mock.module('openai', {
  defaultExport: class MockOpenAI {
    chat: { completions: { create: (request: {
      model: string;
      provider?: { require_parameters?: boolean };
    }) => Promise<unknown> } };

    constructor() {
      this.chat = {
        completions: {
          create: async (request) => {
            calls.push({
              model: request.model,
              requireParameters: request.provider?.require_parameters === true,
            });
            return implementation(request.model);
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

test('uses the configured OpenRouter model with required parameters', async () => {
  reset();
  await createMealAnalysisLlmClient().chat.completions.create(request);
  assert.deepEqual(calls, [{ model: 'openai/gpt-5.6-luna', requireParameters: true }]);
});

test('uses an explicit OpenRouter model override', async () => {
  reset();
  await createMealAnalysisLlmClient({ openRouterModel: 'openai/test-model' })
    .chat.completions.create(request);
  assert.equal(calls[0]?.model, 'openai/test-model');
});

test('does not retry or fall back when OpenRouter fails', async () => {
  reset();
  implementation = async () => { throw new Error('selected model failed'); };
  await assert.rejects(
    createMealAnalysisLlmClient().chat.completions.create(request),
    /Meal analysis LLM provider failed/
  );
  assert.equal(calls.length, 1);
});

test('reports the single provider attempt with operation and outcome', async () => {
  reset();
  implementation = async () => { throw new Error('quota exhausted'); };
  const attempts: MealAnalysisLlmAttempt[] = [];
  await assert.rejects(
    createMealAnalysisLlmClient({ onAttempt: (attempt) => attempts.push(attempt) })
      .chat.completions.create(request, { operation: 'decompose_text' })
  );
  assert.deepEqual(
    attempts.map(({ operation, provider, model, outcome, errorKind }) => ({
      operation, provider, model, outcome, errorKind,
    })),
    [{
      operation: 'decompose_text',
      provider: 'openrouter',
      model: 'openai/gpt-5.6-luna',
      outcome: 'error',
      errorKind: 'provider_error',
    }]
  );
  assert.ok(attempts[0]!.durationMs >= 0);
});

test('fails when the provider returns malformed structured output', async () => {
  reset();
  implementation = async () => ({
    ...validResponse,
    choices: [{ ...validResponse.choices[0], message: { role: 'assistant', content: 'not json' } }],
  });
  await assert.rejects(createMealAnalysisLlmClient().chat.completions.create(request));
  assert.equal(calls.length, 1);
});

test('fails when JSON does not match the requested schema', async () => {
  reset();
  implementation = async () => ({
    ...validResponse,
    choices: [{ ...validResponse.choices[0], message: { role: 'assistant', content: '{}' } }],
  });
  await assert.rejects(createMealAnalysisLlmClient().chat.completions.create({
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
  }));
  assert.equal(calls.length, 1);
});

test('runs complete semantic validation inside the provider attempt', async () => {
  reset();
  await assert.rejects(createMealAnalysisLlmClient().chat.completions.create(
    request,
    {
      operation: 'interpret_v3',
      validateStructuredContent() {
        throw new Error('semantic validation failed');
      },
    }
  ));
  assert.equal(calls.length, 1);
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
  t.mock.method(console, 'warn', (...values: unknown[]) => warnings.push(values));

  await assert.rejects(
    () => createMealAnalysisLlmClient({ onAttempt: (attempt) => attempts.push(attempt) })
      .chat.completions.create(request, { operation: 'decompose_text' }),
    (error: Error) => {
      assert.equal(error.message, 'Meal analysis LLM provider failed');
      assert.doesNotMatch(error.message, new RegExp(secret));
      return true;
    }
  );
  assert.equal(attempts.length, 1);
  assert.equal(attempts[0]?.errorKind, 'provider_error');
  assert.doesNotMatch(JSON.stringify({ attempts, warnings }), new RegExp(secret));
});

test('prints native programming error details in debug mode', async (t) => {
  reset();
  implementation = async () => { throw new TypeError('invalid local request shape'); };
  const errors: unknown[][] = [];
  t.mock.method(console, 'error', (...values: unknown[]) => errors.push(values));

  await assert.rejects(createMealAnalysisLlmClient().chat.completions.create(request));
  assert.match(JSON.stringify(errors), /TypeError/);
  assert.match(JSON.stringify(errors), /invalid local request shape/);
});

test('handles a provider response without choices and prints its safe shape', async (t) => {
  reset();
  implementation = async () => ({
    error: { message: 'do not log this provider body' },
    provider: 'OpenAI',
  });
  const errors: unknown[][] = [];
  t.mock.method(console, 'error', (...values: unknown[]) => errors.push(values));

  await assert.rejects(createMealAnalysisLlmClient().chat.completions.create(request));
  const output = JSON.stringify(errors);
  assert.match(output, /invalid_structured_response/);
  assert.match(output, /responseKeys/);
  assert.match(output, /hasError/);
  assert.doesNotMatch(output, /do not log this provider body/);
});

test('CLI diagnostics write complete success and error artifacts', async () => {
  reset();
  const entries: unknown[] = [];
  const client = createMealAnalysisLlmClient({ writeProviderTrace: (entry) => entries.push(entry) });

  await client.chat.completions.create(request, { operation: 'interpret_v3_components_text' });
  implementation = async () => { throw new Error('diagnostic failure'); };
  await assert.rejects(client.chat.completions.create(request, {
    operation: 'interpret_v3_ingredients_text',
  }));

  const output = JSON.stringify(entries);
  assert.match(output, /provider_response/);
  assert.match(output, /model_output/);
  assert.match(output, /provider_error/);
  assert.match(output, /diagnostic failure/);
});
