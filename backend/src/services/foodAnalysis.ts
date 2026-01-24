import { GoogleGenerativeAI } from '@google/generative-ai';
import type {
  MealDetectionResult,
  MealInfo,
  MealType,
  HealthScore,
} from '../protos/calorify/models.js';
import { MealType as MealTypeEnum, HealthScore as HealthScoreEnum } from '../protos/calorify/models.js';

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
    const mealInfo: MealInfo = {
      mealName: resultDict.meal_info.meal_name,
      mealQuantity: resultDict.meal_info.meal_quantity ?? '',
      mealType: this.parseMealType(resultDict.meal_info.meal_type),
      calories: resultDict.meal_info.calories,
      protein: resultDict.meal_info.protein,
      carbs: resultDict.meal_info.carbs,
      fat: resultDict.meal_info.fat,
      fiber: resultDict.meal_info.fiber,
      timestamp: Date.now(), // Unix timestamp in milliseconds
      healthScore: this.parseHealthScore(resultDict.meal_info.health_score),
      healthScoreReason: resultDict.meal_info.health_score_reason,
    };

    const result: MealDetectionResult = {
      mealIdentified: resultDict.meal_identified,
      calorieConfidence: resultDict.calorie_confidence,
      tip: resultDict.tip,
      mealInfo,
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
      const resultDict: GeminiResponse = JSON.parse(jsonText);

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
      const resultDict: GeminiResponse = JSON.parse(jsonText);

      return this.buildProtoResult(resultDict);
    } catch (error) {
      throw new Error(
        `Failed to analyze description: ${error instanceof Error ? error.message : 'Unknown error'}`
      );
    }
  }
}

export const foodAnalysisService = new FoodAnalysisService();
