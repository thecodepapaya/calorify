name: i18n Translation Regeneration

# i18n Translation Regeneration

Use this when changing keys in `shared_packages/i18n/lib/i18n/en.i18n.json` or when a non-English locale was hand-edited and needs to be re-sourced from English.

## Rules

1. Treat `en.i18n.json` as the only source of truth. Do not hand-edit non-English locale files unless the script workflow is impossible.
2. After source changes, run `./scripts/generate_translations.sh` from the repo root so the locale JSON files and generated Dart bindings stay aligned.
3. Verify the result by checking the affected locale files directly with `rg` or `sed`, not just by trusting the script output.

## Standard flow

1. Edit `shared_packages/i18n/lib/i18n/en.i18n.json`.
2. Run `./scripts/generate_translations.sh`.
3. Verify the changed key in `shared_packages/i18n/lib/i18n/*.i18n.json`.
4. Run the relevant checks, typically `dart analyze` in `shared_packages/i18n` plus the app tests or analysis that touch the key.

## Re-source an already hand-edited key

Use this exact two-pass sequence when a key was added manually to non-English locales and now needs to come from the script:

1. Remove the key from `shared_packages/i18n/lib/i18n/en.i18n.json`.
2. Run `./scripts/generate_translations.sh` so sync removes the key from secondary locales and regenerated Dart output.
3. Add the key back to `shared_packages/i18n/lib/i18n/en.i18n.json`.
4. Run `./scripts/generate_translations.sh` again so missing translations are regenerated from English.
5. Confirm localized values with `rg -n '"keyName"' shared_packages/i18n/lib/i18n/*.i18n.json`.
