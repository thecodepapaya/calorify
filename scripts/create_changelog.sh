#!/bin/bash

# Script to create and translate changelog files for the current version
# Usage: 
#   ./scripts/create_changelog.sh [changelog text]                    # Create English changelog and translate to all languages
#   ./scripts/create_changelog.sh --file [path]                        # Read from file and translate
#   ./scripts/create_changelog.sh --locale [locale] [changelog text]   # Create changelog for specific locale only

set -e

# Source common utilities
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

# Store original directory and change to git root
store_original_dir
GIT_ROOT=$(change_to_git_root)

# Check dependencies
if ! check_command python3 || ! check_command curl; then
    exit 1
fi

API_KEY=$(python3 "$SCRIPT_DIR/resolve_openai_api_key.py" "$GIT_ROOT") || exit 1

# Supported locales for Play Store (using functions instead of associative array for compatibility)
get_locale_name() {
    case "$1" in
        "en-US") echo "English (US)" ;;
        "fr-FR") echo "French (France)" ;;
        "es-ES") echo "Spanish (Spain)" ;;
        "de-DE") echo "German (Germany)" ;;
        "it-IT") echo "Italian (Italy)" ;;
        "pt-BR") echo "Portuguese (Brazil)" ;;
        "ja-JP") echo "Japanese (Japan)" ;;
        "ko-KR") echo "Korean (Korea)" ;;
        "zh-CN") echo "Chinese (Simplified)" ;;
        "zh-TW") echo "Chinese (Traditional)" ;;
        *) echo "" ;;
    esac
}

# List of all supported locales
LOCALES="en-US fr-FR es-ES de-DE it-IT pt-BR ja-JP ko-KR zh-CN zh-TW"

# Changelog character limit (Play Store requirement)
CHANGELOG_MAX_LENGTH=500

# Function to validate changelog length
validate_changelog_length() {
    local content="$1"
    local locale="$2"
    local length=${#content}
    
    if [ $length -gt $CHANGELOG_MAX_LENGTH ]; then
        print_error "Changelog for $locale exceeds ${CHANGELOG_MAX_LENGTH} characters (${length} characters)"
        print_info "Please shorten the changelog text and try again."
        return 1
    fi
    return 0
}

# Get version code from pubspec.yaml (relative to git root)
VERSION_CODE=$(grep "^version:" "$GIT_ROOT/app/pubspec.yaml" 2>/dev/null | sed -E 's/version: [0-9]+\.[0-9]+\.[0-9]+\+([0-9]+)/\1/' || echo "")

if [ -z "$VERSION_CODE" ]; then
    print_error "Could not extract version code from app/pubspec.yaml"
    exit 1
fi

# Function to translate text using OpenAI API
translate_text() {
    local source_text="$1"
    local target_language="$2"
    
    # Create temporary files
    local source_file=$(mktemp)
    local payload_file=$(mktemp)
    local python_script=$(mktemp)
    
    # Write source text to file to avoid escaping issues
    echo -e "$source_text" > "$source_file"
    
    # Create Python script to generate JSON payload
    cat > "$python_script" << 'PYTHON_EOF'
import json
import sys
import os

source_file = sys.argv[1]
target_language = sys.argv[2]

# Read source text from file
with open(source_file, "r", encoding="utf-8") as f:
    source_text = f.read()

payload = {
    "model": "gpt-5-mini",
    "messages": [
        {
            "role": "system",
            "content": f"You are a professional translator. Translate the following app changelog text to {target_language}. Maintain the exact formatting, including emojis, bullet points, and line breaks. Keep the tone professional and user-friendly. Do not add or remove any content, only translate. IMPORTANT: The translated text must not exceed 500 characters. If the translation would exceed this limit, use more concise wording while preserving the meaning."
        },
        {
            "role": "user",
            "content": source_text
        }
    ],
    "temperature": 0.3
}

print(json.dumps(payload, ensure_ascii=False))
PYTHON_EOF
    
    # Generate JSON payload
    python3 "$python_script" "$source_file" "$target_language" > "$payload_file"
    
    local response=$(curl -s https://api.openai.com/v1/chat/completions \
        -H "Content-Type: application/json" \
        -H "Authorization: Bearer $API_KEY" \
        -d "@$payload_file")
    
    rm -f "$source_file" "$payload_file" "$python_script"
    
    # Check for API errors
    if echo "$response" | grep -q '"error"'; then
        local error_msg=$(echo "$response" | python3 -c "import sys, json; data = json.load(sys.stdin); print(data.get('error', {}).get('message', 'Unknown error'))" 2>/dev/null || echo "API Error")
        print_error "API Error: $error_msg"
        return 1
    fi
    
    # Extract translated text from JSON response using Python
    echo "$response" | python3 -c "
import sys, json
try:
    data = json.load(sys.stdin)
    content = data['choices'][0]['message']['content']
    print(content, end='')
except Exception as e:
    print(f'Error parsing response: {e}', file=sys.stderr)
    sys.exit(1)
" || return 1
}

# Function to create changelog for a specific locale
create_changelog_for_locale() {
    local locale="$1"
    local content="$2"
    
    # Validate length before creating
    if ! validate_changelog_length "$content" "$locale"; then
        return 1
    fi
    
    local changelog_dir="$GIT_ROOT/fastlane/metadata/android/${locale}/changelogs"
    mkdir -p "$changelog_dir"
    
    local changelog_file="${changelog_dir}/${VERSION_CODE}.txt"
    echo -e "$content" > "$changelog_file"
    local length=${#content}
    # Show relative path from git root
    local rel_path="fastlane/metadata/android/${locale}/changelogs/${VERSION_CODE}.txt"
    print_success "Created: $rel_path (${length}/${CHANGELOG_MAX_LENGTH} chars)"
    return 0
}

# Parse arguments
MODE="translate_all"
ENGLISH_TEXT=""
SOURCE_FILE=""
TARGET_LOCALE=""

if [ "$1" == "--file" ] || [ "$1" == "-f" ]; then
    MODE="from_file"
    SOURCE_FILE="$2"
    if [ -z "$SOURCE_FILE" ]; then
        print_error "--file requires a file path"
        exit 1
    fi
    # Handle relative paths - if not absolute, make it relative to git root
    if [[ "$SOURCE_FILE" != /* ]]; then
        SOURCE_FILE="$GIT_ROOT/$SOURCE_FILE"
    fi
    if [ ! -f "$SOURCE_FILE" ]; then
        print_error "File not found: $SOURCE_FILE"
        exit 1
    fi
    ENGLISH_TEXT=$(cat "$SOURCE_FILE")
elif [ "$1" == "--locale" ] || [ "$1" == "-l" ]; then
    MODE="single_locale"
    TARGET_LOCALE="$2"
    ENGLISH_TEXT="$3"
    if [ -z "$TARGET_LOCALE" ] || [ -z "$ENGLISH_TEXT" ]; then
        print_error "--locale requires locale and text"
        echo "Usage: $0 --locale en-US \"Your changelog text\""
        exit 1
    fi
else
    # Default: translate all
    if [ -n "$1" ]; then
        ENGLISH_TEXT="$1"
    else
        # Try to read from existing English changelog
        ENGLISH_CHANGELOG="$GIT_ROOT/fastlane/metadata/android/en-US/changelogs/${VERSION_CODE}.txt"
        if [ -f "$ENGLISH_CHANGELOG" ]; then
            print_info "Reading existing English changelog..."
            ENGLISH_TEXT=$(cat "$ENGLISH_CHANGELOG")
        else
            print_error "No changelog text provided and no existing changelog found."
            echo "Usage: $0 \"Your changelog text\""
            echo "   or: $0 --file path/to/changelog.txt"
            exit 1
        fi
    fi
fi

print_header "Changelog Generator & Translator"
print_info "Version Code: $VERSION_CODE"
print_info "Character limit: ${CHANGELOG_MAX_LENGTH} characters per language"
echo ""

# Validate English text length upfront
if ! validate_changelog_length "$ENGLISH_TEXT" "en-US"; then
    print_error "English changelog text is too long. Please shorten it and try again."
    exit 1
fi

ENGLISH_LENGTH=${#ENGLISH_TEXT}
print_info "English changelog length: ${ENGLISH_LENGTH}/${CHANGELOG_MAX_LENGTH} characters"
echo ""

# Create English changelog first
if [ "$MODE" != "single_locale" ] || [ "$TARGET_LOCALE" == "en-US" ]; then
    print_step "1" "Creating English changelog"
    if ! create_changelog_for_locale "en-US" "$ENGLISH_TEXT"; then
        print_error "Failed to create English changelog due to character limit"
        exit 1
    fi
    echo ""
fi

# Translate and create changelogs for other languages
if [ "$MODE" == "translate_all" ]; then
    print_step "2" "Translating to all supported languages"
    echo ""
    
    TRANSLATED=0
    FAILED=0
    
    for locale in $LOCALES; do
        if [ "$locale" == "en-US" ]; then
            continue
        fi
        
        locale_name=$(get_locale_name "$locale")
        if [ -z "$locale_name" ]; then
            continue
        fi
        
        echo -e "${BOLD}${BLUE}${ARROW} ${locale_name} (${locale})${NC}"
        translated_text=$(translate_text "$ENGLISH_TEXT" "$locale_name")
        
        if [ $? -eq 0 ] && [ -n "$translated_text" ] && [ "$translated_text" != "null" ]; then
            if create_changelog_for_locale "$locale" "$translated_text"; then
                ((TRANSLATED++))
            else
                print_warning "Changelog for $locale exceeds character limit, skipping..."
                ((FAILED++))
            fi
        else
            print_warning "Translation failed for $locale, skipping..."
            ((FAILED++))
        fi
        echo ""
        
        # Small delay to avoid rate limiting
        sleep 1
    done
    
    print_separator
    print_summary_header
    print_summary_success "$TRANSLATED" "Translated"
    if [ $FAILED -gt 0 ]; then
        print_summary_failed "$FAILED" "Failed"
    fi
    print_summary_all_success "Changelogs created for all languages!"
    print_separator
    
elif [ "$MODE" == "from_file" ]; then
    print_info "Translating from file: $SOURCE_FILE"
    echo ""
    
    TRANSLATED=0
    FAILED=0
    
    for locale in $LOCALES; do
        if [ "$locale" == "en-US" ]; then
            continue
        fi
        
        locale_name=$(get_locale_name "$locale")
        if [ -z "$locale_name" ]; then
            continue
        fi
        
        echo -e "${BOLD}${BLUE}${ARROW} ${locale_name} (${locale})${NC}"
        translated_text=$(translate_text "$ENGLISH_TEXT" "$locale_name")
        
        if [ $? -eq 0 ] && [ -n "$translated_text" ] && [ "$translated_text" != "null" ]; then
            if create_changelog_for_locale "$locale" "$translated_text"; then
                ((TRANSLATED++))
            else
                print_warning "Changelog for $locale exceeds character limit, skipping..."
                ((FAILED++))
            fi
        else
            print_warning "Translation failed for $locale, skipping..."
            ((FAILED++))
        fi
        echo ""
        
        sleep 1
    done
    
    print_separator
    print_summary_header
    print_summary_success "$TRANSLATED" "Translated"
    if [ $FAILED -gt 0 ]; then
        print_summary_failed "$FAILED" "Failed"
    fi
    print_summary_all_success "Changelogs created for all languages!"
    print_separator
    
elif [ "$MODE" == "single_locale" ]; then
    if [ "$TARGET_LOCALE" == "en-US" ]; then
        print_success "English changelog created."
    else
        locale_name=$(get_locale_name "$TARGET_LOCALE")
        if [ -z "$locale_name" ]; then
            print_error "Unsupported locale: $TARGET_LOCALE"
            exit 1
        fi
        
        print_info "Translating to $locale_name ($TARGET_LOCALE)..."
        translated_text=$(translate_text "$ENGLISH_TEXT" "$locale_name")
        
        if [ $? -ne 0 ] || [ -z "$translated_text" ] || [ "$translated_text" == "null" ]; then
            print_error "Translation failed for $TARGET_LOCALE"
            exit 1
        fi
        
        if ! create_changelog_for_locale "$TARGET_LOCALE" "$translated_text"; then
            print_error "Changelog for $TARGET_LOCALE exceeds character limit"
            exit 1
        fi
        echo ""
        print_success "Changelog created for $TARGET_LOCALE"
    fi
fi
