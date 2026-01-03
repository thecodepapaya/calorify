#!/bin/bash

# This script automates the translation process:
# 1. Runs slang_gpt to generate translations for the 5 most common languages.
# 2. Renames the generated files to match the project's naming convention.
# 3. Runs slang to regenerate the Dart translation classes.

# Hardcoded OpenAI API Key (Private Repository)
API_KEY="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"

echo "Step 1: Running slang_gpt..."
# Automatically find all existing locales in the directory (excluding English base)
I18N_DIR="lib/i18n"
LOCALES=$(ls "$I18N_DIR"/*.i18n.json | xargs -n 1 basename | sed 's/\.i18n\.json//' | grep -v '^en$' | grep -v '^_default_' | grep -v ',')

echo "Target locales: $LOCALES"
# Process each locale individually to generate separate translation files
for locale in $LOCALES; do
    echo "Translating to $locale..."
    flutter pub run slang_gpt --target=$locale --api-key=$API_KEY
done

echo "Step 2: Renaming files to project convention..."
# Automatically rename any file starting with _default_ to the clean locale name
# e.g., _default_de.i18n.json -> de.i18n.json
for file in "$I18N_DIR"/_default_*.i18n.json; do
    if [ -f "$file" ]; then
        # Extract the locale (e.g., de from _default_de.i18n.json)
        new_name=$(basename "$file" | sed 's/_default_//')
        
        # Special case: map zh-Hans (GPT default) to zh-CN (our project convention)
        if [ "$new_name" == "zh-Hans.i18n.json" ]; then
            new_name="zh-CN.i18n.json"
        fi
        
        echo "Renaming $file to $I18N_DIR/$new_name"
        mv "$file" "$I18N_DIR/$new_name"
    fi
done

echo "Step 3: Cleaning up incorrectly named files..."
# Remove any files with comma-separated locale names (e.g., de,fr,ja,zh-CN.i18n.json)
for file in "$I18N_DIR"/*.i18n.json; do
    if [[ "$(basename "$file")" == *,* ]]; then
        echo "Removing incorrectly named file: $file"
        rm -f "$file"
    fi
done

echo "Step 4: Regenerating Dart translation classes..."
# Clean up existing generated files to ensure no stale languages remain
rm -f "$I18N_DIR"/*.g.dart

flutter pub run slang

echo "Done! Translations generated and integrated successfully."

