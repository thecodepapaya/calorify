# Meal-analysis V3 hypothesis CLI

The local CLI exercises the new backend meal-analysis core before it is wired
to HTTP or persistence. It accepts text in any language or one local image,
runs every calculation stage, asks one bounded clarification bundle when
needed, and exposes each stage's exact input and output.

This is an ephemeral development tool. One interactive process keeps resolved
model and USDA state in memory while answers are entered, so it does not rerun
those external stages. It does not write application sessions, save meals, or
resume after process exit. Durable V3 resume remains a later backend phase.

## Prerequisites

Run commands from `backend/` so `staging.env` and the ignored `.env` load in
the normal order.

1. Install Node.js 22 or newer and run `npm ci`.
2. Configure `USDA_DATABASE_URL` for the local read-only USDA database.
3. Configure `OPENROUTER_API_KEY` or `OPENAI_API_KEY` for live interpretation
   and presentation.
   `OPENROUTER_MEAL_V3_MODEL` defaults to `openai/gpt-5-nano`.
4. Start and populate the local USDA service when no active snapshot exists:

   ```bash
   docker compose -f docker-compose.yml -f docker-compose.local.yml \
     --profile staging up -d --wait db-usda

   docker build -t calorify-backend-local:latest .
   docker compose -f docker-compose.yml -f docker-compose.local.yml \
     --profile maintenance run --rm usda-maintenance
   ```

An existing active materialized snapshot is reused without another download.
For this workflow, absent fiber is intentionally treated as `0`; on legacy
snapshots that means a stored fiber zero may represent either a genuine source
zero or an omitted source value.

The CLI needs only the USDA database; the Fastify server and application
PostgreSQL service do not need to be running.

## Interactive runs

For the guided path, use one command:

```bash
npm run meal-analysis:local
```

The launcher installs missing backend packages, starts the local USDA
database, offers an initial USDA import only when no active materialized
snapshot exists, then asks for text or image input, locale, country, time zone,
and readable or NDJSON output.

To supply arguments directly instead, use the commands below.

Text:

```bash
npm run meal-analysis -- \
  --text "daal and 4 rotis" \
  --locale en-IN \
  --time-zone Asia/Kolkata
```

Image:

```bash
npm run meal-analysis -- \
  --image ./meal.webp \
  --image-origin CAMERA_NOW \
  --locale en-US \
  --time-zone America/New_York
```

Each stage is printed as a readable block:

```text
[01] INPUT_NORMALIZED · 1 ms
input:
{ ... }
output:
{ ... }
```

If clarification is material, enter an displayed option ID, a valid number,
or `estimate` to preserve the current estimate. No response is selected by
default. There are at most three nutrition questions, at most one per
component, plus an optional meal-type question.

The final human summary emphasizes calories and their plausible range. It also
prints protein, carbohydrate, fat, and fiber points for API testing. The app
will initially display only the calorie point and range.

## Observable stages

The same shared runner emits:

1. `INPUT_NORMALIZED`
2. `INTERPRETED`
3. `VALIDATED`
4. `NUTRITION_RESOLVED`
5. `CALCULATED`
6. `QUESTIONS_PLANNED`
7. `ANSWERS_APPLIED`
8. `RECALCULATED`
9. `MEAL_TYPE_RESOLVED`
10. `PRESENTED`
11. `INTEGRITY_CHECKED`
12. `TERMINAL`

Inapplicable stages are emitted as `SKIPPED`, so a food, no-food, unusable, or
unresolved run remains fully traceable. Local image bytes are represented by
media type, byte count, and SHA-256 rather than printed as base64.

The `INTERPRETED` output includes the exact compact `firstPass` and `secondPass`
responses, their deterministically derived calculation proposal, and bounded
provider-attempt metadata. Provider operation names distinguish component and
ingredient passes. Nutrition output includes the selected trusted record or
bounded candidate rejection diagnostics for every scenario leaf.

## NDJSON and repeatable input

`--json` writes exactly one stage observation per stdout line and never
prompts:

```bash
npm run --silent meal-analysis -- \
  --text "1 banana for breakfast" \
  --locale en-US \
  --json
```

If input is needed, the terminal observation is `NEEDS_INPUT` and the process
exits with code `2`. For a repeatable known proposal/question contract, pass an
explicit answer array and meal type:

```bash
npm run --silent meal-analysis -- \
  --text "rotis" \
  --proposal ./proposal.json \
  --answers '[{"questionId":"nutrition:roti:count","kind":"NUMBER","value":4}]' \
  --meal-type LUNCH \
  --json
```

`--proposal` bypasses only the model interpretation call. It still performs
strict semantic validation, real local USDA resolution, calculation,
questions, presentation, and integrity checks. Because ephemeral invocations
do not share memory, rerunning a live command with answers also reruns live
interpretation; use interactive mode when testing the one-pause behavior.

To replay the agreed compact daal-and-roti responses through every downstream
stage without calling either interpretation model:

```bash
npm run meal-analysis -- \
  --text "daal and 4 roti" \
  --locale en-IN \
  --time-zone Asia/Kolkata \
  --first-pass docs/examples/meal-analysis-first-pass.json \
  --second-pass docs/examples/meal-analysis-second-pass.json
```

Both fixture flags are required together. The first-pass fixture is validated,
the second-pass component names must match it exactly, and deterministic code
expands the compact ranges and variations before real USDA resolution.

The active USDA snapshot can still return several equally ranked exact rows
for generic ingredients such as ghee or whole-wheat flour. In that case the
replay intentionally reaches `UNRESOLVED_NUTRITION`; this iteration does not
change USDA search terms or candidate ordering.

## Arguments

| Argument | Meaning | Default |
| --- | --- | --- |
| `--text TEXT` | Meal description in any language. A positional description also works. | None |
| `--image PATH` | Local JPEG, PNG, or WebP up to 10 MiB. | None |
| `--locale TAG` | BCP 47 presentation locale. | Host locale |
| `--country-code CODE` | ISO alpha-2 regional prior. Required if locale has no region. | Locale region |
| `--time-zone ZONE` | IANA time zone. | Host time zone |
| `--captured-at TIME` | RFC 3339 capture time. | Current time |
| `--image-origin VALUE` | `CAMERA_NOW` or `GALLERY`. | `GALLERY` for a local file |
| `--proposal FILE` | Strict saved interpretation proposal for replay. | Live model |
| `--first-pass FILE` | Compact pass-one response fixture; requires `--second-pass`. | Live model |
| `--second-pass FILE` | Compact pass-two response fixture; requires `--first-pass`. | Live model |
| `--answers JSON` | Complete explicit nutrition answer array. | Interactive / needs input |
| `--meal-type VALUE` | Explicit breakfast, lunch, dinner, or snack answer. | Inferred / asked |
| `--json` | NDJSON observations, no prompts or defaults. | Human output |

Exactly one of `--text` and `--image` is required.

## Outcomes and exit codes

| Code | Outcome |
| --- | --- |
| `0` | `COMPLETE` or `NO_FOOD` |
| `2` | `NEEDS_INPUT` |
| `3` | `UNRESOLVED`; the temporary internal bridge can also emit legacy `UNUSABLE_INPUT` |
| `4` | Provider, database, or other runtime failure |
| `64` | Invalid CLI input or arguments |

`UNRESOLVED` is expected when an active ingredient cannot be matched without
ambiguity, preparation is incompatible, or calories, protein, carbohydrate,
or fat are absent from a presence-aware trusted record. Missing fiber is
reported as zero. The CLI never substitutes model-generated nutrition.

## Troubleshooting

- `NO_ACTIVE_DATASET`: run USDA maintenance and verify `USDA_DATABASE_URL`.
- `All meal analysis LLM providers failed`: inspect the provider-attempt
  metadata on stderr and verify keys, quota, and the configured model.
- `UNRESOLVED_NUTRITION`: inspect `NUTRITION_RESOLVED` candidate diagnostics;
  ambiguous or missing data is intentionally not guessed.
- Exit `2` in JSON mode: submit the exact question IDs shown, or run
  interactively.

The approved future durable/API work is tracked in the
[meal-analysis backend rewrite plan](../../docs/plans/meal-analysis-reliability.md).
