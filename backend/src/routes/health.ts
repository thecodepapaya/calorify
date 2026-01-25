import { FastifyInstance } from 'fastify';

export async function healthRoutes(fastify: FastifyInstance): Promise<void> {
  fastify.get('/', {
    schema: {
      description: 'Health check endpoint. Returns API status and version information.',
      tags: ['Health'],
      response: {
        200: {
          description: 'API is healthy',
          type: 'object',
          properties: {
            message: {
              type: 'string',
              example: 'Welcome to Calorify Backend API',
            },
            version: {
              type: 'string',
              example: '1.0.0',
            },
          },
        },
      },
    },
  }, async () => {
    return {
      message: 'Welcome to Calorify Backend API',
      version: '1.0.0',
    };
  });
}
