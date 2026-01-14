#!/bin/bash

# ============================================================================
# Common utilities for beautified shell scripts
# ============================================================================

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
NC='\033[0m' # No Color
BOLD='\033[1m'
DIM='\033[2m'

# Icons
CHECK="✓"
CROSS="✗"
ARROW="→"
SPARKLE="✨"
WARNING="⚠"
INFO="ℹ"
GEAR="⚙"
ROCKET="🚀"
FOLDER="📁"
FILE="📄"

# ============================================================================
# Print Functions
# ============================================================================

print_header() {
    local title="$1"
    echo -e "${BOLD}${CYAN}${SPARKLE} ${title}${NC}\n"
}

print_step() {
    local step_num="$1"
    local step_name="$2"
    echo -e "${BOLD}${BLUE}Step ${step_num}: ${step_name}...${NC}"
}

print_info() {
    local message="$1"
    echo -e "${BLUE}${INFO} ${message}${NC}"
}

print_success() {
    local message="$1"
    echo -e "${GREEN}${CHECK} ${message}${NC}"
}

print_error() {
    local message="$1"
    echo -e "${RED}${CROSS} ${message}${NC}"
}

print_warning() {
    local message="$1"
    echo -e "${YELLOW}${WARNING} ${message}${NC}"
}

print_item() {
    local item="$1"
    echo -e "  ${ARROW} ${CYAN}${item}${NC}"
}

print_subitem() {
    local item="$1"
    echo -e "    ${ARROW} ${DIM}${item}${NC}"
}

print_compact_error() {
    local error_text="$1"
    local max_lines="${2:-3}"
    local max_length="${3:-80}"
    
    if [ -z "$error_text" ]; then
        return
    fi
    
    # Extract key error lines
    ERROR_LINES=$(echo "$error_text" | grep -iE "error|failed|exception|unable|could not|warning" | head -"$max_lines")
    
    if [ -n "$ERROR_LINES" ]; then
        echo "$ERROR_LINES" | while read -r line; do
            # Truncate long lines for compactness
            if [ ${#line} -gt "$max_length" ]; then
                echo -e "  ${RED}${line:0:$((max_length-3))}...${NC}"
            else
                echo -e "  ${RED}${line}${NC}"
            fi
        done
    fi
}

print_separator() {
    local char="${1:-━}"
    local length="${2:-40}"
    local separator=$(printf "%${length}s" | tr ' ' "$char")
    echo -e "${BOLD}${CYAN}${separator}${NC}"
}

print_summary_header() {
    print_separator
    echo -e "${BOLD}Summary:${NC}"
}

print_summary_success() {
    local count="$1"
    local message="${2:-Success}"
    echo -e "  ${GREEN}${CHECK} ${message}: ${count}${NC}"
}

print_summary_failed() {
    local count="$1"
    local message="${2:-Failed}"
    echo -e "  ${RED}${CROSS} ${message}: ${count}${NC}"
}

print_summary_all_success() {
    local message="${1:-All operations completed successfully!}"
    echo -e "  ${GREEN}${SPARKLE} ${message}${NC}"
}

# ============================================================================
# Utility Functions
# ============================================================================

# Check if a command exists
check_command() {
    local cmd="$1"
    if ! command -v "$cmd" &> /dev/null; then
        print_error "$cmd is required but not installed."
        return 1
    fi
    return 0
}

# Run command with error handling
run_command() {
    local description="$1"
    shift
    local cmd=("$@")
    
    print_info "$description"
    
    if "${cmd[@]}" 2>&1; then
        print_success "$description"
        return 0
    else
        print_error "$description failed"
        return 1
    fi
}

# Run command silently and capture output
run_command_silent() {
    local cmd=("$@")
    OUTPUT=$("${cmd[@]}" 2>&1)
    EXIT_CODE=$?
    echo "$OUTPUT"
    return $EXIT_CODE
}

# Get script directory (where the script is located)
get_script_dir() {
    local script_path="${BASH_SOURCE[1]}"
    if [ -z "$script_path" ]; then
        script_path="$0"
    fi
    dirname "$(readlink -f "$script_path" 2>/dev/null || echo "$script_path")"
}

# Store original directory
store_original_dir() {
    export ORIGINAL_DIR=$(pwd)
}

# Return to original directory
restore_original_dir() {
    if [ -n "$ORIGINAL_DIR" ]; then
        cd "$ORIGINAL_DIR" || exit 1
    fi
}

# Find git root directory by traversing up from current directory
find_git_root() {
    local current_dir="$PWD"
    while [ "$current_dir" != "/" ]; do
        if [ -d "$current_dir/.git" ]; then
            echo "$current_dir"
            return 0
        fi
        current_dir=$(dirname "$current_dir")
    done
    return 1
}

# Change to git root directory (exits with error if not in git repo)
change_to_git_root() {
    local git_root=$(find_git_root)
    if [ -z "$git_root" ]; then
        print_error "Not in a git repository. Please run this script from within a git repository."
        exit 1
    fi
    print_info "Git root: $git_root" >&2
    cd "$git_root" || exit 1
    echo "$git_root"
}

# ============================================================================
# Initialize
# ============================================================================

# Note: store_original_dir() should be called explicitly in scripts that need it
