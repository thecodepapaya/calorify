# Calorify Backend Server 🍎

High-performance Go-based backend for the Calorify app.

## Features

- **FastAPI-like performance**: Built with the Fiber framework (fasthttp).
- **AI-Powered Food Analysis**: Integration with Gemini for image and text analysis.
- **Secure**: Firebase Authentication on all API endpoints.
- **Relational Data**: PostgreSQL database with GORM ORM.
- **Cron Jobs**: Scheduled tasks for reminders and cleanup.
- **Observability**: Structured logging, Loki, and Grafana dashboards.
- **Admin Tools**: pgAdmin for database inspection.
- **Deployment**: Multi-stage Docker builds and zero-downtime deployment scripts.

## Tech Stack

- **Go 1.21+**
- **Fiber** (HTTP Framework)
- **PostgreSQL** (Database)
- **GORM** (ORM)
- **Firebase Admin SDK** (Auth & Push)
- **Gemini AI** (Food Analysis)
- **robfig/cron** (Scheduler)
- **zerolog** (Logging)
- **Grafana/Loki/Promtail** (Observability)
- **pgAdmin** (DB Admin)

## Getting Started

### Prerequisites

- Go 1.21+
- Docker & Docker Compose
- Firebase Service Account Key (JSON)
- Gemini API Key

### Local Development

1. **Clone the repository**
2. **Setup environment variables**
   ```bash
   cp .env.example .env.development
   ```
3. **Start the services with Docker Compose**
   ```bash
   docker-compose up -d
   ```
4. **Run the server**
   ```bash
   go run cmd/server/main.go
   ```

## API Documentation

- **Health Check**: `GET /health`
- **User Profile**: `GET /api/v1/users/me`
- **Meal Logs**: `GET /api/v1/users/meals`
- **Food Analysis**: `POST /api/v1/food/analyze-image`

## Deployment

### Oracle VM Setup

1. Copy the `backend/` folder to the VM.
2. Run `scripts/setup_vm.sh`.
3. Configure `.env.production`.
4. Run `scripts/deploy.sh production`.

### Zero-Downtime Deployment

- Use `scripts/blue_green_deploy.sh` for switching between environments.
- Use `scripts/rolling_deploy.sh` for incremental updates.

## Monitoring

- **Logs**: Access Grafana at `http://localhost:3000`.
- **Database**: Access pgAdmin at `http://localhost:5050`.
