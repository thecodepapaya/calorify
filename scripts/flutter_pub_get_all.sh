#!/bin/bash

# Source common utilities
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

# Store original directory
store_original_dir

# Change to git root directory
GIT_ROOT=$(change_to_git_root)

# Find all pubspec.yaml files up to 1 subdirectory level
print_header "Finding Flutter projects"

# Search in root and one level deep from git root
PROJECTS=()
while IFS= read -r -d '' file; do
    # Get relative path from git root and normalize (remove leading ./)
    project_dir=$(dirname "$file")
    project_dir="${project_dir#./}"  # Remove leading ./ if present
    PROJECTS+=("$project_dir")
done < <(find . -maxdepth 2 -name "pubspec.yaml" -type f -print0 2>/dev/null)

if [ ${#PROJECTS[@]} -eq 0 ]; then
    print_warning "No pubspec.yaml files found."
    exit 0
fi

echo -e "${BLUE}Found ${#PROJECTS[@]} project(s):${NC}"
for project in "${PROJECTS[@]}"; do
    print_item "$project"
done
echo ""

# Track results
SUCCESS=0
FAILED=0
FAILED_PROJECTS=()

# Run flutter pub get in each directory
for project in "${PROJECTS[@]}"; do
    # Display relative path from git root
    echo -e "${BOLD}${BLUE}${ARROW} ${project}${NC}"
    
    # Change to project directory (relative to git root) and run flutter pub get
    project_path="$GIT_ROOT/$project"
    if cd "$project_path" 2>/dev/null; then
        # Capture both stdout and stderr
        OUTPUT=$(run_command_silent flutter pub get)
        EXIT_CODE=$?
        
        if [ $EXIT_CODE -eq 0 ]; then
            print_success "Success"
            echo ""
            ((SUCCESS++))
        else
            print_error "Failed"
            print_compact_error "$OUTPUT"
            echo ""
            ((FAILED++))
            FAILED_PROJECTS+=("$project")
        fi
        
        # Return to git root directory
        cd "$GIT_ROOT" || exit 1
    else
        print_error "Cannot access directory"
        echo ""
        ((FAILED++))
        FAILED_PROJECTS+=("$project")
    fi
done

# Summary
print_summary_header
print_summary_success "$SUCCESS"
if [ $FAILED -gt 0 ]; then
    print_summary_failed "$FAILED"
    for failed in "${FAILED_PROJECTS[@]}"; do
        print_subitem "$failed"
    done
    exit 1
else
    print_summary_all_success "All projects updated successfully!"
    exit 0
fi
