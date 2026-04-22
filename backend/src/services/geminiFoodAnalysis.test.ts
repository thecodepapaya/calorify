import test from 'node:test';
import assert from 'node:assert/strict';
import { mock } from 'node:test';
import {
  CalorieConfidence as CalorieConfidenceEnum,
  HealthScore as HealthScoreEnum,
  MealType as MealTypeEnum,
} from '../protos/meal/meal.js';

process.env.GEMINI_API_KEY ??= 'test-gemini-key';
process.env.DEBUG ??= 'false';
process.env.ENVIRONMENT ??= 'development';

const { default: config } = await import('../config.js');
const { geminiFoodAnalysisService } = await import('./geminiFoodAnalysis.js');

type GeminiPart = {
  text?: string;
  inlineData?: {
    mimeType: string;
    data: string;
  };
};

type GeminiModelStub = {
  generateContent: (
    userParts: GeminiPart[],
    options?: unknown
  ) => Promise<{
    response: {
      text: () => string;
    };
  }>;
};

type GeminiClientStub = {
  getGenerativeModel: (options: unknown) => GeminiModelStub;
};

const mockGenerateContent = mock.fn(
  async (_userParts: GeminiPart[]) => ({
    response: {
      text: () => '',
    },
  })
);
const mockGetGenerativeModel = mock.fn((_options: unknown): GeminiModelStub => ({
  generateContent: mockGenerateContent,
}));

(
  geminiFoodAnalysisService as unknown as {
    genAI: GeminiClientStub;
  }
).genAI = {
  getGenerativeModel: mockGetGenerativeModel,
};

(config as { DEBUG: boolean; ENVIRONMENT: string }).DEBUG = false;
(config as { DEBUG: boolean; ENVIRONMENT: string }).ENVIRONMENT = 'development';

function resetGenerateContent(content: string): void {
  mockGenerateContent.mock.resetCalls();
  mockGenerateContent.mock.mockImplementation(
    async (_userParts: GeminiPart[]) => ({
      response: {
        text: () => content,
      },
    })
  );
}

test('Gemini service parses text responses into protobuf meal data', async () => {
  resetGenerateContent(
    JSON.stringify({
      result: {
        meal_identified: true,
        calorie_confidence: 'high',
        tip: 'Fiber helps fullness.',
        meal: {
          name: 'Oats Bowl',
          quantity: '1 serving',
          type: 'breakfast',
          macros: {
            calories: 389.7,
            carbs: 51.2,
            protein: 13.6,
            fat: 9.4,
            fiber: 8.1,
          },
          health: {
            health_score: 'healthy',
            health_score_reason: 'Good fiber and steady energy.',
          },
        },
      },
      variations: [
        {
          question: 'Which topping was added?',
          options: [
            {
              option: 'Banana',
              macro_diff: {
                calories: 90.2,
                carbs: 23.1,
                protein: 1.1,
                fat: 0.3,
                fiber: 2.9,
              },
            },
          ],
        },
      ],
    })
  );

  const result = await geminiFoodAnalysisService.analyzeTextDescription(
    'oats with fruit',
    'en',
    'GB'
  );

  assert.equal(result.result.mealIdentified, true);
  assert.equal(
    result.result.calorieConfidence,
    CalorieConfidenceEnum.HIGH
  );
  assert.equal(result.result.meal?.type, MealTypeEnum.BREAKFAST);
  assert.equal(
    result.result.meal?.health?.healthScore,
    HealthScoreEnum.HEALTHY
  );
  assert.equal(result.result.meal?.macros.calories, 390);
  assert.equal(result.variations[0]?.options[0]?.macroDiff?.fiber, 3);

  const modelCall = mockGetGenerativeModel.mock.calls[0];
  assert.ok(modelCall);
  assert.ok(modelCall.arguments[0]);
});

test('Gemini service uses jpeg fallback for unsupported image mime types', async () => {
  resetGenerateContent(
    JSON.stringify({
      result: {
        meal_identified: false,
        calorie_confidence: 'LOW',
        tip: 'Need more clarity.',
      },
      variations: [],
    })
  );

  await geminiFoodAnalysisService.analyzeImageFromBuffer(
    Buffer.from('abc'),
    'image/heic',
    'en'
  );

  const call = mockGenerateContent.mock.calls[0];
  assert.ok(call);

  const userParts = call.arguments[0];
  assert.equal(userParts[1]?.inlineData?.mimeType, 'image/jpeg');
  assert.equal(userParts[1]?.inlineData?.data, 'YWJj');
});

test('Gemini service rejects invalid image URLs before generating content', async () => {
  mockGenerateContent.mock.resetCalls();

  await assert.rejects(
    () => geminiFoodAnalysisService.analyzeImageFromUrl('not-a-url'),
    /Failed to analyze image: Invalid image URL format/
  );

  assert.equal(mockGenerateContent.mock.calls.length, 0);
});

test('Gemini service surfaces JSON parse failures clearly', async () => {
  resetGenerateContent('```json\n{"result": invalid}\n```');

  await assert.rejects(
    () => geminiFoodAnalysisService.analyzeTextDescription('toast'),
    /Failed to analyze description: Failed to parse Gemini response as JSON/
  );
});
