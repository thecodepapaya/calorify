const SAFE_ERROR_CODES: Readonly<Record<string, string>> = {
  '0A000': 'database_feature_not_supported',
  '22007': 'database_invalid_datetime',
  '42501': 'database_insufficient_privilege',
  '42804': 'database_datatype_mismatch',
  '42P01': 'database_undefined_table',
  ABORT_ERR: 'aborted',
  ECONNABORTED: 'connection_aborted',
  ECONNREFUSED: 'connection_refused',
  ECONNRESET: 'connection_reset',
  EAI_AGAIN: 'dns_temporary_failure',
  ENETUNREACH: 'network_unreachable',
  ENOTFOUND: 'dns_not_found',
  ETIMEDOUT: 'timeout',
  insufficient_quota: 'quota_exceeded',
  rate_limit_exceeded: 'rate_limited',
};

function propertyOf(error: object, key: string): unknown {
  try {
    return (error as Record<string, unknown>)[key];
  } catch {
    return undefined;
  }
}

/**
 * Reduce an arbitrary exception to a bounded operational category.
 *
 * Exception messages, stacks, names, and provider-defined codes are not safe
 * telemetry: SDKs commonly include request bodies, signed URLs, or credentials
 * in them. Only explicitly allow-listed codes and numeric HTTP statuses cross a
 * log, persistence, trace, or client boundary.
 */
export function safeErrorKind(
  error: unknown,
  fallback: string = 'unexpected_error'
): string {
  if (typeof error === 'object' && error !== null) {
    const code = propertyOf(error, 'code');
    if (typeof code === 'string' && Object.hasOwn(SAFE_ERROR_CODES, code)) {
      return SAFE_ERROR_CODES[code]!;
    }

    const status = propertyOf(error, 'status');
    if (typeof status === 'number' && Number.isInteger(status) && status >= 400 && status <= 599) {
      return `http_${status}`;
    }

    const statusCode = propertyOf(error, 'statusCode');
    if (
      typeof statusCode === 'number' &&
      Number.isInteger(statusCode) &&
      statusCode >= 400 &&
      statusCode <= 599
    ) {
      return `http_${statusCode}`;
    }
  }

  try {
    if (error instanceof SyntaxError) return 'syntax_error';
    if (error instanceof TypeError) return 'type_error';
    if (error instanceof RangeError) return 'range_error';
    if (error instanceof Error) {
      const name = propertyOf(error, 'name');
      if (name === 'AbortError') return 'aborted';
      if (name === 'TimeoutError') return 'timeout';
    }
  } catch {
    return fallback;
  }
  return fallback;
}

export function safeErrorMetadata(
  error: unknown,
  fallback: string = 'unexpected_error'
): { errorKind: string } {
  return { errorKind: safeErrorKind(error, fallback) };
}
