# Calorify Backend Server

A high-performance Node.js/Fastify backend for the Calorify app.

## Features

- AI Food Analysis (Image & Text) using Google Gemini
- Firebase Authentication
- TypeScript with strict type checking
- Protobuf-based data contracts
- Multi-environment support (Staging & Production)

## Technology Stack

- **Framework**: Fastify 4.x
- **Runtime**: Node.js 20+ (LTS)
- **Language**: TypeScript (strict mode)
- **AI**: Google Gemini 1.5 Flash
- **Auth**: Firebase Admin SDK
- **Data Models**: Protobuf (generated TypeScript types)
- **Database**: PostgreSQL 15

## Quick Start

### Prerequisites

- Node.js 20+ (LTS)
- Docker & Docker Compose
- protoc (Protocol Buffers compiler)
- Firebase service account JSON file

### Initial Setup

1. **Install Dependencies**:
   ```bash
   npm install
   ```

2. **Generate Protobuf Types**:
   ```bash
   cd ../scripts
   ./generate_protos.sh
   ```

3. **Configure Environment Variables**:
   - Place `firebase-adminsdk.json` in the `backend/` folder
   - Copy `env.example` to `.env` for local development
   - Update `production.env` and `staging.env` with your credentials

4. **Required Environment Variables**:
   - `SECRET_KEY`: Application secret key (must be secure in production)
   - `FIREBASE_SERVICE_ACCOUNT_PATH`: Path to Firebase service account JSON
   - `GOOGLE_API_KEY`: Google Gemini API key
   - `DATABASE_URL`: PostgreSQL connection string (auto-configured in Docker)
   - `ENVIRONMENT`: `development`, `staging`, or `production`
   - `PORT`: Server port (default: 8000)
   - `DEBUG`: Debug mode (must be `false` in production)

## Docker Deployment

This project uses **Docker Compose profiles** to manage separate staging and production environments on the same server.

### Environment Profiles

- **`staging`**: Development/testing environment
- **`production`**: Production environment
- **No profile**: Shared services (e.g., pgAdmin)

### Deployment Commands

#### Deploy Staging (Backend + Database)

Deploying with the `staging` profile starts both the staging database and backend together. The backend automatically waits for the database to be healthy before starting.

```bash
# Start staging environment (database + backend)
docker-compose --profile staging up -d

# Rebuild and deploy staging (after code changes)
docker-compose --profile staging up -d --build

# Explicitly specify both services (optional)
docker-compose --profile staging up -d db-staging backend-staging

# Deploy staging backend only (database must already be running)
docker-compose --profile staging up -d --build --no-deps backend-staging
```

**Note**: The `--no-deps` flag skips dependencies, so use it only when you want to update the backend without touching the database.

#### Deploy Production (Backend + Database)

Deploying with the `production` profile starts both the production database and backend together. The backend automatically waits for the database to be healthy before starting.

```bash
# Start production environment (database + backend)
docker-compose --profile production up -d

# Rebuild and deploy production (after code changes)
docker-compose --profile production up -d --build

# Explicitly specify both services (optional)
docker-compose --profile production up -d db-prod backend-prod

# Deploy production backend only (zero-downtime update, database must already be running)
docker-compose --profile production up -d --build --no-deps backend-prod
```

**Note**: The `--no-deps` flag skips dependencies, so use it only when you want to update the backend without touching the database.

#### Deploy Both Environments

```bash
# Start both staging and production
docker-compose --profile staging --profile production up -d

# Rebuild and deploy both
docker-compose --profile staging --profile production up -d --build
```

#### Stop Services

```bash
# Stop staging only
docker-compose --profile staging down

# Stop production only
docker-compose --profile production down

# Stop both environments
docker-compose --profile staging --profile production down

# Stop everything including shared services
docker-compose down
```

### Zero-Downtime Deployment Strategy

For production deployments without service interruption:

```bash
# 1. Pull latest code
git pull

# 2. Rebuild and restart only the backend service
docker-compose --profile production up -d --build --no-deps backend-prod

# 3. Monitor health check
docker-compose --profile production logs -f backend-prod
```

The `--no-deps` flag ensures only the specified service is updated, leaving the database and other dependencies untouched.

### Environment Configuration

| Feature | Production 🚀 | Staging 🧪 |
| :--- | :--- | :--- |
| **Public API URL** | `https://api-calorify.thecodepapaya.dev` | `https://api-staging-calorify.thecodepapaya.dev` |
| **Internal Port** | `8000` | `8001` |
| **Database Name** | `calorify_prod` | `calorify_staging` |
| **Container Name** | `calorify-backend-prod` | `calorify-backend-staging` |
| **Database Container** | `calorify-db-prod` | `calorify-db-staging` |
| **Environment File** | `production.env` | `staging.env` |
| **Command** | Production build | `npm run dev` (live reload) |

### Monitoring & Logs

```bash
# View staging logs (both database and backend)
docker-compose --profile staging logs -f

# View staging backend logs only
docker-compose --profile staging logs -f backend-staging

# View staging database logs only
docker-compose --profile staging logs -f db-staging

# View production logs (both database and backend)
docker-compose --profile production logs -f

# View production backend logs only
docker-compose --profile production logs -f backend-prod

# View production database logs only
docker-compose --profile production logs -f db-prod

# Check container status for staging
docker-compose --profile staging ps

# Check container status for production
docker-compose --profile production ps

# Check health status of backend
docker inspect --format='{{.State.Health.Status}}' calorify-backend-prod
docker inspect --format='{{.State.Health.Status}}' calorify-backend-staging

# Verify both staging services are running
docker-compose --profile staging ps | grep -E "(db-staging|backend-staging)"

# Verify both production services are running
docker-compose --profile production ps | grep -E "(db-prod|backend-prod)"
```

### DNS & Reverse Proxy Setup

Configure Nginx to route traffic:

```nginx
# /etc/nginx/sites-available/calorify

# Production API
server {
    server_name api-calorify.thecodepapaya.dev;
    location / {
        proxy_pass http://localhost:8000;
        include proxy_params;
    }
}

# Staging API
server {
    server_name api-staging-calorify.thecodepapaya.dev;
    location / {
        proxy_pass http://localhost:8001;
        include proxy_params;
    }
}
```

## Local Development

### Run Without Docker

1. **Set Environment Variables**:
   ```bash
   cp env.example .env
   # Edit .env with your local settings
   ```

2. **Start Development Server**:
   ```bash
   npm run dev
   ```

3. **Access**:
   - API: `http://localhost:8000`
   - Health Check: `http://localhost:8000/`

### Run With Docker (Staging Profile)

For development with Docker using the staging profile:

```bash
docker-compose --profile staging up
```

The staging container mounts `./src` for live code reload.

## Database Management

### pgAdmin 4 (Web UI)

pgAdmin is available as a shared service (no profile required):

```bash
# Start pgAdmin
docker-compose up -d pgadmin

# Access at http://localhost:8080
# Default credentials:
# Email: calorify@thecodepapaya.dev
# Password: admin
# ⚠️ Change password after first login!
```

**Connecting to Databases in pgAdmin:**

1. Right-click "Servers" → "Register" → "Server"

2. **Production Database:**
   - Name: `Calorify Production`
   - Host: `db-prod`
   - Port: `5432`
   - Database: `calorify_prod`
   - Username: `calorify`
   - Password: `calorify_pwd_prod`

3. **Staging Database:**
   - Name: `Calorify Staging`
   - Host: `db-staging`
   - Port: `5432`
   - Database: `calorify_staging`
   - Username: `calorify`
   - Password: `calorify_pwd_staging`

### Command Line (psql)

```bash
# Connect to production database
docker exec -it calorify-db-prod psql -U calorify -d calorify_prod

# Connect to staging database
docker exec -it calorify-db-staging psql -U calorify -d calorify_staging
```

## API Integration

### Flutter App Configuration

1. **Set Base URLs**:
   - Production: `https://api-calorify.thecodepapaya.dev`
   - Staging: `https://api-staging-calorify.thecodepapaya.dev`

2. **Request Headers**:
   ```
   Authorization: Bearer <FIREBASE_ID_TOKEN>
   Content-Type: application/json
   Accept: application/json
   ```

### Health Check

```bash
# Production
curl https://api-calorify.thecodepapaya.dev/

# Staging
curl https://api-staging-calorify.thecodepapaya.dev/
```

## Protobuf Generation

TypeScript types are generated from `.proto` files:

```bash
cd ../scripts
./generate_protos.sh
```

This generates `backend/src/protos/calorify/models.ts` from `protos/calorify/models.proto`.

## Building for Production

```bash
# Build TypeScript
npm run build

# Run production server locally
npm start
```

## Available Scripts

- `npm run dev`: Start development server with hot reload
- `npm run build`: Build TypeScript to JavaScript
- `npm start`: Run production server
- `npm run lint`: Run ESLint
- `npm run type-check`: Type check without building

## Troubleshooting

### Container Won't Start

```bash
# Check logs
docker-compose --profile staging logs backend-staging

# Check container status
docker-compose --profile staging ps

# Rebuild from scratch
docker-compose --profile staging build --no-cache backend-staging
```

### Database Connection Issues

- Verify environment variables in `production.env` or `staging.env`
- Check database container is running: `docker ps | grep db`
- Verify database health: `docker inspect calorify-db-prod | grep Health`

### Port Conflicts

- Production uses port `8000`
- Staging uses port `8001`
- pgAdmin uses port `8080`
- Ensure these ports are available or modify in `docker-compose.yml`

## Security Notes

- ⚠️ **Never commit** `firebase-adminsdk.json` or `.env` files
- ⚠️ **Change default passwords** in production
- ⚠️ **Set `DEBUG=false`** in production
- ⚠️ **Use strong `SECRET_KEY`** values
- ⚠️ **Keep Docker images updated** for security patches
