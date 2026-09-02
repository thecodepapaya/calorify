#!/bin/bash

# Compatibility entry point for release notes supplied by a person or file.
# All validation, staging, and writes live in the canonical
# generate_release_notes.sh implementation.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CANONICAL_SCRIPT="$SCRIPT_DIR/generate_release_notes.sh"

case "${1:-}" in
    "")
        # Preserve the legacy no-argument behavior: validate and rewrite the
        # current version's existing English changelog.
        exec "$CANONICAL_SCRIPT" --use-existing-english --overwrite
        ;;
    --file|-f)
        if [ -z "${2:-}" ]; then
            printf 'Error: --file requires a path\n' >&2
            exit 1
        fi
        exec "$CANONICAL_SCRIPT" --file "$2" "${@:3}"
        ;;
    --locale|-l)
        if [ -z "${2:-}" ] || [ -z "${3:-}" ]; then
            printf 'Error: --locale requires a locale and English text\n' >&2
            exit 1
        fi
        exec "$CANONICAL_SCRIPT" --locale "$2" --text "$3" "${@:4}"
        ;;
    *)
        exec "$CANONICAL_SCRIPT" --text "$1" "${@:2}"
        ;;
esac
