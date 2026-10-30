#!/bin/bash

# Source common utilities
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

# Store original directory
store_original_dir

# Change to git root directory
change_to_git_root
GIT_ROOT="$PWD"

print_header "Cleaning Build Artifacts"

# Track what was cleaned
CLEANED_ITEMS=()
FAILED_ITEMS=()

# ============================================================================
# Clean Flutter Build Artifacts
# ============================================================================

clean_flutter_artifacts() {
    local project_dir="$1"
    local project_path="$GIT_ROOT/$project_dir"
    
    if [ ! -d "$project_path" ]; then
        return 0
    fi
    
    # Check if pubspec.yaml exists (indicates a Flutter project)
    if [ ! -f "$project_path/pubspec.yaml" ]; then
        print_warning "$project_dir is not a Flutter project (no pubspec.yaml found)"
        return 0
    fi
    
    # Check if flutter command is available
    if ! command -v flutter &> /dev/null; then
        print_error "Flutter is not installed or not in PATH. Cannot clean $project_dir"
        FAILED_ITEMS+=("$project_dir (flutter command not found)")
        return 1
    fi
    
    print_step "1" "Cleaning Flutter project: $project_dir"
    
    cd "$project_path" || return 1
    
    # Use flutter clean command
    print_info "Running 'flutter clean' in $project_dir"
    OUTPUT=$(run_command_silent flutter clean)
    EXIT_CODE=$?
    
    if [ $EXIT_CODE -eq 0 ]; then
        CLEANED_ITEMS+=("$project_dir (flutter clean)")
        print_success "Cleaned $project_dir"
        cd "$GIT_ROOT" || return 1
        return 0
    else
        print_error "Failed to clean $project_dir"
        print_compact_error "$OUTPUT"
        FAILED_ITEMS+=("$project_dir (flutter clean failed)")
        cd "$GIT_ROOT" || return 1
        return 1
    fi
}

# ============================================================================
# Clean Go Build Artifacts
# ============================================================================
# Clean Go Build Artifacts
# ============================================================================

clean_backend_artifacts() {
    local project_path="$GIT_ROOT/backend"
    if [ ! -d "$project_path" ]; then
        return 0
    fi

    print_step "2" "Cleaning Go build artifacts in backend"
    if [ -d "$project_path/bin" ]; then
        if rm -rf "$project_path/bin" 2>/dev/null; then
            CLEANED_ITEMS+=("backend/bin/")
            print_subitem "Removed bin/ directory"
        else
            FAILED_ITEMS+=("backend/bin/")
        fi
    fi
    return 0
}

# ============================================================================
# Main Execution
# ============================================================================

# Find all Flutter projects (those with pubspec.yaml)
print_info "Discovering Flutter projects..."
FLUTTER_PROJECTS=()
while IFS= read -r project; do
    [ -n "$project" ] && FLUTTER_PROJECTS+=("$project")
done < <(find_pubspec_projects 4)

if [ ${#FLUTTER_PROJECTS[@]} -gt 0 ]; then
    echo -e "${BLUE}Found ${#FLUTTER_PROJECTS[@]} Flutter project(s):${NC}"
    for project in "${FLUTTER_PROJECTS[@]}"; do
        print_item "$project"
    done
    echo ""
    
    # Clean each Flutter project
    for project in "${FLUTTER_PROJECTS[@]}"; do
        clean_flutter_artifacts "$project"
    done
else
    print_warning "No Flutter projects found"
fi

# Clean Go artifacts in backend
clean_backend_artifacts

# Summary
print_summary_header

if [ ${#CLEANED_ITEMS[@]} -gt 0 ]; then
    print_success "Cleaned ${#CLEANED_ITEMS[@]} item(s)"
    for item in "${CLEANED_ITEMS[@]}"; do
        print_subitem "$item"
    done
else
    print_info "No build artifacts found to clean"
fi

if [ ${#FAILED_ITEMS[@]} -gt 0 ]; then
    print_error "Failed to clean ${#FAILED_ITEMS[@]} item(s)"
    for item in "${FAILED_ITEMS[@]}"; do
        print_subitem "$item"
    done
    exit 1
fi

if [ ${#CLEANED_ITEMS[@]} -eq 0 ] && [ ${#FAILED_ITEMS[@]} -eq 0 ]; then
    print_info "No build artifacts found"
    exit 0
fi

print_summary_all_success "All build artifacts cleaned successfully!"
exit 0
