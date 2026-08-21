import { FastifyError, FastifyReply, FastifyRequest } from 'fastify';
import type { ApiResult } from '../protos/calorify/http_api.js';
import { safeErrorMetadata } from './safeError.js';

/**
 * Create a standardized API error body (`calorify.ApiResult` with `ok: false`).
 */
export function createErrorResponse(message: string): ApiResult {
  return { ok: false, message };
}

/**
 * Error handler for Fastify
 */
export async function errorHandler(
  error: FastifyError,
  request: FastifyRequest,
  reply: FastifyReply
): Promise<void> {
  const statusCode = error.statusCode ?? 500;
  const safeClientError = statusCode >= 400 && statusCode < 500 && (
    error.code === 'FST_ERR_VALIDATION' ||
    Array.isArray(error.validation)
  );
  const message = safeClientError
    ? error.message
    : statusCode >= 500
      ? 'Internal Server Error'
      : 'Request failed';

  const logData = {
    type: 'request_error',
    statusCode,
    ...safeErrorMetadata(error, 'request_failed'),
  };
  if (statusCode >= 500) {
    request.log.error(logData, 'Request failed');
  } else {
    request.log.warn(logData, 'Request failed');
  }

  reply.status(statusCode).send(createErrorResponse(message));
}
