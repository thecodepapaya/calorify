import { describe, it } from 'node:test';
import assert from 'node:assert/strict';
import { CircuitBreaker, CircuitBreakerOpenError } from './circuitBreaker.js';

describe('CircuitBreaker', () => {
  it('passes through successful calls and stays CLOSED', async () => {
    const breaker = new CircuitBreaker({ name: 'test' });
    const result = await breaker.execute(async () => 42);
    assert.equal(result, 42);
    assert.equal(breaker.getState(), 'CLOSED');
  });

  it('opens after reaching the failure threshold', async () => {
    const breaker = new CircuitBreaker({ name: 'test', failureThreshold: 3 });
    const boom = async () => {
      throw new Error('upstream down');
    };

    for (let i = 0; i < 3; i++) {
      await assert.rejects(breaker.execute(boom), /upstream down/);
    }

    assert.equal(breaker.getState(), 'OPEN');
    // Subsequent calls fail fast without invoking fn.
    let invoked = false;
    await assert.rejects(
      breaker.execute(async () => {
        invoked = true;
        return 1;
      }),
      CircuitBreakerOpenError
    );
    assert.equal(invoked, false);
  });

  it('resets the failure counter on success', async () => {
    const breaker = new CircuitBreaker({ name: 'test', failureThreshold: 3 });
    const boom = async () => {
      throw new Error('fail');
    };
    await assert.rejects(breaker.execute(boom));
    await assert.rejects(breaker.execute(boom));
    await breaker.execute(async () => 'ok');
    // Two more failures alone should not open the breaker.
    await assert.rejects(breaker.execute(boom));
    await assert.rejects(breaker.execute(boom));
    assert.equal(breaker.getState(), 'CLOSED');
  });

  it('transitions OPEN → HALF_OPEN after reset timeout and closes on success', async () => {
    let fakeNow = 1_000_000;
    const breaker = new CircuitBreaker({
      name: 'test',
      failureThreshold: 2,
      resetTimeoutMs: 5_000,
      now: () => fakeNow,
    });

    const boom = async () => {
      throw new Error('fail');
    };
    await assert.rejects(breaker.execute(boom));
    await assert.rejects(breaker.execute(boom));
    assert.equal(breaker.getState(), 'OPEN');

    // Advance past the reset window.
    fakeNow += 5_000;
    assert.equal(breaker.getState(), 'HALF_OPEN');

    const result = await breaker.execute(async () => 'recovered');
    assert.equal(result, 'recovered');
    assert.equal(breaker.getState(), 'CLOSED');
  });

  it('re-opens immediately when the HALF_OPEN trial fails', async () => {
    let fakeNow = 1_000_000;
    const breaker = new CircuitBreaker({
      name: 'test',
      failureThreshold: 1,
      resetTimeoutMs: 1_000,
      now: () => fakeNow,
    });

    await assert.rejects(breaker.execute(async () => { throw new Error('fail'); }));
    assert.equal(breaker.getState(), 'OPEN');

    fakeNow += 1_000;
    assert.equal(breaker.getState(), 'HALF_OPEN');

    await assert.rejects(breaker.execute(async () => { throw new Error('still fail'); }));
    assert.equal(breaker.getState(), 'OPEN');
  });
});
