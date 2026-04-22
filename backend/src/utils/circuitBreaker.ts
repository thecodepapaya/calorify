/**
 * Lightweight circuit breaker for wrapping unreliable external calls (AI APIs, etc.).
 *
 * States:
 *   CLOSED    — normal operation. Failures are counted; reaching the threshold flips to OPEN.
 *   OPEN      — requests fail fast without invoking the underlying call. After `resetTimeoutMs`,
 *               the next request transitions the breaker to HALF_OPEN.
 *   HALF_OPEN — a single trial request is permitted. Success closes the breaker; failure re-opens it.
 *
 * Consecutive failures only — any success resets the counter. Keeps the implementation dependency-free
 * and easy to reason about. Use one breaker per upstream (e.g. one for OpenAI, one for Gemini).
 */

export type CircuitState = 'CLOSED' | 'OPEN' | 'HALF_OPEN';

export interface CircuitBreakerOptions {
  /** Breaker name for error messages / logs. */
  name: string;
  /** Consecutive failures before opening. Default: 5. */
  failureThreshold?: number;
  /** Milliseconds the breaker stays OPEN before allowing a trial request. Default: 30_000. */
  resetTimeoutMs?: number;
  /** Optional clock override for tests. */
  now?: () => number;
}

export class CircuitBreakerOpenError extends Error {
  constructor(name: string, reopensAt: number) {
    const seconds = Math.max(0, Math.ceil((reopensAt - Date.now()) / 1000));
    super(`Circuit breaker "${name}" is OPEN; failing fast. Retry in ~${seconds}s.`);
    this.name = 'CircuitBreakerOpenError';
  }
}

export class CircuitBreaker {
  private state: CircuitState = 'CLOSED';
  private consecutiveFailures = 0;
  private openedAt = 0;
  private readonly name: string;
  private readonly failureThreshold: number;
  private readonly resetTimeoutMs: number;
  private readonly now: () => number;

  constructor(options: CircuitBreakerOptions) {
    this.name = options.name;
    this.failureThreshold = options.failureThreshold ?? 5;
    this.resetTimeoutMs = options.resetTimeoutMs ?? 30_000;
    this.now = options.now ?? Date.now;
  }

  getState(): CircuitState {
    // Lazily transition OPEN → HALF_OPEN when the cooldown elapses so callers see the right state.
    if (this.state === 'OPEN' && this.now() - this.openedAt >= this.resetTimeoutMs) {
      this.state = 'HALF_OPEN';
    }
    return this.state;
  }

  async execute<T>(fn: () => Promise<T>): Promise<T> {
    const state = this.getState();
    if (state === 'OPEN') {
      throw new CircuitBreakerOpenError(this.name, this.openedAt + this.resetTimeoutMs);
    }

    try {
      const result = await fn();
      this.onSuccess();
      return result;
    } catch (err) {
      this.onFailure();
      throw err;
    }
  }

  private onSuccess(): void {
    this.consecutiveFailures = 0;
    this.state = 'CLOSED';
  }

  private onFailure(): void {
    this.consecutiveFailures += 1;
    // A trial request in HALF_OPEN that fails immediately re-opens the breaker.
    if (this.state === 'HALF_OPEN' || this.consecutiveFailures >= this.failureThreshold) {
      this.state = 'OPEN';
      this.openedAt = this.now();
    }
  }

  /** Test/admin helper: forcibly reset to CLOSED. */
  reset(): void {
    this.state = 'CLOSED';
    this.consecutiveFailures = 0;
    this.openedAt = 0;
  }
}
