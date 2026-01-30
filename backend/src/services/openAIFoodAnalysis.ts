import OpenAI from 'openai';
import type {
  MealDetectionResult,
  Meal,
  MealType,
  HealthScore,
} from '../protos/calorify/models.js';
import { MealType as MealTypeEnum, HealthScore as HealthScoreEnum } from '../protos/calorify/models.js';
import config from '../config.js';

const SYSTEM_PROMPT = `You are an expert food analysis AI. Given an image of food,
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

interface OpenAIMealInfo {
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

interface OpenAIResponse {
  meal_identified: boolean;
  calorie_confidence: number;
  tip: string;
  meal_info: OpenAIMealInfo;
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
   * Extract JSON from OpenAI response text
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
   * Build protobuf MealDetectionResult from OpenAI JSON response
   * Returns a proper protobuf-typed object
   */
  private buildProtoResult(resultDict: OpenAIResponse): MealDetectionResult {
    const mealInfo: Meal = {
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
   * Analyze food image from URL using OpenAI Vision API
   * Returns a protobuf-typed MealDetectionResult
   */
  async analyzeImageFromUrl(imageUrl: string): Promise<MealDetectionResult> {
    try {
      // Validate URL format
      try {
        new URL(imageUrl);
      } catch {
        throw new Error('Invalid image URL format');
      }

      const prompt = `${SYSTEM_PROMPT}\n\nEstimate calories in this meal picture and respond in JSON.`;

      const response = await this.client.chat.completions.create({
        model: 'gpt-4o-mini',
        messages: [
          {
            role: 'system',
            content: prompt,
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
        max_tokens: 1000,
      });

      const content = response.choices[0]?.message?.content;
      if (!content) {
        throw new Error('No response content from OpenAI');
      }

      const jsonText = this.extractJson(content);
      const resultDict: OpenAIResponse = JSON.parse(jsonText);

      return this.buildProtoResult(resultDict);
    } catch (error) {
      throw new Error(
        `Failed to analyze image: ${error instanceof Error ? error.message : 'Unknown error'}`
      );
    }
  }
}

export const openAIFoodAnalysisService = new OpenAIFoodAnalysisService();
