import assert from 'node:assert/strict';
import test from 'node:test';
import {
  UsdaQueryLimiter,
  UsdaQueryQueueError,
} from '../../../src/services/infrastructure/usdaQueryLimiter.js';

test('USDA query limiter admits FIFO work up to its concurrency', async () => {
  const limiter = new UsdaQueryLimiter({
    concurrency: 2,
    maxQueued: 4,
    queueTimeoutMs: 1_000,
  });
  const first = await limiter.acquire();
  const second = await limiter.acquire();
  const order: string[] = [];
  const third = limiter.acquire().then((lease) => {
    order.push('third');
    return lease;
  });
  const fourth = limiter.acquire().then((lease) => {
    order.push('fourth');
    return lease;
  });

  assert.deepEqual(limiter.snapshot(), { active: 2, queued: 2 });
  second.release();
  const thirdLease = await third;
  assert.deepEqual(order, ['third']);
  first.release();
  const fourthLease = await fourth;
  assert.deepEqual(order, ['third', 'fourth']);
  thirdLease.release();
  fourthLease.release();
  assert.deepEqual(limiter.snapshot(), { active: 0, queued: 0 });
});

test('USDA query limiter removes timed-out waiters without leaking slots', async () => {
  const limiter = new UsdaQueryLimiter({
    concurrency: 1,
    maxQueued: 1,
    queueTimeoutMs: 10,
  });
  const first = await limiter.acquire();
  await assert.rejects(
    limiter.acquire(),
    (error: unknown) => error instanceof UsdaQueryQueueError && error.reason === 'QUEUE_TIMEOUT',
  );
  assert.deepEqual(limiter.snapshot(), { active: 1, queued: 0 });
  first.release();
  const next = await limiter.acquire();
  next.release();
  assert.deepEqual(limiter.snapshot(), { active: 0, queued: 0 });
});

test('USDA query limiter rejects excess queued work with a distinct error', async () => {
  const limiter = new UsdaQueryLimiter({
    concurrency: 1,
    maxQueued: 1,
    queueTimeoutMs: 1_000,
  });
  const first = await limiter.acquire();
  const queued = limiter.acquire();
  await assert.rejects(
    limiter.acquire(),
    (error: unknown) => error instanceof UsdaQueryQueueError && error.reason === 'QUEUE_FULL',
  );
  first.release();
  const queuedLease = await queued;
  queuedLease.release();
});
