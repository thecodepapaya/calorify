import OpenAI from 'openai';
import config from '../config.js';
import { query } from './database.js';

const MEAL_TYPE_ABBREV: Record<string, string> = {
  BREAKFAST: 'B',
  LUNCH: 'L',
  DINNER: 'D',
  SNACK: 'S',
};

interface MealRow {
  logged_at: Date;
  logged_meal_name: string;
  logged_calories: number;
  logged_meal_type: string;
}

function formatMealsAsCsv(meals: MealRow[]): string {
  return meals
    .map((m) => {
      const date = m.logged_at.toISOString().slice(0, 10);
      const type = MEAL_TYPE_ABBREV[m.logged_meal_type] ?? m.logged_meal_type[0] ?? '?';
      const name = (m.logged_meal_name ?? '').slice(0, 40);
      return `${date}, ${type}, ${name}, ${m.logged_calories} cal`;
    })
    .join('\n');
}

export interface AiSummaryInput {
  userId: string;
  locale: string;
}

export interface AiSummaryOutput {
  summary: string;
  mealCount: number;
}

export async function generateAiSummaryForUser(
  input: AiSummaryInput
): Promise<AiSummaryOutput | null> {
  // Fetch V2 meals logged in the last 3 days
  const { rows: meals } = await query<MealRow>(
    `SELECT logged_at, logged_meal_name, logged_calories, logged_meal_type
       FROM meal_analysis_session
      WHERE user_id = $1
        AND logged_at >= NOW() - INTERVAL '3 days'
        AND logged_meal_name IS NOT NULL
      ORDER BY logged_at`,
    [input.userId]
  );

  if (meals.length === 0) return null;

  const csv = formatMealsAsCsv(meals);

  const client = new OpenAI({ apiKey: config.OPENAI_API_KEY ?? undefined });

  const systemPrompt =
    `You are a nutrition insight AI. The user has provided a CSV of logged meals ` +
    `(date, meal type, name, calories) from the last 3 days.\n\n` +
    `IMPORTANT: Users often do NOT log every meal. This data is incomplete.\n` +
    `Never assume low calories = dieting or high = overeating.\n` +
    `Frame insights as "Based on what you've logged..." or "Your logged meals suggest...".\n` +
    `Be encouraging and non-judgmental. Write 2-3 sentences.\n` +
    `Output language must match the locale: ${input.locale}.\n` +
    `Return JSON only: {"summary": "..."}`;

  const completion = await client.chat.completions.create({
    model: 'gpt-4o-mini',
    response_format: { type: 'json_object' },
    messages: [
      { role: 'system', content: systemPrompt },
      { role: 'user', content: `Meal log (date, type B/L/D/S, name, calories):\n${csv}` },
    ],
    max_tokens: 200,
  });

  const raw = completion.choices[0]?.message?.content ?? '{}';
  let summary: string;
  try {
    const parsed = JSON.parse(raw) as { summary?: string | null };
    summary = parsed.summary ?? '';
  } catch {
    summary = '';
  }

  if (!summary) return null;

  return { summary, mealCount: meals.length };
}

export async function saveAiSummary(
  userId: string,
  summary: string,
  locale: string,
  mealCount: number
): Promise<void> {
  await query(
    `INSERT INTO ai_summaries (user_id, summary, locale, meal_count)
     VALUES ($1, $2, $3, $4)`,
    [userId, summary, locale, mealCount]
  );
}
