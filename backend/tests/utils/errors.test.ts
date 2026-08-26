import test from 'node:test';
import assert from 'node:assert/strict';
import type { FastifyError, FastifyReply, FastifyRequest } from 'fastify';
import { errorHandler } from '../../src/utils/errors.js';

function harness() {
  let statusCode: number | undefined;
  let body: unknown;
  const logs: unknown[][] = [];
  const request = {
    log: {
      error: (...values: unknown[]) => logs.push(values),
      warn: (...values: unknown[]) => logs.push(values),
    },
  } as unknown as FastifyRequest;
  const reply = {
    status(code: number) {
      statusCode = code;
      return this;
    },
    send(payload: unknown) {
      body = payload;
      return this;
    },
  } as unknown as FastifyReply;
  return {
    request,
    reply,
    logs,
    result: () => ({ statusCode, body }),
  };
}

test('errorHandler redacts unexpected server errors from clients and logs', async () => {
  const secret = 'SIGNED_URL_AND_PRIVATE_MEAL';
  const error = Object.assign(new Error(`provider echoed ${secret}`), {
    statusCode: 500,
  }) as FastifyError;
  const target = harness();

  await errorHandler(error, target.request, target.reply);

  assert.deepEqual(target.result(), {
    statusCode: 500,
    body: { ok: false, message: 'Internal Server Error' },
  });
  assert.doesNotMatch(JSON.stringify(target.logs), new RegExp(secret));
  assert.deepEqual(target.logs[0]?.[0], {
    type: 'request_error',
    statusCode: 500,
    errorKind: 'http_500',
  });
});

test('errorHandler preserves actionable Fastify validation messages', async () => {
  const error = Object.assign(new Error('body must have required property textDescription'), {
    code: 'FST_ERR_VALIDATION',
    statusCode: 400,
    validation: [],
  }) as FastifyError;
  const target = harness();

  await errorHandler(error, target.request, target.reply);

  assert.deepEqual(target.result(), {
    statusCode: 400,
    body: { ok: false, message: 'body must have required property textDescription' },
  });
});
