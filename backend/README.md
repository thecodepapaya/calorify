# Calorify Backend

> **Recent Updates**: See [CHANGELOG.md](./CHANGELOG.md) for detailed changes including schema synchronization system, new API endpoints, and authentication changes.

A high-performance Node.js/Fastify backend API server for AI-powered food analysis.

## Quick Links

- [CHANGELOG.md](./CHANGELOG.md) - Recent changes and updates
- [SCHEMA_SYNC.md](./SCHEMA_SYNC.md) - Schema synchronization guide

## Features

- AI Food Analysis (Image & Text) using OpenAI gpt-5-nano (default) & Google Gemini 2.5 Flash Lite
- Firebase Authentication (currently disabled for testing)
- TypeScript with strict type checking
- Protobuf-based data contracts with auto-synced API schemas
- Multi-environment support (Staging & Production)
- Zero-downtime deployment support

## Technology Stack

- **Framework**: Fastify 4.x
- **Runtime**: Node.js 20+ (LTS)
- **Language**: TypeScript (strict mode)
- **AI**: OpenAI gpt-5-nano (default for all endpoints), Google Gemini 2.5 Flash Lite (legacy service)
- **Auth**: Firebase Admin SDK
- **Data Models**: Protobuf (generated TypeScript types)
- **Database**: PostgreSQL 15
- **Containerization**: Docker & Docker Compose

## Quick Start

### Prerequisites

- Node.js 20+ (LTS)
- Docker & Docker Compose
- protoc (Protocol Buffers compiler)
- Firebase service account JSON file

### Setup

1. **Install Dependencies**:
   ```bash
   npm install
   ```

2. **Generate Protobuf Types**:
   ```bash
   cd ../scripts && ./generate_protos.sh
   ```

3. **Configure Environment**:
   - Local dev uses `staging.env` by default; add a `.env` only if you need overrides (e.g. `DATABASE_URL`, `FIREBASE_SERVICE_ACCOUNT_PATH`)
   - Update `production.env` and `staging.env` with credentials
   - Place your Firebase service account JSON in `backend/` (e.g. `firebase-adminsdk.json`). For local dev, set `FIREBASE_SERVICE_ACCOUNT_PATH=./firebase-adminsdk.json` in `.env`

4. **Start Development Server**:
   ```bash
   npm run dev
   ```

## Available Scripts

- `npm run dev` - Start development server with hot reload
- `npm run build` - Build TypeScript to JavaScript
- `npm start` - Run production server
- `npm run lint` - Run ESLint
- `npm run type-check` - Type check without building
- `npm test` - Run backend unit tests
- `npm run analysis:v2:cli -- --text "2 rotis with dal"` - Exercise the streamed V2 food-analysis API from the terminal
- `npm run validate-schemas` - Validate OpenAPI schemas match proto definitions
- `npm run usda:import` - Bootstrap local Postgres `usda_foods` from USDA CSV files
- `npm run usda:refresh` - Run a versioned USDA refresh into Postgres
- `npm run usda:bootstrap` - Download hardcoded USDA ZIP, extract required CSVs, and import in one step
  - Optional: set `USDA_ZIP_PATH` to use an already-downloaded ZIP file instead of downloading

## Streamed V2 Analysis CLI

Use the CLI when you want to debug `/api/v2/food/analyze-text` or `/api/v2/food/analyze-image` without the app. It hits the real streamed backend endpoints, prints each streamed event, shows USDA vs AI fallback per ingredient, and emits a request ID you can use to correlate backend logs.

Common commands:

```bash
# Local dev server started with `npm run dev`
npm run analysis:v2:cli -- --base-url http://localhost:8000 --text "2 rotis with dal"

# Docker staging backend exposed on host port 8001
npm run analysis:v2:cli -- --base-url http://localhost:8001 --text "poha with peanuts"

# Analyze an already-hosted image URL through the streamed V2 route
npm run analysis:v2:cli -- --base-url http://localhost:8000 --image-url "https://example.com/meal.jpg"

# Upload a local image file to the existing bucket, then analyze it through V2
npm run analysis:v2:cli -- --base-url http://localhost:8000 --image-file ./meal.jpg

# Stop after the first streamed pass instead of answering clarification / meal-type prompts
npm run analysis:v2:cli -- --base-url http://localhost:8000 --text "1 banana" --no-interactive

# Print raw NDJSON too
npm run analysis:v2:cli -- --base-url http://localhost:8000 --text "dal rice" --raw

# Query Loki after the run using the generated request ID
npm run analysis:v2:cli -- --base-url http://localhost:8000 --text "dal rice" --check-loki
```

Useful flags:

- `--base-url http://localhost:8000` for `npm run dev`
- `--base-url http://localhost:8001` for the Docker staging service
- `--no-interactive` to stop when clarification or meal-type selection is needed
- `--raw` to print the raw streamed NDJSON lines
- `--check-loki` to query Loki for the correlated request logs after the run
- `--request-id <id>` to override the generated request/correlation ID

The CLI output includes:

- streamed step timings as observed by the client
- ingredient source summaries: `USDA/db` vs `AI fallback`
- a `requestId` for log correlation

The backend logs for the same request now include a structured `traceSummary` with:

- `llmCallCount`
- `usdaLookupCount`
- `dbWriteCount`
- per-step timings under `traceSummary.steps[]`

To inspect console logs for a specific CLI run:

```bash
# Docker staging backend
docker compose logs --since 5m backend-staging | rg 'meal-cli-|meal_analysis_v2'

# Narrow to a specific request ID printed by the CLI
docker compose logs --since 5m backend-staging | rg 'meal-cli-123|meal_analysis_v2'
```

To inspect Loki/Grafana:

```bash
# Start shared logging services if they are not already up
docker compose up -d loki grafana promtail
```

- Grafana dashboard: `http://localhost:3000`
- Loki API: `http://localhost:3100`
- In Grafana Explore, query with the request ID printed by the CLI, for example:
  - `{app="calorify-backend"} |= "meal-cli-123"`

## API Endpoints

### Health Check
- **GET** `/` - Welcome message and health check

### Food Analysis (New - OpenAI)
- **POST** `/api/v1/food/detect-image` - Detect meal from image URL
  - Request: `{ "imageUrl": "https://...", "mimeType": "image/jpeg" }`
  - Response: `MealDetectionResponse` with `result` and `variations`
  
- **POST** `/api/v1/food/detect-text` - Detect meal from text description
  - Request: `{ "textDescription": "grilled chicken with rice" }`
  - Response: `MealDetectionResponse` with `result` and `variations`

### Food Analysis (Legacy - OpenAI)
- **POST** `/api/v1/food/analyze-image` - Analyze food image (multipart form) - Uses OpenAI
- **POST** `/api/v1/food/analyze-description` - Analyze food description text - Uses OpenAI

**Note**: Authentication is currently disabled on all endpoints.

## Schema Synchronization

API response schemas are automatically generated from proto definitions to keep documentation in sync.

**Key Files**:
- `src/utils/schema-generator.ts` - Centralized schema generator functions
- `src/utils/validate-schemas.ts` - Schema validation script

**Validate Schemas**:
```bash
npm run validate-schemas
```

**When Proto Definitions Change**:
1. Regenerate types: `cd ../scripts && ./generate_protos.sh`
2. Update schema generator functions in `src/utils/schema-generator.ts`
3. Run validation: `npm run validate-schemas`
4. Routes automatically use updated schemas

See [SCHEMA_SYNC.md](./SCHEMA_SYNC.md) for detailed instructions.

## Docker Deployment

### Environment Profiles

- **`staging`**: Development/testing environment (port 8001)
- **`production`**: Production environment (port 8000)

### Deploy Commands

```bash
# Start logging infrastructure (shared, start once)
docker-compose up -d loki grafana promtail

# Staging
docker-compose --profile staging up -d --build

# Production
docker-compose --profile production up -d --build

# Both environments
docker-compose --profile staging --profile production up -d --build

# Zero-downtime update (backend only)
docker-compose --profile production up -d --build --no-deps backend-prod

# Stop staging (logging infrastructure stays up if production is running)
docker-compose --profile staging down

# Stop production (logging infrastructure stays up if staging is running)
docker-compose --profile production down

# Stop everything including logging
docker-compose down
```

**Note**: Logging infrastructure (loki, grafana, promtail) has no profiles and is shared between environments. It will automatically start when you start a profile (due to dependencies), but bringing down a profile won't stop it. This ensures logging continues even if one environment is stopped.

### Monitoring

```bash
# View logs
docker-compose --profile production logs -f backend-prod

# Check status
docker-compose --profile production ps

# Health check
curl http://localhost:8000/  # Production
curl http://localhost:8001/  # Staging
```

## Configuration

### Required Environment Variables

- `SECRET_KEY` - Application secret key
- `FIREBASE_SERVICE_ACCOUNT_PATH` - Path to Firebase service account JSON
- `GOOGLE_API_KEY` - Google Gemini API key (for legacy Gemini service, optional)
- `OPENAI_API_KEY` - OpenAI API key (required, default for all AI work)
- `DATABASE_URL` - PostgreSQL connection string
- `ENVIRONMENT` - `development`, `staging`, or `production`
- `PORT` - Server port (default: 8000)
- `DEBUG` - Debug mode (must be `false` in production)

### Environment Files

- `production.env` - Production settings (Docker)
- `staging.env` - Staging settings; also used as the base for local dev (`npm run dev`)
- `.env` - Optional local overrides (not committed), e.g. `FIREBASE_SERVICE_ACCOUNT_PATH`, `DATABASE_URL`

### USDA Ingestion and Refresh Variables

- `USDA_DATA_DIR` - Directory containing `food.csv`, `nutrient.csv`, `food_nutrient.csv` (default: `backend/data/usda`)
- `USDA_DATASET_VERSION` - Logical dataset version label for import/refresh audit rows
- `USDA_SOURCE_RELEASE_DATE` - USDA release date metadata (optional)
- `USDA_AUTO_REFRESH_ENABLED` - Enable scheduled refresh job (`true`/`false`, default `false`)
- `USDA_REFRESH_CRON` - Cron expression for scheduled refresh (default `0 3 1 * *`)

## Project Structure

```
backend/
├── src/
│   ├── config.ts              # Configuration
│   ├── index.ts               # Application entry point
│   ├── middleware/            # Middleware (auth, etc.)
│   ├── protos/                # Generated proto files
│   ├── routes/                # API routes
│   │   └── v1/
│   │       ├── food.ts        # Food analysis endpoints
│   │       └── user.ts        # User profile endpoints
│   ├── services/              # Business logic services
│   │   ├── foodAnalysis.ts   # Gemini 2.5 Flash Lite service (legacy)
│   │   ├── openAIFoodAnalysis.ts  # OpenAI service (default)
│   │   └── firebase.ts        # Firebase auth
│   └── utils/                 # Utilities
│       ├── schema-generator.ts    # OpenAPI schema generator
│       └── validate-schemas.ts   # Schema validation
├── docker-compose.yml         # Docker setup
├── Dockerfile                # Container definition
├── package.json             # Node.js dependencies
└── tsconfig.json            # TypeScript configuration
```

## Troubleshooting

### Container Won't Start
```bash
docker-compose --profile staging logs backend-staging
docker-compose --profile staging ps
```

### Database Connection Issues
- Verify environment variables in `production.env` or `staging.env`
- Check database container: `docker ps | grep db`
- Test connection: `docker exec calorify-db-prod pg_isready -U calorify`

### Port Conflicts
- Production: port `8000`
- Staging: port `8001`
- Check: `sudo lsof -i :8000`

### 502 Bad Gateway
1. Check containers are running: `docker ps`
2. Check logs: `docker-compose --profile production logs backend-prod`
3. Test direct connection: `curl http://localhost:8000/`
4. Verify Nginx config: `sudo nginx -t`
5. Restart services: `docker-compose --profile production restart backend-prod`

## Development Workflow

### Code Generation
```bash
cd ../scripts && ./generate_protos.sh
```

### Running Locally
```bash
npm run dev  # Development with hot reload
npm run build && npm start  # Production build
```

### Schema Validation
```bash
npm run validate-schemas  # Validate schemas match protos
```

## Security Notes

- ⚠️ Never commit `firebase-adminsdk.json` or `.env` files
- ⚠️ Change default passwords in production
- ⚠️ Set `DEBUG=false` in production
- ⚠️ Use strong `SECRET_KEY` values
- ⚠️ Use HTTPS in production (handled by Nginx)
