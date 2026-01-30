# Calorify Project Documentation

## Table of Contents
1. [Project Overview](#project-overview)
2. [Architecture](#architecture)
3. [Tech Stack](#tech-stack)
4. [Project Structure](#project-structure)
5. [Backend](#backend)
6. [Frontend (Flutter App)](#frontend-flutter-app)
7. [Protobuf Data Models](#protobuf-data-models)
8. [Setup & Installation](#setup--installation)
9. [API Documentation](#api-documentation)
10. [Development Workflow](#development-workflow)
11. [Deployment](#deployment)
12. [Configuration](#configuration)
13. [Testing](#testing)
14. [Key Features](#key-features)

---

## Project Overview

**Calorify** is a Flutter-based calorie tracking application that leverages AI to analyze food images and text descriptions for accurate nutritional logging. The project serves as a case study demonstrating the capabilities of various AI platforms in full-stack application development.

### Project Goals
- Demonstrate AI-assisted development across the entire software lifecycle
- Provide intelligent food analysis using AI (Google Gemini)
- Offer seamless cross-platform mobile experience
- Maintain clean architecture with proto-based data models

### Core Value Proposition
- **AI-Powered Analysis**: Automatic nutritional breakdown from images or text
- **Offline-First**: Local database with cloud synchronization
- **Cross-Platform**: Android and iOS support
- **Modern Stack**: Flutter, Node.js/Fastify, TypeScript, Protobuf, Firebase

---

## Architecture

### High-Level Architecture

```
┌─────────────────────────────────────────────────────────────┐
│                    Flutter Mobile App                        │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐      │
│  │   Features   │  │   Services   │  │   Database   │      │
│  │   (UI)       │  │   (Business) │  │   (Drift)     │      │
│  └──────────────┘  └──────────────┘  └──────────────┘      │
└─────────────────────────────────────────────────────────────┘
                          │
                          │ HTTP/Protobuf
                          │
┌─────────────────────────────────────────────────────────────┐
│              Node.js/Fastify Backend Server                  │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐      │
│  │   API Routes │  │   Services   │  │   Firebase   │      │
│  │   (Fastify)  │  │   (Business) │  │   Auth       │      │
│  └──────────────┘  └──────────────┘  └──────────────┘      │
│                          │                                   │
│                          │ API Calls                         │
│                          ▼                                   │
│  ┌──────────────────────────────────────────────┐           │
│  │      Google Gemini AI (Food Analysis)         │           │
│  └──────────────────────────────────────────────┘           │
└─────────────────────────────────────────────────────────────┘
```

### Data Flow

1. **User Input**: User takes photo or enters text description
2. **Local Processing**: Image compression, validation (in Flutter app)
3. **API Request**: Send to Fastify backend with Firebase auth token
4. **AI Analysis**: Backend calls Google Gemini for nutritional analysis
5. **Proto Response**: Results returned as Protobuf objects
6. **Local Storage**: Save to local SQLite database (Drift) in Flutter app
7. **Cloud Sync**: Optional sync to Firebase Firestore

### Design Patterns

- **Repository Pattern**: Database abstraction layer
- **Service Layer**: Business logic separation
- **Dependency Injection**: Service locator pattern
- **Reactive Programming**: Streams for real-time updates
- **Proto-First**: Single source of truth for data models

---

## Tech Stack

### Frontend (Flutter)
- **Framework**: Flutter 3.7.2+
- **Language**: Dart
- **UI**: Material Design 3
- **State Management**: Provider pattern
- **Routing**: Auto Route
- **Local Database**: Drift (SQLite)
- **Image Processing**: Flutter Image Compress
- **Charts**: FL Chart
- **Icons**: Lucide Icons

### Backend (Node.js)
- **Framework**: Fastify 4.x
- **Runtime**: Node.js 20+ (LTS)
- **Language**: TypeScript (strict mode)
- **AI**: Google Generative AI (Gemini 1.5 Flash)
- **Authentication**: Firebase Admin SDK
- **Data Models**: Protobuf (generated TypeScript types)
- **Containerization**: Docker & Docker Compose

### Infrastructure
- **Database**: PostgreSQL 15 (via Docker)
- **Container Orchestration**: Docker Compose
- **Reverse Proxy**: Nginx
- **Cloud Services**: Firebase (Auth, Firestore, Analytics, Crashlytics)
- **AI Service**: Google Gemini API

### Shared/Common
- **Data Models**: Protobuf (`.proto` files)
- **Code Generation**: `protoc` for Dart and TypeScript
- **Internationalization**: ARB files with Slang

---

## Project Structure

```
calorify/
├── app/                          # Flutter mobile app
│   ├── lib/
│   │   ├── core/                # Core functionality
│   │   │   ├── config/          # Configuration
│   │   │   ├── constants/       # Constants, themes, colors
│   │   │   ├── db/              # Database (Drift)
│   │   │   ├── network/         # HTTP client
│   │   │   ├── providers/      # State providers
│   │   │   ├── router/         # Navigation/routing
│   │   │   ├── services/       # Business logic services
│   │   │   └── utilities/      # Utility functions
│   │   ├── features/           # Feature modules
│   │   │   ├── auth/           # Authentication
│   │   │   ├── home/           # Home screen
│   │   │   ├── onboarding/    # Onboarding flow
│   │   │   ├── profile/        # User profile
│   │   │   ├── history/        # Meal history
│   │   │   └── ...
│   │   ├── shared_widgets/     # Reusable widgets
│   │   └── main.dart           # App entry point
│   ├── android/                 # Android configuration
│   ├── assets/                 # Images, fonts
│   └── test/                   # Tests
│
├── backend/                     # Node.js/Fastify backend
│   ├── src/
│   │   ├── config.ts            # Configuration
│   │   ├── index.ts             # Application entry point
│   │   ├── middleware/          # Middleware (auth, etc.)
│   │   ├── protos/              # Generated proto files
│   │   │   └── calorify/
│   │   │       └── models.ts
│   │   ├── routes/              # API routes
│   │   │   └── v1/
│   │   │       └── food.ts
│   │   ├── services/            # Business logic services
│   │   │   ├── foodAnalysis.ts
│   │   │   └── firebaseAuth.ts
│   │   └── utils/               # Utilities
│   ├── migrations/              # Database migrations
│   ├── docker-compose.yml       # Docker setup
│   ├── Dockerfile               # Container definition
│   ├── package.json             # Node.js dependencies
│   ├── tsconfig.json            # TypeScript configuration
│   ├── production.env           # Production environment
│   └── staging.env              # Staging environment
│
├── protos/                     # Protobuf definitions
│   └── calorify/
│       └── models.proto        # Data model definitions
│
├── shared_packages/            # Shared Dart packages
│   ├── models/                 # Data models
│   ├── services/               # Shared services
│   ├── utils/                  # Utilities
│   ├── widgets/                # Shared widgets
│   └── i18n/                   # Internationalization
│
├── watch_app/                  # Wear OS companion app
├── web/                        # Web assets
└── scripts/                     # Build/deployment scripts
    ├── generate_protos.sh      # Proto code generation
    └── ...
```

---

## Backend

### Overview
The backend is a minimal Node.js/Fastify server focused solely on AI-powered food analysis. It uses Protobuf for data models and Firebase for authentication.

### Current State
- **Focus**: Food analysis endpoints, Firebase authentication, proto-based models
- **Database**: PostgreSQL 15 (for future features, currently minimal usage)
- **AI Service**: Google Gemini 1.5 Flash for food analysis
- **Deployment**: Docker Compose with separate staging and production profiles

### API Endpoints

#### Root Endpoint
- **GET** `/` - Welcome message

#### Food Analysis
- **POST** `/api/v1/food/analyze-image`
  - **Purpose**: Analyze food image using AI
  - **Auth**: Required (Firebase token)
  - **Request**: Multipart form with image file
  - **Response**: `MealDetectionResult` (JSON or Protobuf)
  - **Content-Type**: `image/*`

- **POST** `/api/v1/food/analyze-description`
  - **Purpose**: Analyze food description text using AI
  - **Auth**: Required (Firebase token)
  - **Request**: JSON `{ "description": "string" }`
  - **Response**: `MealDetectionResult` (JSON or Protobuf)

### Services

#### FoodAnalysisService
- Uses Google Gemini 1.5 Flash model
- Processes images and text descriptions
- Returns proto `MealDetectionResult` objects
- Handles JSON parsing from AI responses

#### FirebaseAuthService
- Verifies Firebase ID tokens
- Extracts user ID from tokens
- Handles authentication errors

### Configuration

**Settings** (`src/config.ts`):
- Configuration loaded from environment variables
- Supports `.env` files for local development
- Environment-specific files: `production.env`, `staging.env`
- Key settings: `SECRET_KEY`, `FIREBASE_SERVICE_ACCOUNT_PATH`, `GOOGLE_API_KEY`, `DATABASE_URL`, `PORT`, `ENVIRONMENT`, `DEBUG`

### Dependencies

Key Node.js packages:
- `fastify` - Web framework
- `@fastify/multipart` - File upload support
- `@google/generative-ai` - Gemini AI client
- `firebase-admin` - Firebase Admin SDK
- `protobufjs` - Protobuf support for TypeScript
- `pg` - PostgreSQL client
- `typescript` - TypeScript compiler

### Docker Setup

**Production & Staging**:
- Docker Compose profiles for environment isolation
- Separate containers for production and staging
- PostgreSQL databases for each environment
- pgAdmin for database management
- Volume mounts for persistent data
- Zero-downtime deployment support

**Ports**:
- Production: `8000`
- Staging: `8001`
- pgAdmin: `8080`

**Deployment**:
- Use `--profile staging` or `--profile production` flags
- Backend automatically waits for database health checks
- Supports `--no-deps` flag for backend-only updates

---

## Frontend (Flutter App)

### Architecture

#### Feature-Based Structure
Each feature is self-contained with:
- Screen/widgets
- Business logic
- State management
- Navigation routes

#### Core Components

**Database Layer** (`core/db/`):
- `app_database.dart`: Drift database definition
- `tables/`: Database table definitions
- `mappers/`: Data transformation
- `database_interface.dart`: Abstraction layer

**Services** (`core/services/`):
- `food_analysis_service.dart`: AI analysis integration
- `auth_service.dart`: Authentication
- `database_service.dart`: Database operations
- `notification_service.dart`: Local notifications
- `health_connect_service.dart`: Health data integration

**Router** (`core/router/`):
- `app_router.dart`: Auto Route configuration
- `guards/`: Route guards (auth, onboarding)
- `route_names.dart`: Route constants

### Key Features

#### Onboarding Flow
1. Welcome screen
2. Basic information (height, weight, gender, age)
3. Weight goals
4. Activity level
5. Health Connect setup (Android)
6. Notification setup
7. Profile completion

#### Home Screen
- Daily calorie goal display
- Quick meal logging (text/camera)
- Daily nutrition summary
- Progress visualization
- Recent meals

#### Meal Analysis
- Image capture/selection
- Text description input
- AI-powered analysis
- Nutritional breakdown display
- Health score indicator

### State Management

Uses Provider pattern:
- `ThemeProvider`: Theme state (light/dark)
- Feature-specific providers for local state
- Stream-based reactive updates from database

### Database Schema

**Tables** (Drift):
- `meals`: Meal entries
- `user_profiles`: User profile data
- `favorites`: Favorite meals
- `notification_settings`: Notification preferences

### Dependencies

Key Flutter packages:
- `drift`: Local SQLite database
- `firebase_core`, `firebase_auth`: Firebase integration
- `firebase_ai`: AI-powered food analysis
- `cloud_firestore`: Cloud database
- `auto_route`: Declarative routing
- `flutter_local_notifications`: Local notifications
- `health`: Health Connect integration
- `image_picker`: Camera/gallery access
- `google_sign_in`: OAuth authentication

---

## Protobuf Data Models

### Overview
All data models are defined in Protobuf (`.proto` files) and generated for both Dart and Python. This ensures type safety and consistency across frontend and backend.

### Location
- **Definitions**: `protos/calorify/models.proto`
- **Generated Dart**: `shared_packages/models/lib/src/proto/`
- **Generated TypeScript**: `backend/src/protos/calorify/models.ts`

### Key Messages

#### Meal
```protobuf
message Meal {
  optional string client_id = 1;
  optional int64 local_id = 2;
  string meal_name = 3;
  string meal_quantity = 4;
  MealType meal_type = 5;
  int32 calories = 6;
  int32 protein = 7;
  int32 carbs = 8;
  int32 fat = 9;
  int32 fiber = 10;
  int64 timestamp = 11;
  optional string image_url = 12;
  optional HealthScore health_score = 13;
  optional string health_score_reason = 14;
}
```

#### MealDetectionResult
```protobuf
message MealDetectionResult {
  bool meal_identified = 1;
  int32 calorie_confidence = 2;
  string tip = 3;
  Meal meal_info = 4;
}
```

#### UserProfile
```protobuf
message UserProfile {
  optional double height = 1;
  optional double weight = 2;
  optional double target_weight = 3;
  optional Gender gender = 4;
  optional int64 date_of_birth = 5;
  optional WeightGoal weight_goal = 6;
  optional ActivityLevel activity_level = 7;
  optional UnitSystem height_unit = 8;
  optional UnitSystem weight_unit = 9;
  optional int32 daily_calorie_goal = 10;
}
```

### Enums

- `MealType`: BREAKFAST, LUNCH, DINNER, SNACK, UNKNOWN
- `HealthScore`: HEALTHY, NEUTRAL, UNHEALTHY
- `Gender`: MALE, FEMALE, OTHER
- `WeightGoal`: LOSE_WEIGHT, MAINTAIN_WEIGHT, GAIN_WEIGHT
- `ActivityLevel`: SEDENTARY, LIGHTLY_ACTIVE, MODERATELY_ACTIVE, VERY_ACTIVE, EXTREMELY_ACTIVE
- `UnitSystem`: METRIC, IMPERIAL

### Code Generation

**Script**: `scripts/generate_protos.sh`

Generates code for:
- Dart (Flutter app)
- Python (Backend)

**Usage**:
```bash
./scripts/generate_protos.sh
```

---

## Setup & Installation

### Prerequisites

**Flutter Development**:
- Flutter SDK 3.7.2+
- Dart SDK
- Android Studio / VS Code
- Android SDK / Xcode (for iOS)

**Backend Development**:
- Node.js 20+ (LTS)
- TypeScript
- Docker & Docker Compose
- PostgreSQL (via Docker)
- protoc (Protocol Buffers compiler)

**Services**:
- Firebase project
- Google Cloud project (for Gemini AI)
- Firebase service account JSON

### Frontend Setup

1. **Clone repository**:
   ```bash
   git clone <repository-url>
   cd calorify
   ```

2. **Install Flutter dependencies**:
   ```bash
   cd app
   flutter pub get
   ```

3. **Firebase Configuration**:
   - Create Firebase project
   - Enable Authentication, Firestore, Firebase AI
   - Download `google-services.json` for Android
   - Place in `app/android/app/`
   - Run `flutterfire configure` or manually configure

4. **Run app**:
   ```bash
   flutter run
   ```

### Backend Setup

1. **Navigate to backend**:
   ```bash
   cd backend
   ```

2. **Install dependencies**:
   ```bash
   npm install
   ```

3. **Generate Protobuf Types**:
   ```bash
   cd ../scripts
   ./generate_protos.sh
   cd ../backend
   ```

4. **Configure environment**:
   - Place `firebase-adminsdk.json` in the `backend/` folder
   - Copy `env.example` to `.env` for local development
   - Update `production.env` and `staging.env` with your credentials

5. **Run with Docker** (recommended):
   ```bash
   # For staging
   docker-compose --profile staging up -d
   
   # For production
   docker-compose --profile production up -d
   ```

6. **Run locally** (development):
   ```bash
   npm run dev
   ```

### Generate Protobuf Code

```bash
./scripts/generate_protos.sh
```

This generates:
- Dart code in `shared_packages/models/lib/src/proto/`
- TypeScript code in `backend/src/protos/calorify/models.ts`

---

## API Documentation

### Authentication

All protected endpoints require Firebase authentication:

**Header**:
```
Authorization: Bearer <FIREBASE_ID_TOKEN>
```

**Token Verification**:
- Backend verifies token using Firebase Admin SDK
- Extracts user ID from token
- Returns 401 if token is invalid/expired

### Endpoints

#### GET `/`
**Description**: Root endpoint, returns welcome message

**Response**:
```json
{
  "message": "Welcome to Calorify Backend API",
  "version": "1.0.0"
}
```

#### POST `/api/v1/food/analyze-image`
**Description**: Analyze food image using AI

**Authentication**: Required

**Request**:
- **Content-Type**: `multipart/form-data`
- **Body**: File upload (image)

**Response Format**: JSON (default) or Protobuf (if `Accept: application/x-protobuf`)

**JSON Response**:
```json
{
  "meal_identified": true,
  "calorie_confidence": 85,
  "tip": "Consider adding more vegetables",
  "meal_info": {
    "meal_name": "Grilled Chicken Salad",
    "calories": 350,
    "protein": 30,
    "carbs": 15,
    "fat": 18,
    "fiber": 5,
    "timestamp": 1234567890000,
    "meal_type": "LUNCH",
    "health_score": "HEALTHY",
    "health_score_reason": "High protein, balanced macros"
  }
}
```

**Error Responses**:
- `400`: Invalid file type (not an image)
- `401`: Unauthorized (invalid/missing token)
- `500`: Analysis failed

#### POST `/api/v1/food/analyze-description`
**Description**: Analyze food description text using AI

**Authentication**: Required

**Request**:
- **Content-Type**: `application/json`
- **Body**:
  ```json
  {
    "description": "I had a large bowl of pasta with marinara sauce"
  }
  ```

**Response**: Same format as `/analyze-image`

**Error Responses**: Same as `/analyze-image`

### API URLs

**Production**: `https://api-calorify.thecodepapaya.dev`
**Staging**: `https://api-staging-calorify.thecodepapaya.dev`

---

## Development Workflow

### Code Generation

**Protobuf**:
```bash
./scripts/generate_protos.sh
```

**Flutter**:
```bash
# Generate code (build_runner)
cd app
flutter pub run build_runner build --delete-conflicting-outputs
```

**Translations** (if using):
```bash
./scripts/generate_translations.sh
```

### Running Tests

**Flutter**:
```bash
cd app
flutter test
```

**Backend**:
```bash
cd backend
npm test
```

### Development Servers

**Flutter** (hot reload):
```bash
cd app
flutter run
```

**Backend** (auto-reload):
```bash
cd backend
npm run dev
```

### Docker Development

**Staging** (with live reload):
```bash
cd backend
docker-compose --profile staging up
```

The staging container mounts `./src` for live code updates.

---

## Deployment

### Backend Deployment

**Production**:
1. Pull latest code:
   ```bash
   git pull
   ```

2. Deploy with zero-downtime (backend only):
   ```bash
   docker-compose --profile production up -d --build --no-deps backend-prod
   ```

3. Or deploy with database:
   ```bash
   docker-compose --profile production up -d --build
   ```

4. Verify:
   ```bash
   docker-compose --profile production logs -f backend-prod
   ```

**Staging**:
```bash
docker-compose --profile staging up -d --build
```

**Nginx Configuration**:
Configure reverse proxy to route:
- `api-calorify.thecodepapaya.dev` → `localhost:8000` (production)
- `api-staging-calorify.thecodepapaya.dev` → `localhost:8001` (staging)

### Flutter App Deployment

**Android**:
```bash
cd app
flutter build appbundle --release
# Upload to Google Play Console
```

**iOS**:
```bash
cd app
flutter build ios --release
# Upload via Xcode or Fastlane
```

**Fastlane**:
```bash
cd fastlane
fastlane android beta
fastlane ios beta
```

### Environment Variables

**Backend** (`production.env`, `staging.env`):
- `SECRET_KEY`: Application secret key (must be secure in production)
- `FIREBASE_SERVICE_ACCOUNT_PATH`: Path to Firebase service account JSON
- `GOOGLE_API_KEY`: Google Gemini API key
- `DATABASE_URL`: PostgreSQL connection string (auto-configured in Docker)
- `ENVIRONMENT`: `development`, `staging`, or `production`
- `PORT`: Server port (default: 8000)
- `DEBUG`: Debug mode (must be `false` in production)

**Flutter**:
- Firebase configuration in `google-services.json`
- Environment-specific configs in `lib/core/config/`

---

## Configuration

### Backend Configuration

**Settings** (`src/config.ts`):
- Loaded from environment variables
- Supports `.env` files for local development
- Defaults provided for development
- TypeScript-based configuration with type safety

**Environment Files**:
- `production.env`: Production settings
- `staging.env`: Staging settings
- `env.example`: Template for local development
- `.env`: Local development (not committed)

### Flutter Configuration

**Build Flavors**:
- Staging: Development/testing
- Production: Release

**Firebase**:
- `google-services.json`: Android configuration
- `GoogleService-Info.plist`: iOS configuration
- `firebase_options.dart`: Generated Firebase options

### Database Configuration

**PostgreSQL** (Docker):
- Production: `calorify_prod` database
- Staging: `calorify_staging` database
- Credentials in environment files

**SQLite** (Flutter):
- Local database in app data directory
- Managed by Drift
- Automatic migrations

---

## Testing

### Flutter Tests

**Unit Tests**: `app/test/unit/`
**Widget Tests**: `app/test/widget/`
**Integration Tests**: `app/integration_test/`

**Run**:
```bash
cd app
flutter test
```

### Backend Tests

**Location**: `backend/` (test files alongside source)

**Run**:
```bash
cd backend
npm test
```

### Integration Tests

**Flutter**:
- `onboarding_flow_test.dart`
- `meal_logging_flow_test.dart`
- `navigation_flow_test.dart`

**Run**:
```bash
cd app
flutter test integration_test/
```

---

## Key Features

### 1. AI-Powered Food Analysis
- Image analysis using Google Gemini
- Text description analysis
- Nutritional breakdown (calories, macros)
- Health score assessment
- Confidence scoring

### 2. Offline-First Architecture
- Local SQLite database (Drift)
- Works without internet connection
- Optional cloud sync (Firestore)

### 3. Comprehensive Onboarding
- Multi-step user setup
- Profile configuration
- Health Connect integration
- Notification setup

### 4. Smart Notifications
- Meal reminders
- Customizable schedules
- Multiple notification channels
- Exact alarm support (Android)

### 5. Internationalization
- Multi-language support (ARB files)
- Automatic unit detection (metric/imperial)
- Locale-specific validation

### 6. Health Integration
- Android Health Connect
- Automatic data sync
- Permission management

### 7. Modern UI/UX
- Material Design 3
- Dark/Light themes
- Responsive design
- Smooth animations

---

## Future Enhancements

### Planned Features
- Advanced analytics and insights
- Wearable device integration
- Multi-language support expansion
- Social features (sharing meals)
- Recipe suggestions
- Meal planning

### Technical Improvements
- GraphQL API alternative
- Real-time collaboration
- Advanced caching strategies
- Performance optimizations
- Enhanced error handling

---

## Troubleshooting

### Common Issues

**Backend**:
- **Port already in use**: Change port in `docker-compose.yml` or environment variables
- **Firebase auth fails**: Check service account JSON path and `FIREBASE_SERVICE_ACCOUNT_PATH` env var
- **AI analysis fails**: Verify `GOOGLE_API_KEY` environment variable
- **Container won't start**: Check logs with `docker-compose --profile production logs backend-prod`
- **Database connection fails**: Verify `DATABASE_URL` in environment files and database container health

**Flutter**:
- **Build errors**: Run `flutter clean && flutter pub get`
- **Firebase errors**: Regenerate `firebase_options.dart`
- **Proto errors**: Run `./scripts/generate_protos.sh`

**Docker**:
- **Container won't start**: Check logs with `docker-compose logs`
- **Database connection fails**: Verify `DATABASE_URL` in env files

---

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

---

## License

[Add license information here]

---

## Contact & Support

[Add contact information here]

---

**Last Updated**: 2024
**Version**: 1.2.4+25

---

## Migration Notes

### Backend Migration: Python/FastAPI → Node.js/Fastify

The backend has been migrated from Python/FastAPI to Node.js/Fastify for improved performance and better TypeScript integration. Key changes:

- **Language**: Python 3.12 → Node.js 20+ (LTS) with TypeScript
- **Framework**: FastAPI → Fastify 4.x
- **Code Generation**: Python protobuf → TypeScript protobuf
- **Package Management**: `requirements.txt` → `package.json`
- **Development**: `uvicorn` → `npm run dev`
- **Testing**: `pytest` → `npm test`

All API endpoints remain the same, ensuring backward compatibility with the Flutter app.
