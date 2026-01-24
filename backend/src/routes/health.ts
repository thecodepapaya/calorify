import { FastifyInstance } from 'fastify';

export async function healthRoutes(fastify: FastifyInstance): Promise<void> {
  fastify.get('/', async () => {
    return {
      message: 'Welcome to Calorify Backend API',
      version: '1.0.0',
    };
  });
}
