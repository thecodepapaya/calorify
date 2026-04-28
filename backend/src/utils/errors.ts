import { FastifyError, FastifyReply, FastifyRequest } from 'fastify';
import type { ApiResult } from '../protos/calorify/http_api.js';

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
  _request: FastifyRequest,
  reply: FastifyReply
): Promise<void> {
  const statusCode = error.statusCode ?? 500;
  const message = error.message ?? 'Internal Server Error';

  reply.status(statusCode).send(createErrorResponse(message));
}
