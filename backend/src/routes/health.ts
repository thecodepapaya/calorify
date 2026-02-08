import { FastifyInstance } from 'fastify';

export async function healthRoutes(fastify: FastifyInstance): Promise<void> {
  // Root: welcome message (for browsers/docs)
  fastify.get('/', {
    schema: {
      description: 'API root. Returns welcome message and version.',
      tags: ['Health'],
      response: {
        200: {
          description: 'API root',
          type: 'object',
          properties: {
            message: { type: 'string' },
            version: { type: 'string' },
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

  // Dedicated health check endpoint for probes (Docker, K8s, load balancers)
  fastify.get('/health', {
    schema: {
      description: 'Health check for probes. Returns minimal status.',
      tags: ['Health'],
      response: {
        200: {
          description: 'API is healthy',
          type: 'object',
          properties: {
            status: { type: 'string', enum: ['ok'] },
          },
        },
      },
    },
  }, async () => {
    return { status: 'ok' };
  });
}
