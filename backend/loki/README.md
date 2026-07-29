# Local observability

The Compose stack includes Loki for log storage, Promtail for Docker log collection, and Grafana with a provisioned Calorify dashboard.

Set `GF_SECURITY_ADMIN_USER` and `GF_SECURITY_ADMIN_PASSWORD` in the ignored `backend/.env` file, then start the stack:

```bash
cd backend
docker compose up -d loki grafana promtail
```

Grafana listens on `127.0.0.1:3000` and Loki on `127.0.0.1:3100`. Do not expose either port directly to the internet. Use an authenticated reverse proxy if remote access is required.

The provisioned dashboard includes request rate, status codes, response latency, recent requests, errors, and endpoint volume. Configuration files live in:

- `loki-config.yaml`
- `promtail-config.yml`
- `grafana-datasources/`
- `grafana-dashboards/`

Useful commands:

```bash
docker compose ps
docker compose logs -f loki
docker compose logs -f grafana
docker compose logs -f promtail
```

Application request/response body logging is disabled by default. Enabling it can record personal meal data; use it only for bounded debugging and review retention/access controls first.
