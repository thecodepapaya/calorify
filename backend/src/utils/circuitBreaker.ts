/**
 * Lightweight circuit breaker for wrapping unreliable external calls (AI APIs, etc.).
 *
 * States:
 *   CLOSED    — normal operation. Failures are counted; reaching the threshold flips to OPEN.
 *   OPEN      — requests fail fast without invoking the underlying call. Once `resetTimeoutMs`
 *               has elapsed since the breaker opened, the *next* `execute` call transitions to
 *               HALF_OPEN and is allowed through as the single trial probe.
 *   HALF_OPEN — a trial request is in flight. Any other concurrent request fails fast until the
 *               trial resolves. Success closes the breaker; failure re-opens it.
 *
 * Consecutive failures only — any success resets the counter. Dependency-free; use one breaker
 * per upstream (e.g. one for OpenRouter and one for direct OpenAI).
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
  /** Optional callback fired whenever the breaker changes state (useful for metrics). */
  onStateChange?: (next: CircuitState, prev: CircuitState) => void;
}

export class CircuitBreakerOpenError extends Error {
  constructor(name: string, retryAfterMs: number) {
    const seconds = Math.max(0, Math.ceil(retryAfterMs / 1000));
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
  private readonly onStateChange?: (next: CircuitState, prev: CircuitState) => void;

  constructor(options: CircuitBreakerOptions) {
    this.name = options.name;
    this.failureThreshold = options.failureThreshold ?? 5;
    this.resetTimeoutMs = options.resetTimeoutMs ?? 30_000;
    this.now = options.now ?? Date.now;
    this.onStateChange = options.onStateChange;
  }

  private transition(next: CircuitState): void {
    const prev = this.state;
    if (prev === next) return;
    this.state = next;
    try {
      this.onStateChange?.(next, prev);
    } catch {
      // Metrics callbacks must never break the breaker.
    }
  }

  /** Pure read of the current state. Does not mutate. */
  getState(): CircuitState {
    return this.state;
  }

  async execute<T>(fn: () => Promise<T>): Promise<T> {
    // JS is single-threaded, so the synchronous block below is atomic with respect to other
    // execute() callers: the first request whose gate check sees OPEN-with-elapsed-cooldown
    // flips the state to HALF_OPEN and proceeds as the trial; every other concurrent request
    // observes HALF_OPEN (or still-OPEN) and fails fast.
    if (this.state === 'OPEN') {
      const elapsed = this.now() - this.openedAt;
      if (elapsed < this.resetTimeoutMs) {
        throw new CircuitBreakerOpenError(this.name, this.resetTimeoutMs - elapsed);
      }
      this.transition('HALF_OPEN');
    } else if (this.state === 'HALF_OPEN') {
      // A trial probe is already in flight; don't stampede the upstream.
      throw new CircuitBreakerOpenError(this.name, 0);
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
    this.transition('CLOSED');
  }

  private onFailure(): void {
    this.consecutiveFailures += 1;
    // A HALF_OPEN trial that fails re-opens the breaker immediately, regardless of threshold.
    if (this.state === 'HALF_OPEN' || this.consecutiveFailures >= this.failureThreshold) {
      this.openedAt = this.now();
      this.transition('OPEN');
    }
  }

  /** Test/admin helper: forcibly reset to CLOSED. */
  reset(): void {
    this.consecutiveFailures = 0;
    this.openedAt = 0;
    this.transition('CLOSED');
  }
}
