# Quick Start - Grafana + Loki Logging

## Docker Commands

```bash
# 1. Start logging infrastructure
docker compose up -d loki grafana promtail

# 2. Start backend (staging)
docker compose --profile staging up -d backend-staging

# 3. Start backend (production)
docker compose --profile production up -d backend-prod

# View logs
docker compose logs -f grafana
docker compose logs -f loki
docker compose logs -f backend-staging

# Stop everything
docker compose down
```

## Access

- **Grafana Dashboard**: http://localhost:3000
- **API Logs Dashboard**: http://localhost:3000/d/calorify-api-logs
- **Explore (custom queries)**: http://localhost:3000/explore

**Note**: Loki (port 3100) is API-only, no web UI. Use Grafana to view logs.

## Configuration Required

✅ **Already done** - No additional config needed:
- `LOKI_URL=http://loki:3100` added to `production.env` and `staging.env`
- All config files created and mounted
- Dashboard auto-provisioned

## First Time Setup

```bash
cd backend
npm install  # Install pino-loki and pino-pretty
```

That's it! Logs will appear automatically in Grafana.
