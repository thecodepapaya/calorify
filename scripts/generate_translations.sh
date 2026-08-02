#!/bin/bash

# Set UTF-8 encoding to handle Unicode characters properly
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# This script automates the translation process:
# 1. Analyzes translations for errors
# 2. Normalizes translations
# 3. Cleans unused translations (DISABLED - slang clean is too aggressive and empties files)
# 4. Generates translations for every configured language.
# 5. Renames the generated files to match the project's naming convention.
# 6. Cleans all generated .g.dart files (recursively finds and deletes all)
# 7. Regenerates Dart translation classes (always runs, even if files exist)
# 8. Prints translation statistics
# 9. Re-analyzes translations
#
# Usage:
#   ./generate_translations.sh                    # Partial translation (only missing keys)
#   ./generate_translations.sh --full             # Full translation regeneration (all keys)
#   ./generate_translations.sh --jobs 3           # Use 3 parallel jobs (default: 5)
#   ./generate_translations.sh --full --jobs 3    # Full translation with 3 parallel jobs
#   ./generate_translations.sh --repair-source-copies  # Re-translate values still copied from English

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
REPAIR_SOURCE_COPIES=false
API_KEY=""
TRANSLATION_PROVIDER=""
MAX_PARALLEL_JOBS=5  # Maximum parallel translation jobs (adjust to avoid rate limiting)

# Translation tracking
TRANSLATED=0
FAILED=0
TRANSLATED_LOCALES=()
FAILED_LOCALES=()
COLLECTED_LOCALES=()  # Used by collect_locales function

# Parallel execution tracking
TEMP_DIR=""
PARALLEL_LOG_DIR=""

# ============================================================================
# Setup Functions
# ============================================================================

setup_environment() {
    # Store original directory and change to git root
    store_original_dir
    GIT_ROOT=$(change_to_git_root)
    if python3 "$SCRIPT_DIR/translate_i18n_openrouter.py" --root "$GIT_ROOT" --check-config; then
        TRANSLATION_PROVIDER="openrouter"
        API_KEY=""
    elif API_KEY=$(python3 "$SCRIPT_DIR/resolve_openai_api_key.py" "$GIT_ROOT" 2>/dev/null) && [ -n "$API_KEY" ]; then
        TRANSLATION_PROVIDER="openai"
    else
        print_error "No translation API key found. Configure OPENAI_API_KEY or OPENROUTER_API_KEY."
        exit 1
    fi
    
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
    # Process all arguments
    while [[ $# -gt 0 ]]; do
        case "$1" in
            --full|-f)
                FULL_TRANSLATION=true
                shift
                ;;
            --repair-source-copies)
                REPAIR_SOURCE_COPIES=true
                shift
                ;;
            --jobs|-j)
                if [[ -n "$2" ]] && [[ "$2" =~ ^[0-9]+$ ]]; then
                    MAX_PARALLEL_JOBS="$2"
                    shift 2
                else
                    print_error "--jobs requires a number (e.g., --jobs 3)"
                    exit 1
                fi
                ;;
            *)
                print_warning "Unknown argument: $1"
                shift
                ;;
        esac
    done
    
    if [ "$FULL_TRANSLATION" = true ] && [ "$REPAIR_SOURCE_COPIES" = true ]; then
        print_error "--full and --repair-source-copies cannot be used together"
        exit 1
    elif [ "$REPAIR_SOURCE_COPIES" = true ] && [ "$TRANSLATION_PROVIDER" != "openrouter" ]; then
        print_error "--repair-source-copies requires OpenRouter"
        exit 1
    elif [ "$FULL_TRANSLATION" = true ]; then
        print_info "Mode: ${BOLD}FULL${NC} translation regeneration (all keys will be regenerated)"
    elif [ "$REPAIR_SOURCE_COPIES" = true ]; then
        print_info "Mode: ${BOLD}REPAIR${NC} values still copied from English"
    else
        print_info "Mode: ${BOLD}PARTIAL${NC} translation (only missing keys will be updated)"
    fi
    
    print_info "Parallel jobs: ${BOLD}${MAX_PARALLEL_JOBS}${NC}"
    print_info "Provider: ${BOLD}${TRANSLATION_PROVIDER}${NC}"
    echo ""
}

initialize_logging() {
    LOG_FILE="/tmp/calorify_translations_$(date +%Y%m%d_%H%M%S).log"
    echo "Translation script log - $(date)" > "$LOG_FILE"
    
    # Create temporary directory for parallel job logs
    TEMP_DIR="/tmp/calorify_translations_$(date +%Y%m%d_%H%M%S)_$$"
    PARALLEL_LOG_DIR="$TEMP_DIR/logs"
    mkdir -p "$PARALLEL_LOG_DIR"
    
    print_header "Translation Maintenance & Generation Script"
    print_info "Verbose output logged to: $LOG_FILE"
    print_info "Parallel job logs: $PARALLEL_LOG_DIR"
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
    
    if [ $FINAL_ANALYZE_EXIT -eq 0 ] && python3 "$SCRIPT_DIR/audit_translations.py" --root "$GIT_ROOT" --fail-on-source-copies >> "$LOG_FILE" 2>&1; then
        print_success "Final analysis completed - all translations are valid"
    else
        ERROR_COUNT=$(echo "$FINAL_ANALYZE_OUTPUT" | grep -ic "error" || echo "0")
        if [ "$ERROR_COUNT" -gt 0 ] 2>/dev/null; then
            print_error "Translation analysis found $ERROR_COUNT issue(s). Check log: $LOG_FILE"
        else
            print_error "Translation catalog audit found issues. Check log: $LOG_FILE"
        fi
        return 1
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

normalize_locale_worker() {
    local locale=$1
    local log_file="$PARALLEL_LOG_DIR/normalize_${locale}.log"
    
    local norm_output=$(dart run slang normalize --locale="$locale" 2>&1)
    echo "$norm_output" >> "$log_file"
    echo "$norm_output" >> "$LOG_FILE"
    
    if echo "$norm_output" | grep -q .; then
        echo "NORMALIZED:$locale" > "$PARALLEL_LOG_DIR/normalize_${locale}.result"
    else
        echo "NO_CHANGE:$locale" > "$PARALLEL_LOG_DIR/normalize_${locale}.result"
    fi
}

normalize_translations() {
    print_step "2" "Normalizing translations"
    local normalized=0
    local normalized_locales=()
    local all_locales=()
    
    collect_locales
    all_locales=("${COLLECTED_LOCALES[@]}")
    
    local total_locales=${#all_locales[@]}
    
    if [ $total_locales -eq 0 ]; then
        print_info "No locales to normalize"
        print_success "Normalization completed"
        echo ""
        return
    fi
    
    print_info "Normalizing $total_locales locale(s) with up to $MAX_PARALLEL_JOBS parallel jobs"
    
    # Run normalization in parallel with job control
    local pids=()
    local locale_index=0
    local processed_locales=()
    
    # Start initial batch of jobs
    while [ $locale_index -lt $total_locales ] && [ ${#pids[@]} -lt $MAX_PARALLEL_JOBS ]; do
        local locale="${all_locales[$locale_index]}"
        normalize_locale_worker "$locale" &
        pids+=($!)
        ((locale_index++))
    done
    
    # Process jobs as they complete
    while [ ${#pids[@]} -gt 0 ] || [ $locale_index -lt $total_locales ]; do
        # Check for completed jobs
        local new_pids=()
        for pid in "${pids[@]}"; do
            if kill -0 "$pid" 2>/dev/null; then
                new_pids+=("$pid")
            else
                wait "$pid" 2>/dev/null || true
            fi
        done
        pids=("${new_pids[@]}")
        
        # Process completed results
        shopt -s nullglob
        for result_file in "$PARALLEL_LOG_DIR"/normalize_*.result; do
            [ ! -f "$result_file" ] && continue
            local result=$(cat "$result_file")
            local locale=$(echo "$result" | cut -d: -f2)
            local status=$(echo "$result" | cut -d: -f1)
            
            # Skip if already processed
            if [[ ! " ${processed_locales[@]} " =~ " ${locale} " ]]; then
                processed_locales+=("$locale")
                if [ "$status" == "NORMALIZED" ]; then
                    normalized_locales+=("$locale")
                    ((normalized++))
                    printf "  ${GREEN}✓${NC} Normalized %-10s${NC}\n" "$locale"
                else
                    printf "  ${DIM}✓${NC} %-10s (no changes)${NC}\n" "$locale"
                fi
                rm -f "$result_file"
            fi
        done
        shopt -u nullglob
        
        # Start new jobs if we have capacity
        while [ ${#pids[@]} -lt $MAX_PARALLEL_JOBS ] && [ $locale_index -lt $total_locales ]; do
            local locale="${all_locales[$locale_index]}"
            normalize_locale_worker "$locale" &
            pids+=($!)
            ((locale_index++))
        done
        
        # Small sleep to avoid busy waiting
        sleep 0.1
    done
    
    # Wait for all remaining jobs
    for pid in "${pids[@]}"; do
        wait "$pid" 2>/dev/null || true
    done
    
    # Process any remaining results
    shopt -s nullglob
    for result_file in "$PARALLEL_LOG_DIR"/normalize_*.result; do
        [ ! -f "$result_file" ] && continue
        local result=$(cat "$result_file")
        local locale=$(echo "$result" | cut -d: -f2)
        local status=$(echo "$result" | cut -d: -f1)
        
        if [[ ! " ${processed_locales[@]} " =~ " ${locale} " ]]; then
            processed_locales+=("$locale")
            if [ "$status" == "NORMALIZED" ]; then
                normalized_locales+=("$locale")
                ((normalized++))
                printf "  ${GREEN}✓${NC} Normalized %-10s${NC}\n" "$locale"
            else
                printf "  ${DIM}✓${NC} %-10s (no changes)${NC}\n" "$locale"
            fi
            rm -f "$result_file"
        fi
    done
    shopt -u nullglob
    
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

sync_locale_keys_to_base() {
    # Remove from every locale JSON any key that is not in en.i18n.json, so that
    # when a key is removed from en, it is also removed from other locales and
    # from the generated Dart code.
    print_step "3" "Syncing locale keys to base (en)"
    local en_file="$I18N_DIR/en.i18n.json"
    if [ ! -f "$en_file" ]; then
        print_warning "Base file $en_file not found, skipping sync"
        echo ""
        return
    fi
    collect_locales
    local all_locales=("${COLLECTED_LOCALES[@]}")
    local total=${#all_locales[@]}
    if [ $total -eq 0 ]; then
        print_info "No locale files to sync"
        print_success "Sync completed"
        echo ""
        return
    fi
    local synced=0
    if command -v jq &>/dev/null; then
        local en_paths
        en_paths=$(jq -c '[paths(scalars)]' "$en_file" 2>/dev/null) || true
        if [ -z "$en_paths" ]; then
            print_warning "Could not read paths from $en_file (invalid JSON?), skipping sync"
            echo ""
            return
        fi
        for locale in "${all_locales[@]}"; do
            local locale_file="$I18N_DIR/${locale}.i18n.json"
            [ ! -f "$locale_file" ] && continue
            local tmp_file="${locale_file}.sync_tmp"
            if jq --argjson en_paths "$en_paths" '. as $locale | reduce ($en_paths[]) as $p ({}; ($locale | getpath($p)) as $v | if $v != null then . | setpath($p; $v) else . end)' "$locale_file" 2>/dev/null > "$tmp_file"; then
                if ! cmp -s "$locale_file" "$tmp_file" 2>/dev/null; then
                    mv "$tmp_file" "$locale_file"
                    ((synced++))
                    printf "  ${GREEN}✓${NC} %-10s (removed keys not in en)${NC}\n" "$locale"
                else
                    rm -f "$tmp_file"
                fi
            else
                rm -f "$tmp_file"
                print_warning "Failed to sync $locale (invalid JSON?)"
            fi
        done
    elif command -v python3 &>/dev/null; then
        print_info "Using Python to sync locale keys to en"
        # Fallback: Python is commonly available on macOS/Linux
        local py_script="
import json, sys
en_path, locale_path, out_path = sys.argv[1], sys.argv[2], sys.argv[3]
with open(en_path) as f:
    en = json.load(f)
with open(locale_path) as f:
    locale = json.load(f)
def leaf_paths(obj, prefix=()):
    if isinstance(obj, dict):
        for k, v in obj.items():
            p = prefix + (k,)
            if isinstance(v, dict):
                yield from leaf_paths(v, p)
            elif isinstance(v, str):
                yield p
def getpath(d, path):
    for k in path:
        d = d.get(k) if isinstance(d, dict) else None
        if d is None:
            return None
    return d
def setpath(d, path, value):
    for k in path[:-1]:
        if k not in d:
            d[k] = {}
        d = d[k]
    d[path[-1]] = value
en_paths = list(leaf_paths(en))
result = {}
for p in en_paths:
    v = getpath(locale, p)
    if v is not None:
        setpath(result, p, v)
with open(out_path, 'w') as f:
    json.dump(result, f, ensure_ascii=False, indent=2)
"
        for locale in "${all_locales[@]}"; do
            local locale_file="$I18N_DIR/${locale}.i18n.json"
            [ ! -f "$locale_file" ] && continue
            local tmp_file="${locale_file}.sync_tmp"
            if python3 -c "$py_script" "$en_file" "$locale_file" "$tmp_file" 2>/dev/null; then
                if ! cmp -s "$locale_file" "$tmp_file" 2>/dev/null; then
                    mv "$tmp_file" "$locale_file"
                    ((synced++))
                    printf "  ${GREEN}✓${NC} %-10s (removed keys not in en)${NC}\n" "$locale"
                else
                    rm -f "$tmp_file"
                fi
            else
                rm -f "$tmp_file"
                print_warning "Failed to sync $locale"
            fi
        done
    else
        print_warning "Neither jq nor python3 found; skipping sync. Install jq or ensure python3 is available."
    fi
    echo ""
    if [ $synced -gt 0 ]; then
        print_info "Synced $synced locale(s) to base keys (removed keys not in en)"
    else
        print_info "All locale files already in sync with en"
    fi
    print_success "Sync completed"
    echo ""
}

clean_unused_translations() {
    # Step 3: sync locale keys to base (en) so keys removed from en are removed
    # from all locale files and from generated Dart. slang clean is not used
    # because it can be too aggressive.
    sync_locale_keys_to_base
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

translate_locale_worker() {
    local locale=$1
    local log_file="$PARALLEL_LOG_DIR/translate_${locale}.log"
    
    local gpt_exit
    
    # Run slang_gpt with output redirected to file to avoid pipe buffer deadlock.
    # When there are many translations, slang_gpt prints a lot; capturing via
    # $(...) uses a fixed-size pipe that can fill and block both the child and
    # the shell, causing the script to appear stuck.
    if [ "$TRANSLATION_PROVIDER" = "openrouter" ]; then
        local full_arg=()
        if [ "$FULL_TRANSLATION" = true ]; then
            full_arg=(--full)
        elif [ "$REPAIR_SOURCE_COPIES" = true ]; then
            full_arg=(--source-copies)
        fi
        python3 "$SCRIPT_DIR/translate_i18n_openrouter.py" \
            --root "$GIT_ROOT" --locale "$locale" "${full_arg[@]}" > "$log_file" 2>&1
        gpt_exit=$?
    elif [ "$FULL_TRANSLATION" = true ]; then
        dart run slang_gpt --full --target=$locale --api-key=$API_KEY > "$log_file" 2>&1
        gpt_exit=$?
    else
        dart run slang_gpt --target=$locale --api-key=$API_KEY > "$log_file" 2>&1
        gpt_exit=$?
    fi
    
    # Append this run to the main log, then read for parsing
    cat "$log_file" >> "$LOG_FILE"
    local gpt_output
    gpt_output=$(cat "$log_file")
    
    # Extract translation stats (compatible with older bash versions)
    local requests=$(echo "$gpt_output" | sed -n 's/.*Total requests: \([0-9]*\).*/\1/p' | head -1)
    requests=${requests:-0}
    
    local cost=$(echo "$gpt_output" | sed -n 's/.*Total cost: \$\([0-9.]*\).*/\1/p' | head -1)
    cost=${cost:-0}
    
    local new_translations=$(echo "$gpt_output" | sed -n 's/^\([0-9][0-9]*\) new translations.*/\1/p' | head -1)
    new_translations=${new_translations:-0}
    
    # Write result to file for main process to read
    if [ $gpt_exit -eq 0 ]; then
        if [ "$new_translations" != "0" ] || [ "$requests" != "0" ]; then
            if [ "$cost" != "0" ] && [ -n "$cost" ]; then
                echo "SUCCESS:$locale:$new_translations:$cost" > "$PARALLEL_LOG_DIR/translate_${locale}.result"
            else
                echo "SUCCESS:$locale:$new_translations:0" > "$PARALLEL_LOG_DIR/translate_${locale}.result"
            fi
        else
            echo "SUCCESS:$locale:0:0" > "$PARALLEL_LOG_DIR/translate_${locale}.result"
        fi
    else
        echo "FAILED:$locale" > "$PARALLEL_LOG_DIR/translate_${locale}.result"
    fi
    
    rename_default_file "$locale"
}

generate_translations() {
    print_step "4" "Running slang_gpt for translation generation"
    local locales=$(get_target_locales)
    local locale_count=$(echo "$locales" | wc -w | tr -d ' ')
    
    if [ -z "$locales" ] || [ "$locale_count" -eq 0 ]; then
        print_warning "No target locales found"
        echo ""
        return
    fi
    
    print_info "Processing $locale_count locale(s) with up to $MAX_PARALLEL_JOBS parallel jobs"
    echo ""
    
    TRANSLATED=0
    FAILED=0
    TRANSLATED_LOCALES=()
    FAILED_LOCALES=()
    
    local locale_array=($locales)
    local total_trans=${#locale_array[@]}
    local processed_locales=()
    
    # Run translations in parallel with job control
    local pids=()
    local locale_index=0
    
    # Start initial batch of jobs
    while [ $locale_index -lt $total_trans ] && [ ${#pids[@]} -lt $MAX_PARALLEL_JOBS ]; do
        local locale="${locale_array[$locale_index]}"
        translate_locale_worker "$locale" &
        pids+=($!)
        ((locale_index++))
    done
    
    # Process jobs as they complete
    while [ ${#pids[@]} -gt 0 ] || [ $locale_index -lt $total_trans ]; do
        # Check for completed jobs
        local new_pids=()
        for pid in "${pids[@]}"; do
            if kill -0 "$pid" 2>/dev/null; then
                new_pids+=("$pid")
            else
                wait "$pid" 2>/dev/null || true
            fi
        done
        pids=("${new_pids[@]}")
        
        # Process completed results
        shopt -s nullglob
        for result_file in "$PARALLEL_LOG_DIR"/translate_*.result; do
            [ ! -f "$result_file" ] && continue
            local result=$(cat "$result_file")
            local status=$(echo "$result" | cut -d: -f1)
            local locale=$(echo "$result" | cut -d: -f2)
            
            # Skip if already processed
            if [[ ! " ${processed_locales[@]} " =~ " ${locale} " ]]; then
                processed_locales+=("$locale")
                if [ "$status" == "SUCCESS" ]; then
                    local new_translations=$(echo "$result" | cut -d: -f3)
                    local cost=$(echo "$result" | cut -d: -f4)
                    
                    if [ "$new_translations" != "0" ]; then
                        if [ "$cost" != "0" ] && [ -n "$cost" ]; then
                            printf "  ${GREEN}✓${NC} %-10s (${new_translations} new, \$${cost})${NC}\n" "$locale"
                        else
                            printf "  ${GREEN}✓${NC} %-10s (${new_translations} new)${NC}\n" "$locale"
                        fi
                    else
                        printf "  ${DIM}✓${NC} %-10s (up to date)${NC}\n" "$locale"
                    fi
                    TRANSLATED_LOCALES+=("$locale")
                    ((TRANSLATED++))
                else
                    printf "  ${RED}✗${NC} %-10s (failed)${NC}\n" "$locale"
                    FAILED_LOCALES+=("$locale")
                    ((FAILED++))
                fi
                rm -f "$result_file"
            fi
        done
        shopt -u nullglob
        
        # Start new jobs if we have capacity
        while [ ${#pids[@]} -lt $MAX_PARALLEL_JOBS ] && [ $locale_index -lt $total_trans ]; do
            local locale="${locale_array[$locale_index]}"
            translate_locale_worker "$locale" &
            pids+=($!)
            ((locale_index++))
        done
        
        # Once all result files are in, all jobs have finished (they write before exiting).
        # Reap all pids (kill -0 still succeeds for zombies, so we must wait to exit the loop).
        if [ ${#processed_locales[@]} -eq $total_trans ]; then
            for pid in "${pids[@]}"; do wait "$pid" 2>/dev/null || true; done
            break
        fi
        
        # Small sleep to avoid busy waiting
        sleep 0.1
    done
    
    # Wait for all remaining jobs
    for pid in "${pids[@]}"; do
        wait "$pid" 2>/dev/null || true
    done
    
    # Process any remaining results
    shopt -s nullglob
    for result_file in "$PARALLEL_LOG_DIR"/translate_*.result; do
        [ ! -f "$result_file" ] && continue
        local result=$(cat "$result_file")
        local status=$(echo "$result" | cut -d: -f1)
        local locale=$(echo "$result" | cut -d: -f2)
        
        if [[ ! " ${processed_locales[@]} " =~ " ${locale} " ]]; then
            processed_locales+=("$locale")
            if [ "$status" == "SUCCESS" ]; then
                local new_translations=$(echo "$result" | cut -d: -f3)
                local cost=$(echo "$result" | cut -d: -f4)
                
                if [ "$new_translations" != "0" ]; then
                    if [ "$cost" != "0" ] && [ -n "$cost" ]; then
                        printf "  ${GREEN}✓${NC} %-10s (${new_translations} new, \$${cost})${NC}\n" "$locale"
                    else
                        printf "  ${GREEN}✓${NC} %-10s (${new_translations} new)${NC}\n" "$locale"
                    fi
                else
                    printf "  ${DIM}✓${NC} %-10s (up to date)${NC}\n" "$locale"
                fi
                TRANSLATED_LOCALES+=("$locale")
                ((TRANSLATED++))
            else
                printf "  ${RED}✗${NC} %-10s (failed)${NC}\n" "$locale"
                FAILED_LOCALES+=("$locale")
                ((FAILED++))
            fi
            rm -f "$result_file"
        fi
    done
    shopt -u nullglob
    
    echo ""
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
    
    if [ $FAILED -eq 0 ]; then
        print_summary_all_success "Translations generated and integrated successfully!"
    else
        print_error "Translation generation failed for $FAILED locale(s). See the logs above."
    fi
    print_info "Full log: $LOG_FILE"
    if [ -n "$TEMP_DIR" ] && [ -d "$TEMP_DIR" ]; then
        print_info "Parallel job logs: $PARALLEL_LOG_DIR"
        # Cleanup temp directory (optional - comment out to keep logs for debugging)
        # rm -rf "$TEMP_DIR"
    fi
    print_separator
    if [ $FAILED -gt 0 ]; then
        return 1
    fi
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
    reanalyze_translations || return 1
    print_summary
}

# Run main function
main "$@"
