import Fastify from 'fastify';
import cors from '@fastify/cors';
import multipart from '@fastify/multipart';
import swagger from '@fastify/swagger';
import swaggerUi from '@fastify/swagger-ui';
import { registerRoutes } from './routes/index.js';
import { errorHandler } from './utils/errors.js';
import config from './config.js';
import { initializeDatabase } from './services/database.js';
import { initializeFirebase } from './services/firebase.js';

async function buildApp() {
  const fastify = Fastify({
    logger: config.DEBUG,
  });

  // Register CORS - must be registered before other plugins
  await fastify.register(cors, {
    origin: true, // Allow all origins (use true instead of '*' for credentials)
    credentials: true,
    methods: ['GET', 'POST', 'PUT', 'DELETE', 'OPTIONS', 'PATCH'],
    allowedHeaders: ['Content-Type', 'Authorization', 'X-Requested-With', 'Accept-Language'],
  });

  // Register multipart for file uploads
  await fastify.register(multipart);

  // Register Swagger for API documentation
  await fastify.register(swagger, {
    openapi: {
      openapi: '3.0.0',
      info: {
        title: 'Calorify Backend API',
        description: 'API documentation for Calorify Backend - Food analysis and user profile management',
        version: '1.0.0',
      },
      servers: [
        {
          url: '/',
          description: 'Current server (relative URL)',
        },
      ],
      components: {
        securitySchemes: {
          bearerAuth: {
            type: 'http',
            scheme: 'bearer',
            bearerFormat: 'JWT',
            description: 'Firebase ID Token (Bearer token)',
          },
        },
      },
      tags: [
        { name: 'Food', description: 'Food analysis and identification endpoints' },
        { name: 'User', description: 'User profile management endpoints' },
        { name: 'Health', description: 'Health check endpoints' },
      ],
    },
  });

  // Register Swagger UI
  await fastify.register(swaggerUi, {
    routePrefix: '/docs',
    uiConfig: {
      docExpansion: 'list',
      deepLinking: true,
      persistAuthorization: true,
    },
    staticCSP: true,
    transformStaticCSP: (header: string) => header,
    uiHooks: {
      onRequest: async (_request, reply) => {
        // Ensure CORS headers are set for Swagger UI
        reply.header('Access-Control-Allow-Origin', '*');
        reply.header('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
        reply.header('Access-Control-Allow-Headers', 'Content-Type, Authorization');
      },
    },
  });

  // Register routes
  await fastify.register(registerRoutes);

  // Error handler
  fastify.setErrorHandler(errorHandler);

  return fastify;
}

async function start() {
  try {
    // Initialize Firebase
    initializeFirebase();

    // Initialize database connection
    if (config.DATABASE_URL) {
      initializeDatabase();
      console.log('✅ Database connection initialized');
    } else {
      console.warn('⚠️  DATABASE_URL not set, database features will be unavailable');
    }

    const app = await buildApp();

    await app.listen({
      port: config.PORT,
      host: '0.0.0.0',
    });

    const externalUrl = config.EXTERNAL_PORT !== config.PORT
      ? `http://localhost:${config.EXTERNAL_PORT} (external) / http://0.0.0.0:${config.PORT} (internal)`
      : `http://localhost:${config.PORT}`;

    console.log(`🚀 Server running on http://0.0.0.0:${config.PORT}`);
    console.log(`📍 Health check: ${externalUrl}`);
    console.log(`📚 API Documentation: ${externalUrl}/docs`);
  } catch (error) {
    console.error('Failed to start server:', error);
    process.exit(1);
  }
}

start();
