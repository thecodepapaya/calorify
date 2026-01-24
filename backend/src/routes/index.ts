import { FastifyInstance } from 'fastify';
import { healthRoutes } from './health.js';
import { foodRoutes } from './v1/food.js';
import config from '../config.js';

export async function registerRoutes(fastify: FastifyInstance): Promise<void> {
  // Health check route
  await fastify.register(healthRoutes);

  // API v1 routes
  await fastify.register(foodRoutes, { prefix: `${config.API_V1_STR}/food` });
}
