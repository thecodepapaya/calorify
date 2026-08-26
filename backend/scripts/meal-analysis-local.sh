#!/usr/bin/env bash

set -euo pipefail

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
backend_dir="$(cd -- "$script_dir/.." && pwd)"
cd "$backend_dir"

compose=(docker compose -f docker-compose.yml -f docker-compose.local.yml)
meal_backend_image="${BACKEND_IMAGE:-calorify-backend-local:latest}"

fail() {
  echo "Error: $*" >&2
  exit 1
}

require_command() {
  command -v "$1" >/dev/null 2>&1 || fail "$1 is required"
}

prompt_default() {
  local prompt="$1"
  local default_value="$2"
  local answer
  read -r -p "$prompt [$default_value]: " answer
  printf '%s' "${answer:-$default_value}"
}

usda_snapshot_ready() {
  local ready_dataset

  ready_dataset="$(
    "${compose[@]}" --profile staging exec -T db-usda \
      psql -U calorify_usda_owner -d calorify_usda -Atc \
      "SELECT COUNT(*) FROM usda_dataset_version WHERE is_active = TRUE AND is_materialized = TRUE;"
  )"
  [[ "$ready_dataset" == "1" ]]
}

prepare_local_services() {
  echo
  echo "Preparing local meal-analysis dependencies..."

  if [[ ! -x node_modules/.bin/tsx ]]; then
    echo "Installing backend packages..."
    npm ci
  fi

  docker info >/dev/null 2>&1 || fail "Docker is not running"

  echo "Starting the local USDA database..."
  "${compose[@]}" --profile staging up -d --wait db-usda

  if usda_snapshot_ready; then
    echo "USDA snapshot is ready."
    return
  fi

  echo
  echo "No active materialized USDA snapshot is available."
  echo "This downloads roughly 480 MB and can take a while."
  local import_dataset
  read -r -p "Build and import it now? [Y/n]: " import_dataset
  case "${import_dataset:-y}" in
    y|Y|yes|YES)
      docker build --tag "$meal_backend_image" .
      BACKEND_IMAGE="$meal_backend_image" \
        "${compose[@]}" --profile maintenance run --rm usda-maintenance
      usda_snapshot_ready || fail "USDA maintenance finished without a ready V3 snapshot"
      ;;
    *)
      echo "Continuing without the rebuild; food runs will stop at nutrition resolution."
      ;;
  esac
}

collect_meal_input() {
  local input_choice
  local meal_text
  local image_path
  local origin_choice

  echo
  echo "Choose meal input:"
  echo "  1) Text"
  echo "  2) Image"
  read -r -p "Option [1]: " input_choice

  case "${input_choice:-1}" in
    1)
      read -r -p "Meal description: " meal_text
      [[ -n "${meal_text//[[:space:]]/}" ]] || fail "Meal description cannot be empty"
      cli_args+=(--text "$meal_text")
      ;;
    2)
      read -r -p "Image path: " image_path
      [[ -f "$image_path" ]] || fail "Image file does not exist: $image_path"
      echo "Image source:"
      echo "  1) Camera now"
      echo "  2) Gallery"
      read -r -p "Option [2]: " origin_choice
      case "${origin_choice:-2}" in
        1) cli_args+=(--image "$image_path" --image-origin CAMERA_NOW) ;;
        2) cli_args+=(--image "$image_path" --image-origin GALLERY) ;;
        *) fail "Choose image-source option 1 or 2" ;;
      esac
      ;;
    *) fail "Choose input option 1 or 2" ;;
  esac
}

collect_context() {
  local host_locale
  local host_time_zone
  local meal_locale
  local meal_country
  local locale_country
  local meal_time_zone

  host_locale="$(node -p "Intl.DateTimeFormat().resolvedOptions().locale")"
  host_time_zone="$(node -p "Intl.DateTimeFormat().resolvedOptions().timeZone")"
  meal_locale="$(prompt_default "Locale" "$host_locale")"
  locale_country="$(node -e "process.stdout.write(new Intl.Locale(process.argv[1]).region ?? '')" "$meal_locale")"

  if [[ -n "$locale_country" ]]; then
    meal_country="$(prompt_default "Country code" "$locale_country")"
  else
    read -r -p "Country code: " meal_country
    [[ -n "$meal_country" ]] || fail "Country code is required for a locale without a region"
  fi

  meal_time_zone="$(prompt_default "Time zone" "$host_time_zone")"
  cli_args+=(
    --locale "$meal_locale"
    --country-code "$meal_country"
    --time-zone "$meal_time_zone"
  )
}

collect_output_mode() {
  local output_choice
  echo
  echo "Output format:"
  echo "  1) Readable stages"
  echo "  2) NDJSON"
  read -r -p "Option [1]: " output_choice
  case "${output_choice:-1}" in
    1) ;;
    2) cli_args+=(--json) ;;
    *) fail "Choose output option 1 or 2" ;;
  esac
}

require_command node
require_command npm
require_command docker

node_major="$(node -p "Number(process.versions.node.split('.')[0])")"
(( node_major >= 22 )) || fail "Node.js 22 or newer is required"

cli_args=()
prepare_local_services
collect_meal_input
collect_context
collect_output_mode

echo
echo "Starting observable meal analysis..."
exec npm run --silent meal-analysis -- "${cli_args[@]}"
