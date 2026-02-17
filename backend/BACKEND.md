# Calorify Backend Documentation

## Table of Contents
1. [Overview](#overview)
2. [Architecture](#architecture)
3. [Project Structure](#project-structure)
4. [API Endpoints](#api-endpoints)
5. [Services](#services)
6. [Configuration](#configuration)
7. [Protobuf Integration](#protobuf-integration)
8. [Database](#database)
9. [Authentication](#authentication)
10. [Docker Setup](#docker-setup)
11. [Development](#development)
12. [Deployment](#deployment)
13. [Testing](#testing)
14. [Troubleshooting](#troubleshooting)

---

## Overview

The Calorify Backend is a minimal, high-performance Node.js/Fastify server that provides AI-powered food analysis capabilities. It uses OpenAI GPT-4o-mini (default) to analyze food images and text descriptions, returning detailed nutritional information. A legacy Gemini 2.5 Flash Lite service is also available.

### Key Characteristics
- **Minimal Design**: Focused solely on food analysis
- **Proto-First**: All data models use Protobuf for type safety (TypeScript types generated from protobuf)
- **Strict TypeScript**: Full type safety with strict mode enabled
- **Firebase Auth**: Secure authentication using Firebase Admin SDK
- **Docker-Ready**: Full Docker Compose setup for production and staging
- **JSON API**: All requests and responses use JSON format

### Technology Stack
- **Framework**: Fastify 4.x
- **Runtime**: Node.js 20+ (LTS)
- **Language**: TypeScript (strict mode)
- **AI**: OpenAI GPT-4o-mini (default), Google Generative AI (Gemini 2.5 Flash Lite - legacy)
- **Auth**: Firebase Admin SDK
- **Data Models**: Protobuf (TypeScript types generated via ts-proto)
- **Containerization**: Docker & Docker Compose
- **Database**: PostgreSQL 15 (via Docker, currently unused)

---

## Architecture

### High-Level Architecture

```
┌─────────────────────────────────────────────────┐
│           Fastify Application                    │
│  ┌──────────────┐  ┌──────────────┐            │
│  │  API Routes  │  │   Services   │            │
│  │  (Fastify)   │  │  (Business)  │            │
│  └──────┬───────┘  └──────┬───────┘            │
│         │                 │                     │
│         │                 │                     │
│  ┌──────▼─────────────────▼───────┐             │
│  │   Firebase Auth Service        │             │
│  │   (Token Verification)        │             │
│  └───────────────────────────────┘             │
└─────────────────────────────────────────────────┘
         │                    │
         │                    │
    ┌────▼────┐        ┌──────▼──────┐
    │ Firebase │        │  OpenAI AI │
    │   Auth   │        │  (Default) │
    └──────────┘        └────────────┘
```

### Request Flow

1. **Client Request**: Mobile app sends request with Firebase ID token
2. **Authentication**: `auth.ts` middleware verifies token
3. **Route Handler**: `food.ts` receives request
4. **Service Layer**: `openAIFoodAnalysis.ts` service processes request (default)
5. **AI Analysis**: Calls OpenAI API (default) or Gemini API (legacy)
6. **Proto Response**: Returns `MealDetectionResult` protobuf-typed object
7. **JSON Conversion**: Converts protobuf types to JSON using `protoToJson.ts`
8. **JSON Response**: Returns JSON to client

### Design Principles

- **Minimal**: Only essential functionality (food analysis)
- **Stateless**: No session management, uses Firebase tokens
- **Proto-First**: Single source of truth for data models
- **Service Layer**: Business logic separated from API routes
- **Error Handling**: Simple exception propagation (no logging)

---

## Project Structure

```
backend/
├── src/
│   ├── index.ts                 # Fastify application entry point
│   ├── config.ts                # Configuration settings
│   │
│   ├── protos/                   # Generated TypeScript from protobuf
│   │   └── calorify/
│   │       └── models.ts        # Generated types (from models.proto)
│   │
│   ├── routes/                   # API routes
│   │   ├── index.ts              # Route registration
│   │   ├── health.ts              # Health check endpoint
│   │   └── v1/
│   │       └── food.ts           # Food analysis endpoints
│   │
│   ├── middleware/                # Middleware
│   │   └── auth.ts               # Firebase auth middleware
│   │
│   ├── services/                 # Business logic services
│   │   ├── firebase.ts           # Firebase authentication
│   │   ├── foodAnalysis.ts       # AI food analysis service
│   │   └── pushNotifications.ts  # Push notification service (optional)
│   │
│   └── utils/                    # Utility functions
│       ├── protoToJson.ts        # Proto to JSON conversion
│       └── errors.ts             # Error handling utilities
│
├── dist/                         # Compiled JavaScript (generated)
│
├── docker-compose.yml            # Docker Compose configuration
├── Dockerfile                    # Container definition
├── package.json                  # Node.js dependencies
├── tsconfig.json                 # TypeScript configuration
├── .eslintrc.js                  # ESLint configuration
├── nginx.conf                    # Nginx reverse proxy config
├── env.example                   # Environment variables template
├── production.env                # Production environment variables
├── staging.env                   # Staging environment variables
└── README.md                     # Quick start guide
```

---

## API Endpoints

### Base URL
- **Production**: `https://api-calorify.thecodepapaya.dev`
- **Staging**: `https://api-staging-calorify.thecodepapaya.dev`
- **Local**: `http://localhost:8000`

### Authentication

All protected endpoints require Firebase authentication:

**Header**:
```
Authorization: Bearer <FIREBASE_ID_TOKEN>
```

The backend verifies the token using Firebase Admin SDK and extracts the user ID.

### Endpoints

#### GET `/`
**Description**: Root endpoint, returns welcome message

**Authentication**: Not required

**Response**:
```json
{
  "message": "Welcome to Calorify Backend API",
  "version": "1.0.0"
}
```

---

#### POST `/api/v1/food/analyze-image`
**Description**: Analyze a food image using AI and return nutritional information

**Authentication**: Required (Firebase token)

**Request**:
- **Method**: POST
- **Content-Type**: `multipart/form-data`
- **Body**: 
  - `file`: Image file (required)

**Response Format**: JSON

**JSON Response** (200 OK):
```json
{
  "meal_identified": true,
  "calorie_confidence": 85,
  "tip": "Consider adding more vegetables for a balanced meal",
  "meal_info": {
    "meal_name": "Grilled Chicken Salad",
    "calories": 350,
    "protein": 30,
    "carbs": 15,
    "fat": 18,
    "fiber": 5,
    "timestamp": 1234567890000,
    "meal_quantity": "1 large bowl",
    "meal_type": "LUNCH",
    "health_score": "HEALTHY",
    "health_score_reason": "High protein, balanced macros, good fiber content"
  }
}
```

**Error Responses**:
- `400 Bad Request`: File is not an image
  ```json
  {
    "detail": "File must be an image"
  }
  ```
- `401 Unauthorized`: Invalid or missing Firebase token
  ```json
  {
    "detail": "Invalid or expired authentication token"
  }
  ```
- `500 Internal Server Error`: AI analysis failed
  ```json
  {
    "detail": "Failed to analyze image"
  }
  ```

---

#### POST `/api/v1/food/analyze-description`
**Description**: Analyze a food description text using AI and return nutritional information

**Authentication**: Required (Firebase token)

**Request**:
- **Method**: POST
- **Content-Type**: `application/json`
- **Body**:
  ```json
  {
    "description": "I had a large bowl of pasta with marinara sauce and parmesan cheese"
  }
  ```

**Response Format**: JSON (same format as `/analyze-image`)

**JSON Response** (200 OK): Same format as `/analyze-image`

**Error Responses**: Same as `/analyze-image`

---

### API Documentation

Fastify can be configured with Swagger/OpenAPI documentation using `@fastify/swagger` and `@fastify/swagger-ui` plugins if needed. Currently, API documentation is available through the route schemas defined in the code.

---

## Services

### FoodAnalysisService

**Location**: `src/services/openAIFoodAnalysis.ts`

**Purpose**: Handles AI-powered food analysis using OpenAI (default service)

**Key Methods**:

#### `analyzeImageFromBuffer(imageBuffer: Buffer, mimeType: string): Promise<MealDetectionResult>`
- Processes image using OpenAI GPT-4o-mini Vision API
- Extracts JSON response from AI
- Converts to Protobuf-typed `MealDetectionResult`
- Handles image conversion to base64

#### `analyzeTextDescriptionLegacy(description: string): Promise<MealDetectionResult>`
- Processes text description using OpenAI GPT-4o-mini
- Extracts JSON response from AI
- Converts to Protobuf-typed `MealDetectionResult`

#### `analyzeImageFromUrl(imageUrl: string): Promise<MealDetectionResponse>`
- Processes image from URL using OpenAI GPT-4o-mini Vision API
- Returns `MealDetectionResponse` with variations

#### `analyzeTextDescription(description: string): Promise<MealDetectionResponse>`
- Processes text description using OpenAI GPT-4o-mini
- Returns `MealDetectionResponse` with variations

**Internal Helpers**:
- `parseMealType()`: Converts string to protobuf enum
- `parseHealthScore()`: Converts string to protobuf enum
- `mapCalorieConfidence()`: Maps confidence string to enum
- `buildProtoResponse()`: Converts JSON dict to protobuf-typed object with variations
- `extractJson()`: Extracts JSON from OpenAI response (handles markdown code blocks)

**AI Prompt**: System prompt instructs OpenAI to return structured JSON with nutritional information and variations.

### FoodAnalysisService (Legacy - Gemini)

**Location**: `src/services/foodAnalysis.ts`

**Purpose**: Legacy service using Google Gemini 2.5 Flash Lite (not used by default endpoints)

**Note**: This service is kept for backward compatibility but is not used by default endpoints. All endpoints now use OpenAI by default.

---

### FirebaseAuthService

**Location**: `src/services/firebase.ts`

**Purpose**: Firebase authentication and token verification

**Key Functions**:

#### `initializeFirebase(): void`
- Initializes Firebase Admin SDK
- Uses service account JSON if provided
- Falls back to default credentials

#### `verifyFirebaseToken(token: string): Promise<admin.auth.DecodedIdToken>`
- Verifies Firebase ID token
- Returns decoded token with user information
- Throws error if token is invalid

#### `getUserIdFromToken(decodedToken: admin.auth.DecodedIdToken): string`
- Extracts user ID (uid) from decoded token

**Usage in Middleware**:
- Used in `src/middleware/auth.ts` for route protection
- Automatically verifies tokens on protected routes via `authenticateUser` middleware

---

### PushNotificationService

**Location**: `src/services/pushNotifications.ts` (optional, not yet implemented)

**Purpose**: Send push notifications via Firebase Cloud Messaging

**Note**: Currently not implemented. Can be added in the future if needed.

---

## Configuration

### Settings

**Location**: `src/config.ts`

**Configuration**: TypeScript interface with strict typing

**Environment Variables**:

| Variable | Type | Default | Description |
|----------|------|---------|-------------|
| `APP_NAME` | string | `"CalorifyBackend"` | Application name |
| `DEBUG` | boolean | `true` | Debug mode flag |
| `API_V1_STR` | string | `"/api/v1"` | API version prefix |
| `SECRET_KEY` | string | `"DEFAULT_SECRET_KEY"` | Application secret key |
| `FIREBASE_SERVICE_ACCOUNT_PATH` | string \| null | `null` | Path to Firebase service account JSON |
| `ENVIRONMENT` | string | `"development"` | Environment name (development/staging/production) |
| `PORT` | number | `8000` | Server port |
| `GOOGLE_API_KEY` | string | - | Google Gemini API key (optional, for legacy service) |
| `OPENAI_API_KEY` | string | - | OpenAI API key (required, default for all AI work) |

**Loading Order**:
1. Environment variables (highest priority)
2. `production.env` defaults (if present)
3. `staging.env` overrides when running `npm run dev` (loaded explicitly before standard dotenv)
4. `.env` file (if present, loaded via dotenv)
5. Default values (lowest priority)

### Environment Files

**Production** (`production.env`):
```bash
APP_NAME=CalorifyBackend
DEBUG=False
API_V1_STR=/api/v1
SECRET_KEY=<generate-secure-key>
PORT=8000
FIREBASE_SERVICE_ACCOUNT_PATH=/app/firebase-service-account.json
ENVIRONMENT=production
GOOGLE_API_KEY=<your-google-api-key>
OPENAI_API_KEY=<your-openai-api-key>
```

**Staging** (`staging.env`):
```bash
APP_NAME=CalorifyBackend-Staging
DEBUG=True
API_V1_STR=/api/v1
SECRET_KEY=<generate-secure-key>
PORT=8000
FIREBASE_SERVICE_ACCOUNT_PATH=/app/firebase-service-account.json
ENVIRONMENT=staging
GOOGLE_API_KEY=<your-google-api-key>
```

**Template** (`env.example`): See file for complete template

### Firebase Configuration

**Where to put the service account file**:
- **Location**: Put the JSON file in the **backend directory** (e.g. `backend/firebase-adminsdk.json`). The file is gitignored; do not commit it.
- **Local dev**: `npm run dev` loads `staging.env`; override the path in `.env`, e.g. `FIREBASE_SERVICE_ACCOUNT_PATH=./firebase-adminsdk.json`.
- **Docker**: The file is mounted in `docker-compose.yml` as `/app/firebase-service-account.json`; `staging.env` / `production.env` set the path.

**Required Firebase Services**:
- Authentication (for token verification)
- Cloud Messaging (for push notifications, optional)

---

## Protobuf Integration

### Overview

All data models are defined in Protobuf and generated for Python. This ensures type safety and consistency.

### Proto Files

**Source**: `../protos/calorify/models.proto` (in parent directory)

**Generated Code**: `src/protos/calorify/models.ts` (TypeScript types)

### Key Messages

#### MealDetectionResult
```typescript
import type { MealDetectionResult, Meal } from '../protos/calorify/models.js';
import { MealType } from '../protos/calorify/models.js';

const result: MealDetectionResult = {
  mealIdentified: true,
  calorieConfidence: 85,
  tip: "Consider adding vegetables",
  mealInfo: {
    mealName: "Grilled Chicken",
    calories: 350,
    mealType: MealType.LUNCH,
    // ... other fields
  }
};
```

#### Meal
```typescript
import type { Meal } from '../protos/calorify/models.js';
import { MealType } from '../protos/calorify/models.js';

const mealInfo: Meal = {
  mealName: "Grilled Chicken",
  calories: 350,
  mealType: MealType.LUNCH,
  // ... other fields
};
```

### Proto Types

**Location**: `src/protos/calorify/models.ts` (generated)

**Generated Types**:
- Enums are string literals (e.g., `MealType = "BREAKFAST" | "LUNCH" | ...`)
- Interfaces match protobuf message structure
- All types are strictly typed with TypeScript

**Usage**: Import and use directly in TypeScript code. No conversion utilities needed since enums are already strings.

### Code Generation

**Script**: `../scripts/generate_protos.sh` (in parent directory)

**Generate TypeScript Code**:
```bash
cd ..
./scripts/generate_protos.sh
```

This generates `backend/src/protos/calorify/models.ts` from `protos/calorify/models.proto` using `ts-proto`.

---

## Database

### Current State

**Note**: Database is not currently used in the backend. PostgreSQL is available via Docker Compose for future use if needed, but no database models or connections are implemented.

### Database Configuration (Optional)

**PostgreSQL 15** via Docker Compose:
- **Production**: `calorify_prod` database
- **Staging**: `calorify_staging` database

**Note**: Database services are defined in `docker-compose.yml` but not connected to the application. If database functionality is needed in the future, you can add database connection logic using libraries like `pg` or `prisma`.

### Migrations

SQL migrations in `migrations/*.sql` run **automatically on server startup**. The app tracks applied migrations in a `schema_migrations` table and runs any new `.sql` file in alphabetical order. No manual step required for new environments or new migrations.

---

## Authentication

### Firebase Authentication Flow

1. **Client**: Mobile app authenticates with Firebase
2. **Token**: Client receives Firebase ID token
3. **Request**: Client includes token in `Authorization: Bearer <token>` header
4. **Verification**: Backend verifies token using Firebase Admin SDK
5. **User ID**: Backend extracts user ID from token
6. **Authorization**: Request proceeds if token is valid

### Implementation

**Service**: `app/services/firebase_auth.py`

**Dependency**: `app/api/deps.py`

**Usage in Routes**:
```typescript
import { authenticateUser, getCurrentUserId } from '../middleware/auth.js';

fastify.post('/endpoint', {
  preHandler: [authenticateUser],
}, async (request, reply) => {
  const userId = getCurrentUserId(request); // Contains Firebase UID
  // ... handler logic
});
```

### Error Handling

**Invalid Token**:
- Returns `401 Unauthorized`
- Message: "Invalid or expired authentication token"
- Includes `WWW-Authenticate: Bearer` header

---

## Docker Setup

### Docker Compose

**File**: `docker-compose.yml`

**Services**:

#### Production Environment
- **db-prod**: PostgreSQL 15 database
- **backend-prod**: FastAPI application (port 8000)

#### Staging Environment
- **db-staging**: PostgreSQL 15 database
- **backend-staging**: FastAPI application (port 8001, with live reload)

#### Database Admin
- **pgadmin**: Web-based PostgreSQL admin tool (port 8080)

### Dockerfile

**Base Image**: `python:3.12-slim`

**Steps**:
1. Install system dependencies (build tools, PostgreSQL client)
2. Install Python dependencies from `requirements.txt`
3. Copy application code
4. Expose port 8000
5. Run uvicorn server

### Running with Docker

**Start All Services**:
```bash
docker-compose up -d
```

**View Logs**:
```bash
# Production
docker-compose logs -f backend-prod

# Staging
docker-compose logs -f backend-staging
```

**Stop Services**:
```bash
docker-compose down
```

**Rebuild After Changes**:
```bash
docker-compose up -d --build
```

### Volumes

**Production**:
- `postgres_data_prod`: PostgreSQL data persistence
- Firebase service account JSON (read-only)

**Staging**:
- `postgres_data_staging`: PostgreSQL data persistence
- `./app:/app/app`: Live code reload (development)
- Firebase service account JSON (read-only)

### Ports

| Service | Internal Port | External Port |
|---------|--------------|---------------|
| backend-prod | 8000 | 8000 |
| backend-staging | 8000 | 8001 |
| pgadmin | 80 | 8080 |
| db-prod | 5432 | - |
| db-staging | 5432 | - |

---

## Development

### Local Development Setup

**Prerequisites**:
- Node.js 20+ (LTS)
- npm or pnpm
- protoc (for protobuf generation)

**Steps**:

1. **Install Dependencies**:
   ```bash
   npm install
   ```

2. **Generate Protobuf Types**:
   ```bash
   cd ../scripts
   ./generate_protos.sh
   cd ../backend
   ```

3. **Set Environment Variables**:
   - Local dev loads `staging.env` automatically. Add `.env` only for overrides (e.g. `DATABASE_URL` if not using Docker DB, `FIREBASE_SERVICE_ACCOUNT_PATH` for local path).
   - Set `FIREBASE_SERVICE_ACCOUNT_PATH=./firebase-adminsdk.json` in `.env` for local dev if using the default filename in `backend/`.

4. **Place Firebase Credentials**:
   - Download Firebase service account JSON and place it in `backend/` (e.g. `firebase-adminsdk.json`). It is gitignored.

5. **Run Development Server**:
   ```bash
   npm run dev
   ```

**Access**:
- API: `http://localhost:8000`
- Health Check: `http://localhost:8000/`

### Development with Docker

**Staging Container** (with live reload):
```bash
docker-compose up backend-staging
```

The staging container mounts the `src/` directory, so code changes are reflected immediately.

### Code Generation

**Protobuf**:
```bash
cd ..
./scripts/generate_protos.sh
```

This regenerates `backend/src/protos/calorify/models.ts` from proto definitions.

### Testing

**Run Tests** (when implemented):
```bash
npm test
```

**Type Checking**:
```bash
npm run type-check
```

**Linting**:
```bash
npm run lint
```

---

## Deployment

### Production Deployment

**Prerequisites**:
- Docker and Docker Compose installed
- Domain configured with DNS
- Firebase service account JSON
- Environment variables configured

**Steps**:

1. **Configure Environment**:
   - Update `production.env` with production values
   - Set secure `SECRET_KEY`
   - Configure `DATABASE_URL`

2. **Place Firebase Credentials**:
   - Place `firebase-adminsdk.json` in `backend/` directory

3. **Build and Start**:
   ```bash
   docker-compose build backend-prod
   docker-compose up -d backend-prod
   ```

4. **Verify**:
   ```bash
   docker-compose logs -f backend-prod
   curl http://localhost:8000/
   ```

### Nginx Reverse Proxy

**Configuration** (`nginx.conf`):
```nginx
server {
    listen 80;
    server_name api.yourdomain.com;

    location / {
        proxy_pass http://localhost:8000;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }
}
```

**SSL**: Configure SSL certificates using Certbot or similar.

### Environment URLs

| Environment | URL | Port |
|------------|-----|------|
| Production | `https://api-calorify.thecodepapaya.dev` | 8000 |
| Staging | `https://api-staging-calorify.thecodepapaya.dev` | 8001 |

### Database Management

**pgAdmin**:
- Access: `http://localhost:8080`
- Email: `calorify@thecodepapaya.dev`
- Password: `admin` (change after first login)

**Command Line**:
```bash
# Production
docker exec -it calorify-db-prod psql -U calorify -d calorify_prod

# Staging
docker exec -it calorify-db-staging psql -U calorify -d calorify_staging
```

---

## Testing

### Test Structure

**Location**: `tests/` (to be created)

**Current State**: Test structure not yet implemented. Can use testing frameworks like:
- `vitest` or `jest` for unit tests
- `supertest` for API integration tests

### Running Tests

**All Tests** (when implemented):
```bash
npm test
```

**With Coverage** (when implemented):
```bash
npm run test:coverage
```

### Test Examples

**Example Test Structure** (using vitest):
```typescript
import { describe, it, expect } from 'vitest';
import { buildApp } from '../src/index.js';

describe('Health Check', () => {
  it('should return welcome message', async () => {
    const app = await buildApp();
    const response = await app.inject({
      method: 'GET',
      url: '/',
    });
    expect(response.statusCode).toBe(200);
    expect(response.json()).toHaveProperty('message');
  });
});
```

---

## Troubleshooting

### Common Issues

#### Port Already in Use
**Error**: `Address already in use`

**Solution**:
- Change port in `docker-compose.yml`
- Or stop existing service: `docker-compose down`

#### Firebase Authentication Fails
**Error**: `Failed to initialize Firebase`

**Solution**:
- Verify `FIREBASE_SERVICE_ACCOUNT_PATH` is correct
- Check file exists and is readable
- Verify JSON file is valid Firebase service account
- Check file permissions

#### AI Analysis Fails
**Error**: `Failed to analyze image`

**Solution**:
- Verify OpenAI API key is set correctly
- Check OpenAI API quota/limits
- Verify image format is supported
- Check network connectivity to OpenAI APIs
- For legacy Gemini service: Verify Google Cloud API key/credentials

#### Docker Container Won't Start
**Error**: Container exits immediately

**Solution**:
```bash
# Check logs
docker-compose logs backend-prod

# Check container status
docker ps -a

# Restart
docker-compose restart backend-prod

# Rebuild if needed
docker-compose up -d --build backend-prod
```

#### TypeScript Build Fails
**Error**: `TypeScript compilation errors`

**Solution**:
- Run `npm run type-check` locally to see errors
- Ensure all dependencies are installed: `npm install`
- Check that protobuf types are generated: `cd ../scripts && ./generate_protos.sh`
- Verify `tsconfig.json` settings

### Debugging

**View Logs**:
```bash
# Production
docker-compose logs -f backend-prod

# Staging
docker-compose logs -f backend-staging

# All services
docker-compose logs -f
```

**Interactive Shell**:
```bash
# Enter container
docker exec -it calorify-backend-prod sh

# Run Node.js
docker exec -it calorify-backend-prod node

# Check Node version
docker exec calorify-backend-prod node --version
```

**Check Environment Variables**:
```bash
docker exec calorify-backend-prod env
```

---

## Dependencies

### Key Packages

**Fastify & Server**:
- `fastify@^4.26.2`: Web framework
- `@fastify/cors@^9.0.1`: CORS middleware
- `@fastify/multipart@^8.0.0`: File upload support

**AI & ML**:
- `openai@^4.28.0`: OpenAI API client (default)
- `@google/generative-ai@^0.21.0`: Google Gemini AI client (legacy)

**Authentication**:
- `firebase-admin@^12.6.0`: Firebase Admin SDK

**Data**:
- `ts-proto@^2.11.0`: Protobuf to TypeScript code generator

**Utilities**:
- `dotenv@^16.4.5`: Environment variable loading
- `typescript@^5.5.4`: TypeScript compiler
- `tsx@^4.16.2`: TypeScript execution (for development)

**Development**:
- `@types/node@^20.14.12`: Node.js type definitions
- `@typescript-eslint/eslint-plugin@^7.15.0`: ESLint TypeScript plugin
- `@typescript-eslint/parser@^7.15.0`: ESLint TypeScript parser
- `eslint@^8.57.0`: Linting tool

### Installing Dependencies

**Local**:
```bash
npm install
```

**Docker**: Automatically installed during image build.

---

## API Response Formats

### JSON Response

All API responses use JSON format with camelCase field names (matching TypeScript/JavaScript conventions):

```json
{
  "mealIdentified": true,
  "calorieConfidence": 85,
  "tip": "Consider adding vegetables",
  "mealInfo": {
    "mealName": "Grilled Chicken Salad",
    "calories": 350,
    "protein": 30,
    "carbs": 15,
    "fat": 18,
    "fiber": 5,
    "timestamp": 1234567890000,
    "mealQuantity": "1 large bowl",
    "mealType": "LUNCH",
    "healthScore": "HEALTHY",
    "healthScoreReason": "High protein, balanced macros"
  }
}
```

**Note**: Protobuf types are used internally for type safety, but responses are always JSON.

---

## Security Considerations

### Authentication
- All protected endpoints require valid Firebase tokens
- Tokens are verified on every request
- No session management (stateless)

### CORS
- Currently allows all origins (`*`)
- **Production**: Should restrict to specific domains
- Configure in `src/index.ts` CORS middleware

### Secrets
- `SECRET_KEY` should be strong and unique
- Firebase service account JSON should be kept secure
- Never commit secrets to version control

### Environment Variables
- Use `.env` files for local development (loaded via `dotenv`)
- Use Docker environment files (`production.env`, `staging.env`) for production
- Never expose sensitive data in logs
- Validate environment variables at startup (see `src/config.ts`)

---

## Performance

### Optimization Tips

1. **Image Processing**: Images are processed in memory, consider size limits
2. **AI Calls**: Gemini API calls are async, but consider rate limiting
3. **Response Caching**: Consider caching common analysis results
4. **TypeScript Compilation**: Use `npm run build` for production (optimized)
5. **Fastify Performance**: Fastify is already highly optimized, but consider:
   - Request validation via schemas
   - Response compression
   - Connection keep-alive

### Monitoring

**Docker Stats**:
```bash
docker stats calorify-backend-prod
```

**Application Metrics**: Currently no metrics collection. Consider adding:
- Request/response times (Fastify has built-in logging)
- Error rates
- AI API call latency
- Memory usage
- CPU usage

---

## Future Enhancements

### Planned Features
- Rate limiting for API endpoints
- Response caching for common queries
- Metrics and monitoring integration
- Health check endpoint improvements
- Database integration (if needed)
- Unit and integration tests
- OpenAPI/Swagger documentation

### Technical Improvements
- GraphQL API alternative (if needed)
- WebSocket support for real-time updates
- Advanced error handling and retry logic
- Request validation improvements
- API versioning strategy
- Request/response logging middleware

---

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests
5. Submit a pull request

---

## License

[Add license information]

---

## Contact

[Add contact information]

---

**Last Updated**: 2024
**Backend Version**: 1.0.0
**Technology**: Node.js 20+ / Fastify 4.x / TypeScript (strict mode)