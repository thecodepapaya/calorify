import { FastifyRequest, FastifyReply } from 'fastify';
import { verifyFirebaseToken, getUserIdFromToken } from '../services/firebase.js';
import { createErrorResponse } from '../utils/errors.js';
import { safeErrorMetadata } from '../utils/safeError.js';

/**
 * Extract Bearer token from Authorization header
 */
function extractToken(request: FastifyRequest): string | null {
  const raw = request.headers.authorization;
  const authHeader = Array.isArray(raw) ? raw[0] : raw;
  if (!authHeader || typeof authHeader !== 'string') {
    return null;
  }

  const parts = authHeader.trim().split(/\s+/);
  if (parts.length !== 2 || parts[0]!.toLowerCase() !== 'bearer') {
    return null;
  }

  return parts[1] ?? null;
}

/**
 * Best-effort auth lookup. Returns undefined when no valid bearer token is present.
 */
export async function getOptionalUserId(
  request: FastifyRequest
): Promise<string | undefined> {
  const token = extractToken(request);
  if (!token) {
    return undefined;
  }

  try {
    const decodedToken = await verifyFirebaseToken(token);
    const userId = getUserIdFromToken(decodedToken);
    (request as FastifyRequest & { userId: string }).userId = userId;
    return userId;
  } catch {
    return undefined;
  }
}

/**
 * Authentication middleware for Fastify
 * Verifies Firebase ID token and adds user ID to request
 */
export async function authenticateUser(
  request: FastifyRequest,
  reply: FastifyReply
): Promise<void> {
  const token = extractToken(request);

  if (!token) {
    reply
      .status(401)
      .send(createErrorResponse('Invalid or expired authentication token'));
    return;
  }

  try {
    const decodedToken = await verifyFirebaseToken(token);
    const userId = getUserIdFromToken(decodedToken);

    // Attach user ID to request for use in route handlers
    (request as FastifyRequest & { userId: string }).userId = userId;
  } catch (error) {
    request.log.warn(
      {
        operation: 'authenticate_user',
        ...safeErrorMetadata(error, 'authentication_rejected'),
      },
      'Authentication rejected'
    );
    reply
      .status(401)
      .send(createErrorResponse('Invalid or expired authentication token'));
    return;
  }
}

/**
 * Get current user ID from authenticated request
 * Use this in route handlers after authentication middleware
 */
export function getCurrentUserId(request: FastifyRequest): string {
  const userId = (request as FastifyRequest & { userId: string }).userId;
  if (!userId) {
    throw new Error('User ID not found in request. Ensure authentication middleware is applied.');
  }
  return userId;
}
