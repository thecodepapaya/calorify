import OpenAI from 'openai';
import type {
  MealDetectionResult,
  MealDetectionResponse,
  Clarification,
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
  return `Food analysis AI. Analyze images/descriptions. Respond in ${locale} JSON only.

JSON: {"result": {"meal_identified": bool, "calorie_confidence": "LOW"|"MEDIUM"|"HIGH"|"UNSPECIFIED", "tip": str, "meal": {"name": str, "quantity": str, "type": "BREAKFAST"|"LUNCH"|"DINNER"|"SNACK"|"UNKNOWN", "macros": {"calories": int, "carbs": int, "protein": int, "fat": int, "fiber": int}, "health": {"health_score": "HEALTHY"|"NEUTRAL"|"UNHEALTHY", "health_score_reason": str?}}}, "clarifications": [{"question": str, "options": [{"option": str, "macro_diff": {"calories": int, "carbs": int, "protein": int, "fat": int, "fiber": int}}]}]}

Rules: confidence LOW(0-40%)/MEDIUM(41-70%)/HIGH(71-100%). clarifications only if LOW/MEDIUM. meal required if meal_identified=true. All numbers integers.`;
}

interface OpenAIClarificationOption {
  option: string;
  macro_diff?: {
    calories: number;
    protein: number;
    carbs: number;
    fat: number;
    fiber: number;
  };
}

interface OpenAIClarification {
  question: string;
  options: OpenAIClarificationOption[];
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
  clarifications?: OpenAIClarification[];
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
   * Map OpenAI clarification to proto Clarification
   * Validates JSON structure strictly
   */
  private mapClarification(clarification: OpenAIClarification): Clarification {
    // Strict JSON validation - ensure clarification is a valid object
    if (!clarification || typeof clarification !== 'object') {
      throw new Error('Clarification must be an object');
    }
    if (!clarification.question || typeof clarification.question !== 'string') {
      throw new Error('Clarification missing or invalid "question" field');
    }
    if (!Array.isArray(clarification.options)) {
      throw new Error('Clarification missing or invalid "options" array');
    }
    if (clarification.options.length === 0) {
      throw new Error('Clarification must have at least one option');
    }

    return {
      question: clarification.question,
      options: clarification.options
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
   * Returns a proper protobuf-typed object with result and clarifications
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

    // Map clarifications if present - validate it's an array
    // Ensure clarifications is always an array (even if missing from response)
    const clarifications: Clarification[] = Array.isArray(resultDict.clarifications)
      ? resultDict.clarifications
        .filter((c) => c && typeof c.question === 'string' && Array.isArray(c.options))
        .map((c) => this.mapClarification(c))
      : [];

    // Ensure response always includes clarifications array
    const response: MealDetectionResponse = {
      result,
      clarifications: clarifications || [], // Always ensure array is present
    };

    return response;
  }

  /**
   * Analyze food image from URL using OpenAI Vision API
   * Returns a protobuf-typed MealDetectionResponse with clarifications
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
   * Returns a protobuf-typed MealDetectionResponse with clarifications
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

      // Return full response with clarifications
      return this.buildProtoResponse(resultDict);
    } catch (error) {
      throw new Error(
        `Failed to analyze image: ${error instanceof Error ? error.message : 'Unknown error'}`
      );
    }
  }

  /**
   * Analyze food description using OpenAI
   * Returns a protobuf-typed MealDetectionResponse with clarifications
   * @param description - Text description of the food
   * @param locale - Language code for the response (default: 'en')
   */
  async analyzeTextDescription(description: string, locale: string = 'en'): Promise<MealDetectionResponse> {
    try {
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
