import { randomUUID } from 'node:crypto';
import { createInterface } from 'node:readline/promises';
import { stdin, stdout } from 'node:process';
import config from '../config.js';
import { closeDatabase, initializeDatabase } from '../services/database.js';
import { runMigrations } from '../services/migrate.js';
import {
  analyzeTextMeal,
  continueMealAnalysis,
  continueMealAnalysisWithMealType,
  resumeMealAnalysis,
  type PipelineEvent,
} from '../services/nutritionEngineV2.js';

const VALUE_ARGUMENTS = new Set([
  '--analysis-id',
  '--locale',
  '--text',
  '--time-zone',
  '--user-id',
]);

function argument(name: string): string | undefined {
  const index = process.argv.indexOf(name);
  return index >= 0 ? process.argv[index + 1] : undefined;
}

const json = process.argv.includes('--json');
const analysisId = argument('--analysis-id') ?? randomUUID();
const userId = argument('--user-id');
const locale = argument('--locale') ?? 'en';
const timeZone = argument('--time-zone') ?? Intl.DateTimeFormat().resolvedOptions().timeZone;
const rl = createInterface({ input: stdin, output: stdout });

function print(event: PipelineEvent): void {
  stdout.write(`${JSON.stringify(event)}\n`);
}

async function readText(): Promise<string> {
  let positional: string | undefined;
  for (let index = 2; index < process.argv.length; index += 1) {
    const value = process.argv[index];
    if (VALUE_ARGUMENTS.has(value)) {
      index += 1;
    } else if (!value.startsWith('--')) {
      positional = value;
      break;
    }
  }
  const supplied = argument('--text') ?? positional;
  return supplied?.trim() || (await rl.question('Meal description: ')).trim();
}

async function drive(
  events: AsyncGenerator<PipelineEvent>,
  state = { automaticResumeUsed: false }
): Promise<void> {
  for await (const event of events) {
    print(event);
    if (event.step === 'UNCERTAINTY' && event.data.needsClarification) {
      const answers = [];
      for (const clarification of event.data.clarifications) {
        const choices = clarification.options.map((option) => option.optionId).join(', ');
        const selected = json
          ? clarification.defaultOptionId
          : (await rl.question(`${clarification.ingredientName} [${choices}] (${clarification.defaultOptionId}): `)).trim() || clarification.defaultOptionId;
        answers.push({ clarificationId: clarification.clarificationId, selectedOptionId: selected });
      }
      await drive(
        continueMealAnalysis(analysisId, answers, { userId, locale, timeZone }),
        state
      );
      return;
    }
    if (event.step === 'MEAL_TYPE_QUESTION') {
      const selected = json
        ? event.data.options.find((value) => value !== 'UNKNOWN') ?? 'SNACK'
        : (await rl.question(`Meal type [${event.data.options.join(', ')}]: `)).trim().toUpperCase();
      await drive(
        continueMealAnalysisWithMealType(
          analysisId,
          selected as 'BREAKFAST' | 'LUNCH' | 'DINNER' | 'SNACK',
          { userId, locale, timeZone }
        ),
        state
      );
      return;
    }
    if (
      event.step === 'ERROR' &&
      event.data.retryable &&
      !state.automaticResumeUsed
    ) {
      state.automaticResumeUsed = true;
      await drive(
        resumeMealAnalysis(analysisId, { userId, locale, timeZone }),
        state
      );
      return;
    }
  }
}

try {
  if (!config.DATABASE_URL) throw new Error('DATABASE_URL is not set');
  initializeDatabase();
  await runMigrations({ quiet: json });
  const text = await readText();
  if (!text) throw new Error('Meal description is required');
  await drive(analyzeTextMeal(text, { analysisId, userId, locale, timeZone }));
} finally {
  rl.close();
  await closeDatabase();
}
