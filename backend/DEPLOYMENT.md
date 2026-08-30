# Backend deployment and operations

This is the canonical runbook for the Calorify backend deployment. Other
READMEs link here instead of duplicating release or VM instructions.

## Current topology

Staging and production run the same container image on one VM, with isolated
application data and one shared, read-only USDA reference database:

```text
GitHub Actions ──publish──> ghcr.io/thecodepapaya/calorify-backend
       │
       ├──automatic sha-*───> backend-staging ──> db-staging
       │                              └──────────> db-usda (reader)
       │
       └──manual sha-*──────> backend-prod ─────> db-prod
                                      └──────────> db-usda (reader)

USDA maintenance container ─────────────────────> db-usda (owner)
```

| Service | Purpose | Host exposure | Persistent volume |
| --- | --- | --- | --- |
| `backend-prod` | Production API | `8000` | None |
| `backend-staging` | Staging API | `8001` | None |
| `db-prod` | Production application and user data | None | `postgres_data_prod` |
| `db-staging` | Staging application and user data | `127.0.0.1:5433` | `postgres_data_staging` |
| `db-usda` | Shared USDA reference data | None | `postgres_data_usda` |
| `loki` | Shared log storage | `127.0.0.1:3100` | `loki_data` |
| `promtail` | Docker log collection | None | None |
| `grafana` | Log dashboards | `127.0.0.1:3000` | `grafana_data` |

All services use the private `calorify-network` Compose network. The two API
containers receive separate `DATABASE_URL` values and the same
`USDA_DATABASE_URL`. PostgreSQL grants the API role USDA `SELECT` access only.
The USDA owner credential is passed only to the one-off maintenance container.

Application migrations live directly under `migrations/`. USDA-only migrations
live under `migrations/usda/`; API startup never migrates or imports the shared
USDA database.

## Release flow

The backend follows build-once, deploy-many:

1. A backend-related push to `main` starts
   `Backend / Publish and deploy staging`.
2. GitHub runs dependency installation, type-checking, linting, coverage tests,
   and a production Docker build.
3. GitHub builds the VM's required `linux/arm64` image and publishes it as
   `sha-<full-commit-sha>` in GHCR.
4. The workflow automatically deploys that commit's immutable `sha-*` tag to
   staging.
5. Production is deployed by manually running `Backend / Deploy production`
   with the exact full `sha-<40 lowercase hex characters>` tag.

Both targets reject moving or shortened tags. The publisher does not create a
mutable `latest` tag.

The VM never pulls source code. Each deployment transfers only:

- `docker-compose.yml`;
- `scripts/deploy-container.sh`;
- `postgres/usda-init.sh`;
- the `loki/` runtime configuration.

The VM then pulls the selected image from GHCR and starts it with
`docker compose --no-build`. Runtime env files, database volumes, and
credentials remain on the VM and are never copied back to GitHub.

The API version reported by `GET /` comes only from `backend/package.json`
bundled in the immutable image. Runtime env files must not define a separate
application version.

## GitHub configuration

Both deployment jobs use the GitHub deployment environment named `production`
because both targets use the same VM. They share one local deployment action,
and the environment secrets are resolved in each calling job. The environment
permits only `main` and contains:

- `CALORIFY_SSH_HOST`
- `CALORIFY_SSH_PORT` (optional; defaults to `22`)
- `CALORIFY_SSH_USER`
- `CALORIFY_SSH_PRIVATE_KEY`
- `CALORIFY_SSH_KNOWN_HOSTS`
- `CALORIFY_DEPLOY_PATH` (the parent of the VM's `backend` directory)

The workflow's short-lived `GITHUB_TOKEN` publishes and reads GHCR images. It
is streamed through SSH for `docker login`, stored in a temporary Docker config,
and removed when deployment finishes. The VM has no permanent GHCR credential.

## VM runtime contract

The deployment user needs Docker Compose v2 plus direct Docker access or
passwordless `sudo docker`. The runtime directory contains configuration, not a
Git checkout:

```text
backend/
├── .env
├── production.env
├── staging.env
├── firebase-adminsdk.json
├── docker-compose.yml
├── scripts/deploy-container.sh
├── postgres/usda-init.sh
└── loki/...
```

The ignored `.env` contains Compose-level values, including database passwords,
the USDA owner/reader passwords, and Grafana credentials. `production.env` and
`staging.env` contain environment-specific application settings and their own
application `DATABASE_URL`. The shared USDA URL is constructed by Compose.

On-device meal-analysis rollout settings are defined together in the
`LOCAL_INFERENCE` section of `src/config.ts` and may be overridden by the
corresponding `LOCAL_INFERENCE_*` values in each runtime env file. Capability
responses fail closed unless the request's `X-Calorify-App-Build` header is at
least the build configured by
`LOCAL_INFERENCE_MIN_APP_BUILD`. The version header is informational and is not
used for rollout eligibility.

The Firebase service account is mounted read-only at `/run/secrets`. The image
entrypoint copies it to a private in-container path, exports that path, and then
drops from root to the `node` user. The USDA maintenance service runs directly
as `node` and does not receive Firebase credentials.

Never commit or print env files, service-account JSON, database passwords,
provider keys, SSH keys, or pre-authenticated storage URLs.

The visual meal-analysis inspector at `/analysis-history` is disabled until
`ANALYSIS_HISTORY_PASSWORD` is set in the target runtime env file. Use a unique,
long password and access it only through HTTPS with Basic username `calorify`.

## Deployment and rollback mechanics

`deploy-container.sh` performs the following guarded sequence:

1. Validate the environment and image-tag policy.
2. Validate required runtime files and Compose configuration.
3. Authenticate temporarily to GHCR and pull the image.
4. Tag the currently running image as the environment rollback image.
5. Recreate only the selected API service and required dependencies without a
   local build.
6. Wait for container health and then `GET /ready`.
7. If readiness fails, restore the previous image and emit container, health,
   application-log, and migration diagnostics.

`GET /health` proves process liveness. `GET /ready` additionally requires the
environment application database and a complete active USDA snapshot.

Application migrations run during API startup and are not reversed by an image
rollback. Keep migrations backward-compatible with at least the previously
deployed image. An automated failed-deployment rollback uses the local rollback
tag immediately; an older manual rollback should use an immutable GHCR `sha-*`
tag.

The direct daily AI-summary release is a coordinated exception because
`z20260825b_drop_ai_summary_batches.sql` removes the retired batch table. Before
deploying that image, stop the legacy summary cron and confirm every previously
submitted OpenAI batch is terminal. `OPENROUTER_AI_SUMMARY_MODEL` defaults to
`openai/gpt-5.6-luna`, which supports strict structured output. Override it only
with another model that preserves that contract. Do not deploy the cleanup
migration while a legacy batch still needs polling or reconciliation.

## USDA database lifecycle

`db-usda` is the only database containing USDA rows. Production and staging app
databases must not contain `usda_foods` or `usda_dataset_version`.

The first database initialization creates:

- `calorify_usda_owner`, used for schema migrations and imports;
- `calorify_usda_reader`, granted connection, schema usage, and table `SELECT`
  only, with `default_transaction_read_only` enabled.

To apply USDA schema migrations without importing a dataset, run this from the
VM runtime directory with an immutable backend image:

```bash
BACKEND_IMAGE=ghcr.io/thecodepapaya/calorify-backend:sha-<full-commit-sha> \
docker compose --profile maintenance run --rm usda-migrate
```

To bootstrap or activate a new FoodData Central release, run:

```bash
BACKEND_IMAGE=ghcr.io/thecodepapaya/calorify-backend:sha-<full-commit-sha> \
docker compose --profile maintenance run --rm \
  -e USDA_DATASET_VERSION=usda-YYYY-MM-DD \
  -e USDA_SOURCE_RELEASE_DATE=YYYY-MM-DD \
  -e USDA_ZIP_URL=https://fdc.nal.usda.gov/path/to/release.zip \
  usda-maintenance
```

Use the VM's normal Docker privilege mechanism if it requires `sudo`.
`usda-migrate` applies only USDA migrations and never downloads data.
`usda-maintenance` first applies USDA migrations, then skips download/import
when the requested version is already active; otherwise it downloads and stages
the CSV release in a temporary workspace and atomically replaces the snapshot.
Readers therefore see either the complete old release or the complete new one.

Verify the active snapshot without exposing credentials:

```bash
docker exec calorify-db-usda psql \
  -U calorify_usda_owner -d calorify_usda -At \
  -c "SELECT dataset_version, checksum, row_count FROM usda_dataset_version WHERE is_active AND is_materialized"
```

## Observability

Loki, Promtail, and Grafana are shared by both environments. Their runtime
configuration is transferred by every relevant deployment.

```bash
docker compose up -d loki grafana promtail
docker compose ps
docker compose logs -f loki grafana promtail
```

Grafana and Loki bind only to loopback. Use an authenticated reverse proxy for
remote access; do not expose either port directly. The provisioned dashboard
covers request rate, status codes, response latency, recent requests, errors,
and endpoint volume. Request and response bodies remain excluded from logs
because they can contain health data.

## Routine verification and storage maintenance

From the VM:

```bash
curl --fail http://127.0.0.1:8000/ready
curl --fail http://127.0.0.1:8001/ready

docker inspect --format \
  '{{.Name}} image={{.Config.Image}} state={{.State.Status}} health={{.State.Health.Status}}' \
  calorify-backend-prod calorify-backend-staging calorify-db-usda

docker compose --profile production config --quiet
docker compose --profile staging config --quiet
docker compose --profile maintenance config --quiet
```

The VM root crontab removes unused Docker images older than seven days every
Sunday at 03:00 in the VM timezone:

```cron
0 3 * * 0 /usr/bin/docker image prune -a -f --filter until=168h >/var/log/calorify-docker-prune.log 2>&1
```

Running containers and their images are not pruned. Old immutable images can be
pulled from GHCR again when needed. Do not use broad volume pruning: PostgreSQL,
Loki, Grafana, and rollback state live in named Docker volumes.
