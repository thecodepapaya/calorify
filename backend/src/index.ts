import Fastify from 'fastify';
import cors from '@fastify/cors';
import multipart from '@fastify/multipart';
import { registerRoutes } from './routes/index.js';
import { errorHandler } from './utils/errors.js';
import config from './config.js';

async function buildApp() {
  const fastify = Fastify({
    logger: config.DEBUG,
  });

  // Register CORS
  await fastify.register(cors, {
    origin: '*', // In production, specify origins
    credentials: true,
  });

  // Register multipart for file uploads
  await fastify.register(multipart);

  // Register routes
  await fastify.register(registerRoutes);

  // Error handler
  fastify.setErrorHandler(errorHandler);

  return fastify;
}

async function start() {
  try {
    const app = await buildApp();

    await app.listen({
      port: config.PORT,
      host: '0.0.0.0',
    });

    console.log(`🚀 Server running on http://0.0.0.0:${config.PORT}`);
    console.log(`📍 Health check: http://0.0.0.0:${config.PORT}/`);
  } catch (error) {
    console.error('Failed to start server:', error);
    process.exit(1);
  }
}

start();
