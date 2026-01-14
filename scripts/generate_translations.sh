#!/bin/bash

# This script automates the translation process:
# 1. Analyzes translations for errors
# 2. Normalizes translations
# 3. Cleans unused translations (DISABLED - slang clean is too aggressive and empties files)
# 4. Runs slang_gpt to generate translations for the 5 most common languages.
# 5. Renames the generated files to match the project's naming convention.
# 6. Cleans all generated .g.dart files (recursively finds and deletes all)
# 7. Regenerates Dart translation classes (always runs, even if files exist)
# 8. Prints translation statistics
# 9. Re-analyzes translations
#
# Usage:
#   ./generate_translations.sh          # Partial translation (only missing keys)
#   ./generate_translations.sh --full    # Full translation regeneration (all keys)

# ============================================================================
# Configuration & Setup
# ============================================================================

# Source common utilities
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

# Global variables
I18N_PKG_DIR=""
I18N_DIR="lib/i18n"
LOG_FILE=""
FULL_TRANSLATION=false
API_KEY="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"

# Translation tracking
TRANSLATED=0
FAILED=0
TRANSLATED_LOCALES=()
FAILED_LOCALES=()
COLLECTED_LOCALES=()  # Used by collect_locales function

# ============================================================================
# Setup Functions
# ============================================================================

setup_environment() {
    # Store original directory and change to git root
    store_original_dir
    GIT_ROOT=$(change_to_git_root)
    
    # Change to shared i18n package directory
    I18N_PKG_DIR="$GIT_ROOT/shared_packages/i18n"
    if [ -d "$I18N_PKG_DIR" ]; then
        cd "$I18N_PKG_DIR" || exit 1
    else
        print_error "shared_packages/i18n directory not found in git root: $GIT_ROOT"
        exit 1
    fi
}

parse_arguments() {
    if [[ "$1" == "--full" ]] || [[ "$1" == "-f" ]]; then
        FULL_TRANSLATION=true
        print_info "Mode: ${BOLD}FULL${NC} translation regeneration (all keys will be regenerated)"
    else
        print_info "Mode: ${BOLD}PARTIAL${NC} translation (only missing keys will be updated)"
    fi
    echo ""
}

initialize_logging() {
    LOG_FILE="/tmp/calorify_translations_$(date +%Y%m%d_%H%M%S).log"
    echo "Translation script log - $(date)" > "$LOG_FILE"
    
    print_header "Translation Maintenance & Generation Script"
    print_info "Verbose output logged to: $LOG_FILE"
    echo ""
}

# ============================================================================
# Analysis Functions
# ============================================================================

analyze_translations() {
    print_step "1" "Analyzing translations for errors"
    ANALYZE_OUTPUT=$(dart run slang analyze --full 2>&1)
    ANALYZE_EXIT=$?
    echo "$ANALYZE_OUTPUT" >> "$LOG_FILE"
    
    if [ $ANALYZE_EXIT -eq 0 ]; then
        ERROR_COUNT=$(echo "$ANALYZE_OUTPUT" | grep -ic "error" || echo "0")
        if [ "$ERROR_COUNT" -gt 0 ] 2>/dev/null; then
            print_warning "Found $ERROR_COUNT potential issues (see log for details)"
        fi
        print_success "Analysis completed"
    else
        print_error "Translation analysis failed. Check log: $LOG_FILE"
        echo "$ANALYZE_OUTPUT" | grep -i "error\|failed" | head -5 | while read -r line; do
            print_compact_error "$line" 1 100
        done
        exit 1
    fi
    echo ""
}

reanalyze_translations() {
    print_step "10" "Re-analyzing translations"
    FINAL_ANALYZE_OUTPUT=$(dart run slang analyze --full 2>&1)
    FINAL_ANALYZE_EXIT=$?
    echo "$FINAL_ANALYZE_OUTPUT" >> "$LOG_FILE"
    
    if [ $FINAL_ANALYZE_EXIT -eq 0 ]; then
        print_success "Final analysis completed - all translations are valid"
    else
        ERROR_COUNT=$(echo "$FINAL_ANALYZE_OUTPUT" | grep -ic "error" || echo "0")
        if [ "$ERROR_COUNT" -gt 0 ] 2>/dev/null; then
            print_warning "Translation analysis found $ERROR_COUNT issue(s). Check log: $LOG_FILE"
        else
            print_warning "Translation analysis found issues. Check log: $LOG_FILE"
        fi
    fi
    echo ""
}

# ============================================================================
# Normalization Functions
# ============================================================================

collect_locales() {
    # Return locales via global variable (compatible with older bash)
    COLLECTED_LOCALES=()
    
    for locale_file in "$I18N_DIR"/*.i18n.json; do
        if [ -f "$locale_file" ]; then
            local locale=$(basename "$locale_file" | sed 's/\.i18n\.json//')
            if [ "$locale" != "en" ] && [ "$locale" != "_default_" ] && [[ ! "$locale" == *,* ]]; then
                COLLECTED_LOCALES+=("$locale")
            fi
        fi
    done
}

normalize_translations() {
    print_step "2" "Normalizing translations"
    local normalized=0
    local normalized_locales=()
    local all_locales=()
    
    collect_locales
    all_locales=("${COLLECTED_LOCALES[@]}")
    
    local total_locales=${#all_locales[@]}
    local current=0
    
    for locale in "${all_locales[@]}"; do
        ((current++))
        printf "\r  ${CYAN}[%d/%d]${NC} Normalizing %s... " "$current" "$total_locales" "$locale"
        
        local norm_output=$(dart run slang normalize --locale="$locale" 2>&1)
        echo "$norm_output" >> "$LOG_FILE"
        
        if echo "$norm_output" | grep -q .; then
            normalized_locales+=("$locale")
            ((normalized++))
            printf "\r  ${GREEN}✓${NC} Normalized %-10s${NC}\n" "$locale"
        else
            printf "\r  ${DIM}✓${NC} %-10s (no changes)${NC}\n" "$locale"
        fi
    done
    
    echo ""
    if [ $normalized -gt 0 ]; then
        print_info "Normalized $normalized of $total_locales locale(s)"
    else
        print_info "No locales needed normalization"
    fi
    print_success "Normalization completed"
    echo ""
}

# ============================================================================
# Cleanup Functions
# ============================================================================

clean_unused_translations() {
    print_step "3" "Removing unused translations"
    
    # DISABLED: slang clean is too aggressive and empties files
    # Instead, we'll rely on slang analyze to report unused keys without removing them
    print_info "Skipping clean step to prevent data loss (slang clean can be too aggressive)"
    print_info "Use 'dart run slang analyze' to identify unused translations manually"
    print_success "Clean step skipped (safety measure)"
    echo ""
    
    # Original clean code commented out for safety:
    # local clean_output=$(dart run slang clean 2>&1)
    # This command has been known to empty translation files unexpectedly
}

clean_generated_files() {
    print_step "7" "Cleaning all generated translation files"
    local generated_files=$(find "$I18N_DIR" -name "*.g.dart" -type f 2>/dev/null | wc -l | tr -d ' ')
    
    if [ "$generated_files" -gt 0 ]; then
        find "$I18N_DIR" -name "*.g.dart" -type f -delete 2>/dev/null
        print_info "Removed $generated_files generated file(s)"
    else
        print_info "No generated files to clean"
    fi
    print_success "Clean completed"
    echo ""
}

cleanup_default_files() {
    print_step "5" "Cleaning up any remaining _default_ files"
    local cleaned=0
    
    for file in "$I18N_DIR"/_default_*.i18n.json; do
        if [ -f "$file" ]; then
            local new_name=$(basename "$file" | sed 's/_default_//')
            if [ "$new_name" == "zh-Hans.i18n.json" ]; then
                new_name="zh-CN.i18n.json"
            fi
            mv "$file" "$I18N_DIR/$new_name" 2>/dev/null
            ((cleaned++))
        fi
    done
    
    if [ $cleaned -gt 0 ]; then
        print_info "Cleaned up $cleaned _default_ file(s)"
    fi
    print_success "Cleanup completed"
    echo ""
}

cleanup_incorrectly_named_files() {
    print_step "6" "Cleaning up incorrectly named files"
    local removed=0
    
    for file in "$I18N_DIR"/*.i18n.json; do
        if [[ "$(basename "$file")" == *,* ]]; then
            rm -f "$file"
            ((removed++))
        fi
    done
    
    if [ $removed -gt 0 ]; then
        print_info "Removed $removed incorrectly named file(s)"
    fi
    print_success "Cleanup completed"
    echo ""
}

rename_default_file() {
    local locale=$1
    local default_file="$I18N_DIR/_default_$locale.i18n.json"
    
    if [ -f "$default_file" ]; then
        local new_name="$locale.i18n.json"
        if [ "$locale" == "zh-Hans" ]; then
            new_name="zh-CN.i18n.json"
        fi
        mv "$default_file" "$I18N_DIR/$new_name" 2>/dev/null
    fi
}

# ============================================================================
# Translation Generation Functions
# ============================================================================

get_target_locales() {
    ls "$I18N_DIR"/*.i18n.json 2>/dev/null | \
        xargs -n 1 basename | \
        sed 's/\.i18n\.json//' | \
        grep -v '^en$' | \
        grep -v '^_default_' | \
        grep -v ',' || true
}

translate_locale() {
    local locale=$1
    local current=$2
    local total=$3
    
    printf "\r  ${CYAN}[%d/%d]${NC} Translating %s... " "$current" "$total" "$locale"
    
    local gpt_output
    local gpt_exit
    
    if [ "$FULL_TRANSLATION" = true ]; then
        gpt_output=$(dart run slang_gpt --full --target=$locale --api-key=$API_KEY 2>&1)
        gpt_exit=$?
    else
        gpt_output=$(dart run slang_gpt --target=$locale --api-key=$API_KEY 2>&1)
        gpt_exit=$?
    fi
    
    echo "$gpt_output" >> "$LOG_FILE"
    
    # Extract translation stats (compatible with older bash versions)
    local requests=$(echo "$gpt_output" | sed -n 's/.*Total requests: \([0-9]*\).*/\1/p' | head -1)
    requests=${requests:-0}
    
    local cost=$(echo "$gpt_output" | sed -n 's/.*Total cost: \$\([0-9.]*\).*/\1/p' | head -1)
    cost=${cost:-0}
    
    local new_translations=$(echo "$gpt_output" | grep -i "new translations" | sed -n 's/.*\([0-9]*\) new.*/\1/p' | head -1)
    new_translations=${new_translations:-0}
    
    if [ $gpt_exit -eq 0 ]; then
        if [ "$new_translations" != "0" ] || [ "$requests" != "0" ]; then
            if [ "$cost" != "0" ] && [ -n "$cost" ]; then
                printf "\r  ${GREEN}✓${NC} %-10s (${new_translations} new, \$${cost})${NC}\n" "$locale"
            else
                printf "\r  ${GREEN}✓${NC} %-10s (${new_translations} new)${NC}\n" "$locale"
            fi
            TRANSLATED_LOCALES+=("$locale")
        else
            printf "\r  ${DIM}✓${NC} %-10s (up to date)${NC}\n" "$locale"
            TRANSLATED_LOCALES+=("$locale")
        fi
        ((TRANSLATED++))
    else
        printf "\r  ${RED}✗${NC} %-10s (failed)${NC}\n" "$locale"
        FAILED_LOCALES+=("$locale")
        ((FAILED++))
    fi
    
    rename_default_file "$locale"
}

generate_translations() {
    print_step "4" "Running slang_gpt for translation generation"
    local locales=$(get_target_locales)
    local locale_count=$(echo "$locales" | wc -w | tr -d ' ')
    
    if [ -z "$locales" ] || [ "$locale_count" -eq 0 ]; then
        print_warning "No target locales found"
    else
        print_info "Processing $locale_count locale(s)"
    fi
    echo ""
    
    TRANSLATED=0
    FAILED=0
    TRANSLATED_LOCALES=()
    FAILED_LOCALES=()
    
    local current_trans=0
    local locale_array=($locales)
    local total_trans=${#locale_array[@]}
    
    for locale in "${locale_array[@]}"; do
        ((current_trans++))
        translate_locale "$locale" "$current_trans" "$total_trans"
    done
}

# ============================================================================
# Code Generation Functions
# ============================================================================

regenerate_translation_classes() {
    print_step "8" "Regenerating Dart translation classes"
    local generate_output=$(dart run slang 2>&1)
    local generate_exit=$?
    echo "$generate_output" >> "$LOG_FILE"
    
    if [ $generate_exit -eq 0 ]; then
        local gen_time=$(echo "$generate_output" | sed -n 's/.*(\([0-9.]* seconds\)).*/\1/p' | head -1)
        if [ -n "$gen_time" ]; then
            print_success "Code generation completed (${gen_time})"
        else
            print_success "Code generation completed"
        fi
    else
        print_error "Code generation failed. Check log: $LOG_FILE"
        exit 1
    fi
    echo ""
}

# ============================================================================
# Statistics Functions
# ============================================================================

print_translation_statistics() {
    print_step "9" "Printing translation statistics"
    local stats_output=$(dart run slang stats 2>&1)
    echo "$stats_output" >> "$LOG_FILE"
    
    local total_keys=$(echo "$stats_output" | sed -n '/\[total\]/,/\[total\]/p' | grep "keys" | sed -n 's/.*- \([0-9]*\) keys.*/\1/p' | head -1)
    total_keys=${total_keys:-0}
    
    local total_translations=$(echo "$stats_output" | sed -n '/\[total\]/,/\[total\]/p' | grep "translations" | sed -n 's/.*- \([0-9]*\) translations.*/\1/p' | head -1)
    total_translations=${total_translations:-0}
    
    local locale_count=$(echo "$stats_output" | grep -c "^\[" | grep -v "total" || echo "0")
    locale_count=${locale_count:-0}
    
    if [ "$total_keys" != "0" ] && [ "$total_translations" != "0" ]; then
        print_info "Total: $total_translations translations across $locale_count locales ($total_keys keys)"
        print_info "Full statistics saved to log"
    fi
    echo ""
}

print_summary() {
    print_separator
    print_summary_header
    print_summary_success "$TRANSLATED" "Locales processed"
    
    if [ $FAILED -gt 0 ]; then
        print_summary_failed "$FAILED" "Locales failed"
        for failed_locale in "${FAILED_LOCALES[@]}"; do
            print_subitem "$failed_locale"
        done
    fi
    
    print_summary_all_success "Translations generated and integrated successfully!"
    print_info "Full log: $LOG_FILE"
    print_separator
}

# ============================================================================
# Main Execution
# ============================================================================

main() {
    setup_environment
    parse_arguments "$@"
    initialize_logging
    
    analyze_translations
    normalize_translations
    clean_unused_translations
    generate_translations
    cleanup_default_files
    cleanup_incorrectly_named_files
    clean_generated_files
    regenerate_translation_classes
    print_translation_statistics
    reanalyze_translations
    print_summary
}

# Run main function
main "$@"
