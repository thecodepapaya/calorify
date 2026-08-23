#!/usr/bin/env bash
set -euo pipefail

deployment_environment="${1:-}"
image_ref="${2:-}"

case "$deployment_environment" in
  production)
    profile="production"
    service="backend-prod"
    container_name="calorify-backend-prod"
    runtime_env_file="production.env"
    ;;
  staging)
    profile="staging"
    service="backend-staging"
    container_name="calorify-backend-staging"
    runtime_env_file="staging.env"
    ;;
  *)
    echo "Usage: $0 <staging|production> <ghcr-image-ref>" >&2
    exit 2
    ;;
esac

if [[ ! "$image_ref" =~ ^ghcr\.io/[a-z0-9][a-z0-9._-]*/calorify-backend:sha-[0-9a-f]{40}$ ]]; then
  echo "Image must be a Calorify GHCR image with a full commit-specific tag (sha- plus 40 lowercase hex characters)" >&2
  exit 2
fi

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
    sudo -n "${environment_args[@]}" docker "$@"
  else
    docker "$@"
  fi
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
run_docker pull "$image_ref"

previous_image="$(
  run_docker container inspect --format '{{.Config.Image}}' "$container_name" 2>/dev/null || true
)"

if run_docker compose --profile "$profile" up \
  -d --no-build --force-recreate --wait --wait-timeout 180 "$service"; then
  echo "Calorify $deployment_environment backend deployed successfully: $image_ref"
  exit 0
fi

echo "Calorify $deployment_environment deployment failed health checks" >&2
if [[ -n "$previous_image" && "$previous_image" != "$image_ref" ]]; then
  echo "Restoring the previous backend image: $previous_image" >&2
  export BACKEND_IMAGE="$previous_image"
  if run_docker compose --profile "$profile" up \
    -d --no-build --force-recreate --wait --wait-timeout 180 "$service"; then
    echo "Rollback completed successfully" >&2
  else
    echo "Rollback also failed; inspect $container_name and its dependencies immediately" >&2
  fi
else
  echo "No distinct previous image was available for rollback" >&2
fi
exit 1
