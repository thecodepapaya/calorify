import assert from 'node:assert/strict';
import test, { mock } from 'node:test';

interface Row {
  id: string;
  status: 'processing' | 'completed' | 'failed';
  summary: string | null;
  generated_at: Date | null;
  locale: string;
  stats_snapshot: unknown;
  attempt_count: number;
  processing_started_at: Date | null;
  requested_at: Date | null;
}

let row: Row | undefined;
let providerCalls = 0;
let providerReplies: Array<{ summary: string; gate?: Promise<void> }> = [];
let lastInsertParams: unknown[] | undefined;
let lastCreateRequest: Record<string, unknown> | undefined;

const client = {
  async query(sql: string, params?: unknown[]) {
    if (sql.startsWith('INSERT INTO ai_summaries')) {
      lastInsertParams = params;
      if (row) return { rows: [], rowCount: 0 };
      row = {
        id: 'summary-1', status: 'processing', summary: null, generated_at: null,
        locale: String(params?.[5]), stats_snapshot: null, attempt_count: 1,
        processing_started_at: params?.[3] as Date, requested_at: params?.[3] as Date,
      };
      return { rows: [{ id: row.id }], rowCount: 1 };
    }
    if (sql.includes('FROM ai_summaries')) {
      return { rows: row ? [{ ...row }] : [], rowCount: row ? 1 : 0 };
    }
    if (sql.startsWith('UPDATE ai_summaries')) {
      row!.status = 'processing';
      row!.attempt_count++;
      row!.requested_at = params?.[2] as Date;
      row!.processing_started_at = params?.[2] as Date;
    }
    return { rows: [], rowCount: 0 };
  },
  release() {},
};

const mockConfig = {
  APP_NAME: 'test', OPENROUTER_API_KEY: 'key', OPENROUTER_BASE_URL: 'https://example.test',
  OPENROUTER_AI_SUMMARY_MODEL: 'openai/test-model', OPENROUTER_HTTP_REFERER: null,
  LLM_PROVIDER: 'openrouter' as 'openrouter' | 'openai',
  OPENAI_API_KEY: 'openai-key' as string | null,
  OPENAI_BASE_URL: 'https://api.openai.test/v1',
};
await mock.module('../../../src/config.js', { defaultExport: mockConfig });
await mock.module('../../../src/services/infrastructure/database.js', {
  namedExports: {
    getClient: async () => client,
    query: async (_sql: string, params?: unknown[]) => {
      const expectedAttempt = params?.[_sql.includes("status='completed'") ? 5 : 2];
      if (row!.status !== 'processing' || row!.attempt_count !== expectedAttempt) {
        return { rows: [], rowCount: 0 };
      }
      if (_sql.includes("status='completed'")) {
        row!.status = 'completed';
        row!.summary = String(params?.[1]);
        row!.generated_at = params?.[2] as Date;
        row!.stats_snapshot = params?.[3];
      } else {
        row!.status = 'failed';
        row!.processing_started_at = null;
      }
      return { rows: [], rowCount: 1 };
    },
  },
});
await mock.module('../../../src/services/infrastructure/metrics.js', { namedExports: { instrumentAiCall: async (_provider: string, fn: () => Promise<unknown>) => fn() } });
await mock.module('../../../src/services/infrastructure/openaiClient.js', {
  defaultExport: class {
    chat = { completions: { create: async (createRequest: Record<string, unknown>) => {
      lastCreateRequest = createRequest;
      providerCalls++;
      const reply = providerReplies.shift() ?? { summary: 'Keep logging balanced meals.' };
      await reply.gate;
      return { id: `provider-${providerCalls}`, choices: [{ message: { content: JSON.stringify({ summary: reply.summary }) } }] };
    } } };
  },
});

const { AiSummaryRequestError, generateAiSummary } = await import('../../../src/services/summaries/service.js');

const snapshot = {
  summaryLocalDate: '2026-08-25', timezone: 'Asia/Kolkata', locale: 'en',
  meals: [
    { loggedAt: '2026-08-24T08:00:00+05:30', name: 'Dal', mealType: 'LUNCH', calories: 400, protein: 20, carbs: 50, fat: 10, fiber: 8 },
    { loggedAt: '2026-08-24T13:00:00+05:30', name: 'Rice', mealType: 'LUNCH', calories: 500, protein: 10, carbs: 80, fat: 8, fiber: 4 },
  ],
  context: {},
};
const now = new Date('2026-08-25T06:00:00Z');

test('completed daily rows replay without a second provider call', async () => {
  row = undefined;
  providerCalls = 0;
  providerReplies = [];
  const first = await generateAiSummary('uid-1', snapshot, now);
  const replay = await generateAiSummary('uid-1', snapshot, now);
  assert.equal(first.response.summary, 'Keep logging balanced meals.');
  assert.deepEqual(replay.response, first.response);
  assert.equal(providerCalls, 1);
});

test('records the direct OpenAI provider and model when LLM_PROVIDER=openai', async () => {
  row = undefined;
  providerCalls = 0;
  providerReplies = [];
  mockConfig.LLM_PROVIDER = 'openai';
  try {
    const result = await generateAiSummary('uid-openai', snapshot, now);
    assert.equal(result.response.summary, 'Keep logging balanced meals.');
    assert.equal(lastInsertParams?.[6], 'openai');
    assert.equal(lastInsertParams?.[7], 'test-model');
    assert.equal(lastCreateRequest?.model, 'test-model');
    assert.equal(lastCreateRequest?.provider, undefined);
  } finally {
    mockConfig.LLM_PROVIDER = 'openrouter';
  }
});

test('an active processing claim returns retry metadata without calling the provider', async () => {
  providerCalls = 0;
  providerReplies = [];
  row = {
    id: 'summary-1', status: 'processing', summary: null, generated_at: null,
    locale: 'en', stats_snapshot: null, attempt_count: 1,
    processing_started_at: now, requested_at: now,
  };
  await assert.rejects(
    () => generateAiSummary('uid-1', snapshot, now),
    (error) => error instanceof AiSummaryRequestError && error.statusCode === 202 && error.retryAfter === 120
  );
  assert.equal(providerCalls, 0);
});

test('insufficient snapshots never claim a row or call the provider', async () => {
  row = undefined;
  providerCalls = 0;
  providerReplies = [];
  await assert.rejects(
    () => generateAiSummary('uid-1', { ...snapshot, meals: snapshot.meals.slice(0, 1) }, now),
    (error) => error instanceof AiSummaryRequestError && error.code === 'insufficient_data'
  );
  assert.equal(row, undefined);
  assert.equal(providerCalls, 0);
});

test('a reclaimed attempt fences completion and failure from the stale worker', async () => {
  let releaseOld!: () => void;
  let releaseNew!: () => void;
  const oldGate = new Promise<void>((resolve) => { releaseOld = resolve; });
  const newGate = new Promise<void>((resolve) => { releaseNew = resolve; });
  row = {
    id: 'summary-1', status: 'processing', summary: null, generated_at: null,
    locale: 'en', stats_snapshot: null, attempt_count: 1,
    processing_started_at: new Date(now.getTime() - 180_000), requested_at: now,
  };
  providerCalls = 0;
  providerReplies = [
    { summary: 'Stale result', gate: oldGate },
    { summary: 'Current result', gate: newGate },
  ];

  const stale = generateAiSummary('uid-1', snapshot, now);
  await new Promise<void>((resolve) => setImmediate(resolve));
  const current = generateAiSummary(
    'uid-1',
    snapshot,
    new Date(now.getTime() + 180_000)
  );
  await new Promise<void>((resolve) => setImmediate(resolve));

  releaseOld();
  await assert.rejects(
    stale,
    (error) => error instanceof AiSummaryRequestError && error.statusCode === 202
  );
  assert.equal(row.status, 'processing');
  assert.equal(row.attempt_count, 3);

  releaseNew();
  const currentResult = await current;
  assert.equal(currentResult.response.summary, 'Current result');
  assert.equal(row.summary, 'Current result');
  assert.equal(row.status, 'completed');
});
