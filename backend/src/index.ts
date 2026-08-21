import Fastify from 'fastify';
import type { FastifyServerOptions } from 'fastify';
import { randomUUID } from 'node:crypto';
import { pathToFileURL } from 'node:url';
import cors from '@fastify/cors';
import helmet from '@fastify/helmet';
import multipart from '@fastify/multipart';
import swagger from '@fastify/swagger';
import swaggerUi from '@fastify/swagger-ui';
import rateLimit from '@fastify/rate-limit';
import { registerRoutes } from './routes/index.js';
import { errorHandler } from './utils/errors.js';
import { redactHeaders } from './utils/requestLog.js';
import { safeErrorMetadata } from './utils/safeError.js';
import config from './config.js';
import { closeDatabase, initializeDatabase } from './services/database.js';
import { initializeFirebase } from './services/firebase.js';
import { runMigrations } from './services/migrate.js';
import { startAiSummaryCron } from './jobs/aiSummaryCron.js';
import { startUsdaRefreshCron } from './jobs/usdaRefreshCron.js';
import { bootstrapUsdaIfNeeded } from './services/usdaBootstrap.js';
import {
  createShutdownCoordinator,
  registerShutdownSignals,
  type StoppableTask,
  withStartupCleanup,
} from './serverLifecycle.js';
import {
  registry as metricsRegistry,
  httpRequestsTotal,
  httpRequestDurationSeconds,
} from './services/metrics.js';

export interface BuildAppOptions {
  logger?: FastifyServerOptions['logger'];
  rateLimitMax?: number;
}

export async function buildApp(options: BuildAppOptions = {}) {
  // Configure structured stdout logging for production/staging.
  const loggerConfig: any = {
    level: config.DEBUG ? 'debug' : 'info',
  };

  // For production/staging: Output JSON logs to stdout
  // Promtail will capture these and send them to Loki
  if (config.ENVIRONMENT !== 'development') {
    // JSON output for Promtail to parse
    loggerConfig.transport = undefined;
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
    logger: options.logger ?? loggerConfig,
    // The hooks below emit the structured request/response records used by
    // Loki. Disable Fastify's built-in pair to avoid duplicate log I/O on
    // every request.
    disableRequestLogging: true,
    trustProxy: config.TRUST_PROXY,
    // 60s per-request timeout — prevents slow AI/DB handlers from holding connections open
    // indefinitely. Individual AI client timeouts (30s) still trigger first for cleaner errors.
    requestTimeout: 60_000,
    // Client-controlled correlation headers can contain identifiers or log
    // payloads, so logs use a fresh opaque server-side request ID.
    genReqId: () => `req-${randomUUID()}`,
  });

  // Log only bounded request metadata. Route templates avoid recording path
  // parameters, query strings, and user-provided URL fragments.
  fastify.addHook('onRequest', async (request) => {
    const startTime = Date.now();
    (request as any).startTime = startTime;
    const route = request.routeOptions?.url ?? 'unmatched';

    const headersRecord: Record<string, string> = {};
    for (const [k, v] of Object.entries(request.headers)) {
      if (v !== undefined) headersRecord[k] = Array.isArray(v) ? v.join(', ') : String(v);
    }

    request.log.info({
      type: 'request',
      method: request.method,
      route,
      headers: redactHeaders(headersRecord),
    }, `→ ${request.method} ${route}`);
  });

  // Response logs likewise contain only bounded operational metadata.
  fastify.addHook('onResponse', async (request, reply) => {
    const startTime = (request as any).startTime;
    const responseTime = startTime ? Date.now() - startTime : -1;
    const statusCode = reply.statusCode;
    const logLevel = statusCode >= 500 ? 'error' : statusCode >= 400 ? 'warn' : 'info';
    const route = request.routeOptions?.url ?? 'unmatched';

    const headersRecord: Record<string, string> = {};
    for (const [k, v] of Object.entries(request.headers)) {
      if (v !== undefined) headersRecord[k] = Array.isArray(v) ? v.join(', ') : String(v);
    }

    const resHeadersRecord: Record<string, string> = {};
    const resHeaders = reply.getHeaders();
    for (const [k, v] of Object.entries(resHeaders)) {
      if (v !== undefined) resHeadersRecord[k] = Array.isArray(v) ? v.join(', ') : String(v);
    }

    const streamMeta = (request as any).streamResponseMeta;

    request.log[logLevel]({
      type: 'response',
      method: request.method,
      route,
      statusCode,
      responseTime,
      requestHeaders: redactHeaders(headersRecord),
      responseHeaders: redactHeaders(resHeadersRecord),
      responseStream: streamMeta ?? null,
    }, `← ${request.method} ${route} ${statusCode} (${responseTime}ms)`);
  });

  // Record Prometheus HTTP metrics. Uses onResponse (not onSend) so the statusCode is final.
  // We label by the Fastify route pattern (e.g. `/api/v1/food/detect-text`) rather than the raw
  // URL to avoid unbounded label cardinality from path params / query strings.
  fastify.addHook('onResponse', async (request, reply) => {
    // Don't count the scrape endpoint itself — it would inflate request counts and skew dashboards.
    if (request.url.startsWith('/metrics')) return;

    const startTime = (request as any).startTime;
    const durationSec = startTime ? (Date.now() - startTime) / 1000 : 0;
    const route = request.routeOptions?.url ?? 'unmatched';
    const labels = {
      method: request.method,
      route,
      status: String(reply.statusCode),
    };
    httpRequestsTotal.inc(labels);
    httpRequestDurationSeconds.observe(labels, durationSec);
  });

  // Register Helmet globally with its default security headers (including a strict CSP,
  // HSTS, X-Frame-Options, etc.). Swagger UI is registered in an encapsulated scope below
  // with CSP disabled, so the relaxed policy only applies to the /docs routes — the rest
  // of the API keeps the default helmet CSP.
  await fastify.register(helmet, {
    // Embedder policy can break Swagger UI's cross-origin resources; safe to leave off
    // since we're a JSON API, not a document host.
    crossOriginEmbedderPolicy: false,
  });

  // Register CORS - must be registered before other plugins
  await fastify.register(cors, {
    origin: true, // Allow all origins (use true instead of '*' for credentials)
    credentials: true,
    methods: ['GET', 'POST', 'PUT', 'DELETE', 'OPTIONS', 'PATCH'],
    allowedHeaders: ['Content-Type', 'Authorization', 'X-Requested-With', 'Accept-Language'],
  });

  // Register rate limiting
  await fastify.register(rateLimit, {
    global: true,
    max: options.rateLimitMax ?? 100,
    timeWindow: '1 minute',
    // @fastify/rate-limit appends its route hook after route-level
    // preHandlers. Authenticated routes therefore have request.userId before
    // the key is generated, while public routes continue to fall back to IP.
    hook: 'preHandler',
    keyGenerator: (request) => {
      // Use userId if available (from authenticateUser middleware)
      // Otherwise fallback to IP address
      return (request as any).userId || request.ip;
    },
    errorResponseBuilder: (_request, context) => {
      return {
        statusCode: 429,
        error: 'Too Many Requests',
        ok: false,
        message: `Rate limit exceeded. Try again in ${context.after}.`,
      };
    },
  });

  // Register multipart for file uploads
  await fastify.register(multipart, {
    limits: {
      files: 1,
      // The legacy multipart endpoint buffers the image for the AI SDK. Bound
      // that allocation; current clients upload compressed images by URL.
      fileSize: 10 * 1024 * 1024,
    },
  });

  // Register Swagger for API documentation
  await fastify.register(swagger, {
    openapi: {
      openapi: '3.0.0',
      info: {
        title: 'Calorify Backend API',
        description: 'API documentation for Calorify Backend - Food analysis and user profile management',
        version: config.APP_VERSION,
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

  // Register Swagger UI inside an encapsulated scope that re-registers helmet with CSP
  // disabled. Swagger UI needs inline scripts/styles and its own `staticCSP` provides a
  // purpose-built CSP for the /docs routes; helmet's strict global CSP would break it.
  // This scoping keeps the default strict CSP applied to every other route.
  await fastify.register(async (docsScope) => {
    await docsScope.register(helmet, {
      global: true,
      contentSecurityPolicy: false,
      crossOriginEmbedderPolicy: false,
    });
    await docsScope.register(swaggerUi, {
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
  });

  // Prometheus scrape endpoint. No auth (internal/private network only — expose via your
  // ingress/firewall rules, not Firebase auth). Excluded from rate limiting so a busy scrape
  // schedule can't lock itself out.
  fastify.get(
    '/metrics',
    {
      config: { rateLimit: false },
      schema: {
        description: 'Prometheus metrics endpoint (plaintext exposition format).',
        tags: ['Health'],
        response: {
          200: { type: 'string' },
        },
      },
      logLevel: 'warn', // suppress per-scrape info logs
    },
    async (_request, reply) => {
      reply.header('Content-Type', metricsRegistry.contentType);
      return metricsRegistry.metrics();
    }
  );

  // Register routes
  await fastify.register(registerRoutes);

  // Error handler
  fastify.setErrorHandler(errorHandler);

  return fastify;
}

async function start() {
  let app: Awaited<ReturnType<typeof buildApp>> | undefined;
  const cronTasks: StoppableTask[] = [];

  try {
    await withStartupCleanup(async () => {
      // Initialize Firebase
      initializeFirebase();

      // Initialize database connection and run pending migrations
      if (config.DATABASE_URL) {
        initializeDatabase();
        console.log('✅ Database connection initialized');
        await runMigrations();
        bootstrapUsdaIfNeeded({
          zipUrl: config.USDA_ZIP_URL,
          datasetVersion: config.USDA_DATASET_VERSION ?? 'usda-2025-12-18',
          sourceReleaseDate: config.USDA_SOURCE_RELEASE_DATE ?? '2025-12-18',
          dataDir: config.USDA_DATA_DIR,
        }).catch((err) =>
          console.error(
            '[usda:bootstrap] startup failed:',
            safeErrorMetadata(err, 'usda_bootstrap_failed')
          )
        );
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

      const builtApp = await buildApp();
      app = builtApp;

      await builtApp.listen({
        port: config.PORT,
        host: '0.0.0.0',
      });

      // Timers are created only after the server is accepting connections. If
      // either scheduler throws, the handle already created is retained for
      // startup cleanup.
      if (config.DATABASE_URL) {
        cronTasks.push(startAiSummaryCron());
        const usdaRefreshTask = startUsdaRefreshCron();
        if (usdaRefreshTask) cronTasks.push(usdaRefreshTask);
      }

      const shutdown = createShutdownCoordinator({
        cronTasks,
        closeServer: () => builtApp.close(),
        closeDatabase,
      });
      registerShutdownSignals(process, shutdown, (error, signal) => {
        console.error(
          `Failed to shut down cleanly after ${signal}:`,
          safeErrorMetadata(error, 'shutdown_failed')
        );
        process.exitCode = 1;
      });

      const externalUrl = config.EXTERNAL_PORT !== config.PORT
        ? `http://localhost:${config.EXTERNAL_PORT} (external) / http://0.0.0.0:${config.PORT} (internal)`
        : `http://localhost:${config.PORT}`;

      console.log(`🚀 Server running on http://0.0.0.0:${config.PORT}`);
      console.log(`📍 Health check: ${externalUrl}`);
      console.log(`📚 API Documentation: ${externalUrl}/docs`);

      // Log a test message to verify logging is working
      builtApp.log.info({
        type: 'startup',
        message: 'Server started successfully',
        environment: config.ENVIRONMENT,
        lokiEnabled: !!(config.LOKI_URL && config.ENVIRONMENT !== 'development'),
      }, 'Server startup complete');
    }, {
      cronTasks,
      closeServer: async () => {
        if (app) await app.close();
      },
      closeDatabase,
    }, (cleanupError) => {
      console.error(
        'Failed to clean up after startup error:',
        safeErrorMetadata(cleanupError, 'startup_cleanup_failed')
      );
    });
  } catch (error) {
    console.error('Failed to start server:', safeErrorMetadata(error, 'startup_failed'));
    process.exit(1);
  }
}

const entrypoint = process.argv[1];
if (entrypoint && import.meta.url === pathToFileURL(entrypoint).href) {
  void start();
}
