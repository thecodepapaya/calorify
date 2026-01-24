import { FastifyError, FastifyReply, FastifyRequest } from 'fastify';

export interface ApiError {
  detail: string;
}

/**
 * Create a standardized API error response
 */
export function createErrorResponse(detail: string): ApiError {
  return { detail };
}

/**
 * Error handler for Fastify
 */
export function errorHandler(
  error: FastifyError,
  _request: FastifyRequest,
  reply: FastifyReply
): void {
  const statusCode = error.statusCode ?? 500;
  const message = error.message ?? 'Internal Server Error';

  reply.status(statusCode).send(createErrorResponse(message));
}
