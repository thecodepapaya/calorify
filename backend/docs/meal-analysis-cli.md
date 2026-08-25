# Local meal-analysis CLI

The local meal-analysis CLI exercises the real backend text-analysis flow
without starting the HTTP server. It uses the same application operations,
PostgreSQL session state, AI-provider routing, USDA lookup, clarification,
meal-type selection, resume behavior, and terminal results as the V2 API.

It is a development diagnostic, not the Flutter on-device inference flow. It
supports text input only and does not log the result as a saved meal.

## Prerequisites

Run commands from `backend/` so the normal `staging.env` and `.env` loading
rules apply. Staging configuration is loaded first; the ignored `.env` then
overrides local-only values. Local runs can therefore use the configured
staging provider credentials without copying them into `.env`.

1. Install Node.js 20 or newer and backend dependencies with `npm ci`.
2. Start PostgreSQL. The repository staging database can be started with:

   ```bash
   docker compose --profile staging up -d db-staging
   ```

3. In the ignored `backend/.env`, set a host-reachable `DATABASE_URL`. For the
   staging Compose database this is typically:

   ```dotenv
   DATABASE_URL=postgresql://calorify:YOUR_PASSWORD@127.0.0.1:5433/calorify_staging
   ```

4. Configure at least one meal-analysis provider with
   `OPENROUTER_API_KEY` or `OPENAI_API_KEY`. If both are present, the normal
   OpenRouter-first fallback order is used.
5. Make USDA reference data available for food cases. `USDA_DATABASE_URL` may
   point to a separate shared reference database; if it is omitted, USDA tables
   live in `DATABASE_URL`, so a second local database is not required. A new
   local database can be populated with `npm run usda:bootstrap` after setting
   the USDA source configuration described in `env.example`. A terminal
   non-food case does not reach USDA lookup.

The CLI initializes its database connections, applies pending application
migrations, and closes its pools when the run finishes. It does not download
USDA data automatically.

## Interactive flow

Start with a description likely to require portion clarification:

```bash
npm run meal-analysis -- --text "two eggs, toast with butter, and coffee"
```

Every pipeline event is printed as one JSON object on its own line. When the
backend emits `UNCERTAINTY`, enter one of the displayed option IDs or press
Enter to accept the parenthesized default. When it emits
`MEAL_TYPE_QUESTION`, enter `BREAKFAST`, `LUNCH`, `DINNER`, or `SNACK` from
the displayed choices.

The successful terminal event is either:

- `RESULT`, containing the meal name, type, macros, calorie range,
  ingredients, presentation text, and analysis receipt; or
- `NO_FOOD`, containing the rejection reason and confidence.

An `ERROR` event includes a public message and may include
`"retryable":true`. The CLI invokes the shared resume operation once for a
retryable error; another error terminates the command instead of looping.

## Useful test cases

Exercise the normal food path:

```bash
npm run meal-analysis -- --text "a bowl of dal and rice"
```

Exercise terminal non-food handling:

```bash
npm run meal-analysis -- --text "a blue ceramic coffee mug on a desk"
```

Exercise localized model output and time context:

```bash
npm run meal-analysis -- \
  --text "एक कटोरी दाल और चावल" \
  --locale hi \
  --time-zone Asia/Kolkata
```

Exercise optional user-profile context by supplying an existing local Firebase
UID. The CLI does not require Firebase authentication, but it uses the UID for
session ownership and profile lookup:

```bash
npm run meal-analysis -- \
  --text "chicken salad" \
  --user-id LOCAL_FIREBASE_UID
```

For non-interactive scripts, `--json` accepts every clarification default and
selects the first concrete meal type offered by the backend. Output is still
newline-delimited JSON, so it can be saved or processed one event at a time:

```bash
npm run --silent meal-analysis -- \
  --text "a bowl of dal and rice" \
  --json > /tmp/meal-analysis.ndjson
```

`--silent` suppresses npm's command banner; `--json` also suppresses successful
migration notices, leaving standard output as pipeline-event NDJSON. Provider
fallback warnings and failures remain on standard error.

## Resume and replay

Supply a UUID to make the analysis identity stable:

```bash
npm run meal-analysis -- \
  --analysis-id 11111111-1111-4111-8111-111111111111 \
  --text "a bowl of dal and rice"
```

Run the same command again to resume an incomplete session or replay its stored
`RESULT` or `NO_FOOD` terminal event. Reuse requires the same text, user ID,
and source. Changing identity-defining input while keeping the UUID produces an
`Analysis ID is unavailable` error. Keep `--locale` and `--time-zone`
consistent as well so the replay matches the original test context.

## Arguments

| Argument | Meaning | Default |
| --- | --- | --- |
| `--text TEXT` | Meal description; omit it to be prompted. A single positional description is also accepted. | Interactive prompt |
| `--analysis-id UUID` | Stable persisted analysis identity used for resume and replay. | New random UUID |
| `--user-id UID` | Optional session owner and profile-context UID. | No user |
| `--locale LOCALE` | Locale passed to decomposition and presentation. | `en` |
| `--time-zone ZONE` | IANA time zone used in analysis context. | Host time zone |
| `--json` | Do not prompt for follow-ups; accept deterministic defaults. | Interactive follow-ups |

## Troubleshooting

- `DATABASE_URL is not set`: add a host-reachable URL to `backend/.env`.
- `connect ECONNREFUSED`: start PostgreSQL and check its host port.
- `OPENROUTER_API_KEY or OPENAI_API_KEY is not set`: configure at least one
  provider locally.
- USDA relation or active-dataset errors: configure `USDA_DATABASE_URL` or
  bootstrap reference data before rerunning.
- `Analysis ID is unavailable`: use a new UUID or repeat the exact original
  identity inputs.
- `Analysis session not found` with `--user-id`: use the same UID that created
  the session.

The durable stages and emitted event contract are documented in
[Meal-analysis state machine](meal-analysis-state-machine.md).
