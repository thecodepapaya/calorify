# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This App Does

Calorify is an AI-powered calorie tracking app. Users photograph or describe food; the backend uses OpenAI (`gpt-4.1-nano` for meal analysis, `gpt-5-mini` for AI summaries) or Gemini 1.5 Flash (legacy) to identify items and calculate macros. Results sync via Firebase. There is a Flutter main app, a Wear OS companion app, and a Node.js/Fastify backend.

## Commands

### Backend

```bash
cd backend
npm run dev          # Dev server with watch mode (tsx)
npm run build        # Compile TypeScript
npm test             # Run all tests (tsx --test)
npm run lint         # ESLint
npm run type-check   # Type-check without emit
```

Run a single test file:
```bash
cd backend && npm test src/services/nutritionEngine.test.ts
```

### Flutter (Main App)

```bash
cd app
flutter pub get
flutter test                        # All tests
flutter test --tags unit            # Unit tests only
flutter test --tags widget          # Widget tests only
flutter test --tags golden          # Golden image tests
flutter test integration_test/      # Integration tests
flutter test test/unit/path/to/test_file.dart  # Single file
flutter pub run build_runner build  # Regenerate code (JSON, routing, DB schema)
flutter pub run build_runner watch  # Watch mode for code gen
```

### Shared Scripts (run from repo root)

```bash
./scripts/generate_protos.sh      # Regenerate TypeScript + Dart from .proto files
./scripts/build_runner_all.sh     # Run build_runner across all Dart packages
./scripts/flutter_pub_get_all.sh  # pub get across all Flutter projects
./scripts/clean.sh                # Clean all build artifacts
```

### Docker (Backend)

```bash
cd backend
npm run docker:up:staging    # docker-compose staging profile
npm run docker:up:prod       # docker-compose production profile
```

## Architecture

```
Flutter App (Dart/Riverpod)
    │  HTTP + Protobuf
    ▼
Node.js/Fastify Backend (TypeScript)
    ├── Firebase Admin (auth)
    ├── PostgreSQL (meal analysis store, USDA data)
    ├── OpenAI API (`gpt-4.1-nano` meal analysis, `gpt-5-mini` summaries)
    └── Gemini 1.5 Flash ─ legacy food analysis
```

### Backend (`backend/src/`)

- `config.ts` — env var validation (fail-fast on startup)
- `index.ts` — Fastify app setup, plugins, middleware
- `routes/v1/` — V1 endpoints (food, user)
- `routes/v2/` — V2 endpoints (optimized food analysis)
- `services/nutritionEngine.ts` / `nutritionEngineV2.ts` — macro calculation
- `services/openAIFoodAnalysis.ts` — primary AI integration
- `services/geminiFoodAnalysis.ts` — legacy AI integration
- `services/usdaLookup.ts` — USDA database for grounding
- `jobs/` — cron jobs (AI summary, USDA refresh)
- `protos/` — ts-proto generated types (do not edit manually)

Rate limits: 100 req/min global, 20 req/min on AI endpoints.

### Flutter App (`app/lib/`)

- `core/db/` — Drift (SQLite) schema and DAOs
- `core/providers/` — Riverpod providers
- `core/repositories/` — data access layer
- `core/network/` — Dio HTTP client with interceptors
- `core/router/` — Auto Route configuration
- `features/` — one folder per feature (auth, home, log, history, favorites, onboarding, profile)

State management is Riverpod. Local persistence is Drift (SQLite). Remote auth is Firebase. API communication uses Protobuf-encoded bodies.

### Protobuf (single source of truth)

`.proto` files live in `/protos/`. Generated TypeScript lands in `backend/src/protos/`, generated Dart in `shared_packages/models/lib/src/`. **Always edit `.proto` files, never the generated output. Run `./scripts/generate_protos.sh` after any proto change.**

### Shared Packages (`shared_packages/`)

Six Dart packages shared between `app/` and `watch_app/`: `specs`, `models`, `services`, `utils`, `i18n`, `widgets`.

## Key Conventions

- **HTTP JSON + protos**: Prefer `.proto` messages as the contract for JSON request/response bodies on both backend and Flutter; run `./scripts/generate_protos.sh` after edits. See [.claude/skills/http-api-protobuf/SKILL.md](.claude/skills/http-api-protobuf/SKILL.md) for exceptions (stream frames, multipart files, CSV/binary) and client/server path alignment.
- **API versioning**: V2 is current. V1 endpoints are kept for backward compatibility.
- **Code generation**: After modifying Drift schema, Auto Route, or JSON-serializable models, re-run `build_runner`.
- **Internationalization**: Edit `.arb` files; Slang generates the Dart translation code. Units auto-convert metric/imperial by locale.
- **Backend env**: `staging.env` / `production.env` in `backend/`. Config validated at startup via `config.ts`.
- **Test tags**: Flutter tests are tagged `unit`, `widget`, `golden`, `integration` (see `dart_test.yaml`).
