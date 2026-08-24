import { FastifyInstance } from 'fastify';
import { healthRoutes } from './health.js';
import { foodRoutes } from './v1/food.js';
import { foodRoutesV2 } from './v2/food.js';
import { userRoutes } from './v1/user.js';
import config from '../config.js';
import {
  createFoodRateLimitHooks,
  type FoodRateLimitHooks,
} from '../middleware/foodRateLimit.js';

export interface RegisterRoutesOptions {
  foodRateLimitHooks?: FoodRateLimitHooks;
}

export async function registerRoutes(
  fastify: FastifyInstance,
  options: RegisterRoutesOptions = {}
): Promise<void> {
  const foodRateLimitHooks =
    options.foodRateLimitHooks ?? createFoodRateLimitHooks();

  // Health check route
  await fastify.register(healthRoutes);

  // API v1 routes
  await fastify.register(foodRoutes, { prefix: `${config.API_V1_STR}/food` });
  await fastify.register(userRoutes, { prefix: `${config.API_V1_STR}/user` });

  // API v2 routes (streamed nutrition engine)
  await fastify.register(foodRoutesV2, {
    prefix: `${config.API_V2_STR}/food`,
    foodRateLimitHooks,
  });
}
