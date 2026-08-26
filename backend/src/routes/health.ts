import { FastifyInstance } from 'fastify';
import config from '../config.js';
import { readinessCheck } from '../services/infrastructure/database.js';

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
      version: config.APP_VERSION,
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

  fastify.get('/ready', {
    schema: {
      description: 'Readiness probe for database and active USDA dataset dependencies.',
      tags: ['Health'],
      response: {
        200: {
          description: 'All required dependencies are ready',
          type: 'object',
          properties: {
            status: { type: 'string', enum: ['ready'] },
            checks: {
              type: 'object',
              properties: {
                database: { type: 'boolean' },
                usdaDataset: { type: 'boolean' },
              },
              required: ['database', 'usdaDataset'],
            },
          },
          required: ['status', 'checks'],
        },
        503: {
          description: 'One or more required dependencies are unavailable',
          type: 'object',
          properties: {
            status: { type: 'string', enum: ['not_ready'] },
            checks: {
              type: 'object',
              properties: {
                database: { type: 'boolean' },
                usdaDataset: { type: 'boolean' },
              },
              required: ['database', 'usdaDataset'],
            },
          },
          required: ['status', 'checks'],
        },
      },
    },
  }, async (_request, reply) => {
    const checks = await readinessCheck();
    if (checks.database && checks.usdaDataset) {
      return { status: 'ready' as const, checks };
    }
    return reply.status(503).send({ status: 'not_ready' as const, checks });
  });
}
