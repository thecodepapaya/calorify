# Meal-analysis V3 hypothesis CLI

The local CLI exercises the new backend meal-analysis core before it is wired
to HTTP or persistence. It accepts text in any language or one local image,
runs every calculation stage, asks one bounded clarification bundle when
needed, and exposes each stage's exact input and output.

This is an ephemeral development tool. One interactive process keeps resolved
model and USDA state in memory while answers are entered, so it does not rerun
those external stages. It does not write application sessions, save meals, or
resume after process exit. The HTTP adapter has durable result-level resume,
but currently reruns interpretation and resolution on answer submission; see
the [cross-component flow](../../docs/plans/meal-analysis-reliability.md#7-clarification-and-answers).

## Prerequisites

Run commands from `backend/` so `staging.env` and the ignored `.env` load in
the normal order.

1. Install Node.js 22 or newer and run `npm ci`.
2. Configure `USDA_DATABASE_URL` for the local read-only USDA database.
3. Configure `OPENROUTER_API_KEY` for live interpretation and presentation.
   `OPENROUTER_MEAL_V3_MODEL` defaults to `openai/gpt-5.6-luna`.
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

Normal interactive mode prints one concise line per stage:

```text
[01] INPUT_NORMALIZED · 1 ms
```

The complete input and output for every stage is written as a separate,
pretty-printed JSON file in the temporary `CLI artifacts` directory printed at
startup. This applies to live and fixture-backed runs.

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

## USDA retrieval routing

The second interpretation pass assigns a `retrievalIntent` to each ingredient
leaf. It is a retrieval boundary, not a nutrition confidence score:

It also supplies zero to three concise `lookupAliases` when a genuine
alternate food identity can improve USDA retrieval. The resolver keeps the
existing order—canonical identity first, followed by aliases—and aliases can
authorize identity matches, so broad or speculative terms are forbidden.

| Intent | When to use it | Resolver behavior |
| --- | --- | --- |
| `GENERIC_INGREDIENT` | An ordinary base ingredient without product evidence, such as potato, yogurt, or whole-wheat flour. | Searches the active local USDA snapshot while excluding `branded_food` records. |
| `BRANDED_PRODUCT` | The input identifies a specific packaged or marketed product. | Requires concise `productQuery` text, searches every data type in the active local USDA snapshot, and prioritizes matching branded records. |
| `AMBIGUOUS` | The input does not safely establish either a generic ingredient or a particular product. | Does not search or select a record; it returns `AMBIGUOUS_RETRIEVAL_INTENT`. |

This avoids branded-label results crowding out generic ingredients before the
resolver can apply its identity and preparation checks. It also keeps an
unclear product reference explicit instead of silently treating it as a
generic food.

`BRANDED_PRODUCT` uses its model-supplied `productQuery` for product-first
retrieval and ranking. A whole normalized product-query phrase can also
authorize a branded candidate when canonical identity and aliases do not
match; canonical and alias matches rank ahead of it. A partial fuzzy product
near-match never authorizes a branded candidate, so `PEPPER` cannot match a
`pepsi` query. When
several same-rank product-query candidates remain, the temporary release
policy selects the highest similarity and then the numerically lowest FDC ID.
This favors a calorie result over unresolved ambiguity and may select the wrong
variant. It is not yet a complete
brand-aware matcher: the imported USDA projection does not retain metadata
such as brand owner/name, barcode, ingredient list, or serving-label text.
Adding that metadata is still required for package- and market-specific
selection beyond the product name.

All component amounts represent consumed finished food. A scenario may still
use raw, dry, cooked, drained, or retained ingredient nutrition bases to
calculate that finished portion; those are ingredient properties, not a
separate component measurement mode.

After the USDA, NFS, and resolver-owned local paths, the runner may fill a
still-unresolved active leaf with a strictly validated per-100-g model estimate
carrying synthetic provenance. If any leaf remains unresolved after that
fallback, `NUTRITION_RESOLVED` records its diagnostics and the runner emits the
downstream calculation, questions, presentation, and integrity stages as
`SKIPPED`. The terminal outcome is `UNRESOLVED`.

Live CLI interpretation sends `reasoning_effort: none`, which is supported by
the default `gpt-5.6-luna` model.
OpenRouter requests follow its structured-output contract with
`response_format.type: json_schema`, `strict: true`, and
`provider.require_parameters: true`. For hypothesis debugging only, every raw
provider response and provider error is written to the temporary CLI artifact
directory as separate, pretty-printed JSON files. Each successful call has a
provider-response file and a parsed model-output file, so the structured result
can be inspected without unescaping a message string. Errors have their own
files. Ordered filenames include the operation, provider, model, and event. The
CLI prints that directory path once to stderr instead of dumping payloads on
the console. The production backend does not enable raw provider logging.

## NDJSON and repeatable input

`--json` is the explicit machine-streaming mode: it writes exactly one stage
observation per stdout line and never prompts. It also retains the separate
stage artifact files:

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

`UNRESOLVED` is expected when an active ingredient remains unresolved after
USDA, eligible resolver-owned fallbacks, and the strictly validated model
nutrition fallback; when preparation is incompatible; or when required macros
remain absent. Missing fiber is reported as zero. Model estimates retain
explicit synthetic provenance and never masquerade as USDA.

## Troubleshooting

- `NO_ACTIVE_DATASET`: run USDA maintenance and verify `USDA_DATABASE_URL`.
- `Meal analysis LLM provider failed`: inspect the provider-attempt
  metadata on stderr and verify keys, quota, and the configured model.
- `UNRESOLVED_NUTRITION`: inspect `NUTRITION_RESOLVED` candidate diagnostics;
  ambiguous or missing data is intentionally not guessed.
- Exit `2` in JSON mode: submit the exact question IDs shown, or run
  interactively.

The implemented app/API flow and future checkpointing work are tracked in the
[meal-analysis V3 architecture and roadmap](../../docs/plans/meal-analysis-reliability.md).
