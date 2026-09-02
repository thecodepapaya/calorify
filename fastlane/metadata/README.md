# Play Store Metadata

This directory contains the English (United States) changelog used for Google Play Store releases. Other Play Store locales are intentionally managed outside this repository.

## Changelog Structure

Changelogs are organized by locale and version code:

```
fastlane/metadata/android/
  └── en-US/
      └── changelogs/
          └── [version_code].txt
```

### Locale Format

Only `en-US` is supported by the release-note automation. Do not add other locale directories unless their complete Play Store listings, including titles, are first configured and the release workflow is deliberately updated.

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
   - Summarize release-note-worthy git changes with OpenAI `gpt-5.6-luna`
   - Print the English notes without writing files

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

The script refuses to overwrite an existing changelog file unless `--overwrite` is provided. Review the generated file before running the Play Store upload lane:

```bash
bundle exec fastlane android release
```

The script resolves the API key via `scripts/resolve_openai_api_key.py`: `OPENAI_API_KEY` first, then the optional one-line `scripts/.openai_api_key` file (gitignored).

### Automated From Provided Text

Use the `create_changelog.sh` compatibility command when you already have English release notes. It delegates to the same validated, staged implementation as `generate_release_notes.sh`:

1. **Create the English changelog:**
   ```bash
   ./scripts/create_changelog.sh "Your changelog text here"
   ```
   This saves the text to the current version's `en-US` changelog.

2. **Create changelog from existing file:**
   ```bash
   ./scripts/create_changelog.sh --file fastlane/metadata/android/en-US/changelogs/22.txt
   ```

### Manual Method

1. **Check your current version code** in `pubspec.yaml` (the number after `+`)

2. **Create or update the English changelog file:**
   ```
   fastlane/metadata/android/en-US/changelogs/[version_code].txt
   ```

3. **Write your changelog** - Keep it concise and user-friendly. Play Store allows up to 500 characters.

## Example

For version `1.2.1+22`:

**File:** `fastlane/metadata/android/en-US/changelogs/22.txt`
```
• Improved AI meal recognition accuracy
• Fixed crash when syncing with Health Connect
• Performance optimizations for faster app startup
• Updated translations for 5 languages
```

## Notes

- Fastlane uploads the matching `en-US` changelog while skipping store-listing metadata, images, and screenshots
- If a changelog file doesn't exist for a version code, Fastlane will skip it (no error)
- Changelogs are required for new releases but optional for updates
- Keep changelogs under 500 characters for best display on Play Store
