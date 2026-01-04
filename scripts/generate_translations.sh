#!/bin/bash

# This script automates the translation process:
# 1. Analyzes translations for errors
# 2. Normalizes translations
# 3. Cleans unused translations
# 4. Runs slang_gpt to generate translations for the 5 most common languages.
# 5. Renames the generated files to match the project's naming convention.
# 6. Runs slang to regenerate the Dart translation classes.
# 7. Prints translation statistics

# Hardcoded OpenAI API Key (Private Repository)
API_KEY="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"

I18N_DIR="lib/i18n"

echo "=========================================="
echo "Translation Maintenance & Generation Script"
echo "=========================================="
echo ""

echo "Step 1: Analyzing translations for errors..."
if ! dart run slang analyze --full; then
    echo "ERROR: Translation analysis failed. Please fix the errors above before continuing."
    exit 1
fi
echo "✓ Analysis completed"
echo ""

echo "Step 2: Normalizing translations..."
for locale_file in "$I18N_DIR"/*.i18n.json; do
    if [ -f "$locale_file" ]; then
        locale=$(basename "$locale_file" | sed 's/\.i18n\.json//')
        if [ "$locale" != "en" ] && [ "$locale" != "_default_" ] && [[ ! "$locale" == *,* ]]; then
            echo "Normalizing $locale..."
            dart run slang normalize --locale="$locale" || true
        fi
    fi
done
echo "✓ Normalization completed"
echo ""

echo "Step 3: Removing unused translations..."
# Clean requires analyze to be run first (which we did in Step 1)
if ! dart run slang clean; then
    echo "WARNING: Clean command failed or found issues. Continuing anyway..."
fi
echo "✓ Clean completed"
echo ""

echo "Step 4: Running slang_gpt..."
# Automatically find all existing locales in the directory (excluding English base)
LOCALES=$(ls "$I18N_DIR"/*.i18n.json 2>/dev/null | xargs -n 1 basename | sed 's/\.i18n\.json//' | grep -v '^en$' | grep -v '^_default_' | grep -v ',' || true)

echo "Target locales: $LOCALES"
# Process each locale individually to generate separate translation files
for locale in $LOCALES; do
    echo "Translating to $locale..."
    dart run slang_gpt --target=$locale --api-key=$API_KEY
done

echo "Step 5: Renaming files to project convention..."
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

echo "Step 6: Cleaning up incorrectly named files..."
# Remove any files with comma-separated locale names (e.g., de,fr,ja,zh-CN.i18n.json)
for file in "$I18N_DIR"/*.i18n.json; do
    if [[ "$(basename "$file")" == *,* ]]; then
        echo "Removing incorrectly named file: $file"
        rm -f "$file"
    fi
done

echo "Step 7: Regenerating Dart translation classes..."
# Clean up existing generated files to ensure no stale languages remain
rm -f "$I18N_DIR"/*.g.dart

dart run slang
echo "✓ Code generation completed"
echo ""

echo "Step 8: Printing translation statistics..."
dart run slang stats
echo ""

echo "Step 9: Re-analyzing translations..."
if ! dart run slang analyze --full; then
    echo "WARNING: Translation analysis found issues. Please review the errors above."
else
    echo "✓ Final analysis completed - all translations are valid"
fi
echo ""

echo "=========================================="
echo "✓ Done! Translations generated and integrated successfully."
echo "=========================================="

