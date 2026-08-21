import { AiMealSummaryTrend } from '../protos/calorify/ai_meal_summary_trend.js';

export interface AiSummaryMealRow {
  logged_at: Date | string;
  logged_meal_name: string | null;
  logged_meal_type: string | null;
  logged_calories: number | null;
  logged_protein: number | null;
  logged_carbs: number | null;
  logged_fat: number | null;
  logged_fiber: number | null;
}

export interface AiSummaryStats {
  mealCount: number;
  topFoods: string[];
  macroBalanceScore: number;
  trend: AiMealSummaryTrend;
}

function toMillis(value: Date | string): number {
  return value instanceof Date ? value.getTime() : new Date(value).getTime();
}

export function computeAiSummaryStats(meals: AiSummaryMealRow[]): AiSummaryStats {
  if (meals.length === 0) {
    return {
      mealCount: 0,
      topFoods: [] as string[],
      macroBalanceScore: 0,
      trend: AiMealSummaryTrend.STEADY,
    };
  }

  const foodCounts = new Map<string, number>();
  let proteinCalories = 0;
  let carbCalories = 0;
  let fatCalories = 0;

  const previousMeals = meals.filter(
    (meal) => Date.now() - toMillis(meal.logged_at) > 24 * 60 * 60 * 1000
  );
  const latestMeals = meals.filter(
    (meal) => Date.now() - toMillis(meal.logged_at) <= 24 * 60 * 60 * 1000
  );

  for (const meal of meals) {
    const name = meal.logged_meal_name?.trim();
    if (name) {
      foodCounts.set(name, (foodCounts.get(name) ?? 0) + 1);
    }
    proteinCalories += (meal.logged_protein ?? 0) * 4;
    carbCalories += (meal.logged_carbs ?? 0) * 4;
    fatCalories += (meal.logged_fat ?? 0) * 9;
  }

  const topFoods = [...foodCounts.entries()]
    .sort((a, b) => b[1] - a[1] || a[0].localeCompare(b[0]))
    .slice(0, 3)
    .map(([name]) => name);

  const totalMacroCalories = proteinCalories + carbCalories + fatCalories;
  let macroBalanceScore = 0;
  if (totalMacroCalories > 0) {
    const carbRatio = carbCalories / totalMacroCalories;
    const proteinRatio = proteinCalories / totalMacroCalories;
    const fatRatio = fatCalories / totalMacroCalories;
    const deviation =
      Math.abs(carbRatio - 0.5) +
      Math.abs(proteinRatio - 0.2) +
      Math.abs(fatRatio - 0.3);
    macroBalanceScore = Math.max(0, Math.min(100, Math.round(100 - deviation * 120)));
  }

  const averageCalories = (items: AiSummaryMealRow[]) => {
    if (items.length === 0) return 0;
    return (
      items.reduce((sum, item) => sum + (item.logged_calories ?? 0), 0) / items.length
    );
  };

  const previousAverage = averageCalories(previousMeals);
  const latestAverage = averageCalories(latestMeals);
  let trend: AiMealSummaryTrend = AiMealSummaryTrend.STEADY;
  if (previousAverage > 0 && latestAverage > 0) {
    const change = (latestAverage - previousAverage) / previousAverage;
    if (change >= 0.1) {
      trend = AiMealSummaryTrend.UP;
    } else if (change <= -0.1) {
      trend = AiMealSummaryTrend.DOWN;
    }
  }

  return {
    mealCount: meals.length,
    topFoods,
    macroBalanceScore,
    trend,
  };
}
