#!/bin/bash

# Run build_runner in all projects that declare it as a dependency/dev_dependency

# Source common utilities and project discovery helpers
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"
source "$SCRIPT_DIR/project_utils.sh"

# Store original directory
store_original_dir

# Change to git root directory. Calling the helper directly matters: command
# substitution would run its `cd` in a subshell.
change_to_git_root
GIT_ROOT="$PWD"

print_header "Finding Flutter/Dart projects with build_runner"

# Discover all projects with pubspec.yaml
PROJECTS=()
while IFS= read -r project; do
    [ -n "$project" ] && PROJECTS+=("$project")
done < <(find_pubspec_projects 3)

if [ ${#PROJECTS[@]} -eq 0 ]; then
    print_warning "No pubspec.yaml files found."
    exit 0
fi

echo -e "${BLUE}Found ${#PROJECTS[@]} project(s) with pubspec.yaml:${NC}"
for project in "${PROJECTS[@]}"; do
    print_item "$project"
done
echo ""

# Track results
SUCCESS=0
FAILED=0
SKIPPED=0
FAILED_PROJECTS=()

# Run build_runner in each directory that depends on it
for project in "${PROJECTS[@]}"; do
    echo -e "${BOLD}${BLUE}${ARROW} ${project}${NC}"

    project_path="$GIT_ROOT/$project"
    if cd "$project_path" 2>/dev/null; then
        if ! grep -q "build_runner" "pubspec.yaml"; then
            print_info "Skipping: no build_runner dependency found in pubspec.yaml"
            echo ""
            ((SKIPPED++))
            cd "$GIT_ROOT" || exit 1
            continue
        fi

        # Capture both stdout and stderr
        OUTPUT=$(run_command_silent flutter pub run build_runner build --delete-conflicting-outputs)
        EXIT_CODE=$?

        if [ $EXIT_CODE -eq 0 ]; then
            print_success "build_runner completed successfully"
            echo ""
            ((SUCCESS++))
        else
            print_error "build_runner failed"
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
print_summary_success "$SUCCESS" "Successful build_runner runs"
if [ $SKIPPED -gt 0 ]; then
    print_info "Skipped (no build_runner dependency): $SKIPPED"
fi
if [ $FAILED -gt 0 ]; then
    print_summary_failed "$FAILED" "Failed build_runner runs"
    for failed in "${FAILED_PROJECTS[@]}"; do
        print_subitem "$failed"
    done
    exit 1
else
    print_summary_all_success "build_runner completed successfully for all applicable projects!"
    exit 0
fi
