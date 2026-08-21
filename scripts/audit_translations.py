#!/usr/bin/env python3
"""Validate Calorify locale catalogs against the English source of truth."""

from __future__ import annotations

import argparse
import json
import re
import sys
import unicodedata
from pathlib import Path
from typing import Any

from translate_i18n_openrouter import LOCALE_NAMES, flatten, placeholders, source_copy_is_allowed


SOURCE_COPY_MIN_LENGTH = 20
EXPECTED_SCRIPTS = {
    "ar": {"ARABIC"},
    "bn": {"BENGALI"},
    "el": {"GREEK"},
    "gu": {"GUJARATI"},
    "he": {"HEBREW"},
    "hi": {"DEVANAGARI"},
    "ja": {"HAN", "HIRAGANA", "KATAKANA"},
    "ko": {"HAN", "HANGUL"},
    "ru": {"CYRILLIC"},
    "te": {"TELUGU"},
    "th": {"THAI"},
    "uk": {"CYRILLIC"},
    "ur": {"ARABIC"},
    "zh-CN": {"HAN", "BOPOMOFO"},
    "zh-TW": {"HAN", "BOPOMOFO"},
}
SCRIPT_NAMES = (
    "ARABIC",
    "BENGALI",
    "BOPOMOFO",
    "CYRILLIC",
    "DEVANAGARI",
    "GREEK",
    "GUJARATI",
    "HANGUL",
    "HEBREW",
    "HIRAGANA",
    "KATAKANA",
    "LATIN",
    "TELUGU",
    "THAI",
)
ALLOWED_ADJACENT_LATIN = {
    "AI",
    "Android",
    "BMI",
    "BMR",
    "CSV",
    "Calorify",
    "Connect",
    "Google",
    "Gemini",
    "Health",
    "Nano",
    "Play",
    "Store",
    "TDEE",
    "UID",
    "USDA",
    "kcal",
    "lbs",
}


def character_script(character: str) -> str | None:
    if not unicodedata.category(character).startswith("L"):
        return None
    name = unicodedata.name(character, "")
    if "CJK UNIFIED IDEOGRAPH" in name or "IDEOGRAPHIC" in name:
        return "HAN"
    if "ORDINAL INDICATOR" in name:
        return "LATIN"
    return next((script for script in SCRIPT_NAMES if script in name), "OTHER")


def script_errors(locale: str, value: str) -> list[str]:
    allowed = EXPECTED_SCRIPTS.get(locale, {"LATIN"}) | {"LATIN"}
    unexpected = sorted(
        {
            script
            for character in value
            if (script := character_script(character)) is not None and script not in allowed
        }
    )
    errors = [f"unexpected script(s): {', '.join(unexpected)}"] if unexpected else []

    # Catch corrupted hybrid words such as Hebrew `מטabolism` or Gujarati
    # `ivljenશૈલી` while still allowing separated product/technical names.
    if locale in EXPECTED_SCRIPTS:
        for match in re.finditer(r"[A-Za-z]{3,}", value):
            before = value[match.start() - 1] if match.start() else ""
            after = value[match.end()] if match.end() < len(value) else ""
            if (
                match.group() not in ALLOWED_ADJACENT_LATIN
                and any(character.isalpha() and ord(character) > 127 for character in (before, after))
            ):
                errors.append(f"mixed-script word: {match.group()!r}")
    return errors


def load_catalog(path: Path) -> dict[str, Any]:
    parsed = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(parsed, dict):
        raise ValueError("catalog root must be a JSON object")
    return parsed


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--root", default=Path(__file__).resolve().parents[1])
    parser.add_argument(
        "--fail-on-source-copies",
        action="store_true",
        help=f"fail when a translated value of at least {SOURCE_COPY_MIN_LENGTH} characters still equals English",
    )
    args = parser.parse_args()

    root = Path(args.root).resolve()
    i18n_dir = root / "shared_packages" / "i18n" / "lib" / "i18n"
    source_path = i18n_dir / "en.i18n.json"
    source = load_catalog(source_path)
    source_flat = flatten(source)
    failures: list[str] = []
    copy_failures: list[str] = []
    copy_counts: dict[str, int] = {}

    actual_locales = {
        path.name.removesuffix(".i18n.json")
        for path in i18n_dir.glob("*.i18n.json")
        if path.name != "en.i18n.json" and not path.name.startswith("_")
    }
    expected_locales = set(LOCALE_NAMES)
    if actual_locales != expected_locales:
        failures.append(
            "locale set mismatch: "
            f"missing={sorted(expected_locales - actual_locales)} "
            f"extra={sorted(actual_locales - expected_locales)}"
        )

    for locale in sorted(actual_locales & expected_locales):
        path = i18n_dir / f"{locale}.i18n.json"
        try:
            catalog = load_catalog(path)
        except (OSError, json.JSONDecodeError, ValueError) as error:
            failures.append(f"{locale}: invalid JSON: {error}")
            continue

        catalog_flat = flatten(catalog)
        missing = source_flat.keys() - catalog_flat.keys()
        extra = catalog_flat.keys() - source_flat.keys()
        if missing:
            failures.append(f"{locale}: missing keys: {', '.join('.'.join(item) for item in sorted(missing))}")
        if extra:
            failures.append(f"{locale}: extra keys: {', '.join('.'.join(item) for item in sorted(extra))}")

        expected_language, expected_flag = LOCALE_NAMES[locale]
        if catalog.get("language") != expected_language:
            failures.append(f"{locale}: language metadata must be {expected_language!r}")
        if catalog.get("flag") != expected_flag:
            failures.append(f"{locale}: flag metadata must be {expected_flag!r}")

        copies = 0
        for key_path in sorted(source_flat.keys() & catalog_flat.keys()):
            source_value = source_flat[key_path]
            translated_value = catalog_flat[key_path]
            dotted_path = ".".join(key_path)
            if not isinstance(translated_value, str):
                failures.append(f"{locale}.{dotted_path}: value must be a string")
                continue
            if not translated_value.strip():
                failures.append(f"{locale}.{dotted_path}: value must not be blank")
            if placeholders(source_value) != placeholders(translated_value):
                failures.append(f"{locale}.{dotted_path}: placeholder mismatch")
            for error in script_errors(locale, translated_value):
                failures.append(f"{locale}.{dotted_path}: {error}")
            if translated_value == source_value and not source_copy_is_allowed(key_path, str(source_value)):
                copies += 1
                if len(str(source_value)) >= SOURCE_COPY_MIN_LENGTH:
                    copy_failures.append(f"{locale}.{dotted_path}: {source_value!r}")
        copy_counts[locale] = copies

    if failures:
        print("Translation catalog errors:", file=sys.stderr)
        for failure in failures:
            print(f"- {failure}", file=sys.stderr)
    if copy_failures:
        print("Long values still identical to English:", file=sys.stderr)
        for failure in copy_failures:
            print(f"- {failure}", file=sys.stderr)

    print(f"English source keys: {len(source_flat)}")
    print(f"Validated locales: {len(actual_locales & expected_locales)}")
    print(
        "Non-allowlisted English-identical values: "
        + ", ".join(f"{locale}={count}" for locale, count in copy_counts.items())
    )

    if failures or (args.fail_on_source_copies and copy_failures):
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
