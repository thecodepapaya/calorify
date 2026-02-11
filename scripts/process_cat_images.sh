#!/bin/bash

set -euo pipefail

# ============================================================================
# Cat image processing helper
# - Uses remove.bg CLI to remove backgrounds (free preview tier)
# - Ensures final PNGs fit within a 500x500 canvas with transparent background
# ============================================================================

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

# Load shared helpers (colors, print_*, check_command, etc.)
# If common.sh is missing for some reason, we still want the script to work,
# so sourcing is best-effort.
if [[ -f "${SCRIPT_DIR}/common.sh" ]]; then
  # shellcheck source=/dev/null
  source "${SCRIPT_DIR}/common.sh"
else
  # Fallback minimal helpers
  print_info()    { echo "ℹ $*"; }
  print_success() { echo "✓ $*"; }
  print_error()   { echo "✗ $*" >&2; }
fi

usage() {
  cat <<EOF
Process cat images for the grass easter egg.

This script:
  - Uses remove.bg CLI to strip backgrounds (free preview tier: --size preview)
  - Outputs transparent PNGs that fit within a 500x500 canvas

Usage:
  $(basename "$0") <input_dir> <output_dir> [base_name] [start_index]

Arguments:
  input_dir   Directory containing source images (JPG/PNG)
  output_dir  Directory where processed PNGs will be written
  base_name   Optional base name for numbered outputs (default: keep filename)
              When provided, files will be named: <base_name><index>.png
  start_index Optional starting index for numbering (default: 1)

Environment:
  REMOVE_BG_API_KEY   Your remove.bg API key (required)

Examples:
  # Simple: keep filenames (foo.jpg -> foo-processed.png)
  $(basename "$0") ./cat_images_raw ./app/assets/images

  # Numbered: cat8.png, cat9.png, ...
  $(basename "$0") ./cat_images_raw ./app/assets/images cat 8
EOF
}

main() {
  if [[ $# -lt 2 ]]; then
    print_error "Missing required arguments."
    usage
    exit 1
  fi

  local input_dir="$1"
  local output_dir="$2"
  local base_name="${3:-}"
  local start_index="${4:-1}"

  if [[ ! -d "$input_dir" ]]; then
    print_error "Input directory does not exist: $input_dir"
    exit 1
  fi

  if [[ -z "${REMOVE_BG_API_KEY:-}" ]]; then
    print_error "Environment variable REMOVE_BG_API_KEY is not set."
    print_error "Get your API key from https://www.remove.bg/profile#api-key"
    exit 1
  fi

  mkdir -p "$output_dir"

  # Prefer shared helper check_command if available
  if command -v check_command >/dev/null 2>&1; then
    check_command removebg || exit 1
    check_command convert || {
      print_error "ImageMagick 'convert' command is required. Install via 'brew install imagemagick'."
      exit 1
    }
  else
    command -v removebg >/dev/null 2>&1 || {
      print_error "'removebg' CLI not found. Install via Homebrew:"
      print_error "  brew install remove-bg/homebrew-tap/removebg"
      exit 1
    }
    command -v convert >/dev/null 2>&1 || {
      print_error "'convert' (ImageMagick) not found. Install via Homebrew:"
      print_error "  brew install imagemagick"
      exit 1
    }
  fi

  print_info "Input directory:  $input_dir"
  print_info "Output directory: $output_dir"
  if [[ -n "$base_name" ]]; then
    print_info "Using numbered output: ${base_name}<index>.png (starting at $start_index)"
  else
    print_info "Keeping original filenames with '-processed' suffix."
  fi

  local tmp_dir
  tmp_dir="$(mktemp -d "${TMPDIR:-/tmp}/cat_process.XXXXXX")"

  # Clean up temp directory on exit
  cleanup() {
    rm -rf "$tmp_dir"
  }
  trap cleanup EXIT

  # Collect input images (png/jpg), safely even if none match.
  local -a files=()
  shopt -s nullglob
  files=("$input_dir"/*.{png,PNG,jpg,JPG,jpeg,JPEG})
  shopt -u nullglob

  if [[ ${#files[@]} -eq 0 ]]; then
    print_error "No PNG/JPG images found in: $input_dir"
    exit 1
  fi

  local index="$start_index"
  local processed_count=0

  for file in "${files[@]}"; do
    if [[ ! -f "$file" ]]; then
      continue
    fi

    local filename
    filename="$(basename "$file")"
    print_info "Processing: $filename"

    # Step 1: remove background using free preview size
    # --size preview keeps us in the 0.25 MP free tier.
    removebg \
      --size preview \
      --format png \
      --output-directory "$tmp_dir" \
      "$file"

    local base_no_ext="${filename%.*}"
    local bg_removed="${tmp_dir}/${base_no_ext}.png"

    if [[ ! -f "$bg_removed" ]]; then
      print_error "removebg did not produce expected output for: $filename"
      continue
    fi

    # Step 2: resize to fit within 500x500 and center on 500x500 transparent canvas.
    local out_name
    if [[ -n "$base_name" ]]; then
      out_name="${base_name}${index}.png"
    else
      out_name="${base_no_ext}-processed.png"
    fi

    local final_path="${output_dir}/${out_name}"

    convert "$bg_removed" \
      -resize 500x500 \
      -gravity center \
      -background none \
      -extent 500x500 \
      "$final_path"

    print_success "Created: ${final_path#$ROOT_DIR/}"

    processed_count=$((processed_count + 1))
    index=$((index + 1))
  done

  if [[ $processed_count -eq 0 ]]; then
    print_error "No images were processed."
    exit 1
  else
    print_success "Processed $processed_count image(s) successfully."
  fi
}

main "$@"

