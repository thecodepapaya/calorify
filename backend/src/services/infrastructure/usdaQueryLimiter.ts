export interface UsdaQueryLimiterSnapshot {
  active: number;
  queued: number;
}

export type UsdaQueryQueueFailure = 'QUEUE_FULL' | 'QUEUE_TIMEOUT';

export class UsdaQueryQueueError extends Error {
  readonly code: 'USDA_QUERY_QUEUE_FULL' | 'USDA_QUERY_QUEUE_TIMEOUT';

  constructor(
    readonly reason: UsdaQueryQueueFailure,
    readonly snapshot: UsdaQueryLimiterSnapshot,
  ) {
    super(reason === 'QUEUE_FULL'
      ? 'USDA query queue is full'
      : 'Timed out waiting for a USDA query slot');
    this.name = 'UsdaQueryQueueError';
    this.code = reason === 'QUEUE_FULL'
      ? 'USDA_QUERY_QUEUE_FULL'
      : 'USDA_QUERY_QUEUE_TIMEOUT';
  }
}

export interface UsdaQueryLease {
  waitMs: number;
  release(): void;
}

interface QueuedAcquire {
  startedAt: number;
  settled: boolean;
  timer: ReturnType<typeof setTimeout>;
  resolve(lease: UsdaQueryLease): void;
  reject(error: UsdaQueryQueueError): void;
}

export interface UsdaQueryLimiterOptions {
  concurrency: number;
  maxQueued: number;
  queueTimeoutMs: number;
  onChange?: (snapshot: UsdaQueryLimiterSnapshot) => void;
  now?: () => number;
}

/** Small FIFO semaphore used at the single process-wide USDA query boundary. */
export class UsdaQueryLimiter {
  private active = 0;
  private readonly queue: QueuedAcquire[] = [];
  private readonly now: () => number;

  constructor(private readonly options: UsdaQueryLimiterOptions) {
    if (!Number.isInteger(options.concurrency) || options.concurrency < 1) {
      throw new Error('USDA query concurrency must be a positive integer');
    }
    if (!Number.isInteger(options.maxQueued) || options.maxQueued < 1) {
      throw new Error('USDA query queue limit must be a positive integer');
    }
    if (!Number.isFinite(options.queueTimeoutMs) || options.queueTimeoutMs <= 0) {
      throw new Error('USDA query queue timeout must be positive');
    }
    this.now = options.now ?? Date.now;
  }

  snapshot(): UsdaQueryLimiterSnapshot {
    return { active: this.active, queued: this.queue.length };
  }

  acquire(): Promise<UsdaQueryLease> {
    const startedAt = this.now();
    if (this.active < this.options.concurrency) {
      this.active += 1;
      this.changed();
      return Promise.resolve(this.lease(startedAt));
    }
    if (this.queue.length >= this.options.maxQueued) {
      return Promise.reject(new UsdaQueryQueueError('QUEUE_FULL', this.snapshot()));
    }

    return new Promise<UsdaQueryLease>((resolve, reject) => {
      const queued = {} as QueuedAcquire;
      queued.startedAt = startedAt;
      queued.settled = false;
      queued.resolve = resolve;
      queued.reject = reject;
      queued.timer = setTimeout(() => {
        if (queued.settled) return;
        queued.settled = true;
        const index = this.queue.indexOf(queued);
        if (index >= 0) this.queue.splice(index, 1);
        this.changed();
        reject(new UsdaQueryQueueError('QUEUE_TIMEOUT', this.snapshot()));
      }, this.options.queueTimeoutMs);
      this.queue.push(queued);
      this.changed();
    });
  }

  private lease(startedAt: number): UsdaQueryLease {
    let released = false;
    return {
      waitMs: Math.max(0, this.now() - startedAt),
      release: () => {
        if (released) return;
        released = true;
        this.active -= 1;
        this.drain();
      },
    };
  }

  private drain(): void {
    while (this.active < this.options.concurrency) {
      const queued = this.queue.shift();
      if (queued === undefined) break;
      if (queued.settled) continue;
      queued.settled = true;
      clearTimeout(queued.timer);
      this.active += 1;
      queued.resolve(this.lease(queued.startedAt));
    }
    this.changed();
  }

  private changed(): void {
    this.options.onChange?.(this.snapshot());
  }
}
