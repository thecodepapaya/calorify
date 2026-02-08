/**
 * Utilities for structured request/response logging (GCP-style) for Grafana/Loki.
 * Redacts sensitive data and truncates large bodies.
 */

const SENSITIVE_HEADERS = new Set([
  'authorization',
  'cookie',
  'set-cookie',
  'x-api-key',
  'x-auth-token',
]);

const REDACTED = '[redacted]';

/**
 * Redact sensitive headers for logging.
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
    } else {
      out[key] = value;
    }
  }
  return out;
}

/**
 * Truncate a string to maxBytes (UTF-8). Append "... [truncated]" if truncated.
 */
export function truncateForLog(value: string, maxBytes: number): string {
  if (value.length === 0) return value;
  const suffix = '... [truncated]';
  const suffixBytes = Buffer.byteLength(suffix, 'utf8');
  const max = maxBytes - suffixBytes;
  if (max <= 0) return suffix;
  const buf = Buffer.from(value, 'utf8');
  if (buf.length <= maxBytes) return value;
  let len = 0;
  for (let i = 0; i < buf.length && len < max; i++) {
    if ((buf[i]! & 0xc0) !== 0x80) len++;
  }
  return Buffer.from(buf.subarray(0, len)).toString('utf8') + suffix;
}

/**
 * Serialize request or response body for logging: normalize to string and truncate.
 */
export function bodyForLog(body: unknown, maxBytes: number): string | object | null {
  if (body === undefined || body === null) return null;
  if (typeof body === 'object' && body !== null && typeof (body as NodeJS.ReadableStream).pipe === 'function') {
    return '[Stream]';
  }
  if (typeof body === 'string') {
    if (body.length > maxBytes) return truncateForLog(body, maxBytes);
    return body;
  }
  if (Buffer.isBuffer(body)) {
    const str = body.toString('utf8');
    return str.length > maxBytes ? truncateForLog(str, maxBytes) : str;
  }
  if (typeof body === 'object') {
    try {
      const str = JSON.stringify(body);
      if (Buffer.byteLength(str, 'utf8') > maxBytes) {
        return truncateForLog(str, maxBytes);
      }
      return body as object; // keep as object so it appears as JSON in logs
    } catch {
      return '[Non-serializable]';
    }
  }
  return String(body);
}
