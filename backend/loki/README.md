# Grafana + Loki Logging Setup

This directory contains the configuration for self-hosted logging with Grafana and Loki.

## Quick Start

1. **Install dependencies:**
   ```bash
   cd backend
   npm install
   ```

2. **Start logging infrastructure:**
   ```bash
   docker-compose up -d loki grafana promtail
   ```

3. **Start your backend:**
   ```bash
   # For staging
   docker-compose --profile staging up -d backend-staging
   
   # For production
   docker-compose --profile production up -d backend-prod
   ```

4. **Access Grafana dashboard:**
   - Open http://localhost:3000
   - Login with default credentials (username: `admin`, password: `admin`)
   - You may be prompted to change the password on first login
   - The dashboard should be automatically loaded
   - Look for "Calorify API Logs Dashboard" in the dashboards list

## Dashboard Features

The pre-configured dashboard includes:

- **Request Rate Chart** - Requests per second over time
- **Status Code Distribution** - Pie chart of HTTP status codes
- **Response Time Metrics** - p50, p95, p99 response times
- **Requests by HTTP Method** - Distribution of GET, POST, etc.
- **Recent API Requests Table** - Latest 100 requests with details
- **Error Logs Table** - All error-level logs
- **Top 10 Endpoints** - Most requested endpoints
- **Error & Warning Rate** - Error/warning trends over time

## Filters

The dashboard includes built-in filters:
- **App** - Filter by application (calorify-backend)
- **Environment** - Filter by environment (development, staging, production)
- **HTTP Method** - Filter by GET, POST, PUT, DELETE, etc.
- **Status Code** - Filter by HTTP status codes

## Log Queries

You can also write custom LogQL queries in Grafana's Explore view:

```logql
# All requests
{app="calorify-backend"}

# Requests to specific endpoint
{app="calorify-backend"} |= "/api/v1/food"

# Error logs only
{app="calorify-backend", level="error"}

# Slow requests (>1s)
{app="calorify-backend"} | json | responseTime > 1000

# Requests by status code
sum by (statusCode) (count_over_time({app="calorify-backend"} [5m]))
```

## Configuration Files

- `promtail-config.yml` - Promtail configuration for collecting logs
- `grafana-datasources/datasource.yml` - Loki datasource configuration
- `grafana-dashboards/dashboard.yml` - Dashboard provisioning config
- `grafana-dashboards/api-logs-dashboard.json` - Pre-configured dashboard

## Environment Variables

Add to your `production.env` and `staging.env`:
```bash
LOKI_URL=http://loki:3100
```

## Troubleshooting

1. **Dashboard not showing logs:**
   - Check that Loki is running: `docker-compose ps loki`
   - Check logs: `docker-compose logs loki`
   - Verify LOKI_URL is set in your environment

2. **Grafana not accessible:**
   - Check Grafana logs: `docker-compose logs grafana`
   - Verify port 3000 is not in use

3. **No logs appearing:**
   - Ensure backend is connected to the same Docker network
   - Check backend logs for connection errors
   - Verify pino-loki transport is working

## Data Retention

By default, Loki retains logs for 168 hours (7 days). To change this, modify the Loki configuration or add retention policies in Grafana.
