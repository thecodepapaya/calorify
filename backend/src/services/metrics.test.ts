import { describe, it, beforeEach } from 'node:test';
import assert from 'node:assert/strict';
import {
  registry,
  httpRequestsTotal,
  aiRequestsTotal,
  instrumentAiCall,
  recordCircuitBreakerState,
} from './metrics.js';

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
  });

  it('instrumentAiCall records success outcome and returns the value', async () => {
    const out = await instrumentAiCall('openai', async () => 'ok');
    assert.equal(out, 'ok');
    const text = await registry.metrics();
    assert.match(text, /ai_requests_total\{[^}]*provider="openai"[^}]*outcome="success"[^}]*\} 1/);
  });

  it('instrumentAiCall records error outcome and re-throws', async () => {
    await assert.rejects(
      instrumentAiCall('gemini', async () => {
        throw new Error('boom');
      }),
      /boom/
    );
    const text = await registry.metrics();
    assert.match(text, /ai_requests_total\{[^}]*provider="gemini"[^}]*outcome="error"[^}]*\} 1/);
  });

  it('recordCircuitBreakerState writes the numeric state', async () => {
    recordCircuitBreakerState('openai-food-analysis', 'CLOSED');
    recordCircuitBreakerState('gemini-food-analysis', 'OPEN');
    const text = await registry.metrics();
    assert.match(text, /circuit_breaker_state\{[^}]*name="openai-food-analysis"[^}]*\} 0/);
    assert.match(text, /circuit_breaker_state\{[^}]*name="gemini-food-analysis"[^}]*\} 2/);
  });

  it('aiRequestsTotal counter also exposed via registry', async () => {
    aiRequestsTotal.labels({ provider: 'openai', outcome: 'success' }).inc();
    const text = await registry.metrics();
    assert.match(text, /ai_requests_total\{[^}]*provider="openai"[^}]*outcome="success"[^}]*\} 1/);
  });
});
