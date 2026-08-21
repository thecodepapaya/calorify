#!/bin/bash

# Source common utilities
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"
source "$SCRIPT_DIR/project_utils.sh"

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
# Clean Python Build Artifacts
# ============================================================================

clean_python_artifacts() {
    local project_dir="$1"
    local project_path="$GIT_ROOT/$project_dir"
    
    if [ ! -d "$project_path" ]; then
        return 0
    fi
    
    print_step "2" "Cleaning Python artifacts in $project_dir"
    
    cd "$project_path" || return 1
    
    # __pycache__ directories
    while IFS= read -r -d '' dir; do
        if rm -rf "$dir" 2>/dev/null; then
            CLEANED_ITEMS+=("$project_dir/$dir")
            print_subitem "Removed $dir"
        else
            FAILED_ITEMS+=("$project_dir/$dir")
        fi
    done < <(find . -type d -name "__pycache__" -print0 2>/dev/null)
    
    # .pyc and .pyo files
    while IFS= read -r -d '' file; do
        if rm -f "$file" 2>/dev/null; then
            CLEANED_ITEMS+=("$project_dir/$file")
            print_subitem "Removed $file"
        else
            FAILED_ITEMS+=("$project_dir/$file")
        fi
    done < <(find . -type f \( -name "*.pyc" -o -name "*.pyo" \) -print0 2>/dev/null)
    
    # .pytest_cache
    if [ -d ".pytest_cache" ]; then
        if rm -rf ".pytest_cache" 2>/dev/null; then
            CLEANED_ITEMS+=("$project_dir/.pytest_cache/")
            print_subitem "Removed .pytest_cache/ directory"
        else
            FAILED_ITEMS+=("$project_dir/.pytest_cache/")
        fi
    fi
    
    # .mypy_cache
    if [ -d ".mypy_cache" ]; then
        if rm -rf ".mypy_cache" 2>/dev/null; then
            CLEANED_ITEMS+=("$project_dir/.mypy_cache/")
            print_subitem "Removed .mypy_cache/ directory"
        else
            FAILED_ITEMS+=("$project_dir/.mypy_cache/")
        fi
    fi
    
    # .coverage and coverage.xml
    for file in ".coverage" "coverage.xml" "htmlcov"; do
        if [ -e "$file" ]; then
            if rm -rf "$file" 2>/dev/null; then
                CLEANED_ITEMS+=("$project_dir/$file")
                print_subitem "Removed $file"
            else
                FAILED_ITEMS+=("$project_dir/$file")
            fi
        fi
    done
    
    # dist/ and build/ directories (setuptools)
    for dir in "dist" "build"; do
        if [ -d "$dir" ]; then
            if rm -rf "$dir" 2>/dev/null; then
                CLEANED_ITEMS+=("$project_dir/$dir/")
                print_subitem "Removed $dir/ directory"
            else
                FAILED_ITEMS+=("$project_dir/$dir/")
            fi
        fi
    done
    
    # .egg-info directories
    while IFS= read -r -d '' dir; do
        if rm -rf "$dir" 2>/dev/null; then
            CLEANED_ITEMS+=("$project_dir/$dir")
            print_subitem "Removed $dir"
        else
            FAILED_ITEMS+=("$project_dir/$dir")
        fi
    done < <(find . -type d -name "*.egg-info" -print0 2>/dev/null)
    
    # .tox directory (if exists)
    if [ -d ".tox" ]; then
        if rm -rf ".tox" 2>/dev/null; then
            CLEANED_ITEMS+=("$project_dir/.tox/")
            print_subitem "Removed .tox/ directory"
        else
            FAILED_ITEMS+=("$project_dir/.tox/")
        fi
    fi
    
    cd "$GIT_ROOT" || return 1
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

# Clean Python artifacts in backend directory
if [ -d "$GIT_ROOT/backend" ]; then
    clean_python_artifacts "backend"
fi

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
