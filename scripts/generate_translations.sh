#!/bin/bash

# This script automates the translation process:
# 1. Analyzes translations for errors
# 2. Normalizes translations
# 3. Cleans unused translations
# 4. Runs slang_gpt to generate translations for the 5 most common languages.
# 5. Renames the generated files to match the project's naming convention.
# 6. Runs slang to regenerate the Dart translation classes.
# 7. Prints translation statistics
#
# Usage:
#   ./generate_translations.sh          # Partial translation (only missing keys)
#   ./generate_translations.sh --full    # Full translation regeneration (all keys)

# Source common utilities
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

# Store original directory and change to git root
store_original_dir
GIT_ROOT=$(change_to_git_root)

# Change to app directory (relative to git root)
if [ -d "$GIT_ROOT/app" ]; then
    cd "$GIT_ROOT/app" || exit 1
else
    print_error "app directory not found in git root: $GIT_ROOT"
    exit 1
fi

# Parse command-line arguments
FULL_TRANSLATION=false
if [[ "$1" == "--full" ]] || [[ "$1" == "-f" ]]; then
    FULL_TRANSLATION=true
    print_info "Mode: ${BOLD}FULL${NC} translation regeneration (all keys will be regenerated)"
else
    print_info "Mode: ${BOLD}PARTIAL${NC} translation (only missing keys will be updated)"
fi
echo ""

# Hardcoded OpenAI API Key (Private Repository)
API_KEY="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"

I18N_DIR="lib/i18n"

# Create log file for verbose output
LOG_FILE="/tmp/calorify_translations_$(date +%Y%m%d_%H%M%S).log"
echo "Translation script log - $(date)" > "$LOG_FILE"

print_header "Translation Maintenance & Generation Script"
print_info "Verbose output logged to: $LOG_FILE"
echo ""

# Step 1: Analyze translations
print_step "1" "Analyzing translations for errors"
ANALYZE_OUTPUT=$(dart run slang analyze --full 2>&1)
ANALYZE_EXIT=$?
echo "$ANALYZE_OUTPUT" >> "$LOG_FILE"

if [ $ANALYZE_EXIT -eq 0 ]; then
    # Extract key info from output
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

# Step 2: Normalize translations
print_step "2" "Normalizing translations"
NORMALIZED=0
NORMALIZED_LOCALES=()
ALL_LOCALES=()

# First, collect all locales to normalize
for locale_file in "$I18N_DIR"/*.i18n.json; do
    if [ -f "$locale_file" ]; then
        locale=$(basename "$locale_file" | sed 's/\.i18n\.json//')
        if [ "$locale" != "en" ] && [ "$locale" != "_default_" ] && [[ ! "$locale" == *,* ]]; then
            ALL_LOCALES+=("$locale")
        fi
    fi
done

TOTAL_LOCALES=${#ALL_LOCALES[@]}
CURRENT=0

for locale in "${ALL_LOCALES[@]}"; do
    ((CURRENT++))
    printf "\r  ${CYAN}[%d/%d]${NC} Normalizing %s... " "$CURRENT" "$TOTAL_LOCALES" "$locale"
    
    NORM_OUTPUT=$(dart run slang normalize --locale="$locale" 2>&1)
    echo "$NORM_OUTPUT" >> "$LOG_FILE"
    
    if echo "$NORM_OUTPUT" | grep -q .; then
        NORMALIZED_LOCALES+=("$locale")
        ((NORMALIZED++))
        printf "\r  ${GREEN}✓${NC} Normalized %-10s${NC}\n" "$locale"
    else
        printf "\r  ${DIM}✓${NC} %-10s (no changes)${NC}\n" "$locale"
    fi
done

echo ""
if [ $NORMALIZED -gt 0 ]; then
    print_info "Normalized $NORMALIZED of $TOTAL_LOCALES locale(s)"
else
    print_info "No locales needed normalization"
fi
print_success "Normalization completed"
echo ""

# Step 3: Clean unused translations
print_step "3" "Removing unused translations"
CLEAN_OUTPUT=$(dart run slang clean 2>&1)
CLEAN_EXIT=$?
echo "$CLEAN_OUTPUT" >> "$LOG_FILE"
if [ $CLEAN_EXIT -eq 0 ]; then
    REMOVED_COUNT=$(echo "$CLEAN_OUTPUT" | grep -ic "removed\|cleaned" || echo "0")
    if [ "$REMOVED_COUNT" -gt 0 ] 2>/dev/null; then
        print_info "Removed unused translations"
    fi
    print_success "Clean completed"
else
    print_warning "Clean command found issues. Continuing anyway..."
fi
echo ""

# Step 4: Run slang_gpt
print_step "4" "Running slang_gpt for translation generation"
LOCALES=$(ls "$I18N_DIR"/*.i18n.json 2>/dev/null | xargs -n 1 basename | sed 's/\.i18n\.json//' | grep -v '^en$' | grep -v '^_default_' | grep -v ',' || true)

LOCALE_COUNT=$(echo "$LOCALES" | wc -w | tr -d ' ')
if [ -z "$LOCALES" ] || [ "$LOCALE_COUNT" -eq 0 ]; then
    print_warning "No target locales found"
else
    print_info "Processing $LOCALE_COUNT locale(s)"
fi
echo ""

TRANSLATED=0
FAILED=0
TRANSLATED_LOCALES=()
FAILED_LOCALES=()

# Process each locale individually to generate separate translation files
CURRENT_TRANS=0
LOCALE_ARRAY=($LOCALES)
TOTAL_TRANS=${#LOCALE_ARRAY[@]}

for locale in "${LOCALE_ARRAY[@]}"; do
    ((CURRENT_TRANS++))
    printf "\r  ${CYAN}[%d/%d]${NC} Translating %s... " "$CURRENT_TRANS" "$TOTAL_TRANS" "$locale"
    
    # If full translation mode, use --full flag to regenerate all keys
    if [ "$FULL_TRANSLATION" = true ]; then
        GPT_OUTPUT=$(dart run slang_gpt --full --target=$locale --api-key=$API_KEY 2>&1)
        GPT_EXIT=$?
    else
        # Default behavior: only translate missing keys (partial translation)
        GPT_OUTPUT=$(dart run slang_gpt --target=$locale --api-key=$API_KEY 2>&1)
        GPT_EXIT=$?
    fi
    
    echo "$GPT_OUTPUT" >> "$LOG_FILE"
    
    # Extract key info from output (using sed instead of grep -P for macOS compatibility)
    REQUESTS=$(echo "$GPT_OUTPUT" | sed -n 's/.*Total requests: \([0-9]*\).*/\1/p' | head -1)
    REQUESTS=${REQUESTS:-0}
    
    COST=$(echo "$GPT_OUTPUT" | sed -n 's/.*Total cost: \$\([0-9.]*\).*/\1/p' | head -1)
    COST=${COST:-0}
    
    NEW_TRANSLATIONS=$(echo "$GPT_OUTPUT" | grep -i "new translations" | sed -n 's/.*\([0-9]*\) new.*/\1/p' | head -1)
    NEW_TRANSLATIONS=${NEW_TRANSLATIONS:-0}
    
    if [ $GPT_EXIT -eq 0 ]; then
        # Check if we got numeric values
        if [ "$NEW_TRANSLATIONS" != "0" ] || [ "$REQUESTS" != "0" ]; then
            if [ "$COST" != "0" ] && [ -n "$COST" ]; then
                printf "\r  ${GREEN}✓${NC} %-10s (${NEW_TRANSLATIONS} new, \$${COST})${NC}\n" "$locale"
            else
                printf "\r  ${GREEN}✓${NC} %-10s (${NEW_TRANSLATIONS} new)${NC}\n" "$locale"
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
    
    # Immediately rename _default_ prefixed files to prevent deprecation warnings
    default_file="$I18N_DIR/_default_$locale.i18n.json"
    if [ -f "$default_file" ]; then
        new_name="$locale.i18n.json"
        if [ "$locale" == "zh-Hans" ]; then
            new_name="zh-CN.i18n.json"
        fi
        mv "$default_file" "$I18N_DIR/$new_name" 2>/dev/null
    fi
done

# Step 5: Clean up any remaining _default_ files
print_step "5" "Cleaning up any remaining _default_ files"
CLEANED=0
for file in "$I18N_DIR"/_default_*.i18n.json; do
    if [ -f "$file" ]; then
        new_name=$(basename "$file" | sed 's/_default_//')
        if [ "$new_name" == "zh-Hans.i18n.json" ]; then
            new_name="zh-CN.i18n.json"
        fi
        mv "$file" "$I18N_DIR/$new_name" 2>/dev/null
        ((CLEANED++))
    fi
done
if [ $CLEANED -gt 0 ]; then
    print_info "Cleaned up $CLEANED _default_ file(s)"
fi
print_success "Cleanup completed"
echo ""

# Step 6: Clean up incorrectly named files
print_step "6" "Cleaning up incorrectly named files"
REMOVED=0
for file in "$I18N_DIR"/*.i18n.json; do
    if [[ "$(basename "$file")" == *,* ]]; then
        rm -f "$file"
        ((REMOVED++))
    fi
done
if [ $REMOVED -gt 0 ]; then
    print_info "Removed $REMOVED incorrectly named file(s)"
fi
print_success "Cleanup completed"
echo ""

# Step 7: Regenerate Dart translation classes
print_step "7" "Regenerating Dart translation classes"
rm -f "$I18N_DIR"/*.g.dart

GENERATE_OUTPUT=$(dart run slang 2>&1)
GENERATE_EXIT=$?
echo "$GENERATE_OUTPUT" >> "$LOG_FILE"
if [ $GENERATE_EXIT -eq 0 ]; then
    GEN_TIME=$(echo "$GENERATE_OUTPUT" | sed -n 's/.*(\([0-9.]* seconds\)).*/\1/p' | head -1)
    if [ -n "$GEN_TIME" ]; then
        print_success "Code generation completed (${GEN_TIME})"
    else
        print_success "Code generation completed"
    fi
else
    print_error "Code generation failed. Check log: $LOG_FILE"
    exit 1
fi
echo ""

# Step 8: Print translation statistics
print_step "8" "Printing translation statistics"
STATS_OUTPUT=$(dart run slang stats 2>&1)
echo "$STATS_OUTPUT" >> "$LOG_FILE"

# Extract and show compact summary (using sed instead of grep -P)
TOTAL_KEYS=$(echo "$STATS_OUTPUT" | sed -n '/\[total\]/,/\[total\]/p' | grep "keys" | sed -n 's/.*- \([0-9]*\) keys.*/\1/p' | head -1)
TOTAL_KEYS=${TOTAL_KEYS:-0}

TOTAL_TRANSLATIONS=$(echo "$STATS_OUTPUT" | sed -n '/\[total\]/,/\[total\]/p' | grep "translations" | sed -n 's/.*- \([0-9]*\) translations.*/\1/p' | head -1)
TOTAL_TRANSLATIONS=${TOTAL_TRANSLATIONS:-0}

LOCALE_COUNT=$(echo "$STATS_OUTPUT" | grep -c "^\[" | grep -v "total" || echo "0")
LOCALE_COUNT=${LOCALE_COUNT:-0}

if [ "$TOTAL_KEYS" != "0" ] && [ "$TOTAL_TRANSLATIONS" != "0" ]; then
    print_info "Total: $TOTAL_TRANSLATIONS translations across $LOCALE_COUNT locales ($TOTAL_KEYS keys)"
    print_info "Full statistics saved to log"
fi
echo ""

# Step 9: Re-analyze translations
print_step "9" "Re-analyzing translations"
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

# Summary
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
