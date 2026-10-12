# Play Store Release Metadata

This directory stores Google Play Store release changelogs for the English (`en-US`) locale. Other locales are managed outside this repository.

## Changelog Structure

Changelog files are mapped to the build version code (the integer after the `+` in `app/calorify/pubspec.yaml`):

```text
fastlane/metadata/android/en-US/changelogs/[version_code].txt
```

*Example: version `1.2.1+22` corresponds to `fastlane/metadata/android/en-US/changelogs/22.txt`.*

## Formatting Rules

- **Format**: 1–4 bullet points, each starting with `- `.
- **Characters**: Printable ASCII only. Angle brackets (`<`, `>`) and markdown formatting are rejected by the release runner.
- **Length**: Maximum 500 characters.

## Creating Changelogs

### Automated (Recommended)

Generate release notes summarizing git commits via `gpt-5.6-luna`:

```bash
# Preview notes without writing to disk
./scripts/generate_release_notes.sh --dry-run

# Generate and write changelog file for current version
./scripts/generate_release_notes.sh

# Force-overwrite existing changelog
./scripts/generate_release_notes.sh --overwrite
```

*Requires `OPENAI_API_KEY` set or stored in gitignored `scripts/.openai_api_key`.*

### Manual

Create `fastlane/metadata/android/en-US/changelogs/<version_code>.txt` directly:

```text
- Improved AI meal recognition accuracy
- Fixed crash when syncing with Health Connect
- Faster app startup performance
```

Fastlane automatically bundles the matching changelog during `bundle exec fastlane android release`.
