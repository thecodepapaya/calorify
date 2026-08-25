# Translation regeneration

Only edit `lib/i18n/en.i18n.json`. Non-English catalogs and generated
`strings*.g.dart` files are script-managed and must be committed together.

## OpenAI token

Put the token alone on one line in the gitignored
`../../scripts/.openai_api_key`, or export `OPENAI_API_KEY` for the current
shell. Never add a token to a tracked file.

## Generate

Run from the repository root:

```bash
./scripts/generate_translations.sh
```

The script runs `slang_gpt` for each locale, then normalizes, analyzes, audits,
and regenerates the Dart catalogs. Existing translations are retained by
default; use `--full` to replace them all or `--jobs N` to change the default
three-locale concurrency.

If a run fails, inspect the temporary log directory printed at the end and run
the same command again. `slang_gpt` skips keys already present.

## Verify

The generator performs structural and language-script audits. Afterward,
inspect the affected locale values and run:

```bash
cd shared_packages/i18n
dart analyze
flutter test
```

To force regeneration of an existing bad or English-copy value, remove that key
from English, run the generator, restore the English key, and run it again. Do
not repair non-English catalogs by hand.
