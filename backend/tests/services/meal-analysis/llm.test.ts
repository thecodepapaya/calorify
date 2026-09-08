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
  LLM_PROVIDER: 'openrouter' as 'openrouter' | 'openai',
  OPENAI_API_KEY: 'openai-test-key' as string | null,
  OPENAI_BASE_URL: 'https://api.openai.com/v1',
};

await mock.module('../../../src/config.js', { defaultExport: mockConfig });

type Call = { model: string; requireParameters: boolean };
const calls: Call[] = [];
const constructorOptions: Array<{ apiKey?: string; baseURL?: string }> = [];
let implementation: (model: string) => Promise<unknown>;

await mock.module('openai', {
  defaultExport: class MockOpenAI {
    chat: {
      completions: {
        create: (request: {
          model: string;
          provider?: { require_parameters?: boolean };
        }) => Promise<unknown>
      }
    };

    constructor(options: { apiKey?: string; baseURL?: string }) {
      constructorOptions.push(options);
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
  await createMealAnalysisLlmClient({ model: 'openai/test-model' })
    .chat.completions.create(request);
  assert.equal(calls[0]?.model, 'openai/test-model');
});

test('routes directly to OpenAI when LLM_PROVIDER=openai', async () => {
  reset();
  mockConfig.LLM_PROVIDER = 'openai';
  try {
    const attempts: MealAnalysisLlmAttempt[] = [];
    await createMealAnalysisLlmClient({ onAttempt: (attempt) => attempts.push(attempt) })
      .chat.completions.create(request, { operation: 'decompose_text' });
    assert.deepEqual(calls, [{ model: 'gpt-5.6-luna', requireParameters: false }]);
    const options = constructorOptions.at(-1);
    assert.equal(options?.apiKey, 'openai-test-key');
    assert.equal(options?.baseURL, 'https://api.openai.com/v1');
    assert.equal(attempts[0]?.provider, 'openai');
    assert.equal(attempts[0]?.model, 'gpt-5.6-luna');
  } finally {
    mockConfig.LLM_PROVIDER = 'openrouter';
  }
});

test('rejects a non-OpenAI model on the direct OpenAI path', async () => {
  reset();
  mockConfig.LLM_PROVIDER = 'openai';
  try {
    await assert.rejects(
      async () => createMealAnalysisLlmClient({ model: 'anthropic/claude' }).chat.completions.create(request),
      (error: Error & { errorKind?: string; cause?: Error }) => {
        assert.equal(error.errorKind, 'configuration_missing');
        assert.match(error.cause?.message ?? '', /cannot serve model/);
        return true;
      }
    );
  } finally {
    mockConfig.LLM_PROVIDER = 'openrouter';
  }
});

test('requires an OpenAI key on the direct path', async () => {
  reset();
  mockConfig.LLM_PROVIDER = 'openai';
  const key = mockConfig.OPENAI_API_KEY;
  mockConfig.OPENAI_API_KEY = null;
  try {
    await assert.rejects(
      async () => createMealAnalysisLlmClient().chat.completions.create(request),
      (error: Error & { errorKind?: string; cause?: Error }) => {
        assert.equal(error.errorKind, 'configuration_missing');
        assert.match(error.cause?.message ?? '', /OPENAI_API_KEY is not set/);
        return true;
      }
    );
  } finally {
    mockConfig.LLM_PROVIDER = 'openrouter';
    mockConfig.OPENAI_API_KEY = key;
  }
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

test('traces a provider response without choices without masking its validation error', async () => {
  reset();
  implementation = async () => ({ error: { message: 'provider error' } });
  const entries: unknown[] = [];

  await assert.rejects(
    createMealAnalysisLlmClient({ writeProviderTrace: (entry) => entries.push(entry) })
      .chat.completions.create(request),
    /Meal analysis LLM provider failed/
  );

  const error = entries.find((entry) => (entry as { event?: string }).event === 'provider_error') as {
    error?: { name?: string };
  } | undefined;
  assert.equal(error?.error?.name, 'MealAnalysisLlmResponseError');
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
