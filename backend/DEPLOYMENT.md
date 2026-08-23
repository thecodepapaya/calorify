# Backend container deployment

The backend uses one build-once, deploy-many container flow:

1. A backend-related push to `main` runs all backend checks.
2. GitHub Actions builds the Dockerfile's `production` target.
3. The image is published to GitHub Container Registry with both
   `sha-<full-commit-sha>` and the moving tag `latest`.
4. The same workflow automatically deploys `latest` to staging.
5. Production is deployed manually with an explicitly selected immutable
   `sha-<full-commit-sha>` tag.
6. The VM pulls that image, starts it with Docker Compose, waits for readiness,
   and restores the previously running image if readiness fails.

Staging and production run the same image on the same VM. Their user and
application data remain isolated in `calorify_staging` and `calorify_prod`.
Both APIs read the same imported reference rows from `calorify_usda` through a
database role that cannot write. A separate owner role is available only to the
one-off USDA maintenance container.

## GitHub configuration

The GitHub deployment environment is named `production`. Both deployment
workflows use it because both targets share one VM. It contains these secrets:

- `CALORIFY_SSH_HOST`
- `CALORIFY_SSH_PORT` (optional; defaults to `22`)
- `CALORIFY_SSH_USER`
- `CALORIFY_SSH_PRIVATE_KEY`
- `CALORIFY_SSH_KNOWN_HOSTS`
- `CALORIFY_DEPLOY_PATH` (parent of the VM's `backend` runtime directory)

The environment permits only the `main` branch. Configure required reviewers if
the repository's GitHub plan supports them and deployment approval is desired.
The workflows use the repository `GITHUB_TOKEN` to publish and inspect the
package; no separate registry token is needed inside Actions.

## One-time VM configuration

The deployment user needs:

- direct Docker access, or passwordless `sudo docker` access;
- Docker Compose v2;
- `backend/.env` with the Compose database and logging values;
- `backend/staging.env` or `backend/production.env` as applicable;
- `backend/firebase-adminsdk.json`;
- outbound HTTPS access to `ghcr.io`.

The VM does not need a Git checkout. Each deployment copies only the Compose
file and deployment script into `CALORIFY_DEPLOY_PATH/backend`; runtime env
files and credentials remain on the VM.

No permanent registry credential is stored on the VM. Each deployment sends
the workflow's short-lived, package-read `GITHUB_TOKEN` through SSH on standard
input. The deployment script uses an isolated Docker credential directory and
removes it when the deployment finishes.

The published image supports both `linux/amd64` and `linux/arm64`, so the same
commit-specific tag can be deployed to either VM architecture.

`backend/.env` also contains `POSTGRES_USDA_PASSWORD` for the maintenance owner
and `USDA_READER_PASSWORD` for the API reader. Compose constructs
`USDA_DATABASE_URL` for each API; owner credentials are never passed to the API
containers.

## Releasing

Every successful `Publish backend container` run deploys `latest` to staging.
After staging verification, run `Deploy backend to production` with the exact
`sha-<full-commit-sha>` tag shown in the publish summary. Production rejects
moving tags.

## Rollbacks and migrations

Docker liveness uses `GET /health`, including during rollback to an older image.
The deployment is only successful after `GET /ready` confirms PostgreSQL and the
active USDA dataset are ready. Failed checks automatically restore the image that
was running before the deployment. Database migrations run during backend startup
and are not reversed by an image rollback. Keep schema changes backward-compatible
with at least the previously deployed image.

## USDA database lifecycle

USDA schema migrations live under `migrations/usda`; ordinary application
migrations do not create USDA tables in the staging or production databases.
Application startup checks the shared dataset but never imports or changes it.

To bootstrap or move to a new FoodData Central release, run the maintenance
container with an immutable published image and the release metadata:

```bash
BACKEND_IMAGE=ghcr.io/thecodepapaya/calorify-backend:sha-<full-commit-sha> \
docker compose --profile maintenance run --rm \
  -e USDA_DATASET_VERSION=usda-YYYY-MM-DD \
  -e USDA_SOURCE_RELEASE_DATE=YYYY-MM-DD \
  -e USDA_ZIP_URL=https://fdc.nal.usda.gov/path/to/release.zip \
  usda-maintenance
```

The importer downloads and materializes a release only when that requested
version is not already active. Replacement remains atomic, so API readers see
either the complete old snapshot or the complete new snapshot.

The Firebase credential stays read-only on the VM. The container entrypoint copies
it to a private in-container file, then drops privileges to the `node` user before
starting the application.
