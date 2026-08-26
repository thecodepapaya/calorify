import { AiMealSummaryTrend } from '../../protos/calorify/ai_meal_summary_trend.js';
import { calendarDateInTimeZone } from '../../utils/timezone.js';

export interface AiSummaryMeal {
  loggedAt: string;
  name: string;
  mealType: 'BREAKFAST' | 'LUNCH' | 'DINNER' | 'SNACK';
  calories: number;
  protein: number;
  carbs: number;
  fat: number;
  fiber: number;
}

export interface AiSummaryStats {
  mealCount: number;
  topFoods: string[];
  macroBalanceScore: number;
  trend: AiMealSummaryTrend;
}

function addDays(date: string, days: number): string {
  const value = new Date(`${date}T12:00:00Z`);
  value.setUTCDate(value.getUTCDate() + days);
  return value.toISOString().slice(0, 10);
}

function averageDailyCalories(meals: AiSummaryMeal[], dates: Set<string>, timeZone: string) {
  const totals = new Map<string, number>();
  for (const meal of meals) {
    const date = calendarDateInTimeZone(new Date(meal.loggedAt), timeZone);
    if (dates.has(date)) totals.set(date, (totals.get(date) ?? 0) + meal.calories);
  }
  const values = [...totals.values()];
  return {
    average: values.reduce((a, b) => a + b, 0) / 3,
    coveredDays: values.length,
  };
}

export function computeAiSummaryStats(
  meals: AiSummaryMeal[],
  summaryLocalDate: string,
  timeZone: string
): AiSummaryStats {
  const foods = new Map<string, { name: string; count: number }>();
  let proteinCalories = 0;
  let carbCalories = 0;
  let fatCalories = 0;
  for (const meal of meals) {
    const name = meal.name.trim().replace(/\s+/g, ' ');
    if (name) {
      const key = name.toLocaleLowerCase('en');
      const current = foods.get(key);
      foods.set(key, { name: current?.name ?? name, count: (current?.count ?? 0) + 1 });
    }
    proteinCalories += meal.protein * 4;
    carbCalories += meal.carbs * 4;
    fatCalories += meal.fat * 9;
  }
  const topFoods = [...foods.values()]
    .sort((a, b) => b.count - a.count || a.name.localeCompare(b.name))
    .slice(0, 3)
    .map((food) => food.name);
  const total = proteinCalories + carbCalories + fatCalories;
  const deviation = total === 0 ? 1 :
    Math.abs(carbCalories / total - 0.5) +
    Math.abs(proteinCalories / total - 0.2) +
    Math.abs(fatCalories / total - 0.3);
  const macroBalanceScore = total === 0
    ? 0
    : Math.max(0, Math.min(100, Math.round(100 - deviation * 120)));

  const latestDates = new Set([-1, -2, -3].map((days) => addDays(summaryLocalDate, days)));
  const previousDates = new Set([-4, -5, -6].map((days) => addDays(summaryLocalDate, days)));
  const latest = averageDailyCalories(meals, latestDates, timeZone);
  const previous = averageDailyCalories(meals, previousDates, timeZone);
  let trend: AiMealSummaryTrend = AiMealSummaryTrend.UNSPECIFIED;
  if (latest.coveredDays >= 2 && previous.coveredDays >= 2 && previous.average > 0) {
    const change = (latest.average - previous.average) / previous.average;
    trend = change >= 0.1 ? AiMealSummaryTrend.UP
      : change <= -0.1 ? AiMealSummaryTrend.DOWN : AiMealSummaryTrend.STEADY;
  }
  return { mealCount: meals.length, topFoods, macroBalanceScore, trend };
}

export function isAiSummaryEligible(
  meals: AiSummaryMeal[],
  summaryLocalDate: string,
  timeZone: string
): boolean {
  const yesterday = addDays(summaryLocalDate, -1);
  const lastFour = new Set([-1, -2, -3, -4].map((days) => addDays(summaryLocalDate, days)));
  let yesterdayCount = 0;
  let lastFourCount = 0;
  for (const meal of meals) {
    const date = calendarDateInTimeZone(new Date(meal.loggedAt), timeZone);
    if (date === yesterday) yesterdayCount++;
    if (lastFour.has(date)) lastFourCount++;
  }
  return yesterdayCount >= 2 || lastFourCount >= 3;
}

export function summaryWindowDates(summaryLocalDate: string) {
  return { start: addDays(summaryLocalDate, -7), end: summaryLocalDate };
}
