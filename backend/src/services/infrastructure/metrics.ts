/**
 * Prometheus metrics registry for the backend.
 *
 * Exposes:
 *  - Default Node.js runtime metrics (CPU, memory, event loop lag, GC, etc.).
 *  - HTTP metrics: request count + duration histogram, labeled by method, route, status.
 *  - AI metrics: request count + duration histogram, labeled by provider + outcome. This lets
 *    us alert on upstream-provider error rates independent of overall request volume.
 *  - Circuit breaker state gauge: 0 = CLOSED, 1 = HALF_OPEN, 2 = OPEN, per breaker name.
 *
 * Scrape endpoint: GET /metrics (registered in index.ts).
 */

import {
  Registry,
  collectDefaultMetrics,
  Counter,
  Histogram,
  Gauge,
} from 'prom-client';
import type { CircuitState } from '../../utils/circuitBreaker.js';

export const registry = new Registry();

registry.setDefaultLabels({ app: 'calorify-backend' });
collectDefaultMetrics({ register: registry });

export const httpRequestsTotal = new Counter({
  name: 'http_requests_total',
  help: 'Total number of HTTP requests handled, labeled by method, route, and status code.',
  labelNames: ['method', 'route', 'status'] as const,
  registers: [registry],
});

export const httpRequestDurationSeconds = new Histogram({
  name: 'http_request_duration_seconds',
  help: 'HTTP request duration in seconds, labeled by method, route, and status code.',
  labelNames: ['method', 'route', 'status'] as const,
  // Buckets tuned for a mix of fast DB lookups (<100ms) and slow AI endpoints (up to ~30s).
  buckets: [0.01, 0.05, 0.1, 0.3, 0.5, 1, 2, 5, 10, 20, 30, 60],
  registers: [registry],
});

export const aiRequestsTotal = new Counter({
  name: 'ai_requests_total',
  help: 'Total number of upstream AI calls, labeled by provider and outcome.',
  labelNames: ['provider', 'outcome'] as const,
  registers: [registry],
});

export const aiRequestDurationSeconds = new Histogram({
  name: 'ai_request_duration_seconds',
  help: 'AI upstream request duration in seconds, labeled by provider and outcome.',
  labelNames: ['provider', 'outcome'] as const,
  // AI calls are slow; emphasize longer buckets.
  buckets: [0.5, 1, 2, 3, 5, 8, 13, 21, 30, 60],
  registers: [registry],
});

/** Internal V3 meal-analysis pipeline and database steps. */
export const mealAnalysisTraceStepSeconds = new Histogram({
  name: 'meal_analysis_trace_step_seconds',
  help:
    'Duration of meal analysis internal trace steps in seconds (LLM, USDA, DB writes, pipeline).',
  labelNames: ['category', 'name'] as const,
  buckets: [0.005, 0.01, 0.025, 0.05, 0.1, 0.25, 0.5, 1, 2, 5, 10, 30, 60],
  registers: [registry],
});

/**
 * Why an ingredient row was skipped during clarification generation.
 * Lets us tell "model is great" apart from "all our skip rules collude".
 */
export const mealAnalysisClarificationSkipsTotal = new Counter({
  name: 'meal_analysis_clarification_skips_total',
  help: 'Count of clarification skip events, labeled by reason.',
  labelNames: ['reason'] as const,
  registers: [registry],
});

/**
 * Counts decomposition-time data quality issues (count dropped from text, sanity clamp triggered).
 */
export const mealAnalysisDecompositionIssuesTotal = new Counter({
  name: 'meal_analysis_decomposition_issues_total',
  help: 'Count of decomposition data-quality issues, labeled by issue type.',
  labelNames: ['issue'] as const,
  registers: [registry],
});

const circuitBreakerState = new Gauge({
  name: 'circuit_breaker_state',
  help: 'Circuit breaker state. 0 = CLOSED, 1 = HALF_OPEN, 2 = OPEN.',
  labelNames: ['name'] as const,
  registers: [registry],
});

const stateToNumber = (state: CircuitState): number => {
  switch (state) {
    case 'CLOSED':
      return 0;
    case 'HALF_OPEN':
      return 1;
    case 'OPEN':
      return 2;
  }
};

export function recordCircuitBreakerState(name: string, state: CircuitState): void {
  circuitBreakerState.labels({ name }).set(stateToNumber(state));
}

/**
 * Measure an async operation and record both a count and a duration histogram entry,
 * tagged with outcome = 'success' | 'error'. Re-throws the original error.
 */
export async function instrumentAiCall<T>(
  provider: string,
  fn: () => Promise<T>
): Promise<T> {
  const endTimer = aiRequestDurationSeconds.startTimer({ provider });
  try {
    const result = await fn();
    aiRequestsTotal.labels({ provider, outcome: 'success' }).inc();
    endTimer({ outcome: 'success' });
    return result;
  } catch (err) {
    aiRequestsTotal.labels({ provider, outcome: 'error' }).inc();
    endTimer({ outcome: 'error' });
    throw err;
  }
}
