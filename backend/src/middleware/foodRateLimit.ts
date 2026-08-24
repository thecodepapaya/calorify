import type { FastifyReply, FastifyRequest, preHandlerHookHandler } from 'fastify';

export const FOOD_RATE_LIMITS = {
  analysisBudget: [
    {
      name: 'hour',
      userMax: 30,
      ipMax: 300,
      timeWindowMs: 60 * 60 * 1000,
    },
    {
      name: 'day',
      userMax: 100,
      ipMax: 1_000,
      timeWindowMs: 24 * 60 * 60 * 1000,
    },
  ],
  analysis: {
    max: 20,
    timeWindow: '1 minute',
  },
  localNutrition: {
    max: 30,
    timeWindow: '1 minute',
  },
} as const;

const MAX_TRACKED_IDENTITIES = 10_000;

interface CounterEntry {
  count: number;
  startedAtMs: number;
}

interface CounterResult {
  count: number;
  retryAfterSeconds: number;
}

interface RateLimitIdentity {
  key: string;
  max: number;
}

export interface FoodRateLimitHooksOptions {
  now?: () => number;
}

export type FoodRateLimitHooks = preHandlerHookHandler[];

class FixedWindowCounter {
  private readonly entries = new Map<string, CounterEntry>();

  constructor(
    private readonly timeWindowMs: number,
    private readonly now: () => number
  ) {}

  get(key: string): CounterResult {
    const nowMs = this.now();
    const entry = this.entries.get(key);

    if (!entry || entry.startedAtMs + this.timeWindowMs <= nowMs) {
      if (entry) this.entries.delete(key);
      return {
        count: 0,
        retryAfterSeconds: Math.max(1, Math.ceil(this.timeWindowMs / 1000)),
      };
    }

    return {
      count: entry.count,
      retryAfterSeconds: Math.max(
        1,
        Math.ceil((entry.startedAtMs + this.timeWindowMs - nowMs) / 1000)
      ),
    };
  }

  increment(key: string): CounterResult {
    const nowMs = this.now();
    let entry = this.entries.get(key);

    if (!entry || entry.startedAtMs + this.timeWindowMs <= nowMs) {
      this.ensureCapacity(nowMs);
      entry = { count: 0, startedAtMs: nowMs };
    }

    entry.count += 1;
    this.entries.delete(key);
    this.entries.set(key, entry);

    return {
      count: entry.count,
      retryAfterSeconds: Math.max(
        1,
        Math.ceil((entry.startedAtMs + this.timeWindowMs - nowMs) / 1000)
      ),
    };
  }

  private ensureCapacity(nowMs: number): void {
    if (this.entries.size < MAX_TRACKED_IDENTITIES) return;

    for (const [key, entry] of this.entries) {
      if (entry.startedAtMs + this.timeWindowMs <= nowMs) {
        this.entries.delete(key);
      }
    }

    while (this.entries.size >= MAX_TRACKED_IDENTITIES) {
      const oldestKey = this.entries.keys().next().value as string | undefined;
      if (oldestKey === undefined) break;
      this.entries.delete(oldestKey);
    }
  }
}

function getRateLimitIdentities(
  request: FastifyRequest,
  userMax: number,
  ipMax: number
): readonly RateLimitIdentity[] {
  const userId = (request as FastifyRequest & { userId?: string }).userId;
  if (!userId) {
    throw new Error('Food rate limiting must run after authentication');
  }

  return [
    { key: `user:${userId}`, max: userMax },
    { key: `ip:${request.ip}`, max: ipMax },
  ];
}

function sendRateLimitResponse(
  reply: FastifyReply,
  retryAfterSeconds: number,
  windowName: string
): void {
  reply
    .header('retry-after', retryAfterSeconds)
    .status(429)
    .send({
      statusCode: 429,
      error: 'Too Many Requests',
      ok: false,
      message: `Food ${windowName} rate limit exceeded. Try again in ${retryAfterSeconds} seconds.`,
    });
}

export function createFoodRateLimitHooks(
  options: FoodRateLimitHooksOptions = {}
): FoodRateLimitHooks {
  const now = options.now ?? Date.now;
  const windows = FOOD_RATE_LIMITS.analysisBudget.map((policy) => ({
    policy,
    counter: new FixedWindowCounter(policy.timeWindowMs, now),
  }));

  return windows.map(({ policy, counter }, windowIndex) => {
    const hook: preHandlerHookHandler = async (request, reply) => {
      const identities = getRateLimitIdentities(request, policy.userMax, policy.ipMax);
      const results = identities.map(
        ({ key, max }) => ({ ...counter.get(key), max })
      );
      const exceeded = results.filter((result) => result.count >= result.max);
      if (exceeded.length > 0) {
        sendRateLimitResponse(
          reply,
          Math.max(...exceeded.map((result) => result.retryAfterSeconds)),
          policy.name
        );
        return;
      }

      // Commit only after every window hook has accepted the request. This prevents
      // retries rejected by one window from consuming another window's allowance.
      if (windowIndex === windows.length - 1) {
        for (const window of windows) {
          const acceptedIdentities = getRateLimitIdentities(
            request,
            window.policy.userMax,
            window.policy.ipMax
          );
          for (const identity of acceptedIdentities) {
            window.counter.increment(identity.key);
          }
        }
      }
    };

    return hook;
  });
}

export function registerFoodRateLimitHooks(
  fastify: { addHook: (name: 'preHandler', hook: preHandlerHookHandler) => unknown },
  hooks: FoodRateLimitHooks
): void {
  for (const hook of hooks) {
    fastify.addHook('preHandler', hook);
  }
}
