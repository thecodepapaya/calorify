import { Client } from 'langsmith';

/**
 * LangSmith observability for the V3 meal-analysis pipeline.
 *
 * Tracing is controlled by the standard LangChain environment variables
 * (`LANGSMITH_TRACING`, `LANGSMITH_API_KEY`, `LANGSMITH_PROJECT`); graph runs
 * carry `analysisId`/`userId`/`locale`/`llmProvider` metadata so traces are
 * filterable per session. Nothing here is required for the pipeline to run:
 * with tracing off, every helper degrades to a no-op.
 */

export function isLangSmithTracingEnabled(): boolean {
  return process.env.LANGSMITH_TRACING === 'true';
}

let feedbackClient: Client | undefined;

/** Lazily created LangSmith client; undefined when tracing is off or unconfigured. */
export function getLangSmithClient(): Client | undefined {
  if (!isLangSmithTracingEnabled() || !process.env.LANGSMITH_API_KEY) {
    return undefined;
  }
  feedbackClient ??= new Client({ apiKey: process.env.LANGSMITH_API_KEY });
  return feedbackClient;
}

export interface LangSmithFeedbackMirror {
  analysisId: string;
  signal: 'UP' | 'DOWN';
}

/**
 * Best-effort mirror of the Postgres feedback signal into LangSmith: finds the
 * analysis's run by its `analysisId` metadata tag and posts a feedback score.
 * The Postgres column remains the source of truth; failures here are logged
 * and dropped, never surfaced to the client.
 */
export async function mirrorAnalysisFeedbackInLangSmith(
  client: Pick<Client, 'listRuns' | 'createFeedback'>,
  input: LangSmithFeedbackMirror
): Promise<boolean> {
  try {
    for await (const run of client.listRuns({
      filter: `eq(metadata.analysisId, "${input.analysisId}")`,
      limit: 1,
    })) {
      await client.createFeedback(run.id, 'user_feedback', {
        score: input.signal === 'UP' ? 1 : 0,
      });
      return true;
    }
    return false;
  } catch (error) {
    console.warn('[langsmith] feedback mirror failed', {
      analysisId: input.analysisId,
      error: error instanceof Error ? error.message : 'unknown error',
    });
    return false;
  }
}
