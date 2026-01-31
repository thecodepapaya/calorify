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

/**
 * Get system prompt with locale instruction (optimized for token efficiency)
 * @param locale - Language code (e.g., 'en', 'es', 'fr')
 * @returns System prompt string
 */
function getSystemPrompt(locale: string = 'en'): string {
  return `Food analysis AI. Analyze images/descriptions. All text responses must be in ${locale} language. Respond in JSON only.

JSON: {"result": {"meal_identified": bool, "calorie_confidence": "LOW"|"MEDIUM"|"HIGH"|"UNSPECIFIED", "tip": str, "meal": {"name": str, "quantity": str, "type": "BREAKFAST"|"LUNCH"|"DINNER"|"SNACK"|"UNKNOWN", "macros": {"calories": int, "carbs": int, "protein": int, "fat": int, "fiber": int}, "health": {"health_score": "HEALTHY"|"NEUTRAL"|"UNHEALTHY", "health_score_reason": str?}}}, "variations": [{"question": str, "options": [{"option": str, "macro_diff": {"calories": int, "carbs": int, "protein": int, "fat": int, "fiber": int}}]}]}

Rules: confidence LOW(0-40%)/MEDIUM(41-70%)/HIGH(71-100%). add variations if calorie_confidence LOW/MEDIUM. meal required if meal_identified=true. All numbers integers. All text fields must be in $locale language.`;
}

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
    meal?: {
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
      health?: {
        health_score: string;
        health_score_reason?: string;
      };
    };
  };
  variations?: OpenAIVariation[];
}

class OpenAIFoodAnalysisService {
  private client: OpenAI;

  constructor() {
    const apiKey = config.OPENAI_API_KEY;
    if (!apiKey) {
      throw new Error('OPENAI_API_KEY environment variable is not set');
    }
    this.client = new OpenAI({ apiKey });
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
   * Get mock variations for testing in staging environment
   * Returns a set of sample variations to test the meal logging flow
   */
  private getMockVariations(): Variation[] {
    return [
      {
        question: 'What does the white bowl contain?',
        options: [
          {
            option: 'Curd (Yogurt)',
            macroDiff: {
              calories: 50,
              carbs: 5,
              protein: 3,
              fat: 2,
              fiber: 0,
            },
          },
          {
            option: 'Labaan (Buttermilk)',
            macroDiff: {
              calories: 30,
              carbs: 3,
              protein: 2,
              fat: 1,
              fiber: 0,
            },
          },
          {
            option: 'Raita (Yogurt with vegetables)',
            macroDiff: {
              calories: 60,
              carbs: 6,
              protein: 4,
              fat: 2,
              fiber: 1,
            },
          },
        ],
      },
      {
        question: 'What type of rice is this?',
        options: [
          {
            option: 'White Rice',
            macroDiff: {
              calories: 200,
              carbs: 45,
              protein: 4,
              fat: 0,
              fiber: 1,
            },
          },
          {
            option: 'Brown Rice',
            macroDiff: {
              calories: 220,
              carbs: 46,
              protein: 5,
              fat: 2,
              fiber: 4,
            },
          },
          {
            option: 'Basmati Rice',
            macroDiff: {
              calories: 205,
              carbs: 44,
              protein: 4,
              fat: 0,
              fiber: 1,
            },
          },
        ],
      },
    ];
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
   * Extract JSON from OpenAI response text
   * Handles markdown code blocks if present
   * Ensures strict JSON format
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
    // Only validate meal when meal_identified is true (per system prompt: "meal required if meal_identified=true")
    let mealInfo: Meal | undefined;
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

    const result: MealDetectionResult = {
      mealIdentified: resultData.meal_identified,
      calorieConfidence: this.mapCalorieConfidence(resultData.calorie_confidence),
      tip: resultData.tip,
      meal: mealInfo,
    };

    // Map variations if present - validate it's an array
    // Ensure variations is always an array (even if missing from response)
    let variations: Variation[] = Array.isArray(resultDict.variations)
      ? resultDict.variations
        .filter((c) => c && typeof c.question === 'string' && Array.isArray(c.options))
        .map((c) => this.mapVariation(c))
      : [];

    // Mock variations in staging environment for testing
    if (config.ENVIRONMENT === 'staging' && variations.length === 0 && result.mealIdentified && result.meal) {
      variations = this.getMockVariations();
    }

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
   */
  async analyzeImageFromUrl(imageUrl: string, locale: string = 'en'): Promise<MealDetectionResponse> {
    try {
      // Validate URL format
      try {
        new URL(imageUrl);
      } catch {
        throw new Error('Invalid image URL format');
      }

      // Log locale for debugging
      if (config.DEBUG || config.ENVIRONMENT === 'staging') {
        console.log('[OpenAI] analyzeImageFromUrl - locale:', locale, 'language:', locale);
      }

      const response = await this.client.chat.completions.create({
        model: 'gpt-4o-mini',
        messages: [
          {
            role: 'system',
            content: getSystemPrompt(locale),
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
        ],
        response_format: { type: 'json_object' },
        max_tokens: 800,
      });

      const content = response.choices[0]?.message?.content;
      if (!content) {
        throw new Error('No response content from OpenAI');
      }

      const jsonText = this.extractJson(content);
      let resultDict: OpenAIResponse;
      try {
        // Strict JSON parsing - ensure valid JSON
        resultDict = JSON.parse(jsonText) as OpenAIResponse;

        // Validate JSON structure
        if (!resultDict || typeof resultDict !== 'object') {
          throw new Error('Invalid JSON structure: root must be an object');
        }
        if (!resultDict.result || typeof resultDict.result !== 'object') {
          throw new Error('Invalid JSON structure: missing or invalid "result" field');
        }
      } catch (parseError) {
        throw new Error(
          `Failed to parse OpenAI response as JSON: ${parseError instanceof Error ? parseError.message : 'Unknown error'}`
        );
      }

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
   */
  async analyzeImageFromBuffer(imageBuffer: Buffer, mimeType: string = 'image/jpeg', locale: string = 'en'): Promise<MealDetectionResponse> {
    try {
      // Convert buffer to base64
      const base64Image = imageBuffer.toString('base64');

      // Validate/sanitize MIME type
      const validMimeTypes = ['image/jpeg', 'image/png', 'image/webp', 'image/gif'];
      const finalMimeType = validMimeTypes.includes(mimeType) ? mimeType : 'image/jpeg';

      // Log locale for debugging
      if (config.DEBUG || config.ENVIRONMENT === 'staging') {
        console.log('[OpenAI] analyzeImageFromBuffer - locale:', locale, 'language:', locale);
      }

      const response = await this.client.chat.completions.create({
        model: 'gpt-4o-mini',
        messages: [
          {
            role: 'system',
            content: getSystemPrompt(locale),
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
        ],
        response_format: { type: 'json_object' },
        max_tokens: 800,
      });

      const content = response.choices[0]?.message?.content;
      if (!content) {
        throw new Error('No response content from OpenAI');
      }

      const jsonText = this.extractJson(content);
      let resultDict: OpenAIResponse;
      try {
        // Strict JSON parsing - ensure valid JSON
        resultDict = JSON.parse(jsonText) as OpenAIResponse;

        // Validate JSON structure
        if (!resultDict || typeof resultDict !== 'object') {
          throw new Error('Invalid JSON structure: root must be an object');
        }
        if (!resultDict.result || typeof resultDict.result !== 'object') {
          throw new Error('Invalid JSON structure: missing or invalid "result" field');
        }
      } catch (parseError) {
        throw new Error(
          `Failed to parse OpenAI response as JSON: ${parseError instanceof Error ? parseError.message : 'Unknown error'}`
        );
      }

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
   */
  async analyzeTextDescription(description: string, locale: string = 'en'): Promise<MealDetectionResponse> {
    try {
      // Log locale for debugging
      if (config.DEBUG || config.ENVIRONMENT === 'staging') {
        console.log('[OpenAI] analyzeTextDescription - locale:', locale, 'language:', locale);
      }

      const response = await this.client.chat.completions.create({
        model: 'gpt-4o-mini',
        messages: [
          {
            role: 'system',
            content: getSystemPrompt(locale),
          },
          {
            role: 'user',
            content: description,
          },
        ],
        response_format: { type: 'json_object' },
        max_tokens: 800,
      });

      const content = response.choices[0]?.message?.content;
      if (!content) {
        throw new Error('No response content from OpenAI');
      }

      const jsonText = this.extractJson(content);
      let resultDict: OpenAIResponse;
      try {
        // Strict JSON parsing - ensure valid JSON
        resultDict = JSON.parse(jsonText) as OpenAIResponse;

        // Validate JSON structure
        if (!resultDict || typeof resultDict !== 'object') {
          throw new Error('Invalid JSON structure: root must be an object');
        }
        if (!resultDict.result || typeof resultDict.result !== 'object') {
          throw new Error('Invalid JSON structure: missing or invalid "result" field');
        }
      } catch (parseError) {
        throw new Error(
          `Failed to parse OpenAI response as JSON: ${parseError instanceof Error ? parseError.message : 'Unknown error'}`
        );
      }

      return this.buildProtoResponse(resultDict);
    } catch (error) {
      throw new Error(
        `Failed to analyze description: ${error instanceof Error ? error.message : 'Unknown error'}`
      );
    }
  }
}

export const openAIFoodAnalysisService = new OpenAIFoodAnalysisService();
