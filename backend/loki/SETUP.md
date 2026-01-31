# Grafana + Loki Setup Complete ✅

## What's Configured

### Docker Services
- **Loki** (port 3100) - Log aggregation and storage
- **Grafana** (port 3000) - Dashboard UI
- **Promtail** - Log collector (optional, for Docker container logs)

### Fastify Integration
- Automatic request/response logging via hooks
- Pino logger with Loki transport (production/staging)
- Pino-pretty for development (readable console logs)
- Request ID generation for log correlation

### Pre-configured Dashboard
- Request rate charts
- Status code distribution
- Response time metrics
- Error tracking
- Built-in filters

## Quick Start

### 1. Install Dependencies
```bash
cd backend
npm install
```

### 2. Start Logging Infrastructure
```bash
docker-compose up -d loki grafana promtail
```

### 3. Start Your Backend
```bash
# Staging
docker-compose --profile staging up -d backend-staging

# Production
docker-compose --profile production up -d backend-prod
```

### 4. Access Dashboard
- **Grafana**: http://localhost:3000
- **Loki API**: http://localhost:3100
- Dashboard: "Calorify API Logs Dashboard" (auto-loaded)

## Configuration Files

- `loki/loki-config.yaml` - Loki server configuration
- `loki/promtail-config.yml` - Promtail log collector config
- `loki/grafana-datasources/datasource.yml` - Loki datasource
- `loki/grafana-dashboards/dashboard.yml` - Dashboard provisioning
- `loki/grafana-dashboards/api-logs-dashboard.json` - Pre-built dashboard

## Environment Variables

Already added to `production.env` and `staging.env`:
```bash
LOKI_URL=http://loki:3100
```

## Log Structure

Each log entry includes:
- `type`: "request" or "response"
- `method`: HTTP method (GET, POST, etc.)
- `url`: Request URL
- `statusCode`: HTTP status code (for responses)
- `responseTime`: Response time in ms (for responses)
- `app`: "calorify-backend" (label)
- `environment`: "staging" or "production" (label)

## Troubleshooting

### Logs not appearing in Grafana
1. Check Loki is running: `docker-compose ps loki`
2. Check backend logs: `docker-compose logs backend-staging`
3. Verify LOKI_URL is set correctly
4. Check network connectivity: `docker-compose exec backend-staging ping loki`

### Grafana not accessible
1. Check Grafana logs: `docker-compose logs grafana`
2. Verify port 3000 is available
3. Check if dashboard is auto-loaded in Grafana UI

### pino-loki connection errors
1. Ensure Loki is started before backend
2. Check LOKI_URL format (should be `http://loki:3100`)
3. Verify Docker network is working

## Log Retention

Logs are retained for **168 hours (7 days)** by default. To change:
- Edit `loki/loki-config.yaml`
- Modify `retention_period` and `retention_deletes_enabled`

## Next Steps

1. **Customize Dashboard**: Edit `api-logs-dashboard.json` or create new panels
2. **Add Alerts**: Set up Grafana alerts for error rates or slow requests
3. **Export Logs**: Use Loki's API to export logs for analysis
4. **Scale**: Adjust Loki configuration for higher log volumes
