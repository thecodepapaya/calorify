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

  it('getState is a pure read and does not flip to HALF_OPEN on its own', async () => {
    let fakeNow = 1_000_000;
    const breaker = new CircuitBreaker({
      name: 'test',
      failureThreshold: 1,
      resetTimeoutMs: 5_000,
      now: () => fakeNow,
    });

    await assert.rejects(breaker.execute(async () => { throw new Error('fail'); }));
    assert.equal(breaker.getState(), 'OPEN');

    // Cooldown elapsed — but no one has called execute yet, so state stays OPEN.
    fakeNow += 5_000;
    assert.equal(breaker.getState(), 'OPEN');
  });

  it('transitions OPEN → HALF_OPEN on the next execute after cooldown and closes on success', async () => {
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

    // Advance past the reset window. The first execute after this flips to HALF_OPEN.
    fakeNow += 5_000;

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

    await assert.rejects(breaker.execute(async () => { throw new Error('still fail'); }));
    assert.equal(breaker.getState(), 'OPEN');
  });

  it('only lets one concurrent request probe in HALF_OPEN; the rest fail fast', async () => {
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

    // First request grabs the HALF_OPEN slot and starts a long-running probe.
    let resolveProbe: (v: string) => void = () => {};
    const probePromise = breaker.execute(
      () => new Promise<string>((resolve) => {
        resolveProbe = resolve;
      })
    );

    // While the probe is in flight, concurrent requests must fail fast.
    assert.equal(breaker.getState(), 'HALF_OPEN');
    let stampeded = false;
    await assert.rejects(
      breaker.execute(async () => {
        stampeded = true;
        return 'should not run';
      }),
      CircuitBreakerOpenError
    );
    assert.equal(stampeded, false);

    // Resolve the probe; breaker should close.
    resolveProbe('recovered');
    const result = await probePromise;
    assert.equal(result, 'recovered');
    assert.equal(breaker.getState(), 'CLOSED');
  });

  it('invokes onStateChange on every state transition', async () => {
    let fakeNow = 1_000_000;
    const events: Array<[string, string]> = [];
    const breaker = new CircuitBreaker({
      name: 'test',
      failureThreshold: 1,
      resetTimeoutMs: 1_000,
      now: () => fakeNow,
      onStateChange: (next, prev) => events.push([prev, next]),
    });

    // CLOSED → OPEN
    await assert.rejects(breaker.execute(async () => { throw new Error('fail'); }));
    // Cooldown elapses, next execute flips OPEN → HALF_OPEN, success flips HALF_OPEN → CLOSED.
    fakeNow += 1_000;
    await breaker.execute(async () => 'ok');

    assert.deepEqual(events, [
      ['CLOSED', 'OPEN'],
      ['OPEN', 'HALF_OPEN'],
      ['HALF_OPEN', 'CLOSED'],
    ]);
  });

  it('uses the injectable clock in the open error message', async () => {
    let fakeNow = 0;
    const breaker = new CircuitBreaker({
      name: 'test',
      failureThreshold: 1,
      resetTimeoutMs: 10_000,
      now: () => fakeNow,
    });

    await assert.rejects(breaker.execute(async () => { throw new Error('fail'); }));

    // fakeNow hasn't advanced; retry-after should reflect the full 10s window
    // using the injected clock, independent of the real Date.now().
    await assert.rejects(
      breaker.execute(async () => 'nope'),
      (err: unknown) => err instanceof CircuitBreakerOpenError && /Retry in ~10s/.test((err as Error).message)
    );
  });
});
