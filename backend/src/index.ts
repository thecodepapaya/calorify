import Fastify from 'fastify';
import cors from '@fastify/cors';
import multipart from '@fastify/multipart';
import swagger from '@fastify/swagger';
import swaggerUi from '@fastify/swagger-ui';
import { registerRoutes } from './routes/index.js';
import { errorHandler } from './utils/errors.js';
import { redactHeaders, bodyForLog } from './utils/requestLog.js';
import config from './config.js';
import { initializeDatabase } from './services/database.js';
import { initializeFirebase } from './services/firebase.js';

async function buildApp() {
  // Configure Pino logger with Loki transport in production/staging
  const loggerConfig: any = {
    level: config.DEBUG ? 'debug' : 'info',
  };

  // For production/staging: Output JSON logs to stdout
  // Promtail will capture these and send them to Loki
  // This is more reliable than pino-loki transport which can fail silently
  if (config.LOKI_URL && config.ENVIRONMENT !== 'development') {
    // Output JSON logs to stdout - Promtail will capture and send to Loki
    // This ensures logs are always visible in docker logs AND sent to Loki
    loggerConfig.serializers = {
      req: (req: any) => ({
        method: req.method,
        url: req.url,
        path: req.url?.split('?')[0],
        query: req.query,
      }),
      res: (res: any) => ({
        statusCode: res.statusCode,
      }),
    };
    // JSON output for Promtail to parse
    loggerConfig.transport = undefined; // Don't use pino-loki transport
  } else {
    // Pretty print for development
    loggerConfig.transport = {
      target: 'pino-pretty',
      options: {
        colorize: true,
        translateTime: 'HH:MM:ss Z',
        ignore: 'pid,hostname',
      },
    };
  }

  const fastify = Fastify({
    logger: loggerConfig,
    // Generate request IDs for log correlation
    genReqId: (req) => {
      const reqId = req.headers['x-request-id'];
      const corrId = req.headers['x-correlation-id'];

      // Handle case where headers might be string or string[]
      const reqIdStr = Array.isArray(reqId) ? reqId[0] : reqId;
      const corrIdStr = Array.isArray(corrId) ? corrId[0] : corrId;

      return reqIdStr || corrIdStr || `req-${Date.now()}-${Math.random().toString(36).substr(2, 9)}`;
    },
  });

  // Capture response body for logging (onSend runs when reply.send() is called)
  fastify.addHook('onSend', async (request, _reply, payload) => {
    (request as any).responsePayload = payload;
    return payload;
  });

  // Request logging: full request object (headers redacted)
  fastify.addHook('onRequest', async (request) => {
    const startTime = Date.now();
    (request as any).startTime = startTime;

    const headersRecord: Record<string, string> = {};
    for (const [k, v] of Object.entries(request.headers)) {
      if (v !== undefined) headersRecord[k] = Array.isArray(v) ? v.join(', ') : String(v);
    }

    request.log.info({
      type: 'request',
      req: {
        method: request.method,
        url: request.url,
        path: request.url.split('?')[0],
        query: request.query,
        headers: redactHeaders(headersRecord),
        remoteAddress: request.ip,
      },
      method: request.method,
      url: request.url,
      path: request.url.split('?')[0],
      query: request.query,
      headers: redactHeaders(headersRecord),
      remoteAddress: request.ip,
    }, `→ ${request.method} ${request.url}`);
  });

  // Response logging: full request + response objects (GCP-style for Grafana)
  fastify.addHook('onResponse', async (request, reply) => {
    const startTime = (request as any).startTime;
    const responseTime = startTime ? Date.now() - startTime : -1;
    const statusCode = reply.statusCode;
    const logLevel = statusCode >= 500 ? 'error' : statusCode >= 400 ? 'warn' : 'info';

    const headersRecord: Record<string, string> = {};
    for (const [k, v] of Object.entries(request.headers)) {
      if (v !== undefined) headersRecord[k] = Array.isArray(v) ? v.join(', ') : String(v);
    }

    const resHeadersRecord: Record<string, string> = {};
    const resHeaders = reply.getHeaders();
    for (const [k, v] of Object.entries(resHeaders)) {
      if (v !== undefined) resHeadersRecord[k] = Array.isArray(v) ? v.join(', ') : String(v);
    }

    const maxBody = config.MAX_BODY_LOG_BYTES;
    const logBody = config.LOG_REQUEST_RESPONSE_BODIES;

    const reqBody = logBody ? bodyForLog((request as any).body, maxBody) : null;
    const resPayload = (request as any).responsePayload;
    const resBody = logBody && resPayload !== undefined
      ? bodyForLog(resPayload, maxBody)
      : null;

    request.log[logLevel]({
      type: 'response',
      req: {
        method: request.method,
        url: request.url,
        path: request.url.split('?')[0],
        query: request.query,
        headers: redactHeaders(headersRecord),
        body: reqBody,
        remoteAddress: request.ip,
      },
      res: {
        statusCode,
        responseTimeMs: responseTime,
        headers: redactHeaders(resHeadersRecord),
        body: resBody,
      },
      method: request.method,
      url: request.url,
      statusCode,
      responseTime,
      requestBody: reqBody,
      responseBody: resBody,
    }, `← ${request.method} ${request.url} ${statusCode} (${responseTime}ms)`);
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

    // Log Loki configuration
    if (config.LOKI_URL && config.ENVIRONMENT !== 'development') {
      const lokiUrl = new URL(config.LOKI_URL);
      console.log(`📊 Loki logging enabled: ${lokiUrl.hostname}:${lokiUrl.port || '3100'}`);
      console.log(`📊 Logs Dashboard: http://localhost:3000`);
    } else {
      console.log('📝 Using local logging (development mode)');
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

    // Log a test message to verify logging is working
    app.log.info({
      type: 'startup',
      message: 'Server started successfully',
      environment: config.ENVIRONMENT,
      lokiEnabled: !!(config.LOKI_URL && config.ENVIRONMENT !== 'development'),
    }, 'Server startup complete');
  } catch (error) {
    console.error('Failed to start server:', error);
    process.exit(1);
  }
}

start();
