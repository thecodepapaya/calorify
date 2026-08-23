#!/usr/bin/env bash
set -euo pipefail

deployment_environment="${1:-}"
image_ref="${2:-}"

case "$deployment_environment" in
  production)
    profile="production"
    service="backend-prod"
    container_name="calorify-backend-prod"
    database_container_name="calorify-db-prod"
    database_name="calorify_prod"
    runtime_env_file="production.env"
    ;;
  staging)
    profile="staging"
    service="backend-staging"
    container_name="calorify-backend-staging"
    database_container_name="calorify-db-staging"
    database_name="calorify_staging"
    runtime_env_file="staging.env"
    ;;
  *)
    echo "Usage: $0 <staging|production> <ghcr-image-ref>" >&2
    exit 2
    ;;
esac

case "$deployment_environment" in
  production)
    if [[ ! "$image_ref" =~ ^ghcr\.io/[a-z0-9][a-z0-9._-]*/calorify-backend:sha-[0-9a-f]{40}$ ]]; then
      echo "Production requires a Calorify GHCR image tagged with sha- plus 40 lowercase hex characters" >&2
      exit 2
    fi
    ;;
  staging)
    if [[ ! "$image_ref" =~ ^ghcr\.io/[a-z0-9][a-z0-9._-]*/calorify-backend:latest$ ]]; then
      echo "Staging requires the Calorify GHCR latest tag" >&2
      exit 2
    fi
    ;;
esac

backend_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$backend_dir"

if [[ ! -f "$runtime_env_file" ]]; then
  echo "$runtime_env_file is missing in $backend_dir" >&2
  exit 1
fi
if ! grep -Eq '^OPENROUTER_API_KEY=.+$' "$runtime_env_file"; then
  echo "OPENROUTER_API_KEY must be set in $runtime_env_file before deployment" >&2
  exit 1
fi
if [[ ! -f firebase-adminsdk.json ]]; then
  echo "firebase-adminsdk.json is missing in $backend_dir" >&2
  exit 1
fi

docker_uses_sudo=false
if docker info >/dev/null 2>&1; then
  :
elif sudo -n docker info >/dev/null 2>&1; then
  docker_uses_sudo=true
else
  echo "Docker is unavailable; grant this deployment user direct Docker access or passwordless sudo for Docker" >&2
  exit 1
fi

run_docker() {
  if [[ "$docker_uses_sudo" == true ]]; then
    local environment_args=(env)
    if [[ -n "${DOCKER_CONFIG:-}" ]]; then
      environment_args+=("DOCKER_CONFIG=$DOCKER_CONFIG")
    fi
    if [[ -n "${BACKEND_IMAGE:-}" ]]; then
      environment_args+=("BACKEND_IMAGE=$BACKEND_IMAGE")
    fi
    if [[ -n "${FIREBASE_SERVICE_ACCOUNT_PATH_OVERRIDE:-}" ]]; then
      environment_args+=("FIREBASE_SERVICE_ACCOUNT_PATH_OVERRIDE=$FIREBASE_SERVICE_ACCOUNT_PATH_OVERRIDE")
    fi
    sudo -n "${environment_args[@]}" docker "$@"
  else
    docker "$@"
  fi
}

show_container_diagnostics() {
  echo "Diagnostics for $container_name:" >&2
  run_docker container inspect --format \
    'status={{.State.Status}} running={{.State.Running}} exit_code={{.State.ExitCode}} oom_killed={{.State.OOMKilled}} health={{if .State.Health}}{{.State.Health.Status}}{{else}}none{{end}} error={{json .State.Error}}' \
    "$container_name" >&2 || true
  echo "Recent health-check output:" >&2
  run_docker container inspect --format \
    '{{if .State.Health}}{{range .State.Health.Log}}{{println .End "exit_code=" .ExitCode .Output}}{{end}}{{else}}No container health check is configured.{{end}}' \
    "$container_name" >&2 || true
  echo "Recent application logs:" >&2
  run_docker logs --tail 120 "$container_name" >&2 || true
  echo "Recorded database migrations (checksum_set does not expose checksum values):" >&2
  run_docker exec "$database_container_name" psql \
    --username calorify --dbname "$database_name" --tuples-only --no-align \
    --command "SELECT name, checksum IS NOT NULL AS checksum_set FROM schema_migrations ORDER BY name" \
    >&2 || true
}

wait_for_readiness() {
  local attempt
  for attempt in {1..30}; do
    if run_docker exec --user node "$container_name" node -e \
      "fetch('http://localhost:8000/ready', { signal: AbortSignal.timeout(4000) }).then((response) => process.exit(response.status === 200 ? 0 : 1)).catch(() => process.exit(1))"; then
      return 0
    fi
    sleep 5
  done
  echo "$container_name did not become ready within 150 seconds" >&2
  return 1
}

registry_config_dir=""
cleanup_registry_auth() {
  if [[ -n "$registry_config_dir" && -d "$registry_config_dir" ]]; then
    rm -rf -- "$registry_config_dir"
  fi
}

if [[ -n "${GHCR_USERNAME:-}" ]]; then
  registry_config_dir="$(mktemp -d)"
  export DOCKER_CONFIG="$registry_config_dir"
  trap cleanup_registry_auth EXIT

  IFS= read -r ghcr_token
  if [[ -z "$ghcr_token" ]]; then
    echo "GHCR token was not provided on standard input" >&2
    exit 1
  fi
  printf '%s' "$ghcr_token" | run_docker login ghcr.io \
    --username "$GHCR_USERNAME" --password-stdin >/dev/null
  unset ghcr_token
fi

export BACKEND_IMAGE="$image_ref"
run_docker compose --profile "$profile" config --quiet

previous_image_id="$(
  run_docker container inspect --format '{{.Image}}' "$container_name" 2>/dev/null || true
)"
rollback_image="calorify-backend-$deployment_environment:rollback"
if [[ -n "$previous_image_id" ]]; then
  run_docker image tag "$previous_image_id" "$rollback_image"
fi

run_docker pull "$image_ref"

if run_docker compose --profile "$profile" up \
  -d --no-build --force-recreate --wait --wait-timeout 180 "$service" \
  && wait_for_readiness; then
  echo "Calorify $deployment_environment backend deployed successfully: $image_ref"
  run_docker image prune --force >/dev/null
  exit 0
fi

echo "Calorify $deployment_environment deployment failed health checks" >&2
show_container_diagnostics
if [[ -n "$previous_image_id" ]]; then
  echo "Restoring the previous backend image: $rollback_image" >&2
  export BACKEND_IMAGE="$rollback_image"
  export FIREBASE_SERVICE_ACCOUNT_PATH_OVERRIDE="/app/firebase-service-account.json"
  if run_docker compose --profile "$profile" up \
    -d --no-build --force-recreate --wait --wait-timeout 180 "$service"; then
    echo "Rollback completed successfully" >&2
  else
    echo "Rollback also failed; inspect $container_name and its dependencies immediately" >&2
    show_container_diagnostics
  fi
else
  echo "No distinct previous image was available for rollback" >&2
fi
exit 1
