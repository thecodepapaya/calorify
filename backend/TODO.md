# Backend Go Roadmap & Feature Status

This document tracks technical debt, implemented functionality, active bug fixes, and missing features identified by comparing the legacy TypeScript backend against the Go rewrite (`backend/`).

---

## 1. Immediate Bug Fixes & Refactoring (Active Scope)

- [ ] **Database DTO Layer**: Refactor database layer to use DTOs (Data Transfer Objects) for database interactions to prevent nil access errors in `internal/api/db.go:142` (e.g. `healthData.Height.Value`).
- [ ] **Non-empty Responses**: Fix PUT/POST requests returning empty right now instead of created/updated object (e.g. `UpsertUser`, `UpdateUserHealthData`).
- [ ] **Remove Auth Bypasses in `internal/middleware/auth.go`**:
  - Remove `/users`, `/users/health-data`, and `/users/meals` from `publicRoutes` (lines 14–16).
  - Remove hardcoded test `userUid` injection and re-enable token validation for protected routes (line 24).
- [ ] **Structured Context Logging**: Implement proper logging across all packages using `slog` with contextual fields, error objects, user UIDs, and analysis IDs instead of raw strings.
- [ ] **Postman Collection Generator**: Add a lightweight Go script generator for Postman configuration in `cmd/gen_postman/main.go`. Defines the Postman v2.1 JSON schema, uses `protojson.Marshal` on empty instances of request messages (`api.UpdateUserRequest{}`, `api.HealthDataRequest{}`) to produce sample bodies, and outputs `calorify.postman_collection.json`.

---

## 2. Meal Management (CRUD) & History Export

- [ ] **Meal CRUD Handlers** (`internal/api/meal.go` & `internal/api/db.go`):
  - `GET /users/meals/{meal_id}`: Implement `GetMeal` to fetch a single logged meal and verify user ownership.
  - `GET /users/meals`: Implement `ListMeal` with pagination support (`page_size`, `page_token`), returning meals ordered by `created_at DESC`.
  - `POST /users/meals`: Implement `LogMeal` to persist user-confirmed or manually created meals with full macros, health scores, and metadata.
  - `PUT /users/meals/{meal_id}`: Implement `UpdateMeal` to edit an existing meal entry.
  - `DELETE /users/meals/{meal_id}`: Implement `DeleteMeal` to soft-delete or remove a logged meal.
- [ ] **Meal History CSV Export**:
  - Implement meal history export (`GET /users/meals/export` or `/api/v1/food/export`) returning `text/csv` with `Content-Disposition: attachment; filename="calorify-meals-${userUid}.csv"`, containing timestamps, meal types, meal names, and macro values (calories, protein, carbs, fat, fiber).

---

## 3. Meal Analysis Pipeline & Clarifications

- [x] **Two-Pass LLM Decomposition**: Implemented Pass 1 component decomposition (`decomposeComponents`) and Pass 2 ingredient decomposition (`decomposeIngredients`) using OpenAI Structured Outputs in `internal/analysis/service.go`.
- [x] **USDA Vector Embedding & Cosine Similarity Search**: Implemented batch embedding via Ollama (`embeddinggemma-2`), pgvector cosine similarity search (`1 - (embedding <=> $1::vector)`), and macro hydration in `internal/analysis/service.go` and `internal/analysis/db.go`.
- [x] **Analysis Pipeline Execution & DB Storage**: Asynchronous background pipeline (`go s.runPipeline`) saving Pass 1 components, Pass 2 ingredients, USDA enriched macros, and final meal response in `meal_analysis` table (`internal/analysis/service.go`).
- [ ] **Pass 1 & Pass 2 Decomposition Refinements**:
  - Move meal quantity decision from Pass 2 to Pass 1 (`internal/analysis/service.go`).
- [x] **Pipeline Error & Failure Tracking**: Write `"FAILED"` status to the `meal_analysis` table entry when the analysis pipeline fails or panics at any step (using `MarkAnalysisFailed` in deferred cleanup with a separate timeout context).
- [ ] **Analysis Status & Polling Endpoint**:
  - Build the meal analysis polling API: register and implement `GET /users/meals/analysis/{analysis_id}/status` (and `POST /users/meals/analysis/status` via `api.AnalysisStatusRequest`) to check asynchronous pipeline stages (`INITIATED`, `COMPONENT_DECOMPOSED`, `INGREDIENT_DECOMPOSED`, `USDA_MACRO_HYDRATED`, `PRESENTED`, `FAILED`) and retrieve intermediate progress and final results.
  - **Web Client Migration**: When the backend polling API is built and exposed, migrate the web demo (`web/try.html` / `web/try.js`) to use this real polling endpoint instead of the simulated/pretend polling client (including CORS configuration and appropriate fallback handling).
- [ ] **Clarification Questions Workflow**:
  - Implement `generateClarification()`: generate atomic option or numeric questions when ingredients, preparation states, or portions have high uncertainty.
  - Implement `sendClarification()` and answer submission route (`POST /users/meals/analysis/{analysis_id}/answers`).
  - Persist questions and answers (`clarification_questions`, `clarification_response`) in `meal_analysis` and resume the pipeline from an interpretation snapshot without re-running LLM decomposition.
- [ ] **LLM Nutrition Fallback (`MODEL_INFERRED`)**:
  - When USDA vector cosine similarity falls below threshold or an ingredient is not present in the USDA reference database, trigger a bounded LLM macro fallback rather than failing the entire pipeline.
- [ ] **Preparation State Filtering & Portion Scaling**:
  - Implement preparation state filtering (raw vs. cooked) in USDA search to avoid caloric errors (e.g. raw rice vs. cooked rice).
  - Port portion scaling algorithms (bulk, exact unit grams, pinch) to calculate ingredient-level and meal-level macros.
- [ ] **Analysis Feedback & Confirmation**:
  - Add analysis feedback endpoint (`POST /users/meals/analysis/{analysis_id}/feedback`) to record user rating signal (`UP`/`DOWN`).
  - Add meal confirmation endpoint (`POST /users/meals/analysis/{analysis_id}/confirm-log`) linking the analysis result to the logged meal.
- [ ] **Progress Streaming (NDJSON / SSE)**:
  - Add real-time event streaming (`STARTED`, `PROGRESS`, `NEEDS_INPUT`, `COMPLETE`, `ERROR`) to provide progressive UI feedback during meal analysis.
- [x] ~~**LangGraph StateGraph Engine**~~: *(Not Applicable)* Native Go sequential stages (`decomposeComponents` -> `decomposeIngredients` -> `enrichUsdaMacro` -> `prepareFinalResponse`) with goroutines, context cancellation, and OpenTelemetry spans replace JavaScript LangGraph.

---

## 4. Daily AI Nutrition Summaries

- [ ] **Nutritional Statistics Calculation Engine**:
  - Port 7-day rolling window statistics engine in user's timezone: daily average calories, top 3 foods consumed, macro balance score (0–100), and calorie trend (`UP`, `DOWN`, `STEADY`, `UNSPECIFIED`).
  - Enforce eligibility criteria (at least 2 meals logged yesterday or 3 in the last 4 days).
- [ ] **Daily AI Summary Generation Endpoint**:
  - Implement `POST /users/ai-summary/generate` (or `/api/v1/food/ai-summary/generate`) backed by database advisory / row locking for idempotent daily summary generation.
  - Multi-locale AI coaching prose generation (supporting requested user locale with English fallback).
  - Attempt limits (e.g. max 3 attempts per day) and cooldown timers on failed generations.
- [ ] **Database Migration**:
  - Create migration for `ai_summaries` table in `backend/migrations/calorify/`.

---

## 5. Meal Analysis Tips Service

- [ ] **Localized Meal Analysis Tips**:
  - Implement `GET /meal-analysis-tips` (or `/api/v1/food/meal-analysis-tips`) to serve localized rotating tips for analysis loading screens from JSON config (`meal_analysis_tips.json`), supporting uniform random subset sampling via optional `count` query parameter.

---

## 6. Notifications & FCM Device Management

- [ ] **FCM Device Token Endpoint**:
  - Register and implement `POST /users/fcm-token` handler using `api.UpdateFcmTokenRequest` proto to register/update device tokens and device types.
  - Create database migration and table for storing user device tokens.
- [ ] **Async Analysis Completion Push Notifications**:
  - Dispatch Firebase Cloud Messaging (FCM) notifications to the user device when background meal analysis completes or requires clarification input.
- [ ] **Push Banner CLI Script**:
  - Port `push-banner` CLI utility to Go for publishing app banners/announcements to Firestore (`app_config/banners`).

---

## 7. Image Processing & Object Storage Architecture

- [ ] **Static WebP Validation**:
  - Add binary WebP validator (verifies RIFF/WEBP header, VP8/VP8L chunks, max dimensions <= 4096px, max pixels <= 16M, and blocks animated frames).
- [ ] **Object Storage Integration (Oracle Cloud / S3-compatible)**:
  - Add dedicated image upload endpoint and offload image binaries to object storage with Pre-Authenticated Requests (PAR) / signed URLs instead of storing large base64 strings in PostgreSQL.

---

## 8. Health, Readiness & Resilience

- [x] **Basic Database Ping Probe**: `GET /ready` pings the primary database pool (`a.DB`).
- [ ] **Liveness Probe**:
  - Add dedicated `GET /health` endpoint returning `{ "status": "ok" }`.
- [ ] **Comprehensive Readiness Probe**:
  - Enhance `GET /ready` to check application DB pool (`a.DB`), USDA DB pool (`a.Analysis.UsdaDB`), and verify that the active USDA dataset version is materialized and loaded.
- [ ] **Rate Limiting Middleware**:
  - Implement rate limiting middleware (fixed or sliding window) per user and per IP for meal analysis requests and image uploads.
- [ ] **Circuit Breaker**:
  - Implement circuit breaker for external AI provider APIs (OpenAI, Ollama) with half-open trial probes and cooldowns to prevent cascading timeouts.
- [ ] **USDA Query Concurrency Limiter**:
  - Add bounded semaphore/limiter to prevent vector search queries from exhausting USDA database connections under burst loads.

---

## 9. Observability, Metrics & Dashboards

- [x] **OpenTelemetry Distributed Tracing**: Implemented OTLP HTTP trace exporter in `internal/telemetry/telemetry.go` and instrumented the meal analysis pipeline with trace spans.
- [x] ~~**LangSmith Tracing Integration**~~: *(Not Applicable)* Tracing is standardized natively via OpenTelemetry rather than third-party LangSmith SDK.
- [ ] **Prometheus Metrics Endpoint**:
  - Expose `GET /metrics` with Prometheus metrics for HTTP request counts/durations, upstream AI latency/errors, USDA search timings, and database connection pool statistics.
- [ ] **Durable Analysis Session Inspector**:
  - Port `/analysis-history` operator web UI (protected by basic auth) to inspect stored sessions, pipeline stage details, image previews, and user feedback.
- [ ] **Dashboards**:
  - Pretty and comprehensive dashboards for checking analytics for meal analysis, traffic volume, analytics and telemetry.

---

## 10. USDA Ingestion, Normalization & Evaluation Tooling

- [x] **USDA Raw Dataset Streaming Ingestion**: Implemented in `cmd/usda/main.go -ingest` to stream Foundation, SR Legacy, Survey (FNDDS), and Branded foods from zip archives into `usda_foods`.
- [x] **USDA Embedding Generation CLI**: Implemented in `cmd/usda/main.go -embed` and `-embed-all` to generate 768-dim embeddings using Ollama (`embeddinggemma-2`).
- [x] ~~**USDA Batch LLM Normalization (`-normalize -populate_missing`)**~~: *(Not Applicable)* Superseded by dense vector search via EmbeddingGemma-2 & pgvector in Stage 3 architecture (`plans/stage-3-usda-nutrient-resolution.md`), avoiding cost-prohibitive offline batch LLM normalization.
- [ ] **USDA Retrieval Benchmark / Eval Harness**:
  - Implement eval CLI tool (`cmd/usda_eval`) to benchmark vector search and top-k retrieval accuracy against the validation meal ingredient corpus.
- [ ] **Local Meal Analysis CLI**:
  - Implement an interactive offline CLI (similar to `meal-analysis-cli.ts`) for developer testing of image and text analysis without running the HTTP server.

---

## 11. Database Migrations & Tooling

- [x] **Core Application Schema Migration**: `migrations/calorify/000001_create_user_profile.sql` created for `users`, `health_data`, `meals`, and `meal_analysis`.
- [x] **USDA Schema Migration**: `migrations/usda/000001_create_usda_tables.sql` created for `usda_foods` with `vector(768)` & HNSW index, `usda_dataset_version`, and fallback tables.
- [ ] **Automated Migration Runner**:
  - Integrate an automated migration runner on startup (or via Makefile) for both application and USDA schemas using `golang-migrate`.
- [ ] **Pending Migrations**:
  - Migration for `ai_summaries` table.
  - Migration for `user_fcm_tokens` table.
  - Migration for clarification response/snapshot columns in `meal_analysis` (if needed for replay).

---

## 12. API Routing & Architecture

- [x] **User Details & Health Data Endpoints**: Implemented `GET /users`, `PUT /users`, `GET /users/health-data`, and `POST /users/health-data` in `internal/api/user.go` and `internal/api/db.go`.
- [x] **Meal Analysis Intake Endpoint**: Implemented `POST /users/meals/analysis` in `internal/api/analysis.go`.
- [x] ~~**Legacy Fastify Route Patterns (`/api/v1/...`, `/api/v3/...`)**~~: *(Not Applicable)* The Go backend replaces legacy REST routes with a cleaner protobuf-based API surface defined in `protos/`.
