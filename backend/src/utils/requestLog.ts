/**
 * Utilities for privacy-bounded structured HTTP metadata logging.
 */

const SENSITIVE_HEADERS = new Set([
  'authorization',
  'cookie',
  'proxy-authorization',
  'set-cookie',
  'x-api-key',
  'x-auth-token',
]);

const SAFE_HEADER_VALUES = new Set([
  'accept',
  'content-length',
  'content-type',
]);

const REDACTED = '[redacted]';

/**
 * Retain only bounded operational header values. Unknown headers are omitted
 * because extension and forwarding headers frequently carry signed URLs,
 * tokens, or user identifiers under application-specific names.
 */
export function redactHeaders(headers: Record<string, string | undefined>): Record<string, string> {
  const out: Record<string, string> = {};
  for (const [key, value] of Object.entries(headers)) {
    if (value === undefined) continue;
    const lower = key.toLowerCase();
    if (SENSITIVE_HEADERS.has(lower)) {
      if (lower === 'authorization' && value.toLowerCase().startsWith('bearer ')) {
        out[key] = 'Bearer ***';
      } else {
        out[key] = REDACTED;
      }
    } else if (SAFE_HEADER_VALUES.has(lower)) {
      out[key] = value;
    }
  }
  return out;
}
