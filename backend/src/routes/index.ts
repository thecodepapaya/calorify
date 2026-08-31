import { FastifyInstance } from 'fastify';
import { healthRoutes } from './health.js';
import { foodRoutes } from './v1/food.js';
import { foodRoutesV3 } from './v3/food.js';
import { analysisHistoryRoutes } from './analysisHistory.js';
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

  // API v3 routes (scenario-based meal analysis)
  await fastify.register(foodRoutesV3, {
    prefix: `${config.API_V3_STR}/food`,
    foodRateLimitHooks,
  });

  await fastify.register(analysisHistoryRoutes);
}
