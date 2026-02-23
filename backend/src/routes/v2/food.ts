import { FastifyInstance, FastifyRequest, FastifyReply } from 'fastify';
import { analyzeMeal } from '../../services/nutritionEngine.js';
import { createErrorResponse } from '../../utils/errors.js';

interface AnalyzeTextBody {
  textDescription: string;
}

export async function foodRoutesV2(fastify: FastifyInstance): Promise<void> {
  /**
   * POST /api/v2/food/analyze-text
   * Stream nutrition engine pipeline events as NDJSON.
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
          'Analyze a meal from text description. Streams pipeline events as NDJSON: decomposition, ingredients, uncertainty (with clarifications), then result. No variations step.',
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
            description: 'Stream of NDJSON events (application/x-ndjson)',
            type: 'string',
            contentMediaType: 'application/x-ndjson',
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

      const input = textDescription.trim();

      reply.hijack();
      reply.raw.writeHead(200, {
        'Content-Type': 'application/x-ndjson',
        'Transfer-Encoding': 'chunked',
        'Cache-Control': 'no-cache',
      });

      try {
        for await (const event of analyzeMeal(input)) {
          reply.raw.write(JSON.stringify(event) + '\n');
          if (event.step === 'error') break;
        }
      } catch (err) {
        reply.raw.write(
          JSON.stringify({ step: 'error', data: { message: err instanceof Error ? err.message : 'Pipeline failed' } }) + '\n',
        );
      } finally {
        reply.raw.end();
      }
    },
  );
}
