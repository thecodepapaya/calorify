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

### Never run `slang clean`

Do not run `dart run slang clean` in this package. After `slang analyze`, the
clean command can treat the English source catalog as removable output and
replace `en.i18n.json` with `{}`. This has caused destructive source loss in
practice, including on 2026-08-25. Git can recover the file, but uncommitted
English copy changes would be lost.

The wrapper intentionally does not call `slang clean`. Generated
`_missing_translations.json` and `_unused_translations.json` reports do not
authorize running it. If the English catalog becomes unexpectedly empty, stop,
restore only `en.i18n.json` from the last known-good revision, and reapply the
intended English edit before continuing.

If a run fails, inspect the temporary log directory printed at the end and run
the same command again. `slang_gpt` skips keys already present.

## Verify

The generator checks catalog structure, placeholders, and mixed-script
corruption. Afterward,
inspect the affected locale values and run:

```bash
cd shared_packages/i18n
dart analyze
flutter test
```

Existing locale keys are retained by `slang_gpt`. To refresh one key, first
record its intended English value, then run this from `shared_packages/i18n`:

```bash
dart run slang edit delete settings.localInference.useLocalSubtitle
```

Replace the example with the exact key being refreshed. This key-scoped command
removes the key from every catalog, including English. Immediately restore only
its intended value in `en.i18n.json`, verify that the English catalog is intact
and the diff removes no unrelated keys, then run the repository generator. Do
not use `slang clean` for this workflow and do not repair non-English catalogs
by hand.

If the provider returns `429` or `insufficient_quota`, stop. Restore partially
changed generated catalogs from Git, keep only the intended English source
edit, and rerun after credits are available. Do not switch providers or bypass
the wrapper.
