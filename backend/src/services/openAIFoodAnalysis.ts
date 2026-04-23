import OpenAI from 'openai';
import type {
  MealDetectionResult,
  MealDetectionResponse,
  Variation,
} from '../protos/calorify/meal_detection.js';
import type {
  Meal,
  MealType,
  HealthScore,
  CalorieConfidence,
} from '../protos/meal/meal.js';
import {
  MealType as MealTypeEnum,
  HealthScore as HealthScoreEnum,
  CalorieConfidence as CalorieConfidenceEnum,
} from '../protos/meal/meal.js';
import config from '../config.js';
import { OPENAI_MEAL_ANALYSIS_MODEL } from '../openaiModels.js';
import { getFoodAnalysisSystemPrompt } from './foodAnalysisSystemPrompt.js';
import { CircuitBreaker } from '../utils/circuitBreaker.js';
import { instrumentAiCall, recordCircuitBreakerState } from './metrics.js';

interface OpenAIVariationOption {
  option: string;
  macro_diff?: {
    calories: number;
    protein: number;
    carbs: number;
    fat: number;
    fiber: number;
  };
}

interface OpenAIVariation {
  question: string;
  options: OpenAIVariationOption[];
}

interface OpenAIResponse {
  result: {
    meal_identified: boolean;
    calorie_confidence: 'UNSPECIFIED' | 'LOW' | 'MEDIUM' | 'HIGH';
    tip: string;
    meal: {
      name: string;
      quantity: string;
      type: string;
      macros: {
        calories: number;
        carbs: number;
        protein: number;
        fat: number;
        fiber: number;
      };
      health: {
        health_score: string;
        health_score_reason: string;
      } | null;
    } | null;
  };
  variations: OpenAIVariation[];
}

/** JSON Schema for Structured Outputs; matches OpenAIResponse. */
const MEAL_DETECTION_RESPONSE_SCHEMA = {
  type: 'object' as const,
  description: 'Food analysis response with detected food details and optional clarification variations.',
  properties: {
    result: {
      type: 'object' as const,
      properties: {
        meal_identified: {
          type: 'boolean' as const,
          description: 'Boolean indicating whether food was identified. When true, include the meal object',
        },
        calorie_confidence: {
          type: 'string' as const,
          enum: ['UNSPECIFIED', 'LOW', 'MEDIUM', 'HIGH'],
          description: 'Confidence bucket for calorie estimation accuracy.',
        },
        tip: {
          type: 'string' as const,
          description: 'Short useful fact or benefit related to the identified food(s). Example: "High fiber helps digestion."',
        },
        meal: {
          description: 'Detailed food information. Required when meal_identified is true.',
          anyOf: [
            {
              type: 'object' as const,
              properties: {
                name: {
                  type: 'string' as const,
                  description: 'Concise meal/food name, ~30 characters or less, eg. "Chicken Salad", "Apple Slices"',
                },
                quantity: {
                  type: 'string' as const,
                  description: 'Portion description (for example, "1 bowl", "2 slices", "1 serving").',
                },
                type: {
                  type: 'string' as const,
                  enum: ['BREAKFAST', 'LUNCH', 'DINNER', 'SNACK', 'UNKNOWN'],
                  description: 'Food type based on timestamp from file creation metadata or food description.',
                },
                macros: {
                  type: 'object' as const,
                  description: 'Estimated macro nutrients in kcal and grams.',
                  properties: {
                    calories: { type: 'number' as const, description: 'calories in kcal.' },
                    carbs: { type: 'number' as const, description: 'carbohydrates in grams.' },
                    protein: { type: 'number' as const, description: 'protein in grams.' },
                    fat: { type: 'number' as const, description: 'fat in grams.' },
                    fiber: { type: 'number' as const, description: 'fiber in grams.' },
                  },
                  required: ['calories', 'carbs', 'protein', 'fat', 'fiber'],
                  additionalProperties: false,
                },
                health: {
                  description: 'Health evaluation for the identified meal.',
                  anyOf: [
                    {
                      type: 'object' as const,
                      properties: {
                        health_score: {
                          type: 'string' as const,
                          enum: ['HEALTHY', 'NEUTRAL', 'UNHEALTHY'],
                          description: 'Health score label based on nutritional balance.',
                        },
                        health_score_reason: {
                          type: 'string' as const,
                          description: 'Concise reason for the assigned health score. Example: "Balanced protein and fiber.", "Too much sugar"',
                        },
                      },
                      required: ['health_score', 'health_score_reason'],
                      additionalProperties: false,
                    },
                    {
                      type: 'null' as const,
                    },
                  ],
                },
              },
              required: ['name', 'quantity', 'type', 'macros', 'health'],
              additionalProperties: false,
            },
            {
              type: 'null' as const,
            },
          ],
        },
      },
      required: ['meal_identified', 'calorie_confidence', 'tip', 'meal'],
      additionalProperties: false,
    },
    variations: {
      type: 'array' as const,
      description: 'Optional variation questions when confidence is LOW or MEDIUM. At-most 3 questions.',
      items: {
        type: 'object' as const,
        description: 'One variation question with options.',
        properties: {
          question: {
            type: 'string' as const,
            description: 'Concise wh-question to disambiguate. Example: "What portion size is this?"',
          },
          options: {
            type: 'array' as const,
            items: {
              type: 'object' as const,
              properties: {
                option: {
                  type: 'string' as const,
                  description: 'Option label. Example: "1 bowl".',
                },
                macro_diff: {
                  type: 'object' as const,
                  description: 'Delta to apply to base macros for this option.',
                  properties: {
                    calories: { type: 'number' as const },
                    protein: { type: 'number' as const },
                    carbs: { type: 'number' as const },
                    fat: { type: 'number' as const },
                    fiber: { type: 'number' as const },
                  },
                  required: ['calories', 'protein', 'carbs', 'fat', 'fiber'],
                  additionalProperties: false,
                },
              },
              required: ['option', 'macro_diff'],
              additionalProperties: false,
            },
          },
        },
        required: ['question', 'options'],
        additionalProperties: false,
      },
    },
  },
  required: ['result', 'variations'],
  additionalProperties: false,
};

const MEAL_DETECTION_RESPONSE_FORMAT = {
  type: 'json_schema' as const,
  json_schema: {
    name: 'meal_detection_response',
    description: 'Structured food analysis result with meal and optional variations',
    schema: MEAL_DETECTION_RESPONSE_SCHEMA,
    strict: true,
  },
};

class OpenAIFoodAnalysisService {
  private client: OpenAI;
  // Circuit breaker: after 5 consecutive failures, fail fast for 30s instead of piling
  // up slow requests against an unhealthy upstream. Any success resets the counter.
  private breaker = new CircuitBreaker({
    name: 'openai-food-analysis',
    failureThreshold: 5,
    resetTimeoutMs: 30_000,
    onStateChange: (next) => recordCircuitBreakerState('openai-food-analysis', next),
  });

  constructor() {
    const apiKey = config.OPENAI_API_KEY;
    if (!apiKey) {
      throw new Error('OPENAI_API_KEY environment variable is not set');
    }
    // 30s per-request timeout and 2 retries on network/5xx errors.
    // Protects the backend from hanging indefinitely on slow OpenAI responses.
    this.client = new OpenAI({ apiKey, timeout: 30_000, maxRetries: 2 });
  }

  private shouldDebugLog(): boolean {
    return config.DEBUG || config.ENVIRONMENT === 'staging';
  }

  private logLocale(method: string, locale: string): void {
    if (this.shouldDebugLog()) {
      console.log(`[OpenAI] ${method} - locale:`, locale, 'language:', locale);
    }
  }

  /**
   * Execute a structured completion call and parse model JSON output.
   */
  private async createStructuredResponse(
    messages: OpenAI.Chat.Completions.ChatCompletionMessageParam[],
  ): Promise<OpenAIResponse> {
    const response = await this.breaker.execute(() =>
      instrumentAiCall('openai', () =>
        this.client.chat.completions.create({
          model: OPENAI_MEAL_ANALYSIS_MODEL,
          messages,
          response_format: MEAL_DETECTION_RESPONSE_FORMAT,
          max_completion_tokens: 800,
        })
      )
    );

    const content = response.choices[0]?.message?.content;
    if (!content) {
      throw new Error('No response content from OpenAI');
    }

    // For strict json_schema responses, content is expected to be valid JSON.
    // Parse raw content first; only fall back to sanitizer for defensive compatibility.
    try {
      return JSON.parse(content) as OpenAIResponse;
    } catch (parseError) {
      const jsonText = this.extractJson(content);
      try {
        return JSON.parse(jsonText) as OpenAIResponse;
      } catch (fallbackParseError) {
        throw new Error(
          `Failed to parse OpenAI response as JSON: ${fallbackParseError instanceof Error ? fallbackParseError.message : 'Unknown error'}`
        );
      }
    }
  }

  /**
   * Parse meal type string to protobuf enum value
   */
  private parseMealType(mealTypeStr: string): MealType {
    const upper = mealTypeStr.toUpperCase();
    const mapping: Record<string, MealType> = {
      BREAKFAST: MealTypeEnum.BREAKFAST,
      LUNCH: MealTypeEnum.LUNCH,
      DINNER: MealTypeEnum.DINNER,
      SNACK: MealTypeEnum.SNACK,
      UNKNOWN: MealTypeEnum.UNKNOWN,
    };
    return mapping[upper] ?? MealTypeEnum.UNKNOWN;
  }

  /**
   * Parse health score string to protobuf enum value
   */
  private parseHealthScore(healthScoreStr: string): HealthScore {
    const upper = healthScoreStr.toUpperCase();
    const mapping: Record<string, HealthScore> = {
      HEALTHY: HealthScoreEnum.HEALTHY,
      NEUTRAL: HealthScoreEnum.NEUTRAL,
      UNHEALTHY: HealthScoreEnum.UNHEALTHY,
    };
    return mapping[upper] ?? HealthScoreEnum.NEUTRAL;
  }

  /**
   * Map calorie confidence string to CalorieConfidence enum
   */
  private mapCalorieConfidence(confidence: string): CalorieConfidence {
    const upper = confidence.toUpperCase();
    const mapping: Record<string, CalorieConfidence> = {
      UNSPECIFIED: CalorieConfidenceEnum.UNSPECIFIED,
      LOW: CalorieConfidenceEnum.LOW,
      MEDIUM: CalorieConfidenceEnum.MEDIUM,
      HIGH: CalorieConfidenceEnum.HIGH,
    };
    return mapping[upper] ?? CalorieConfidenceEnum.UNSPECIFIED;
  }

  /**
   * Map OpenAI variation to proto Variation
   * Validates JSON structure strictly
   */
  private mapVariation(variation: OpenAIVariation): Variation {
    // Strict JSON validation - ensure variation is a valid object
    if (!variation || typeof variation !== 'object') {
      throw new Error('Variation must be an object');
    }
    if (!variation.question || typeof variation.question !== 'string') {
      throw new Error('Variation missing or invalid "question" field');
    }
    if (!Array.isArray(variation.options)) {
      throw new Error('Variation missing or invalid "options" array');
    }
    if (variation.options.length === 0) {
      throw new Error('Variation must have at least one option');
    }

    return {
      question: variation.question,
      options: variation.options
        .filter((opt) => {
          // Strict validation of option structure
          if (!opt || typeof opt !== 'object') return false;
          if (!opt.option || typeof opt.option !== 'string') return false;
          return true;
        })
        .map((opt) => ({
          option: opt.option,
          macroDiff: opt.macro_diff && typeof opt.macro_diff === 'object'
            ? {
              // Ensure all macro values are valid numbers
              calories: Math.round(Number(opt.macro_diff.calories) || 0),
              carbs: Math.round(Number(opt.macro_diff.carbs) || 0),
              protein: Math.round(Number(opt.macro_diff.protein) || 0),
              fat: Math.round(Number(opt.macro_diff.fat) || 0),
              fiber: Math.round(Number(opt.macro_diff.fiber) || 0),
            }
            : undefined,
        })),
    };
  }

  /**
   * Extract JSON from OpenAI response text.
   * With response_format json_schema (strict), the response is typically raw JSON;
   * we still strip markdown and normalize braces for robustness.
   */
  private extractJson(text: string): string {
    let cleaned = text.trim();

    // Remove markdown code blocks
    if (cleaned.includes('```json')) {
      cleaned = cleaned.split('```json')[1]?.split('```')[0] ?? cleaned;
    } else if (cleaned.includes('```')) {
      cleaned = cleaned.split('```')[1]?.split('```')[0] ?? cleaned;
    }

    cleaned = cleaned.trim();

    // Ensure JSON starts and ends with braces/brackets
    if (!cleaned.startsWith('{') && !cleaned.startsWith('[')) {
      // Try to find first JSON object
      const firstBrace = cleaned.indexOf('{');
      if (firstBrace !== -1) {
        cleaned = cleaned.substring(firstBrace);
      }
    }

    // Ensure proper JSON closing
    if (cleaned.startsWith('{')) {
      // Find matching closing brace
      let braceCount = 0;
      let lastBrace = -1;
      for (let i = 0; i < cleaned.length; i++) {
        if (cleaned[i] === '{') braceCount++;
        if (cleaned[i] === '}') {
          braceCount--;
          if (braceCount === 0) {
            lastBrace = i;
            break;
          }
        }
      }
      if (lastBrace !== -1) {
        cleaned = cleaned.substring(0, lastBrace + 1);
      }
    }

    return cleaned.trim();
  }

  /**
   * Build protobuf MealDetectionResponse from OpenAI JSON response
   * Returns a proper protobuf-typed object with result and variations
   */
  private buildProtoResponse(resultDict: OpenAIResponse): MealDetectionResponse {
    // Validate required fields
    if (!resultDict.result) {
      throw new Error('Response missing required "result" field');
    }

    const resultData = resultDict.result;

    // Validate required result fields
    if (typeof resultData.meal_identified !== 'boolean') {
      throw new Error('Response missing or invalid "meal_identified" field');
    }
    if (!resultData.calorie_confidence) {
      throw new Error('Response missing "calorie_confidence" field');
    }
    if (typeof resultData.tip !== 'string') {
      throw new Error('Response missing or invalid "tip" field');
    }

    // Map meal if present and meal_identified is true
    // Enforce cross-field rule: meal must be non-null when meal_identified is true.
    let mealInfo: Meal | undefined;
    if (resultData.meal_identified && !resultData.meal) {
      throw new Error('Response has "meal_identified"=true but missing "meal" details');
    }
    if (resultData.meal_identified && resultData.meal) {
      // Validate required meal fields
      if (!resultData.meal.name || typeof resultData.meal.name !== 'string') {
        throw new Error('Meal missing or invalid "name" field');
      }
      if (typeof resultData.meal.quantity !== 'string') {
        throw new Error('Meal missing or invalid "quantity" field');
      }
      if (!resultData.meal.type) {
        throw new Error('Meal missing "type" field');
      }
      if (!resultData.meal.macros) {
        throw new Error('Meal missing required "macros" field');
      }

      // Validate macros fields
      const macros = resultData.meal.macros;
      if (
        typeof macros.calories !== 'number' ||
        typeof macros.protein !== 'number' ||
        typeof macros.carbs !== 'number' ||
        typeof macros.fat !== 'number' ||
        typeof macros.fiber !== 'number'
      ) {
        throw new Error('Meal macros missing or invalid fields');
      }

      mealInfo = {
        name: resultData.meal.name,
        quantity: resultData.meal.quantity,
        type: this.parseMealType(resultData.meal.type),
        macros: {
          calories: Math.round(macros.calories),
          protein: Math.round(macros.protein),
          carbs: Math.round(macros.carbs),
          fat: Math.round(macros.fat),
          fiber: Math.round(macros.fiber),
        },
        health: resultData.meal.health
          ? {
            healthScore: this.parseHealthScore(resultData.meal.health.health_score),
            healthScoreReason: resultData.meal.health.health_score_reason,
          }
          : undefined,
      };
    }
    // If meal_identified is false, mealInfo remains undefined (which is valid per proto definition)

    const calorieConfidence = this.mapCalorieConfidence(resultData.calorie_confidence);

    const result: MealDetectionResult = {
      mealIdentified: resultData.meal_identified,
      calorieConfidence,
      tip: resultData.tip,
      meal: mealInfo,
    };

    // Use only model-provided variations; keep structural validation.
    const variations: Variation[] = Array.isArray(resultDict.variations)
      ? resultDict.variations
        .filter((c) => c && typeof c.question === 'string' && Array.isArray(c.options))
        .map((c) => this.mapVariation(c))
      : [];

    // Ensure response always includes variations array
    const response: MealDetectionResponse = {
      result,
      variations: variations || [], // Always ensure array is present
    };

    return response;
  }

  /**
   * Analyze food image from URL using OpenAI Vision API
   * Returns a protobuf-typed MealDetectionResponse with variations
   * @param imageUrl - URL of the image to analyze
   * @param locale - Language code for the response (default: 'en')
   * @param countryCode - 2-letter country code (e.g., 'US')
   */
  async analyzeImageFromUrl(imageUrl: string, locale: string = 'en', countryCode?: string): Promise<MealDetectionResponse> {
    try {
      // Validate URL format
      try {
        new URL(imageUrl);
      } catch {
        throw new Error('Invalid image URL format');
      }

      this.logLocale('analyzeImageFromUrl', locale);

      const resultDict = await this.createStructuredResponse([
        {
          role: 'system',
          content: getFoodAnalysisSystemPrompt(locale, countryCode),
        },
        {
          role: 'user',
          content: [
            {
              type: 'image_url',
              image_url: {
                url: imageUrl,
              },
            },
          ],
        },
      ]);

      return this.buildProtoResponse(resultDict);
    } catch (error) {
      throw new Error(
        `Failed to analyze image: ${error instanceof Error ? error.message : 'Unknown error'}`
      );
    }
  }

  /**
   * Analyze food image from buffer using OpenAI Vision API
   * Returns a protobuf-typed MealDetectionResponse with variations
   * @param imageBuffer - Image buffer to analyze
   * @param mimeType - MIME type of the image (default: 'image/jpeg')
   * @param locale - Language code for the response (default: 'en')
   * @param countryCode - 2-letter country code (e.g., 'US')
   */
  async analyzeImageFromBuffer(imageBuffer: Buffer, mimeType: string = 'image/jpeg', locale: string = 'en', countryCode?: string): Promise<MealDetectionResponse> {
    try {
      // Convert buffer to base64
      const base64Image = imageBuffer.toString('base64');

      // Validate/sanitize MIME type
      const validMimeTypes = ['image/jpeg', 'image/png', 'image/webp', 'image/gif'];
      const finalMimeType = validMimeTypes.includes(mimeType) ? mimeType : 'image/jpeg';

      this.logLocale('analyzeImageFromBuffer', locale);

      const resultDict = await this.createStructuredResponse([
        {
          role: 'system',
          content: getFoodAnalysisSystemPrompt(locale, countryCode),
        },
        {
          role: 'user',
          content: [
            {
              type: 'image_url',
              image_url: {
                url: `data:${finalMimeType};base64,${base64Image}`,
              },
            },
          ],
        },
      ]);

      // Return full response with variations
      return this.buildProtoResponse(resultDict);
    } catch (error) {
      throw new Error(
        `Failed to analyze image: ${error instanceof Error ? error.message : 'Unknown error'}`
      );
    }
  }

  /**
   * Analyze food description using OpenAI
   * Returns a protobuf-typed MealDetectionResponse with variations
   * @param description - Text description of the food
   * @param locale - Language code for the response (default: 'en')
   * @param countryCode - 2-letter country code (e.g., 'US')
   */
  async analyzeTextDescription(description: string, locale: string = 'en', countryCode?: string): Promise<MealDetectionResponse> {
    try {
      this.logLocale('analyzeTextDescription', locale);

      const resultDict = await this.createStructuredResponse([
        {
          role: 'system',
          content: getFoodAnalysisSystemPrompt(locale, countryCode),
        },
        {
          role: 'user',
          content: description,
        },
      ]);

      return this.buildProtoResponse(resultDict);
    } catch (error) {
      throw new Error(
        `Failed to analyze description: ${error instanceof Error ? error.message : 'Unknown error'}`
      );
    }
  }
}

export const openAIFoodAnalysisService = new OpenAIFoodAnalysisService();
