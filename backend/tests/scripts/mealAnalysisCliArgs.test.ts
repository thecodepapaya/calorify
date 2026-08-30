import assert from 'node:assert/strict';
import test from 'node:test';
import { resolve } from 'node:path';
import {
  MEAL_ANALYSIS_CLI_HELP,
  parseMealAnalysisCliArgs,
  type MealAnalysisCliDefaults,
  type MealAnalysisCliOptions,
} from '../../src/scripts/mealAnalysisCliArgs.js';

const DEFAULTS: Required<MealAnalysisCliDefaults> = {
  locale: 'en-IN',
  timeZone: 'Asia/Kolkata',
  capturedAt: '2026-08-26T07:00:00.000Z',
  cwd: '/tmp/calorify-cli-tests',
};

function parse(
  args: string[],
  defaults: MealAnalysisCliDefaults = DEFAULTS
) {
  return parseMealAnalysisCliArgs(['node', 'meal-analysis-cli', ...args], defaults);
}

function parsedOptions(
  args: string[],
  defaults: MealAnalysisCliDefaults = DEFAULTS
): MealAnalysisCliOptions {
  const result = parse(args, defaults);
  assert.equal(result.ok, true, result.ok ? undefined : result.kind === 'error' ? result.message : 'help');
  return result.options;
}

test('parses text input and rejects text/image ambiguity or missing input', () => {
  assert.deepEqual(parsedOptions(['--text', '  kaddu sabzi and 4 roti  ']), {
    text: 'kaddu sabzi and 4 roti',
    locale: 'en-IN',
    countryCode: 'IN',
    timeZone: 'Asia/Kolkata',
    capturedAt: '2026-08-26T07:00:00.000Z',
    json: false,
  });

  assert.deepEqual(parse(['--text', 'dal', '--image', 'meal.webp']), {
    ok: false,
    kind: 'error',
    message: 'Use exactly one of --text or --image',
  });
  assert.deepEqual(parse([]), {
    ok: false,
    kind: 'error',
    message: 'Use exactly one of --text or --image',
  });
});

test('joins positional words into the meal description', () => {
  assert.equal(parsedOptions(['kaddu', 'sabzi', 'and', '4', 'roti']).text, 'kaddu sabzi and 4 roti');
});

test('derives country from locale and accepts an explicit normalized override', () => {
  const derived = parsedOptions(['--text', 'poha', '--locale', 'hi-IN']);
  assert.equal(derived.locale, 'hi-IN');
  assert.equal(derived.countryCode, 'IN');

  const explicit = parsedOptions([
    '--text',
    'toast',
    '--locale',
    'en',
    '--country-code',
    'us',
  ]);
  assert.equal(explicit.locale, 'en');
  assert.equal(explicit.countryCode, 'US');

  assert.deepEqual(parse(['--text', 'toast', '--locale', 'en']), {
    ok: false,
    kind: 'error',
    message: '--country-code is required when --locale has no region',
  });
  assert.deepEqual(parse(['--text', 'toast', '--locale', 'not_a_locale']), {
    ok: false,
    kind: 'error',
    message: 'Invalid locale: not_a_locale',
  });
});

test('validates time zones and normalizes valid captured timestamps', () => {
  const options = parsedOptions([
    '--text',
    'dinner',
    '--time-zone',
    'America/New_York',
    '--captured-at',
    '2026-08-26T12:30:00+05:30',
  ]);
  assert.equal(options.timeZone, 'America/New_York');
  assert.equal(options.capturedAt, '2026-08-26T07:00:00.000Z');

  assert.deepEqual(parse(['--text', 'dinner', '--time-zone', 'Mars/Olympus']), {
    ok: false,
    kind: 'error',
    message: 'Invalid IANA time zone: Mars/Olympus',
  });
  assert.deepEqual(parse(['--text', 'dinner', '--captured-at', 'not-a-time']), {
    ok: false,
    kind: 'error',
    message: 'Invalid captured timestamp: not-a-time',
  });
});

test('resolves image paths and applies image-origin rules', () => {
  const defaultOrigin = parsedOptions(['--image', 'fixtures/meal.webp']);
  assert.equal(defaultOrigin.imagePath, resolve(DEFAULTS.cwd, 'fixtures/meal.webp'));
  assert.equal(defaultOrigin.imageOrigin, 'GALLERY');

  const camera = parsedOptions([
    '--image',
    '/tmp/camera.jpg',
    '--image-origin',
    'camera_now',
  ]);
  assert.equal(camera.imagePath, '/tmp/camera.jpg');
  assert.equal(camera.imageOrigin, 'CAMERA_NOW');

  assert.deepEqual(parse(['--text', 'dal', '--image-origin', 'GALLERY']), {
    ok: false,
    kind: 'error',
    message: '--image-origin requires --image',
  });
  assert.deepEqual(parse(['--image', 'meal.jpg', '--image-origin', 'SCREENSHOT']), {
    ok: false,
    kind: 'error',
    message: 'Invalid image origin: SCREENSHOT',
  });
});

test('parses proposal, explicit answers, meal type, and JSON mode', () => {
  const answers = '[{"questionId":"portion","optionId":"large"}]';
  const options = parsedOptions([
    '--text',
    'dal and rice',
    '--proposal',
    'fixtures/proposal.json',
    '--answers',
    answers,
    '--meal-type',
    'lunch',
    '--json',
  ]);

  assert.equal(options.proposalPath, resolve(DEFAULTS.cwd, 'fixtures/proposal.json'));
  assert.equal(options.answers, answers);
  assert.equal(options.mealType, 'LUNCH');
  assert.equal(options.json, true);

  assert.deepEqual(parse(['--text', 'dal', '--meal-type', 'SUPPER']), {
    ok: false,
    kind: 'error',
    message: 'Invalid meal type: SUPPER',
  });
});

test('requires a complete two-pass fixture pair and keeps it separate from legacy proposals', () => {
  const options = parsedOptions([
    '--text', 'daal and 4 roti',
    '--first-pass', 'fixtures/first.json',
    '--second-pass', 'fixtures/second.json',
  ]);
  assert.equal(options.firstPassPath, resolve(DEFAULTS.cwd, 'fixtures/first.json'));
  assert.equal(options.secondPassPath, resolve(DEFAULTS.cwd, 'fixtures/second.json'));

  assert.deepEqual(parse(['--text', 'daal', '--first-pass', 'first.json']), {
    ok: false,
    kind: 'error',
    message: '--first-pass and --second-pass must be supplied together',
  });
  assert.deepEqual(parse([
    '--text', 'daal', '--proposal', 'old.json',
    '--first-pass', 'first.json', '--second-pass', 'second.json',
  ]), {
    ok: false,
    kind: 'error',
    message: '--proposal cannot be combined with --first-pass and --second-pass',
  });
});

test('rejects unknown arguments and flags with missing values', () => {
  assert.deepEqual(parse(['--text', 'dal', '--verbose']), {
    ok: false,
    kind: 'error',
    message: 'Unknown argument: --verbose',
  });
  assert.deepEqual(parse(['--text']), {
    ok: false,
    kind: 'error',
    message: '--text requires a value',
  });
  assert.deepEqual(parse(['--text', 'dal', '--answers', '--json']), {
    ok: false,
    kind: 'error',
    message: '--answers requires a value',
  });
});

test('recognizes both help flags and exposes usage text', () => {
  assert.deepEqual(parse(['--help']), { ok: false, kind: 'help' });
  assert.deepEqual(parse(['-h']), { ok: false, kind: 'help' });
  assert.match(MEAL_ANALYSIS_CLI_HELP, /Usage:/);
  assert.match(MEAL_ANALYSIS_CLI_HELP, /--text/);
  assert.match(MEAL_ANALYSIS_CLI_HELP, /--image/);
});
