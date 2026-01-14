#!/bin/bash

# ============================================================================
# Project discovery utilities (shared between scripts)
# ============================================================================

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

# Find all directories that contain a pubspec.yaml
# Usage:
#   find_pubspec_projects [max_depth]
# Prints one project path per line, relative to git root (no leading ./)
find_pubspec_projects() {
    local max_depth="${1:-3}"

    while IFS= read -r -d '' file; do
        local project_dir
        project_dir=$(dirname "$file")
        # Normalize (remove leading ./)
        project_dir="${project_dir#./}"
        echo "$project_dir"
    done < <(find . -maxdepth "$max_depth" -name "pubspec.yaml" -type f -print0 2>/dev/null)
}

