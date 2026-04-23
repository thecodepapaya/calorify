# Calorify Project Documentation

## Table of Contents
1. [Project Overview](#project-overview)
2. [Architecture](#architecture)
3. [Tech Stack](#tech-stack)
4. [Project Structure](#project-structure)
5. [Backend](#backend)
    - [Overview](#backend-overview)
    - [API Endpoints](#api-endpoints)
    - [Schema Synchronization](#schema-synchronization)
    - [Token Optimization](#token-optimization)
    - [Docker Setup](#docker-setup)
6. [Frontend (Flutter App)](#frontend-flutter-app)
7. [Protobuf Data Models](#protobuf-data-models)
8. [Setup & Installation](#setup--installation)
9. [Development Workflow](#development-workflow)
10. [Deployment](#deployment)
11. [Configuration](#configuration)
12. [Testing](#testing)
13. [Key Features](#key-features)
14. [Changelog](#changelog)

---

## Project Overview

**Calorify** is a Flutter-based calorie tracking application that leverages AI to analyze food images and text descriptions for accurate nutritional logging. The project serves as a case study demonstrating the capabilities of various AI platforms in full-stack application development.

### Project Goals
- Demonstrate AI-assisted development across the entire software lifecycle
- Provide intelligent food analysis using AI (Google Gemini & OpenAI)
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
│  │   AI Services (Gemini / OpenAI)               │           │
│  └──────────────────────────────────────────────┘           │
└─────────────────────────────────────────────────────────────┘
```

---

## Tech Stack

### Frontend (Flutter)
- **Framework**: Flutter 3.7.2+
- **Language**: Dart
- **UI**: Material Design 3
- **State Management**: Provider pattern
- **Routing**: Auto Route
- **Local Database**: Drift (SQLite)
- **Image Processing**: Flutter Image Compress (WebP)
- **Charts**: FL Chart
- **Icons**: Lucide Icons

### Backend (Node.js)
- **Framework**: Fastify 4.x
- **Runtime**: Node.js 20+ (LTS)
- **Language**: TypeScript (strict mode)
- **AI**: OpenAI (`gpt-4.1-nano` for meal analysis, `gpt-5-mini` for summaries/translations), Google Generative AI (Gemini 1.5 Flash - legacy)
- **Authentication**: Firebase Admin SDK
- **Rate Limiting**: @fastify/rate-limit (Global & Route-specific)
- **Data Models**: Protobuf (generated TypeScript types)
- **Containerization**: Docker & Docker Compose

### Infrastructure
- **Database**: PostgreSQL 15 (via Docker)
- **Container Orchestration**: Docker Compose
- **Reverse Proxy**: Nginx
- **Cloud Services**: Firebase (Auth, Firestore, Analytics, Crashlytics)
- **Logging**: Loki, Grafana, Promtail

---

## Project Structure

```
calorify/
├── app/                          # Flutter mobile app
├── backend/                     # Node.js/Fastify backend
│   ├── src/
│   │   ├── config.ts            # Configuration
│   │   ├── index.ts             # Application entry point
│   │   ├── middleware/          # Middleware (auth, etc.)
│   │   ├── protos/              # Generated proto files
│   │   ├── routes/              # API routes
│   │   ├── services/            # Business logic services
│   │   └── utils/               # Utilities (Schema Sync, etc.)
│   ├── migrations/              # Database migrations
│   ├── docker-compose.yml       # Docker setup
│   ├── production.env           # Production environment
│   └── staging.env              # Staging environment
├── protos/                     # Protobuf definitions
├── shared_packages/            # Shared Dart packages
│   ├── i18n/                   # Internationalization
│   └── models/                 # Data models
├── watch_app/                  # Wear OS companion app
└── scripts/                     # Build/deployment scripts
```

---

## Backend

### Backend Overview
The backend is a Node.js/Fastify server focused on AI-powered food analysis and user profile management. It uses Protobuf for data models and Firebase for authentication.

### Rate Limiting & Protection
The backend employs `@fastify/rate-limit` to prevent abuse and manage AI costs:
- **Identity Tracking**: Uses `userId` from Firebase auth when available, falling back to client IP address.
- **Global Limit**: 100 requests per minute per user/IP.
- **Food API Limits**: Tighter limit of 20 requests per minute for expensive AI endpoints.
- **Error Response**: Returns 429 status code with a machine-readable `RATE_LIMIT_EXCEEDED` detail code.

### API Endpoints

#### Food Analysis (V1)
- **POST** `/api/v1/food/detect-image`: Detect meal from image URL (OpenAI)
- **POST** `/api/v1/food/detect-text`: Detect meal from text description (OpenAI)
- **POST** `/api/v1/food/analyze-image`: Legacy multipart analysis
- **POST** `/api/v1/food/analyze-description`: Legacy text analysis

### Schema Synchronization
The project uses a centralized schema generator (`src/utils/schema-generator.ts`) to ensure API documentation stays in sync with Protobuf definitions.
- **Validation**: Run `npm run validate-schemas` to ensure consistency.
- **Workflow**: Protos Change → Regenerate Types → Update Schema Generator → Validate.

### Token Optimization
Strategies implemented to reduce OpenAI API costs:
1. **Condensed System Prompt**: Reduced from ~400 to ~150 tokens.
2. **Concise User Messages**: Removed redundant text.
3. **WebP Image Format**: 25-35% better compression on the client side.
4. **Reduced max_tokens**: Set to 800-1000 to prevent over-generation.

### Docker Setup
- **Profiles**: `staging` (port 8001) and `production` (port 8000).
- **Services**: `db`, `backend`, `loki`, `grafana`, `promtail`.
- **Deployment**: `docker-compose --profile production up -d --build`.

---

## Frontend (Flutter App)

### Architecture
- **Feature-Based Structure**: Self-contained modules for auth, home, onboarding, etc.
- **Network Layer**: Dio-based client with interceptors for auth and rate limiting.
- **Database Layer**: Drift (SQLite) with repository pattern.
- **State Management**: Provider pattern with reactive stream updates.

### Key Features
- **Onboarding**: Multi-step setup (metrics, goals, activity, Health Connect).
- **Meal Analysis**: Camera/Gallery capture and text description input.
- **Smart Notifications**: Customizable meal reminders and progress updates.
- **Health Integration**: Android Health Connect support.

---

## Protobuf Data Models

### Overview
Protobuf is the single source of truth for data models across Flutter and Node.js.

### Key Messages
- **Meal**: Contains nutritional info, timestamp, and health score.
- **MealDetectionResult**: Contains boolean identification, confidence, and meal details.
- **UserProfile**: Contains biometric data and nutritional goals.

### Code Generation
Run `./scripts/generate_protos.sh` to update generated code in both frontend and backend.

---

## Setup & Installation

### Prerequisites
- Flutter SDK 3.7.2+
- Node.js 20+ (LTS)
- Docker & Docker Compose
- Firebase Project & Service Account JSON

### Backend Setup
1. `cd backend && npm install`
2. `./scripts/generate_protos.sh`
3. Configure `production.env` / `staging.env`
4. `npm run dev` or `docker-compose --profile staging up -d`

### Frontend Setup
1. `cd app && flutter pub get`
2. Configure Firebase (`google-services.json` / `GoogleService-Info.plist`)
3. `flutter run`

---

## Changelog

### Schema Synchronization System
Centralized schema generator added to keep API docs in sync with proto definitions.

### OpenAI Meal Analysis Endpoints
- `POST /api/v1/food/detect-image`
- `POST /api/v1/food/detect-text`
- Variations included when confidence is LOW/MEDIUM.

### Authentication & Sync
- **Auth**: Temporarily disabled on backend for easier testing (commented out in routes).
- **Sync**: `SyncService` initialization temporarily disabled in app.

---

**Last Updated**: February 2026
**Backend Version**: 1.2.5+26
