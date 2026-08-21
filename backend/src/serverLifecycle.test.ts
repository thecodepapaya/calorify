import test from 'node:test';
import assert from 'node:assert/strict';

import {
  createShutdownCoordinator,
  registerShutdownSignals,
  type ShutdownSignal,
  withStartupCleanup,
} from './serverLifecycle.js';

test('listen failure cleans server and database without starting later work or masking error', async () => {
  const events: string[] = [];
  const listenError = new Error('listen failed');
  const cleanupError = new Error('server close failed');
  const reportedCleanupErrors: unknown[] = [];
  const listen = async (): Promise<void> => {
    events.push('listen');
    throw listenError;
  };
  const startCron = (): void => {
    events.push('cron-start');
  };

  const startup = withStartupCleanup(async () => {
    await listen();
    startCron();
  }, {
    cronTasks: [],
    closeServer: () => {
      events.push('server');
      throw cleanupError;
    },
    closeDatabase: () => events.push('database'),
  }, (error) => reportedCleanupErrors.push(error));

  await assert.rejects(startup, (error) => error === listenError);
  assert.deepEqual(events, ['listen', 'server', 'database']);
  assert.deepEqual(reportedCleanupErrors, [cleanupError]);
});

test('shutdown runs cron, server, and database cleanup in order exactly once', async () => {
  const events: string[] = [];
  let releaseFirstTask!: () => void;
  const firstTaskGate = new Promise<void>((resolve) => {
    releaseFirstTask = resolve;
  });

  const shutdown = createShutdownCoordinator({
    cronTasks: [
      {
        stop: async () => {
          events.push('cron-1:start');
          await firstTaskGate;
          events.push('cron-1:end');
        },
      },
      undefined,
      { stop: () => events.push('cron-2') },
    ],
    closeServer: () => events.push('server'),
    closeDatabase: () => events.push('database'),
  });

  const first = shutdown('SIGTERM');
  const concurrent = shutdown('SIGINT');

  assert.strictEqual(concurrent, first);
  assert.deepEqual(events, ['cron-1:start']);

  releaseFirstTask();
  await first;

  assert.deepEqual(events, [
    'cron-1:start',
    'cron-1:end',
    'cron-2',
    'server',
    'database',
  ]);
  assert.strictEqual(shutdown('SIGTERM'), first);
});

test('shutdown attempts every cleanup and reports the first failure', async () => {
  const events: string[] = [];
  const cronError = new Error('cron stop failed');

  const shutdown = createShutdownCoordinator({
    cronTasks: [
      {
        stop: () => {
          events.push('cron-1');
          throw cronError;
        },
      },
      { stop: () => events.push('cron-2') },
    ],
    closeServer: () => {
      events.push('server');
      throw new Error('server close failed');
    },
    closeDatabase: () => events.push('database'),
  });

  await assert.rejects(shutdown('SIGTERM'), (error) => error === cronError);
  assert.deepEqual(events, ['cron-1', 'cron-2', 'server', 'database']);
});

test('signal registration uses only the supplied source and forwards both signals', async () => {
  const listeners = new Map<ShutdownSignal, () => void>();
  const received: ShutdownSignal[] = [];
  const errors: Array<{ error: unknown; signal: ShutdownSignal }> = [];

  registerShutdownSignals(
    {
      once: (signal, listener) => listeners.set(signal, listener),
    },
    async (signal) => {
      received.push(signal);
      if (signal === 'SIGINT') throw new Error('shutdown failed');
    },
    (error, signal) => errors.push({ error, signal })
  );

  assert.deepEqual([...listeners.keys()], ['SIGTERM', 'SIGINT']);
  listeners.get('SIGTERM')!();
  listeners.get('SIGINT')!();
  await new Promise<void>((resolve) => setImmediate(resolve));

  assert.deepEqual(received, ['SIGTERM', 'SIGINT']);
  assert.equal(errors.length, 1);
  assert.equal(errors[0]!.signal, 'SIGINT');
  assert.match(String(errors[0]!.error), /shutdown failed/);
});
