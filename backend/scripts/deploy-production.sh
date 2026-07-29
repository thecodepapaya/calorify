#!/usr/bin/env bash
set -euo pipefail

backend_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$backend_dir"

if [[ ! -f production.env ]]; then
  echo "production.env is missing in $backend_dir" >&2
  exit 1
fi
if ! grep -Eq '^OPENROUTER_API_KEY=.+$' production.env; then
  echo "OPENROUTER_API_KEY must be set in production.env before deployment" >&2
  exit 1
fi
if [[ ! -f firebase-adminsdk.json ]]; then
  echo "firebase-adminsdk.json is missing in $backend_dir" >&2
  exit 1
fi

docker compose --profile production config --quiet

rollback_available=false
if docker image inspect calorify-backend-prod:latest >/dev/null 2>&1; then
  docker tag calorify-backend-prod:latest calorify-backend-prod:rollback
  rollback_available=true
fi

if docker compose --profile production up \
  -d --build --no-deps --wait --wait-timeout 120 backend-prod; then
  echo "Calorify production backend deployed successfully"
  exit 0
fi

echo "Deployment failed health checks" >&2
if [[ "$rollback_available" == true ]]; then
  echo "Restoring the previous backend image" >&2
  docker tag calorify-backend-prod:rollback calorify-backend-prod:latest
  docker compose --profile production up \
    -d --no-deps --force-recreate --wait --wait-timeout 120 backend-prod
fi
exit 1
