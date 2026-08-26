import { readFile } from 'node:fs/promises';
import { stdin, stderr, stdout } from 'node:process';
import { createInterface } from 'node:readline/promises';
import config from '../config.js';
import {
  closeDatabase,
  initializeDatabase,
} from '../services/infrastructure/database.js';
import type {
  NutritionQuestion,
  QuestionAnswer,
} from '../services/meal-analysis-v3/calculation.js';
import { createFixtureMealInterpreter } from '../services/meal-analysis-v3/interpretation.js';
import type {
  MealType,
  MealTypeQuestion,
} from '../services/meal-analysis-v3/mealType.js';
import {
  runMealAnalysisV3,
  type MealAnalysisInputResponse,
  type MealAnalysisQuestionBundle,
  type MealAnalysisV3Result,
} from '../services/meal-analysis-v3/pipeline.js';
import {
  MEAL_ANALYSIS_CLI_HELP,
  parseMealAnalysisCliArgs,
  type MealAnalysisCliOptions,
} from './mealAnalysisCliArgs.js';
import {
  MealAnalysisCliInputError,
  createHumanStageObserver,
  createNdjsonStageObserver,
  loadMealAnalysisCliImage,
  parseMealAnalysisCliAnswers,
} from './mealAnalysisCliIo.js';

export const MEAL_ANALYSIS_CLI_EXIT = {
  SUCCESS: 0,
  NEEDS_INPUT: 2,
  TERMINAL_FAILURE: 3,
  RUNTIME_FAILURE: 4,
  USAGE: 64,
} as const;

async function readProposal(path: string): Promise<unknown> {
  try {
    return JSON.parse(await readFile(path, 'utf8')) as unknown;
  } catch {
    throw new MealAnalysisCliInputError(`Unable to read proposal JSON: ${path}`);
  }
}

function optionLines(question: NutritionQuestion): string {
  if (question.response.kind !== 'OPTION') return '';
  return question.response.options
    .map(({ optionId, label }) => `  ${optionId} = ${label}`)
    .join('\n');
}

async function askNutritionQuestion(
  question: NutritionQuestion,
  ask: (prompt: string) => Promise<string>
): Promise<QuestionAnswer> {
  if (question.response.kind === 'OPTION') {
    const allowed = new Set(question.response.options.map(({ optionId }) => optionId));
    for (;;) {
      const answer = (await ask(
        `${question.prompt}\n${optionLines(question)}\n  estimate = keep the current estimate\nAnswer: `
      )).trim();
      if (answer.toLowerCase() === 'estimate') {
        return { questionId: question.questionId, kind: 'USE_ESTIMATE' };
      }
      if (allowed.has(answer)) {
        return { questionId: question.questionId, kind: 'OPTION', optionId: answer };
      }
      stderr.write('Enter one of the option IDs shown above, or estimate.\n');
    }
  }

  for (;;) {
    const response = question.response;
    const answer = (await ask(
      `${question.prompt} (${response.min}-${response.max} ${response.unitCode.toLowerCase()}, step ${response.step}; or estimate): `
    )).trim();
    if (answer.toLowerCase() === 'estimate') {
      return { questionId: question.questionId, kind: 'USE_ESTIMATE' };
    }
    const value = Number(answer);
    const steps = (value - response.min) / response.step;
    if (
      Number.isFinite(value) &&
      value >= response.min &&
      value <= response.max &&
      (!response.integerOnly || Number.isInteger(value)) &&
      Math.abs(steps - Math.round(steps)) < 1e-9
    ) {
      return { questionId: question.questionId, kind: 'NUMBER', value };
    }
    stderr.write('Enter a number matching the displayed bounds and step, or estimate.\n');
  }
}

async function askMealType(
  question: MealTypeQuestion,
  ask: (prompt: string) => Promise<string>
): Promise<MealType> {
  const allowed = new Set<MealType>(question.options.map(({ optionId }) => optionId));
  const choices = question.options.map(({ optionId }) => optionId).join(', ');
  for (;;) {
    const answer = (await ask(`${question.prompt} [${choices}]: `)).trim().toUpperCase();
    if (allowed.has(answer as MealType)) return answer as MealType;
    stderr.write('Enter one of the meal types shown above.\n');
  }
}

function interactiveInputReader(
  cliOptions: MealAnalysisCliOptions
): {
  requestInput: (questions: MealAnalysisQuestionBundle) => Promise<MealAnalysisInputResponse>;
  close: () => void;
} {
  const readline = createInterface({ input: stdin, output: stderr });
  return {
    async requestInput(questions) {
      stderr.write('\nClarification\n');
      let nutritionAnswers: QuestionAnswer[] | undefined;
      if (cliOptions.answers === undefined) {
        nutritionAnswers = [];
        for (const question of questions.nutritionQuestions) {
          nutritionAnswers.push(
            await askNutritionQuestion(question, (prompt) => readline.question(prompt))
          );
        }
      }
      const mealTypeAnswer = cliOptions.mealType === undefined && questions.mealTypeQuestion
        ? await askMealType(questions.mealTypeQuestion, (prompt) => readline.question(prompt))
        : undefined;
      return {
        ...(nutritionAnswers ? { nutritionAnswers } : {}),
        ...(mealTypeAnswer ? { mealTypeAnswer } : {}),
      };
    },
    close: () => readline.close(),
  };
}

function printSummary(result: MealAnalysisV3Result): void {
  if (result.outcome !== 'COMPLETE') {
    stdout.write(`\nResult: ${result.outcome}\n`);
    if ('reason' in result) stdout.write(`${result.reason}\n`);
    return;
  }
  stdout.write(
    '\nResult\n' +
    `Meal: ${result.mealName}\n` +
    `Serving: ${result.servingSizeText}\n` +
    `Calories: ${result.macros.calories} kcal (${result.macroRanges.calories.min}-${result.macroRanges.calories.max})\n` +
    `API macros: protein ${result.macros.protein} g, carbs ${result.macros.carbs} g, fat ${result.macros.fat} g, fiber ${result.macros.fiber} g\n`
  );
}

function exitCode(result: MealAnalysisV3Result): number {
  switch (result.outcome) {
    case 'COMPLETE':
    case 'NO_FOOD':
      return MEAL_ANALYSIS_CLI_EXIT.SUCCESS;
    case 'NEEDS_INPUT':
      return MEAL_ANALYSIS_CLI_EXIT.NEEDS_INPUT;
    case 'UNUSABLE_INPUT':
    case 'UNRESOLVED':
      return MEAL_ANALYSIS_CLI_EXIT.TERMINAL_FAILURE;
  }
}

export async function runMealAnalysisCli(argv = process.argv): Promise<number> {
  const parsed = parseMealAnalysisCliArgs(argv);
  if (!parsed.ok) {
    if (parsed.kind === 'help') {
      stdout.write(MEAL_ANALYSIS_CLI_HELP);
      return MEAL_ANALYSIS_CLI_EXIT.SUCCESS;
    }
    stderr.write(`${parsed.message}\n\n${MEAL_ANALYSIS_CLI_HELP}`);
    return MEAL_ANALYSIS_CLI_EXIT.USAGE;
  }

  let interactive: ReturnType<typeof interactiveInputReader> | undefined;
  let databaseInitialized = false;
  try {
    const cliOptions = parsed.options;
    const loadedImage = cliOptions.imagePath
      ? await loadMealAnalysisCliImage(cliOptions.imagePath)
      : undefined;
    const input = cliOptions.text
      ? {
          kind: 'TEXT' as const,
          text: cliOptions.text,
          context: {
            locale: cliOptions.locale,
            countryCode: cliOptions.countryCode,
            timeZone: cliOptions.timeZone,
            capturedAt: cliOptions.capturedAt,
          },
        }
      : {
          kind: 'IMAGE' as const,
          imageId: `cli:${loadedImage!.descriptor.sha256}`,
          imageOrigin: cliOptions.imageOrigin!,
          context: {
            locale: cliOptions.locale,
            countryCode: cliOptions.countryCode,
            timeZone: cliOptions.timeZone,
            capturedAt: cliOptions.capturedAt,
          },
        };
    const fixtureProposal = cliOptions.proposalPath
      ? await readProposal(cliOptions.proposalPath)
      : undefined;
    const nutritionAnswers = parseMealAnalysisCliAnswers(cliOptions.answers);
    if (!config.USDA_DATABASE_URL && !config.DATABASE_URL) {
      throw new Error('USDA_DATABASE_URL or DATABASE_URL is not set');
    }
    initializeDatabase();
    databaseInitialized = true;

    if (!cliOptions.json) interactive = interactiveInputReader(cliOptions);
    const result = await runMealAnalysisV3({
      input,
      ...(loadedImage
        ? { image: { bytes: loadedImage.bytes, mediaType: loadedImage.mediaType } }
        : {}),
      ...(fixtureProposal !== undefined
        ? { interpreter: createFixtureMealInterpreter(fixtureProposal) }
        : {}),
      ...(nutritionAnswers !== undefined ? { nutritionAnswers } : {}),
      ...(cliOptions.mealType ? { mealTypeAnswer: cliOptions.mealType } : {}),
      ...(interactive ? { requestInput: interactive.requestInput } : {}),
      observer: cliOptions.json
        ? createNdjsonStageObserver(stdout)
        : createHumanStageObserver(stdout),
    });
    if (!cliOptions.json) printSummary(result);
    return exitCode(result);
  } catch (error) {
    const message = error instanceof Error ? error.message : 'Unknown runtime failure';
    stderr.write(`Meal analysis failed: ${message}\n`);
    return error instanceof MealAnalysisCliInputError
      ? MEAL_ANALYSIS_CLI_EXIT.USAGE
      : MEAL_ANALYSIS_CLI_EXIT.RUNTIME_FAILURE;
  } finally {
    interactive?.close();
    if (databaseInitialized) await closeDatabase();
  }
}
