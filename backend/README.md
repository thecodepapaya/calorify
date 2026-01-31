# Calorify Backend

> **Recent Updates**: See [CHANGELOG.md](./CHANGELOG.md) for detailed changes including schema synchronization system, new API endpoints, and authentication changes.

A high-performance Node.js/Fastify backend API server for AI-powered food analysis.

## Quick Links

- [CHANGELOG.md](./CHANGELOG.md) - Recent changes and updates
- [SCHEMA_SYNC.md](./SCHEMA_SYNC.md) - Schema synchronization guide

## Features

- AI Food Analysis (Image & Text) using OpenAI GPT-4o-mini (default) & Google Gemini 2.5 Flash Lite
- Firebase Authentication (currently disabled for testing)
- TypeScript with strict type checking
- Protobuf-based data contracts with auto-synced API schemas
- Multi-environment support (Staging & Production)
- Zero-downtime deployment support

## Technology Stack

- **Framework**: Fastify 4.x
- **Runtime**: Node.js 20+ (LTS)
- **Language**: TypeScript (strict mode)
- **AI**: OpenAI GPT-4o-mini (default for all endpoints), Google Gemini 2.5 Flash Lite (legacy service)
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
   - Copy `env.example` to `.env` for local development
   - Update `production.env` and `staging.env` with credentials
   - Place `firebase-adminsdk.json` in `backend/` folder

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
- `npm run validate-schemas` - Validate OpenAPI schemas match proto definitions

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
# Staging
docker-compose --profile staging up -d --build

# Production
docker-compose --profile production up -d --build

# Both
docker-compose --profile staging --profile production up -d --build

# Zero-downtime update (backend only)
docker-compose --profile production up -d --build --no-deps backend-prod
```

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

- `production.env` - Production settings
- `staging.env` - Staging settings
- `.env` - Local development (not committed)

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
