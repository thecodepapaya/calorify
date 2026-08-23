# Backend container deployment

The backend uses one build-once, deploy-many container flow:

1. A backend-related push to `main` runs all backend checks.
2. GitHub Actions builds the Dockerfile's `production` target.
3. The image is published to GitHub Container Registry with both
   `sha-<full-commit-sha>` and the moving convenience tag `main`.
4. A manual staging or production workflow deploys an explicitly selected
   `sha-<full-commit-sha>` tag.
5. The VM pulls that image, starts it with Docker Compose, waits for readiness,
   and restores the previously running image if readiness fails.

Staging and production run the same image. Their runtime configuration remains
separate through `staging.env`, `production.env`, Compose environment values,
database volumes, and GitHub deployment environments.

## GitHub configuration

Create GitHub deployment environments named `staging` and `production`. Add
these secrets to each environment, using the values for that environment's VM:

- `CALORIFY_SSH_HOST`
- `CALORIFY_SSH_PORT` (optional; defaults to `22`)
- `CALORIFY_SSH_USER`
- `CALORIFY_SSH_PRIVATE_KEY`
- `CALORIFY_SSH_KNOWN_HOSTS`
- `CALORIFY_DEPLOY_PATH` (repository root on the VM)

Configure required reviewers on the `production` environment if deployment
approval is desired. The workflows use the repository `GITHUB_TOKEN` to publish
and inspect the package; no separate registry token is needed inside Actions.

## One-time VM configuration

The deployment user needs:

- access to the repository checkout at `CALORIFY_DEPLOY_PATH`;
- direct Docker access, or passwordless `sudo docker` access;
- Docker Compose v2;
- `backend/.env` with the Compose database and logging values;
- `backend/staging.env` or `backend/production.env` as applicable;
- `backend/firebase-adminsdk.json`;
- outbound HTTPS access to `ghcr.io`.

No permanent registry credential is stored on the VM. Each deployment sends
the workflow's short-lived, package-read `GITHUB_TOKEN` through SSH on standard
input. The deployment script uses an isolated Docker credential directory and
removes it when the deployment finishes.

The published image currently targets `linux/amd64`. Confirm each VM reports an
x86-64 architecture (`uname -m` normally prints `x86_64`) before the first
deployment. Add an ARM64 build target before deploying to an ARM VM.

## Releasing

After the `Publish backend container` workflow succeeds, copy the deploy tag
from its workflow summary. Run `Deploy backend to staging` with that exact tag.
After staging verification, run `Deploy backend to production` with the same
tag.

The `main` image tag is intentionally not accepted by deployment scripts. It is
useful for inspection only; release deployments must identify a specific source
commit.

## Rollbacks and migrations

Failed health checks automatically restore the image that was running before
the deployment. Database migrations run during backend startup and are not
reversed by an image rollback. Keep schema changes backward-compatible with at
least the previously deployed image.
