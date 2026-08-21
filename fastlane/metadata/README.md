# Play Store Metadata

This directory contains metadata files for Google Play Store releases, including changelogs for the "What's New" section.

## Changelog Structure

Changelogs are organized by locale and version code:

```
fastlane/metadata/android/
  └── [locale]/
      └── changelogs/
          └── [version_code].txt
```

### Locale Format

Use Play Store locale codes (e.g., `en-US`, `fr-FR`, `es-ES`, `de-DE`, etc.).

### Version Code

The changelog file name should match the version code from your `pubspec.yaml` file. The version code is the number after the `+` in the version string.

For example:
- Version `1.2.1+22` → changelog file: `22.txt`
- Version `1.2.2+23` → changelog file: `23.txt`

## Adding Changelogs

### Automated From Git History (Recommended)

Use `generate_release_notes.sh` after bumping `app/pubspec.yaml` to the version code you plan to release:

1. **Preview generated release notes:**
   ```bash
   ./scripts/generate_release_notes.sh --dry-run
   ```
   This will:
   - Read the current version code from `app/pubspec.yaml`
   - Find the previous release from `fastlane/metadata/android/en-US/changelogs`
   - Summarize release-note-worthy git changes with OpenAI `gpt-5-mini`
   - Translate the notes for app-supported locales from `shared_packages/i18n/lib/i18n` that are also supported by Google Play metadata
   - Print the generated notes without writing files

2. **Create release notes for the current version:**
   ```bash
   ./scripts/generate_release_notes.sh
   ```
   Or through Fastlane:
   ```bash
   bundle exec fastlane android release_notes
   ```

3. **Override the release boundary if needed:**
   ```bash
   ./scripts/generate_release_notes.sh --since <git-ref>
   ```

4. **Replace existing notes for the current version:**
   ```bash
   ./scripts/generate_release_notes.sh --overwrite
   ```

The script refuses to overwrite existing changelog files unless `--overwrite` is provided. App locales that do not have a supported Google Play metadata locale are skipped with a warning. Review the generated files before running the Play Store upload lane:

```bash
bundle exec fastlane android release
```

The script resolves the API key via `scripts/resolve_openai_api_key.py`: `OPENAI_API_KEY` first, then optional one-line `scripts/.openai_api_key` (gitignored), then `API_KEY` in `scripts/generate_translations.sh` (tolerant parsing, not regex-fragile).

### Automated From Provided Text

Use the `create_changelog.sh` compatibility command when you already have English release notes and only need files/translations. It delegates to the same validated, staged implementation as `generate_release_notes.sh`:

1. **Create changelog with automatic translations:**
   ```bash
   ./scripts/create_changelog.sh "Your changelog text here"
   ```
   This will:
   - Create the English changelog
   - Automatically translate it to every app locale supported by Google Play metadata using OpenAI `gpt-5-mini`
   - Save all changelog files in the correct locations

2. **Create changelog from existing file:**
   ```bash
   ./scripts/create_changelog.sh --file fastlane/metadata/android/en-US/changelogs/22.txt
   ```

3. **Create changelog for a specific locale only:**
   ```bash
   ./scripts/create_changelog.sh --locale fr-FR "Your changelog text"
   ```

### Manual Method

1. **Check your current version code** in `pubspec.yaml` (the number after `+`)

2. **Create or update the changelog file** for each locale you support:
   ```
   fastlane/metadata/android/en-US/changelogs/[version_code].txt
   ```

3. **Write your changelog** - Keep it concise and user-friendly. Play Store allows up to 500 characters.

4. **For multiple locales**, create the same changelog in translated form:
   ```
   fastlane/metadata/android/fr-FR/changelogs/[version_code].txt
   fastlane/metadata/android/es-ES/changelogs/[version_code].txt
   ```

## Example

For version `1.2.1+22`:

**File:** `fastlane/metadata/android/en-US/changelogs/22.txt`
```
• Improved AI meal recognition accuracy
• Fixed crash when syncing with Health Connect
• Performance optimizations for faster app startup
• Updated translations for 5 languages
```

**File:** `fastlane/metadata/android/fr-FR/changelogs/22.txt`
```
• Amélioration de la précision de la reconnaissance des repas par IA
• Correction du plantage lors de la synchronisation avec Health Connect
• Optimisations de performance pour un démarrage plus rapide
• Mises à jour des traductions pour 5 langues
```

## Supported Locales

You can add changelogs for any locale your app supports. Common locales include:
- `en-US` (English - United States)
- `fr-FR` (French - France)
- `es-ES` (Spanish - Spain)
- `de-DE` (German - Germany)
- `it-IT` (Italian - Italy)
- `pt-BR` (Portuguese - Brazil)
- `ja-JP` (Japanese - Japan)
- `ko-KR` (Korean - Korea)
- `zh-CN` (Chinese - Simplified)
- `zh-TW` (Chinese - Traditional)

And many more. Check [Play Console's supported locales](https://support.google.com/googleplay/android-developer/answer/9844778) for the complete list.

## Notes

- Fastlane will automatically use the changelog file matching your app's version code when uploading to Play Store
- If a changelog file doesn't exist for a version code, Fastlane will skip it (no error)
- Changelogs are required for new releases but optional for updates
- Keep changelogs under 500 characters for best display on Play Store
