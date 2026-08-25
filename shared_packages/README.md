# Shared Flutter packages

Reusable code shared by the phone and Wear OS applications:

- `specs` — design tokens, themes, color schemes, and layout constants.
- `models` — protobuf-backed domain models.
- `i18n` — source locale JSON, generated translations, and the
  [regeneration workflow](i18n/README.md).
- `services` — cross-app integrations and helpers.
- `utils` — dates, strings, image configuration, and common utilities.
- `widgets` — presentation components suitable for both applications.

Packages are referenced with local paths from each app's `pubspec.yaml`.

Regenerate protobuf models after changing `protos/`:

```bash
./scripts/generate_protos.sh
```

Avoid putting phone-sized layout assumptions in shared widgets. Shared visual primitives should accept constraints that let the watch app provide watch-specific composition.
