import test from 'node:test';
import assert from 'node:assert/strict';
import { createErrorResponse, errorHandler } from './errors.js';
import type { FastifyError, FastifyReply, FastifyRequest } from 'fastify';

// ---------------------------------------------------------------------------
// createErrorResponse
// ---------------------------------------------------------------------------

test('createErrorResponse returns ApiResult with ok false and message', () => {
  const response = createErrorResponse('Something went wrong');
  assert.deepEqual(response, { ok: false, message: 'Something went wrong' });
});

test('createErrorResponse with empty string', () => {
  const response = createErrorResponse('');
  assert.deepEqual(response, { ok: false, message: '' });
});

test('createErrorResponse with special characters', () => {
  const response = createErrorResponse('Error: <script>alert("xss")</script>');
  assert.equal(response.message, 'Error: <script>alert("xss")</script>');
});

test('createErrorResponse with long message', () => {
  const longMessage = 'a'.repeat(10000);
  const response = createErrorResponse(longMessage);
  assert.equal(response.message, longMessage);
});

// ---------------------------------------------------------------------------
// errorHandler
// ---------------------------------------------------------------------------

test('errorHandler sends statusCode from error', async () => {
  let sentStatus: number | undefined;
  let sentBody: unknown;

  const mockReply = {
    status: (code: number) => {
      sentStatus = code;
      return mockReply;
    },
    send: (body: unknown) => {
      sentBody = body;
    },
  } as unknown as FastifyReply;

  const error: FastifyError = Object.assign(new Error('Not found') as any, {
    statusCode: 404,
  });

  await errorHandler(error, {} as FastifyRequest, mockReply);
  assert.equal(sentStatus, 404);
  assert.deepEqual(sentBody, { ok: false, message: 'Not found' });
});

test('errorHandler defaults to 500 when statusCode is missing', async () => {
  let sentStatus: number | undefined;
  let sentBody: unknown;

  const mockReply = {
    status: (code: number) => {
      sentStatus = code;
      return mockReply;
    },
    send: (body: unknown) => {
      sentBody = body;
    },
  } as unknown as FastifyReply;

  const error = { message: 'Unexpected error' } as FastifyError;

  await errorHandler(error, {} as FastifyRequest, mockReply);
  assert.equal(sentStatus, 500);
  assert.deepEqual(sentBody, { ok: false, message: 'Unexpected error' });
});

test('errorHandler defaults message to Internal Server Error when message is missing', async () => {
  let sentBody: unknown;

  const mockReply = {
    status: (_code: number) => mockReply,
    send: (body: unknown) => {
      sentBody = body;
    },
  } as unknown as FastifyReply;

  const error = { statusCode: 503 } as FastifyError;

  await errorHandler(error, {} as FastifyRequest, mockReply);
  assert.deepEqual(sentBody, { ok: false, message: 'Internal Server Error' });
});

test('errorHandler uses statusCode 400 for validation errors', async () => {
  let sentStatus: number | undefined;

  const mockReply = {
    status: (code: number) => {
      sentStatus = code;
      return mockReply;
    },
    send: (_body: unknown) => {},
  } as unknown as FastifyReply;

  const error: FastifyError = Object.assign(new Error('body/field is required') as any, {
    statusCode: 400,
  });

  await errorHandler(error, {} as FastifyRequest, mockReply);
  assert.equal(sentStatus, 400);
});
