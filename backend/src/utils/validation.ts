import type { FastifyReply } from 'fastify';
import { z, type ZodError, type ZodSchema } from 'zod';
import { createErrorResponse } from './errors.js';

/**
 * Validate an unknown request body against a Zod schema.
 *
 * On failure, sends a 400 response with a human-readable error detail derived
 * from the first Zod issue and returns `null`. Handlers should early-return
 * when this returns `null`.
 *
 * On success, returns the parsed (and typed) value.
 *
 * This runs in addition to Fastify's JSON-schema validation — Fastify's AJV
 * catches type/required-field errors at the framework level, while Zod
 * layers in business-logic constraints (bounds, URL format, trimmed
 * non-empty strings) with typed output.
 */
export function parseBody<T>(
  schema: ZodSchema<T>,
  body: unknown,
  reply: FastifyReply
): T | null {
  const result = schema.safeParse(body);
  if (result.success) {
    return result.data;
  }
  reply.status(400).send(createErrorResponse(formatZodError(result.error)));
  return null;
}

/**
 * Format a ZodError into a single-line, human-readable error string.
 *
 * Example: `textDescription: must contain at least 1 character(s)`
 */
export function formatZodError(err: ZodError): string {
  const [first] = err.issues;
  if (!first) return 'Invalid request body';
  const path = first.path.length > 0 ? first.path.join('.') : 'body';
  return `${path}: ${first.message}`;
}

// -----------------------------
// Reusable field-level schemas
// -----------------------------

/** A non-empty string, trimmed. Rejects whitespace-only input. */
export const nonEmptyString = z
  .string()
  .trim()
  .min(1, 'must not be empty');

/** A string that parses as a URL. */
export const urlString = nonEmptyString.url('must be a valid URL');

export { z };
