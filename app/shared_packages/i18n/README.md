# Translation Management

Manages multi-locale translations for Calorify applications using `slang`.

> **CRITICAL RULE**: Only edit `lib/i18n/en.i18n.json`. Non-English catalogs and generated `strings*.g.dart` files are script-managed and must be committed together.

## Regeneration Workflow

1. Provide OpenAI API token via `OPENAI_API_KEY` environment variable or single line in gitignored `../../scripts/.openai_api_key`.
2. Run from the repository root:
   ```bash
   ./scripts/generate_translations.sh
   ```
   - Skips existing translated keys by default.
   - Use `--full` to retranslate all keys, or `--jobs N` to set concurrency.

### DO NOT RUN `slang clean`

**Never run `dart run slang clean` in this package.**
`slang clean` can treat `en.i18n.json` as removable output and overwrite it with empty JSON (`{}`), causing loss of uncommitted English copy. The wrapper script intentionally avoids it. If the English catalog is ever emptied, immediately restore `en.i18n.json` via Git.

## Verification

After generating translations, verify syntax and run package tests:

```bash
cd app/shared_packages/i18n
dart analyze
flutter test
```

## Refreshing a Specific Key

To force regeneration of an existing key across all catalogs:

```bash
cd app/shared_packages/i18n
# Deletes the key across all catalogs, including English:
dart run slang edit delete <exact.key.path>
```

Immediately restore the intended English definition in `en.i18n.json`, verify the diff, and rerun `./scripts/generate_translations.sh`.
