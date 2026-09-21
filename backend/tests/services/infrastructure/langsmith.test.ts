import assert from 'node:assert/strict';
import test from 'node:test';
import type { Client } from 'langsmith';
import {
  getLangSmithClient,
  isLangSmithTracingEnabled,
  mirrorAnalysisFeedbackInLangSmith,
} from '../../../src/services/infrastructure/langsmith.js';

interface RecordedCall {
  method: 'listRuns' | 'createFeedback';
  args: unknown;
}

function fakeClient(options: {
  runs?: Array<{ id: string }>;
  listRunsError?: Error;
  calls?: RecordedCall[];
}): Pick<Client, 'listRuns' | 'createFeedback'> {
  const { runs = [], listRunsError, calls = [] } = options;
  return {
    listRuns(params: unknown) {
      calls.push({ method: 'listRuns', args: params });
      if (listRunsError) throw listRunsError;
      return (async function* generate() {
        for (const run of runs) yield run;
      })();
    },
    async createFeedback(runId: string, key: string, feedback: unknown) {
      calls.push({ method: 'createFeedback', args: { runId, key, feedback } });
      return { id: 'feedback-1', createdAt: new Date() };
    },
  } as unknown as Pick<Client, 'listRuns' | 'createFeedback'>;
}

test('feedback mirror posts a score on the run tagged with the analysis id', async () => {
  const calls: RecordedCall[] = [];
  const client = fakeClient({ runs: [{ id: 'run-1' }], calls });

  const posted = await mirrorAnalysisFeedbackInLangSmith(client, { analysisId: 'a-1', signal: 'UP' });

  assert.equal(posted, true);
  assert.equal(calls.length, 2);
  const list = calls[0].args as { filter: string; limit: number };
  assert.equal(list.filter, 'eq(metadata.analysisId, "a-1")');
  assert.equal(list.limit, 1);
  const feedback = calls[1].args as { runId: string; key: string; feedback: { score: number } };
  assert.equal(feedback.runId, 'run-1');
  assert.equal(feedback.key, 'user_feedback');
  assert.equal(feedback.feedback.score, 1);
});

test('feedback mirror scores DOWN feedback with zero', async () => {
  const calls: RecordedCall[] = [];
  const client = fakeClient({ runs: [{ id: 'run-2' }], calls });

  const posted = await mirrorAnalysisFeedbackInLangSmith(client, { analysisId: 'a-2', signal: 'DOWN' });

  assert.equal(posted, true);
  const feedback = calls[1].args as { feedback: { score: number } };
  assert.equal(feedback.feedback.score, 0);
});

test('feedback mirror skips silently when no run matches the analysis id', async () => {
  const calls: RecordedCall[] = [];
  const client = fakeClient({ runs: [], calls });

  const posted = await mirrorAnalysisFeedbackInLangSmith(client, { analysisId: 'missing', signal: 'UP' });

  assert.equal(posted, false);
  assert.equal(calls.length, 1);
});

test('feedback mirror swallows LangSmith lookup failures', async () => {
  const calls: RecordedCall[] = [];
  const client = fakeClient({ listRunsError: new Error('api unreachable'), calls });

  const posted = await mirrorAnalysisFeedbackInLangSmith(client, { analysisId: 'a-3', signal: 'DOWN' });

  assert.equal(posted, false);
  assert.equal(calls.length, 1);
});

test('LangSmith client stays disabled without tracing environment variables', () => {
  const previousTracing = process.env.LANGSMITH_TRACING;
  const previousKey = process.env.LANGSMITH_API_KEY;
  delete process.env.LANGSMITH_TRACING;
  delete process.env.LANGSMITH_API_KEY;
  try {
    assert.equal(isLangSmithTracingEnabled(), false);
    assert.equal(getLangSmithClient(), undefined);
  } finally {
    if (previousTracing !== undefined) process.env.LANGSMITH_TRACING = previousTracing;
    if (previousKey !== undefined) process.env.LANGSMITH_API_KEY = previousKey;
  }
});
