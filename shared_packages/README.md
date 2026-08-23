# Shared Flutter packages

Reusable code shared by the phone and Wear OS applications:

- `specs` — design tokens, themes, color schemes, and layout constants.
- `models` — protobuf-backed domain models.
- `i18n` — source locale JSON and generated translations.
- `services` — cross-app integrations and helpers.
- `utils` — dates, strings, image configuration, and common utilities.
- `widgets` — presentation components suitable for both applications.

Packages are referenced with local paths from each app's `pubspec.yaml`.

Regenerate translations through the repository script so locale files stay consistent:

```bash
./scripts/generate_translations.sh
./scripts/generate_translations.sh --full --jobs 3
./scripts/generate_translations.sh --repair-source-copies
python3 ./scripts/audit_translations.py
```

English (`en.i18n.json`) is the source of truth. The generator uses OpenRouter
when `OPENROUTER_API_KEY` is configured; otherwise it uses the existing direct
OpenAI workflow. The audit enforces locale/key parity,
placeholders, metadata, non-empty values, long English source copies, and
mixed-script contamination. Generated Dart files must be committed together
with the locale JSON files.

Regenerate protobuf models after changing `protos/`:

```bash
./scripts/generate_protos.sh
```

Avoid putting phone-sized layout assumptions in shared widgets. Shared visual primitives should accept constraints that let the watch app provide watch-specific composition.
