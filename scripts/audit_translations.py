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


SOURCE_COPY_MIN_LENGTH = 20
PLACEHOLDER_RE = re.compile(r"\{[^{}]+\}")
ALLOWED_SOURCE_VALUES = {
    "AI", "Android", "BMI", "BMR", "CSV", "Calorify", "Gemini Nano",
    "Google", "Google Play Store", "Health Connect", "TDEE", "UID", "USDA",
}
ALLOWED_SOURCE_PATHS = {
    ("language",), ("flag",), ("appLabel",),
    ("watch", "appTitle"), ("watch", "common", "kcal"),
}
ALLOWED_SOURCE_COPIES_BY_LOCALE = {
    ("common", "betaTag"): {
        "cs", "da", "de", "es", "fi", "id", "it", "ms", "no", "pt",
        "ro", "sv", "tl", "tr", "zh-CN",
    },
    ("meal", "questionFlow", "optionMini"): {
        "cs", "da", "de", "es", "fi", "fr", "hu", "id", "it", "ms",
        "nl", "no", "pl", "pt", "ro", "sv", "tr",
    },
    ("watch", "nutrition", "fiber"): {"no"},
    ("watch", "nutrition", "nutrient"): {"ro"},
    ("watch", "nutrition", "protein"): {"da", "id", "ms", "no", "sv", "tr", "vi"},
    ("watch", "voice", "secondsLeft"): {
        "bn", "cs", "da", "de", "es", "fi", "fr", "gu", "hi", "hu",
        "id", "it", "ms", "nl", "no", "pl", "pt", "ro", "ru", "sv",
        "tl", "vi",
    },
}
LOCALE_NAMES = {
    "ar": ("العربية", "🇸🇦"), "bn": ("বাংলা", "🇧🇩"), "cs": ("Čeština", "🇨🇿"),
    "da": ("Dansk", "🇩🇰"), "de": ("Deutsch", "🇩🇪"), "el": ("Ελληνικά", "🇬🇷"),
    "es": ("Español", "🇪🇸"), "fi": ("Suomi", "🇫🇮"), "fr": ("Français", "🇫🇷"),
    "gu": ("ગુજરાતી", "🇮🇳"), "he": ("עברית", "🇮🇱"), "hi": ("हिन्दी", "🇮🇳"),
    "hu": ("Magyar", "🇭🇺"), "id": ("Bahasa Indonesia", "🇮🇩"),
    "it": ("Italiano", "🇮🇹"), "ja": ("日本語", "🇯🇵"), "ko": ("한국어", "🇰🇷"),
    "ms": ("Bahasa Melayu", "🇲🇾"), "nl": ("Nederlands", "🇳🇱"),
    "no": ("Norsk", "🇳🇴"), "pl": ("Polski", "🇵🇱"),
    "pt": ("Português (Portugal)", "🇵🇹"), "ro": ("Română", "🇷🇴"),
    "ru": ("Русский", "🇷🇺"), "sv": ("Svenska", "🇸🇪"), "te": ("తెలుగు", "🇮🇳"),
    "th": ("ไทย", "🇹🇭"), "tl": ("Tagalog", "🇵🇭"), "tr": ("Türkçe", "🇹🇷"),
    "uk": ("Українська", "🇺🇦"), "ur": ("اردو", "🇵🇰"),
    "vi": ("Tiếng Việt", "🇻🇳"), "zh-CN": ("简体中文", "🇨🇳"),
    "zh-TW": ("繁體中文（台灣）", "🇹🇼"),
}
EXPECTED_SCRIPTS = {
    "ar": {"ARABIC"}, "bn": {"BENGALI"}, "el": {"GREEK"},
    "gu": {"GUJARATI"}, "he": {"HEBREW"}, "hi": {"DEVANAGARI"},
    "ja": {"HAN", "HIRAGANA", "KATAKANA"}, "ko": {"HAN", "HANGUL"},
    "ru": {"CYRILLIC"}, "te": {"TELUGU"}, "th": {"THAI"},
    "uk": {"CYRILLIC"}, "ur": {"ARABIC"},
    "zh-CN": {"HAN", "BOPOMOFO"}, "zh-TW": {"HAN", "BOPOMOFO"},
}
SCRIPT_NAMES = (
    "ARABIC", "BENGALI", "BOPOMOFO", "CYRILLIC", "DEVANAGARI", "GREEK",
    "GUJARATI", "HANGUL", "HEBREW", "HIRAGANA", "KATAKANA", "LATIN",
    "TELUGU", "THAI",
)
ALLOWED_ADJACENT_LATIN = {
    "AI", "Android", "BMI", "BMR", "CSV", "Calorify", "Connect", "Gemini",
    "Google", "Health", "Nano", "Play", "Store", "TDEE", "UID", "USDA",
    "kcal", "lbs",
}


def flatten(value: dict[str, Any], prefix: tuple[str, ...] = ()) -> dict[tuple[str, ...], Any]:
    result: dict[tuple[str, ...], Any] = {}
    for key, child in value.items():
        path = prefix + (key,)
        if isinstance(child, dict):
            result.update(flatten(child, path))
        else:
            result[path] = child
    return result


def placeholders(value: Any) -> list[str]:
    return sorted(PLACEHOLDER_RE.findall(str(value)))


def source_copy_is_allowed(locale: str, path: tuple[str, ...], value: str) -> bool:
    if (
        path in ALLOWED_SOURCE_PATHS
        or value in ALLOWED_SOURCE_VALUES
        or locale in ALLOWED_SOURCE_COPIES_BY_LOCALE.get(path, set())
    ):
        return True
    return not re.search(r"[A-Za-z]{3,}", value)


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
    unexpected = sorted({
        script for character in value
        if (script := character_script(character)) is not None and script not in allowed
    })
    errors = [f"unexpected script(s): {', '.join(unexpected)}"] if unexpected else []
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


def validate_source(source: dict[str, Any]) -> tuple[dict[tuple[str, ...], Any], list[str]]:
    source_flat = flatten(source)
    failures: list[str] = []
    if not source_flat:
        failures.append("English source contains no translation values")
    for key_path, value in source_flat.items():
        dotted_path = ".".join(key_path)
        if not isinstance(value, str):
            failures.append(f"en.{dotted_path}: value must be a string")
        elif not value.strip():
            failures.append(f"en.{dotted_path}: value must not be blank")
    return source_flat, failures


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--root", default=Path(__file__).resolve().parents[1])
    parser.add_argument("--locale", help="validate one locale without requiring the complete locale set")
    parser.add_argument("--source-only", action="store_true", help="validate only en.i18n.json")
    args = parser.parse_args()

    root = Path(args.root).resolve()
    i18n_dir = root / "shared_packages" / "i18n" / "lib" / "i18n"
    source_path = i18n_dir / "en.i18n.json"
    try:
        source = load_catalog(source_path)
    except (OSError, json.JSONDecodeError, ValueError) as error:
        print(f"Invalid English source {source_path}: {error}", file=sys.stderr)
        return 1

    source_flat, failures = validate_source(source)
    if failures:
        print("English source errors:", file=sys.stderr)
        for failure in failures:
            print(f"- {failure}", file=sys.stderr)
        return 1
    if args.source_only:
        print(f"English source keys: {len(source_flat)}")
        return 0

    actual_locales = {
        path.name.removesuffix(".i18n.json")
        for path in i18n_dir.glob("*.i18n.json")
        if path.name != "en.i18n.json" and not path.name.startswith("_")
    }
    expected_locales = set(LOCALE_NAMES)
    if args.locale:
        if args.locale not in expected_locales:
            print(f"Unsupported locale: {args.locale}", file=sys.stderr)
            return 2
        locales = {args.locale}
    else:
        locales = actual_locales & expected_locales
        if actual_locales != expected_locales:
            failures.append(
                "locale set mismatch: "
                f"missing={sorted(expected_locales - actual_locales)} "
                f"extra={sorted(actual_locales - expected_locales)}"
            )

    copy_failures: list[str] = []
    copy_counts: dict[str, int] = {}
    for locale in sorted(locales):
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
            if translated_value == source_value and not source_copy_is_allowed(
                locale, key_path, str(source_value)
            ):
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
    print(f"Validated locales: {len(locales)}")
    nonzero_copy_counts = {locale: count for locale, count in copy_counts.items() if count}
    copy_summary = ", ".join(
        f"{locale}={count}" for locale, count in sorted(nonzero_copy_counts.items())
    ) or "none"
    print(f"Non-allowlisted English-identical values: {copy_summary}")
    if failures or copy_failures:
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
