import { FastifyInstance, FastifyRequest, FastifyReply } from 'fastify';
import { analyzeTextV2, analyzeImageV2, PipelineEvent } from '../../services/foodAnalysisV2.js';
import { createErrorResponse } from '../../utils/errors.js';

interface AnalyzeTextBody {
  textDescription: string;
}

interface AnalyzeImageBody {
  imageUrl: string;
}

type StreamFormat = 'ndjson' | 'sse';

function getStreamFormat(acceptHeader?: string): StreamFormat {
  if (!acceptHeader) return 'ndjson';
  if (acceptHeader.includes('text/event-stream')) return 'sse';
  return 'ndjson';
}

function writeEvent(reply: FastifyReply, format: StreamFormat, event: PipelineEvent): void {
  if (format === 'sse') {
    reply.raw.write(`event: ${event.step}\n`);
    reply.raw.write(`data: ${JSON.stringify(event.data)}\n\n`);
    return;
  }
  reply.raw.write(`${JSON.stringify(event)}\n`);
}

export async function foodRoutesV2(fastify: FastifyInstance): Promise<void> {
  /**
   * POST /api/v2/food/analyze-text
   * Stream V2 nutrition analysis as NDJSON or SSE.
   */
  fastify.post<{ Body: AnalyzeTextBody }>(
    '/analyze-text',
    {
      config: {
        rateLimit: {
          max: 20,
          timeWindow: '1 minute',
        },
      },
      schema: {
        description:
          'Analyze a meal from text description. Streams pipeline events as NDJSON or SSE: meal, items, variations, result.',
        tags: ['Food', 'V2'],
        body: {
          type: 'object',
          required: ['textDescription'],
          properties: {
            textDescription: { type: 'string', description: 'Meal description (e.g. "2 roti with dal")' },
          },
        },
        response: {
          200: {
            description: 'Stream of events (application/x-ndjson or text/event-stream)',
            type: 'string',
          },
          400: {
            description: 'Bad request',
            type: 'object',
            properties: { detail: { type: 'string' } },
          },
          500: {
            description: 'Server error',
            type: 'object',
            properties: { detail: { type: 'string' } },
          },
        },
      } as any,
    },
    async (request: FastifyRequest<{ Body: AnalyzeTextBody }>, reply: FastifyReply) => {
      const { textDescription } = request.body ?? {};

      if (!textDescription || typeof textDescription !== 'string' || textDescription.trim() === '') {
        reply.status(400).send(createErrorResponse('textDescription is required'));
        return;
      }

      const format = getStreamFormat(request.headers.accept);

      reply.hijack();
      reply.raw.writeHead(200, {
        'Content-Type': format === 'sse' ? 'text/event-stream' : 'application/x-ndjson',
        'Transfer-Encoding': 'chunked',
        'Cache-Control': 'no-cache',
        Connection: 'keep-alive',
        'X-Accel-Buffering': 'no',
      });

      try {
        for await (const event of analyzeTextV2(textDescription.trim())) {
          writeEvent(reply, format, event);
          if (event.step === 'error') break;
        }
      } catch (err) {
        writeEvent(reply, format, {
          step: 'error',
          data: { message: err instanceof Error ? err.message : 'Pipeline failed' },
        });
      } finally {
        reply.raw.end();
      }
    },
  );

  /**
   * POST /api/v2/food/analyze-image
   * Stream V2 nutrition analysis as NDJSON or SSE.
   */
  fastify.post<{ Body: AnalyzeImageBody }>(
    '/analyze-image',
    {
      config: {
        rateLimit: {
          max: 20,
          timeWindow: '1 minute',
        },
      },
      schema: {
        description:
          'Analyze a meal from image URL. Streams pipeline events as NDJSON or SSE: meal, items, variations, result.',
        tags: ['Food', 'V2'],
        body: {
          type: 'object',
          required: ['imageUrl'],
          properties: {
            imageUrl: { type: 'string', description: 'Public image URL' },
          },
        },
        response: {
          200: {
            description: 'Stream of events (application/x-ndjson or text/event-stream)',
            type: 'string',
          },
          400: {
            description: 'Bad request',
            type: 'object',
            properties: { detail: { type: 'string' } },
          },
          500: {
            description: 'Server error',
            type: 'object',
            properties: { detail: { type: 'string' } },
          },
        },
      } as any,
    },
    async (request: FastifyRequest<{ Body: AnalyzeImageBody }>, reply: FastifyReply) => {
      const { imageUrl } = request.body ?? {};

      if (!imageUrl || typeof imageUrl !== 'string' || imageUrl.trim() === '') {
        reply.status(400).send(createErrorResponse('imageUrl is required'));
        return;
      }

      try {
        new URL(imageUrl);
      } catch {
        reply.status(400).send(createErrorResponse('Invalid imageUrl format'));
        return;
      }

      const format = getStreamFormat(request.headers.accept);

      reply.hijack();
      reply.raw.writeHead(200, {
        'Content-Type': format === 'sse' ? 'text/event-stream' : 'application/x-ndjson',
        'Transfer-Encoding': 'chunked',
        'Cache-Control': 'no-cache',
        Connection: 'keep-alive',
        'X-Accel-Buffering': 'no',
      });

      try {
        for await (const event of analyzeImageV2(imageUrl.trim())) {
          writeEvent(reply, format, event);
          if (event.step === 'error') break;
        }
      } catch (err) {
        writeEvent(reply, format, {
          step: 'error',
          data: { message: err instanceof Error ? err.message : 'Pipeline failed' },
        });
      } finally {
        reply.raw.end();
      }
    },
  );
}
