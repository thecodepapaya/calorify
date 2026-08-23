import type { FastifyReply, FastifyRequest, preHandlerHookHandler } from 'fastify';

export const FOOD_RATE_LIMITS = {
  allFood: [
    {
      name: 'hour',
      max: 30,
      timeWindowMs: 60 * 60 * 1000,
    },
    {
      name: 'day',
      max: 100,
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

export interface FoodRateLimitHooksOptions {
  now?: () => number;
}

export type FoodRateLimitHooks = readonly preHandlerHookHandler[];

class FixedWindowCounter {
  private readonly entries = new Map<string, CounterEntry>();

  constructor(
    private readonly timeWindowMs: number,
    private readonly now: () => number
  ) {}

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

function getRateLimitKeys(request: FastifyRequest): readonly string[] {
  const userId = (request as FastifyRequest & { userId?: string }).userId;
  if (!userId) {
    throw new Error('Food rate limiting must run after authentication');
  }

  return [`user:${userId}`, `ip:${request.ip}`];
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

  return FOOD_RATE_LIMITS.allFood.map((policy) => {
    const counter = new FixedWindowCounter(policy.timeWindowMs, now);

    const hook: preHandlerHookHandler = async (request, reply) => {
      const results = getRateLimitKeys(request).map((key) => counter.increment(key));
      const exceeded = results.filter((result) => result.count > policy.max);
      if (exceeded.length === 0) return;

      sendRateLimitResponse(
        reply,
        Math.max(...exceeded.map((result) => result.retryAfterSeconds)),
        policy.name
      );
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
