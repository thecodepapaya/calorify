# Calorify

Calorify is an Android-first nutrition tracker with AI-assisted meal analysis, offline-first logging, and a Wear OS companion. Users can describe or photograph a meal, review a USDA-grounded calorie and macro estimate, clarify uncertain portions, and sync logs between phone and watch.

> Calorie estimates are informational and are not medical advice.

## What is included

- `app/` — Flutter phone app with onboarding, meal logging, history, favorites, goals, Firebase authentication, and Health Connect support.
- `watch_app/` — watch-tailored Flutter UI with voice logging, offline queues, favorites, history, and Wear OS Data Layer sync.
- `backend/` — Fastify/TypeScript API, PostgreSQL persistence, OpenRouter/OpenAI routing, USDA grounding, evals, metrics, and Docker deployment.
- `shared_packages/` — shared models, design tokens, localization, services, widgets, and utilities.
- `protos/` — contracts used by the apps and backend.

## Meal-analysis flow

1. The model decomposes text or an image into atomic ingredients and portions.
2. Ingredients are normalized and matched against USDA FoodData Central.
3. Calories and macros are calculated deterministically from matched nutrition rows.
4. High-variance portions trigger a clarification instead of silently guessing.
5. Structured-output validation and provider failover keep the flow resilient.

The backend tries the configured OpenRouter model, then OpenRouter's free router, then direct OpenAI. See [backend/README.md](backend/README.md) for configuration and eval commands.

## Local setup

Prerequisites: Flutter compatible with Dart `^3.7.2`, Node.js 20+, Docker Compose, and `protoc` for contract generation.

```bash
git clone <repository-url>
cd calorify

cd app && flutter pub get
cd ../watch_app && flutter pub get
cd ../backend && npm ci
cp env.example .env
```

Fill `backend/.env` with local credentials. Service-account JSON, env files, signing keys, pre-authenticated URLs, and provider keys are intentionally ignored by Git. Firebase client configuration is not an admin credential, but its API keys should still be restricted to the expected applications in Google Cloud.

For a local PostgreSQL container, ensure the Compose password variables in `.env` match `DATABASE_URL`, then run:

```bash
cd backend
docker compose --profile staging up -d db-staging
npm run dev
```

Run the phone or watch app from its directory:

```bash
flutter run --flavor=dev --dart-define=ORACLE_BUCKET_UPLOAD_URL=<local-upload-url>
```

The upload URL is optional for text analysis, but required for photo uploads. A pre-authenticated URL is a bearer credential even when injected at build time; scope and rotate it accordingly.

## Verification

The current cross-project findings and prioritized measurement/refactor backlog are in [PERFORMANCE_AUDIT.md](PERFORMANCE_AUDIT.md).

```bash
# Backend
cd backend
npm run type-check
npm run lint
npm test
npm run build

# Phone app
cd ../app
flutter analyze
flutter test --concurrency=1

# Watch app
cd ../watch_app
flutter analyze
flutter test
```

Calorie regression cases are in `backend/evals/`:

```bash
cd backend
npm run calories:estimate -- --text "2 rotis with dal" --meal-type LUNCH
npm run calories:eval -- --base-url http://127.0.0.1:8000
```

## Configuration and secrets

Use `backend/env.example` as the inventory of backend and Compose variables. Production values belong in the deployment environment or a secrets manager—not in source control. Mobile release workflows consume signing material and the upload URL from GitHub Actions secrets.

Run the repository guard before committing:

```bash
./scripts/check-secrets.sh
```

See [SECURITY.md](SECURITY.md) for reporting and credential-response guidance.

## Deployment

Pushes affecting `backend/` on `main` run backend checks and the production deployment workflow. VM connection data is stored as GitHub environment secrets; runtime secrets stay in ignored files on the host. The deployment script waits for container health checks and rolls back the backend image on failure.

The phone and Shorebird workflows are manually dispatched and read signing credentials from GitHub Actions secrets. New phone bundles go to the internal track; after device testing, `promote-app.yml` promotes a specified existing version code without rebuilding it.

## Contributing

Keep generated code and shared contracts synchronized, add regression coverage for behavior changes, and never commit credentials. Focused development notes belong next to the subsystem they describe; completed implementation plans do not belong in the repository.
