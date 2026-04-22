import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';
import {
  CalorieConfidence as CalorieConfidenceEnum,
  HealthScore as HealthScoreEnum,
  MealType as MealTypeEnum,
} from '../protos/meal/meal.js';

process.env.OPENAI_API_KEY ??= 'test-openai-key';
process.env.DEBUG ??= 'false';
process.env.ENVIRONMENT ??= 'development';

const { default: config } = await import('../config.js');
const { openAIFoodAnalysisService } = await import('./openAIFoodAnalysis.js');

type OpenAIRequest = {
  messages: Array<{
    content: unknown;
  }>;
};

type OpenAIClientStub = {
  chat: {
    completions: {
      create: (request: OpenAIRequest) => Promise<{
        choices: Array<{
          message: {
            content?: string | null;
          };
        }>;
      }>;
    };
  };
};

const mockChatCreate = mock.fn(
  async (_request: OpenAIRequest) => ({
    choices: [{ message: { content: '' } }],
  })
);

(
  openAIFoodAnalysisService as unknown as {
    client: OpenAIClientStub;
  }
).client = {
  chat: {
    completions: {
      create: mockChatCreate,
    },
  },
};

(config as { DEBUG: boolean; ENVIRONMENT: string }).DEBUG = false;
(config as { DEBUG: boolean; ENVIRONMENT: string }).ENVIRONMENT = 'development';

function resetChatCreate(content: string): void {
  mockChatCreate.mock.resetCalls();
  mockChatCreate.mock.mockImplementation(async (_request: OpenAIRequest) => ({
    choices: [{ message: { content } }],
  }));
}

test('OpenAI service parses text responses into protobuf meal data', async () => {
  resetChatCreate(
    JSON.stringify({
      result: {
        meal_identified: true,
        calorie_confidence: 'medium',
        tip: 'High protein pick.',
        meal: {
          name: 'Paneer Bowl',
          quantity: '1 bowl',
          type: 'lunch',
          macros: {
            calories: 512.4,
            carbs: 41.2,
            protein: 28.7,
            fat: 18.4,
            fiber: 7.5,
          },
          health: {
            health_score: 'healthy',
            health_score_reason: 'Balanced macros and fiber.',
          },
        },
      },
      variations: [
        {
          question: 'Which portion matches best?',
          options: [
            {
              option: 'Small bowl',
              macro_diff: {
                calories: -80.7,
                carbs: -6.2,
                protein: -4.4,
                fat: -2.6,
                fiber: -1.4,
              },
            },
          ],
        },
      ],
    })
  );

  const result = await openAIFoodAnalysisService.analyzeTextDescription(
    'paneer rice bowl',
    'en',
    'US'
  );

  assert.equal(result.result.mealIdentified, true);
  assert.equal(
    result.result.calorieConfidence,
    CalorieConfidenceEnum.MEDIUM
  );
  assert.equal(result.result.meal?.type, MealTypeEnum.LUNCH);
  assert.equal(
    result.result.meal?.health?.healthScore,
    HealthScoreEnum.HEALTHY
  );
  assert.equal(result.result.meal?.macros.calories, 512);
  assert.equal(result.variations[0]?.options[0]?.macroDiff?.calories, -81);

  const call = mockChatCreate.mock.calls[0];
  assert.ok(call);

  const request = call.arguments[0];
  assert.equal(request.messages[1]?.content, 'paneer rice bowl');
});

test('OpenAI service uses jpeg fallback for unsupported image mime types', async () => {
  resetChatCreate(
    JSON.stringify({
      result: {
        meal_identified: false,
        calorie_confidence: 'LOW',
        tip: 'Need more detail.',
        meal: null,
      },
      variations: [],
    })
  );

  await openAIFoodAnalysisService.analyzeImageFromBuffer(
    Buffer.from('abc'),
    'image/heic',
    'en'
  );

  const call = mockChatCreate.mock.calls[0];
  assert.ok(call);

  const request = call.arguments[0];
  const userContent = request.messages[1]?.content as Array<{
    image_url?: { url?: string };
  }>;
  const dataUrl = userContent[0]?.image_url?.url;

  assert.ok(dataUrl);
  assert.match(dataUrl, /^data:image\/jpeg;base64,YWJj$/);
});

test('OpenAI service rejects invalid image URLs before calling the SDK', async () => {
  mockChatCreate.mock.resetCalls();

  await assert.rejects(
    () => openAIFoodAnalysisService.analyzeImageFromUrl('not-a-url'),
    /Failed to analyze image: Invalid image URL format/
  );

  assert.equal(mockChatCreate.mock.calls.length, 0);
});

test('OpenAI service surfaces JSON parse failures clearly', async () => {
  resetChatCreate('```json\n{"result": invalid}\n```');

  await assert.rejects(
    () => openAIFoodAnalysisService.analyzeTextDescription('toast'),
    /Failed to analyze description: Failed to parse OpenAI response as JSON/
  );
});
