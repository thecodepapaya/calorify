import { GoogleGenerativeAI, type Part } from '@google/generative-ai';
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
import { getFoodAnalysisSystemPrompt } from './foodAnalysisSystemPrompt.js';

interface GeminiVariationOption {
  option: string;
  macro_diff?: {
    calories: number;
    protein: number;
    carbs: number;
    fat: number;
    fiber: number;
  };
}

interface GeminiVariation {
  question: string;
  options: GeminiVariationOption[];
}

interface GeminiResponse {
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
  variations?: GeminiVariation[];
}

class GeminiFoodAnalysisService {
  private genAI: GoogleGenerativeAI;

  constructor() {
    const apiKey = config.GEMINI_API_KEY;
    if (!apiKey) {
      throw new Error('GEMINI_API_KEY environment variable is not set');
    }
    this.genAI = new GoogleGenerativeAI(apiKey);
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
   * Map Gemini variation to proto Variation
   */
  private mapVariation(variation: GeminiVariation): Variation {
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
          if (!opt || typeof opt !== 'object') return false;
          if (!opt.option || typeof opt.option !== 'string') return false;
          return true;
        })
        .map((opt) => ({
          option: opt.option,
          macroDiff: opt.macro_diff && typeof opt.macro_diff === 'object'
            ? {
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
   * Extract JSON from Gemini response text
   */
  private extractJson(text: string): string {
    let cleaned = text.trim();

    if (cleaned.includes('```json')) {
      cleaned = cleaned.split('```json')[1]?.split('```')[0] ?? cleaned;
    } else if (cleaned.includes('```')) {
      cleaned = cleaned.split('```')[1]?.split('```')[0] ?? cleaned;
    }

    cleaned = cleaned.trim();

    if (!cleaned.startsWith('{') && !cleaned.startsWith('[')) {
      const firstBrace = cleaned.indexOf('{');
      if (firstBrace !== -1) {
        cleaned = cleaned.substring(firstBrace);
      }
    }

    if (cleaned.startsWith('{')) {
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
   * Build protobuf MealDetectionResponse from Gemini JSON response
   */
  private buildProtoResponse(resultDict: GeminiResponse): MealDetectionResponse {
    if (!resultDict.result) {
      throw new Error('Response missing required "result" field');
    }

    const resultData = resultDict.result;

    if (typeof resultData.meal_identified !== 'boolean') {
      throw new Error('Response missing or invalid "meal_identified" field');
    }
    if (!resultData.calorie_confidence) {
      throw new Error('Response missing "calorie_confidence" field');
    }
    if (typeof resultData.tip !== 'string') {
      throw new Error('Response missing or invalid "tip" field');
    }

    let mealInfo: Meal | undefined;
    if (resultData.meal_identified && resultData.meal) {
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

    const result: MealDetectionResult = {
      mealIdentified: resultData.meal_identified,
      calorieConfidence: this.mapCalorieConfidence(resultData.calorie_confidence),
      tip: resultData.tip,
      meal: mealInfo,
    };

    let variations: Variation[] = Array.isArray(resultDict.variations)
      ? resultDict.variations
          .filter((c) => c && typeof c.question === 'string' && Array.isArray(c.options))
          .map((c) => this.mapVariation(c))
      : [];

    if (config.ENVIRONMENT === 'staging' && variations.length === 0 && result.mealIdentified && result.meal) {
      variations = this.getMockVariations();
    }

    return {
      result,
      variations: variations || [],
    };
  }

  /**
   * Call Gemini and parse response into MealDetectionResponse
   */
  private async generateAndParse(userParts: Part[], locale: string): Promise<MealDetectionResponse> {
    const model = this.genAI.getGenerativeModel({
      model: 'gemini-1.5-flash',
      systemInstruction: getFoodAnalysisSystemPrompt(locale),
      generationConfig: {
        maxOutputTokens: 800,
        temperature: 0.2,
      },
    });

    const result = await model.generateContent(userParts);
    const response = result.response;
    const content = response.text();
    if (!content) {
      throw new Error('No response content from Gemini');
    }

    const jsonText = this.extractJson(content);
    let resultDict: GeminiResponse;
    try {
      resultDict = JSON.parse(jsonText) as GeminiResponse;
      if (!resultDict || typeof resultDict !== 'object') {
        throw new Error('Invalid JSON structure: root must be an object');
      }
      if (!resultDict.result || typeof resultDict.result !== 'object') {
        throw new Error('Invalid JSON structure: missing or invalid "result" field');
      }
    } catch (parseError) {
      throw new Error(
        `Failed to parse Gemini response as JSON: ${parseError instanceof Error ? parseError.message : 'Unknown error'}`
      );
    }

    return this.buildProtoResponse(resultDict);
  }

  /**
   * Analyze food image from URL using Gemini
   * Fetches the image and analyzes via buffer path.
   */
  async analyzeImageFromUrl(imageUrl: string, locale: string = 'en'): Promise<MealDetectionResponse> {
    try {
      try {
        new URL(imageUrl);
      } catch {
        throw new Error('Invalid image URL format');
      }

      if (config.DEBUG || config.ENVIRONMENT === 'staging') {
        console.log('[Gemini] analyzeImageFromUrl - locale:', locale);
      }

      const res = await fetch(imageUrl);
      if (!res.ok) {
        throw new Error(`Failed to fetch image: ${res.status}`);
      }
      const arrayBuffer = await res.arrayBuffer();
      const buffer = Buffer.from(arrayBuffer);
      const contentType = res.headers.get('content-type') ?? 'image/jpeg';
      const mimeType = contentType.split(';')[0]?.trim() || 'image/jpeg';

      return this.analyzeImageFromBuffer(buffer, mimeType, locale);
    } catch (error) {
      throw new Error(
        `Failed to analyze image: ${error instanceof Error ? error.message : 'Unknown error'}`
      );
    }
  }

  /**
   * Analyze food image from buffer using Gemini Vision
   */
  async analyzeImageFromBuffer(
    imageBuffer: Buffer,
    mimeType: string = 'image/jpeg',
    locale: string = 'en'
  ): Promise<MealDetectionResponse> {
    try {
      const validMimeTypes = ['image/jpeg', 'image/png', 'image/webp', 'image/gif'];
      const finalMimeType = validMimeTypes.includes(mimeType) ? mimeType : 'image/jpeg';
      const base64Image = imageBuffer.toString('base64');

      if (config.DEBUG || config.ENVIRONMENT === 'staging') {
        console.log('[Gemini] analyzeImageFromBuffer - locale:', locale);
      }

      const parts: Part[] = [
        { text: 'Analyze this food image and respond with the required JSON only.' },
        {
          inlineData: {
            mimeType: finalMimeType,
            data: base64Image,
          },
        },
      ];

      return this.generateAndParse(parts, locale);
    } catch (error) {
      throw new Error(
        `Failed to analyze image: ${error instanceof Error ? error.message : 'Unknown error'}`
      );
    }
  }

  /**
   * Analyze food description using Gemini
   */
  async analyzeTextDescription(description: string, locale: string = 'en'): Promise<MealDetectionResponse> {
    try {
      if (config.DEBUG || config.ENVIRONMENT === 'staging') {
        console.log('[Gemini] analyzeTextDescription - locale:', locale);
      }

      const parts: Part[] = [{ text: description }];
      return this.generateAndParse(parts, locale);
    } catch (error) {
      throw new Error(
        `Failed to analyze description: ${error instanceof Error ? error.message : 'Unknown error'}`
      );
    }
  }
}

export const geminiFoodAnalysisService = new GeminiFoodAnalysisService();
