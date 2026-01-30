import { GoogleGenerativeAI } from '@google/generative-ai';
import type {
  MealDetectionResult,
} from '../protos/calorify/meal_detection.js';
import type {
  Meal,
  MealType,
  HealthScore,
  CalorieConfidence,
} from '../protos/meal/meal.js';
import {
  CalorieConfidence as CalorieConfidenceEnum,
} from '../protos/meal/meal.js';
import {
  MealType as MealTypeEnum,
  HealthScore as HealthScoreEnum,
} from '../protos/meal/meal.js';

const SYSTEM_PROMPT = `You are an expert food analysis AI. Given an image or a description of food,
analyze the main food item(s). Be precise with nutrient estimations.
Respond ONLY with a JSON object in the following format:
{
  "meal_identified": boolean,
  "calorie_confidence": integer (0-100, representing percentage),
  "tip": string,
  "meal_info": {
    "meal_name": string,
    "calories": integer,
    "protein": integer,
    "carbs": integer,
    "fat": integer,
    "fiber": integer,
    "meal_quantity": string (optional),
    "meal_type": "BREAKFAST" | "LUNCH" | "DINNER" | "SNACK" | "UNKNOWN",
    "health_score": "HEALTHY" | "NEUTRAL" | "UNHEALTHY",
    "health_score_reason": string (optional)
  }
}`;

interface GeminiMealInfo {
  meal_name: string;
  calories: number;
  protein: number;
  carbs: number;
  fat: number;
  fiber: number;
  meal_quantity?: string;
  meal_type: string;
  health_score: string;
  health_score_reason?: string;
}

interface GeminiResponse {
  meal_identified: boolean;
  calorie_confidence: number;
  tip: string;
  meal_info: GeminiMealInfo;
}

class FoodAnalysisService {
  private model;

  constructor() {
    // Initialize Gemini model
    // API key should be set via GOOGLE_API_KEY environment variable
    // or via Google Cloud ADC (Application Default Credentials)
    const apiKey = process.env.GOOGLE_API_KEY;
    if (!apiKey) {
      throw new Error('GOOGLE_API_KEY environment variable is not set');
    }
    const genAI = new GoogleGenerativeAI(apiKey);
    this.model = genAI.getGenerativeModel({ model: 'gemini-1.5-flash' });
  }

  /**
   * Parse meal type string to protobuf enum value
   */
  private parseMealType(mealTypeStr: string): MealType {
    const upper = mealTypeStr.toUpperCase();
    // Map to generated protobuf enum values
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
    // Map to generated protobuf enum values
    const mapping: Record<string, HealthScore> = {
      HEALTHY: HealthScoreEnum.HEALTHY,
      NEUTRAL: HealthScoreEnum.NEUTRAL,
      UNHEALTHY: HealthScoreEnum.UNHEALTHY,
    };
    return mapping[upper] ?? HealthScoreEnum.NEUTRAL;
  }

  /**
   * Extract JSON from Gemini response text
   * Handles markdown code blocks if present
   */
  private extractJson(text: string): string {
    let cleaned = text.trim();

    // Remove markdown code blocks
    if (cleaned.includes('```json')) {
      cleaned = cleaned.split('```json')[1]?.split('```')[0] ?? cleaned;
    } else if (cleaned.includes('```')) {
      cleaned = cleaned.split('```')[1]?.split('```')[0] ?? cleaned;
    }

    return cleaned.trim();
  }

  /**
   * Build protobuf MealDetectionResult from Gemini JSON response
   * Returns a proper protobuf-typed object
   */
  private buildProtoResult(resultDict: GeminiResponse): MealDetectionResult {
    // Validate required fields
    if (typeof resultDict.meal_identified !== 'boolean') {
      throw new Error('Response missing or invalid "meal_identified" field');
    }
    if (typeof resultDict.calorie_confidence !== 'number') {
      throw new Error('Response missing or invalid "calorie_confidence" field');
    }
    if (typeof resultDict.tip !== 'string') {
      throw new Error('Response missing or invalid "tip" field');
    }
    if (!resultDict.meal_info) {
      throw new Error('Response missing "meal_info" field');
    }

    const mealInfo: Meal = {
      name: resultDict.meal_info.meal_name || '',
      quantity: resultDict.meal_info.meal_quantity ?? '',
      type: this.parseMealType(resultDict.meal_info.meal_type),
      macros: {
        calories: Math.round(resultDict.meal_info.calories),
        protein: Math.round(resultDict.meal_info.protein),
        carbs: Math.round(resultDict.meal_info.carbs),
        fat: Math.round(resultDict.meal_info.fat),
        fiber: Math.round(resultDict.meal_info.fiber),
      },
      health: resultDict.meal_info.health_score_reason
        ? {
          healthScore: this.parseHealthScore(resultDict.meal_info.health_score),
          healthScoreReason: resultDict.meal_info.health_score_reason,
        }
        : {
          healthScore: this.parseHealthScore(resultDict.meal_info.health_score),
        },
    };

    // Map calorie confidence number (0-100) to CalorieConfidence enum
    let calorieConfidence: CalorieConfidence;
    const conf = resultDict.calorie_confidence;
    if (conf >= 71) {
      calorieConfidence = CalorieConfidenceEnum.HIGH;
    } else if (conf >= 41) {
      calorieConfidence = CalorieConfidenceEnum.MEDIUM;
    } else if (conf >= 1) {
      calorieConfidence = CalorieConfidenceEnum.LOW;
    } else {
      calorieConfidence = CalorieConfidenceEnum.UNSPECIFIED;
    }

    const result: MealDetectionResult = {
      mealIdentified: resultDict.meal_identified,
      calorieConfidence,
      tip: resultDict.tip,
      meal: mealInfo,
    };

    return result;
  }

  /**
   * Analyze food image using Gemini AI
   * Returns a protobuf-typed MealDetectionResult
   */
  async analyzeImage(imageBuffer: Buffer, mimeType: string = 'image/jpeg'): Promise<MealDetectionResult> {
    try {
      // Convert buffer to base64 for Gemini
      const base64Image = imageBuffer.toString('base64');

      // Validate/sanitize MIME type
      const validMimeTypes = ['image/jpeg', 'image/png', 'image/webp', 'image/gif'];
      const finalMimeType = validMimeTypes.includes(mimeType) ? mimeType : 'image/jpeg';

      const prompt = `${SYSTEM_PROMPT}\n\nEstimate calories in this meal picture and respond in JSON.`;

      const result = await this.model.generateContent([
        prompt,
        {
          inlineData: {
            data: base64Image,
            mimeType: finalMimeType,
          },
        },
      ]);

      const responseText = result.response.text();
      const jsonText = this.extractJson(responseText);
      let resultDict: GeminiResponse;
      try {
        resultDict = JSON.parse(jsonText);
      } catch (parseError) {
        throw new Error(
          `Failed to parse Gemini response as JSON: ${parseError instanceof Error ? parseError.message : 'Unknown error'}`
        );
      }

      return this.buildProtoResult(resultDict);
    } catch (error) {
      throw new Error(
        `Failed to analyze image: ${error instanceof Error ? error.message : 'Unknown error'}`
      );
    }
  }

  /**
   * Analyze food description using Gemini AI
   * Returns a protobuf-typed MealDetectionResult
   */
  async analyzeDescription(description: string): Promise<MealDetectionResult> {
    try {
      const prompt = `${SYSTEM_PROMPT}\n\nMeal: ${description}.`;

      const result = await this.model.generateContent([prompt]);
      const responseText = result.response.text();
      const jsonText = this.extractJson(responseText);
      let resultDict: GeminiResponse;
      try {
        resultDict = JSON.parse(jsonText);
      } catch (parseError) {
        throw new Error(
          `Failed to parse Gemini response as JSON: ${parseError instanceof Error ? parseError.message : 'Unknown error'}`
        );
      }

      return this.buildProtoResult(resultDict);
    } catch (error) {
      throw new Error(
        `Failed to analyze description: ${error instanceof Error ? error.message : 'Unknown error'}`
      );
    }
  }
}

export const foodAnalysisService = new FoodAnalysisService();
