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

const SYSTEM_PROMPT = `You are an expert food analysis AI. Given an image or description of food,
analyze the main food item(s). Be precise with nutrient estimations.
Respond ONLY with a JSON object matching this exact structure:

{
  "result": {
    "meal_identified": boolean,
    "calorie_confidence": "UNSPECIFIED" | "LOW" | "MEDIUM" | "HIGH",
    "tip": string,
    "meal": {
      "name": string,
      "quantity": string,
      "type": "UNKNOWN" | "BREAKFAST" | "LUNCH" | "DINNER" | "SNACK",
      "macros": {
        "calories": integer,
        "carbs": integer,
        "protein": integer,
        "fat": integer,
        "fiber": integer
      },
      "health": {
        "health_score": "HEALTHY" | "NEUTRAL" | "UNHEALTHY",
        "health_score_reason": string (optional)
      }
    }
  },
  "clarifications": array of clarification objects
}

IMPORTANT RULES:
1. calorie_confidence must be one of: "UNSPECIFIED", "LOW", "MEDIUM", "HIGH"
   - Use "LOW" when confidence is 0-40%
   - Use "MEDIUM" when confidence is 41-70%
   - Use "HIGH" when confidence is 71-100%
   - Use "UNSPECIFIED" only if you cannot determine confidence

2. Only include clarifications when calorie_confidence is "LOW" or "MEDIUM".
   When calorie_confidence is "HIGH" or "UNSPECIFIED", return an empty clarifications array [].

3. The "meal" field inside "result" is optional. 
   - If meal_identified is true, you MUST include the "meal" object with all required fields (name, quantity, type, macros).
   - If meal_identified is false, omit the "meal" field entirely.
   - When "meal" is included, "macros" is REQUIRED and must contain all five fields (calories, carbs, protein, fat, fiber).
   - The "health" field inside "meal" is optional but recommended.

4. Each clarification object must have this exact format:
{
  "question": string (e.g., "What does the white bowl contain?"),
  "options": [
    {
      "option": string (e.g., "curd", "labaan"),
      "macro_diff": {
        "calories": integer (expected calories difference if this option is selected),
        "carbs": integer (expected carbs difference in grams),
        "protein": integer (expected protein difference in grams),
        "fat": integer (expected fat difference in grams),
        "fiber": integer (expected fiber difference in grams)
      }
    }
  ]
}

5. Generate clarifications only when you need more information to improve calorie estimation accuracy.
   Examples: unclear ingredients, ambiguous portions, multiple possible interpretations, uncertain quantities.

6. All numeric values (calories, macros) must be integers, not decimals.`;


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
   */
  private mapClarification(clarification: OpenAIClarification): Clarification {
    // Validate clarification structure
    if (!clarification.question || typeof clarification.question !== 'string') {
      throw new Error('Clarification missing or invalid "question" field');
    }
    if (!Array.isArray(clarification.options)) {
      throw new Error('Clarification missing or invalid "options" array');
    }

    return {
      question: clarification.question,
      options: clarification.options
        .filter((opt) => opt && typeof opt.option === 'string')
        .map((opt) => ({
          option: opt.option,
          macroDiff: opt.macro_diff
            ? {
              calories: Math.round(opt.macro_diff.calories),
              carbs: Math.round(opt.macro_diff.carbs),
              protein: Math.round(opt.macro_diff.protein),
              fat: Math.round(opt.macro_diff.fat),
              fiber: Math.round(opt.macro_diff.fiber),
            }
            : undefined,
        })),
    };
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

    // Map meal if present
    let mealInfo: Meal | undefined;
    if (resultData.meal) {
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

    const result: MealDetectionResult = {
      mealIdentified: resultData.meal_identified,
      calorieConfidence: this.mapCalorieConfidence(resultData.calorie_confidence),
      tip: resultData.tip,
      meal: mealInfo,
    };

    // Map clarifications if present - validate it's an array
    const clarifications: Clarification[] = Array.isArray(resultDict.clarifications)
      ? resultDict.clarifications
        .filter((c) => c && typeof c.question === 'string' && Array.isArray(c.options))
        .map((c) => this.mapClarification(c))
      : [];

    const response: MealDetectionResponse = {
      result,
      clarifications,
    };

    return response;
  }

  /**
   * Analyze food image from URL using OpenAI Vision API
   * Returns a protobuf-typed MealDetectionResponse with clarifications
   */
  async analyzeImageFromUrl(imageUrl: string): Promise<MealDetectionResponse> {
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
        max_tokens: 2000, // Increased for clarifications
      });

      const content = response.choices[0]?.message?.content;
      if (!content) {
        throw new Error('No response content from OpenAI');
      }

      const jsonText = this.extractJson(content);
      let resultDict: OpenAIResponse;
      try {
        resultDict = JSON.parse(jsonText);
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
   * Analyze food description using OpenAI
   * Returns a protobuf-typed MealDetectionResponse with clarifications
   */
  async analyzeTextDescription(description: string): Promise<MealDetectionResponse> {
    try {
      const prompt = `${SYSTEM_PROMPT}\n\nMeal description: ${description}\n\nEstimate calories and respond in JSON.`;

      const response = await this.client.chat.completions.create({
        model: 'gpt-4o-mini',
        messages: [
          {
            role: 'system',
            content: prompt,
          },
          {
            role: 'user',
            content: `Analyze this meal description: ${description}`,
          },
        ],
        response_format: { type: 'json_object' },
        max_tokens: 2000, // Increased for clarifications
      });

      const content = response.choices[0]?.message?.content;
      if (!content) {
        throw new Error('No response content from OpenAI');
      }

      const jsonText = this.extractJson(content);
      let resultDict: OpenAIResponse;
      try {
        resultDict = JSON.parse(jsonText);
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
