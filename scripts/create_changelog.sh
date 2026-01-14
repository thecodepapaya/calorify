#!/bin/bash

# Script to create and translate changelog files for the current version
# Usage: 
#   ./scripts/create_changelog.sh [changelog text]                    # Create English changelog and translate to all languages
#   ./scripts/create_changelog.sh --file [path]                        # Read from file and translate
#   ./scripts/create_changelog.sh --locale [locale] [changelog text]   # Create changelog for specific locale only

set -e

# Check dependencies
if ! command -v python3 &> /dev/null; then
    echo "Error: python3 is required but not installed."
    exit 1
fi

if ! command -v curl &> /dev/null; then
    echo "Error: curl is required but not installed."
    exit 1
fi

# Hardcoded OpenAI API Key (same as generate_translations.sh)
API_KEY="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"

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

# Get version code from pubspec.yaml
VERSION_CODE=$(grep "^version:" pubspec.yaml | sed -E 's/version: [0-9]+\.[0-9]+\.[0-9]+\+([0-9]+)/\1/')

if [ -z "$VERSION_CODE" ]; then
    echo "Error: Could not extract version code from pubspec.yaml"
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
    "model": "gpt-4o-mini",
    "messages": [
        {
            "role": "system",
            "content": f"You are a professional translator. Translate the following app changelog text to {target_language}. Maintain the exact formatting, including emojis, bullet points, and line breaks. Keep the tone professional and user-friendly. Do not add or remove any content, only translate."
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
        echo "API Error: $error_msg" >&2
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
    
    local changelog_dir="fastlane/metadata/android/${locale}/changelogs"
    mkdir -p "$changelog_dir"
    
    local changelog_file="${changelog_dir}/${VERSION_CODE}.txt"
    echo -e "$content" > "$changelog_file"
    echo "✓ Created: $changelog_file"
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
        echo "Error: --file requires a file path"
        exit 1
    fi
    if [ ! -f "$SOURCE_FILE" ]; then
        echo "Error: File not found: $SOURCE_FILE"
        exit 1
    fi
    ENGLISH_TEXT=$(cat "$SOURCE_FILE")
elif [ "$1" == "--locale" ] || [ "$1" == "-l" ]; then
    MODE="single_locale"
    TARGET_LOCALE="$2"
    ENGLISH_TEXT="$3"
    if [ -z "$TARGET_LOCALE" ] || [ -z "$ENGLISH_TEXT" ]; then
        echo "Error: --locale requires locale and text"
        echo "Usage: $0 --locale en-US \"Your changelog text\""
        exit 1
    fi
else
    # Default: translate all
    if [ -n "$1" ]; then
        ENGLISH_TEXT="$1"
    else
        # Try to read from existing English changelog
        ENGLISH_CHANGELOG="fastlane/metadata/android/en-US/changelogs/${VERSION_CODE}.txt"
        if [ -f "$ENGLISH_CHANGELOG" ]; then
            echo "Reading existing English changelog..."
            ENGLISH_TEXT=$(cat "$ENGLISH_CHANGELOG")
        else
            echo "Error: No changelog text provided and no existing changelog found."
            echo "Usage: $0 \"Your changelog text\""
            echo "   or: $0 --file path/to/changelog.txt"
            exit 1
        fi
    fi
fi

echo "=========================================="
echo "Changelog Generator & Translator"
echo "=========================================="
echo "Version Code: $VERSION_CODE"
echo ""

# Create English changelog first
if [ "$MODE" != "single_locale" ] || [ "$TARGET_LOCALE" == "en-US" ]; then
    echo "Creating English changelog..."
    create_changelog_for_locale "en-US" "$ENGLISH_TEXT"
    echo ""
fi

# Translate and create changelogs for other languages
if [ "$MODE" == "translate_all" ]; then
    echo "Translating to all supported languages..."
    echo ""
    
    for locale in $LOCALES; do
        if [ "$locale" == "en-US" ]; then
            continue
        fi
        
        locale_name=$(get_locale_name "$locale")
        if [ -z "$locale_name" ]; then
            continue
        fi
        
        echo "Translating to $locale_name ($locale)..."
        translated_text=$(translate_text "$ENGLISH_TEXT" "$locale_name")
        
        if [ -z "$translated_text" ] || [ "$translated_text" == "null" ]; then
            echo "⚠ Warning: Translation failed for $locale, skipping..."
            continue
        fi
        
        create_changelog_for_locale "$locale" "$translated_text"
        echo ""
        
        # Small delay to avoid rate limiting
        sleep 1
    done
    
    echo "=========================================="
    echo "✓ Done! Changelogs created for all languages."
    echo "=========================================="
elif [ "$MODE" == "from_file" ]; then
    echo "Translating from file: $SOURCE_FILE"
    echo ""
    
    for locale in $LOCALES; do
        if [ "$locale" == "en-US" ]; then
            continue
        fi
        
        locale_name=$(get_locale_name "$locale")
        if [ -z "$locale_name" ]; then
            continue
        fi
        
        echo "Translating to $locale_name ($locale)..."
        translated_text=$(translate_text "$ENGLISH_TEXT" "$locale_name")
        
        if [ -z "$translated_text" ] || [ "$translated_text" == "null" ]; then
            echo "⚠ Warning: Translation failed for $locale, skipping..."
            continue
        fi
        
        create_changelog_for_locale "$locale" "$translated_text"
        echo ""
        
        sleep 1
    done
    
    echo "=========================================="
    echo "✓ Done! Changelogs created for all languages."
    echo "=========================================="
elif [ "$MODE" == "single_locale" ]; then
    if [ "$TARGET_LOCALE" == "en-US" ]; then
        echo "✓ English changelog created."
    else
        locale_name=$(get_locale_name "$TARGET_LOCALE")
        if [ -z "$locale_name" ]; then
            echo "Error: Unsupported locale: $TARGET_LOCALE"
            exit 1
        fi
        
        echo "Translating to $locale_name ($TARGET_LOCALE)..."
        translated_text=$(translate_text "$ENGLISH_TEXT" "$locale_name")
        
        if [ -z "$translated_text" ] || [ "$translated_text" == "null" ]; then
            echo "Error: Translation failed for $TARGET_LOCALE"
            exit 1
        fi
        
        create_changelog_for_locale "$TARGET_LOCALE" "$translated_text"
        echo ""
        echo "✓ Changelog created for $TARGET_LOCALE"
    fi
fi
