import { describe, it, beforeEach } from 'node:test';
import assert from 'node:assert/strict';
import {
  registry,
  httpRequestsTotal,
  aiRequestsTotal,
  instrumentAiCall,
  recordCircuitBreakerState,
} from '../../../src/services/infrastructure/metrics.js';

describe('metrics', () => {
  beforeEach(() => {
    registry.resetMetrics();
  });

  it('exposes Prometheus text output with default + custom metrics', async () => {
    httpRequestsTotal.inc({ method: 'GET', route: '/ping', status: '200' }, 3);
    const output = await registry.metrics();

    // Our custom metric shows up.
    assert.match(output, /# HELP http_requests_total/);
    assert.match(output, /http_requests_total\{[^}]*method="GET"[^}]*\} 3\b/);
    // Default Node.js runtime metrics are registered too.
    assert.match(output, /process_cpu_user_seconds_total/);
    assert.match(output, /# HELP usda_query_limiter_active/);
    assert.match(output, /# HELP usda_query_acquire_wait_seconds/);
    assert.match(output, /# HELP usda_query_duration_seconds/);
    assert.match(output, /# HELP usda_query_failures_total/);
  });

  it('instrumentAiCall records success outcome and returns the value', async () => {
    const out = await instrumentAiCall('openrouter', async () => 'ok');
    assert.equal(out, 'ok');
    const text = await registry.metrics();
    assert.match(text, /ai_requests_total\{[^}]*provider="openrouter"[^}]*outcome="success"[^}]*\} 1/);
  });

  it('instrumentAiCall records error outcome and re-throws', async () => {
    await assert.rejects(
      instrumentAiCall('openrouter', async () => {
        throw new Error('boom');
      }),
      /boom/
    );
    const text = await registry.metrics();
    assert.match(text, /ai_requests_total\{[^}]*provider="openrouter"[^}]*outcome="error"[^}]*\} 1/);
  });

  it('recordCircuitBreakerState writes the numeric state', async () => {
    recordCircuitBreakerState('meal-analysis', 'CLOSED');
    recordCircuitBreakerState('ai-summary', 'OPEN');
    const text = await registry.metrics();
    assert.match(text, /circuit_breaker_state\{[^}]*name="meal-analysis"[^}]*\} 0/);
    assert.match(text, /circuit_breaker_state\{[^}]*name="ai-summary"[^}]*\} 2/);
  });

  it('aiRequestsTotal counter also exposed via registry', async () => {
    aiRequestsTotal.labels({ provider: 'openrouter', outcome: 'success' }).inc();
    const text = await registry.metrics();
    assert.match(text, /ai_requests_total\{[^}]*provider="openrouter"[^}]*outcome="success"[^}]*\} 1/);
  });
});
