#!/usr/bin/env python3
"""Translate one Calorify locale through OpenRouter with strict catalog validation."""

from __future__ import annotations

import argparse
import json
import os
import re
import sys
import tempfile
import time
import urllib.error
import urllib.request
from pathlib import Path
from typing import Any


DEFAULT_MODEL = "openai/gpt-5-mini"
CONFIGURED_MODEL = os.environ.get("OPENROUTER_TRANSLATION_MODEL", "").strip()
LOCALE_MODEL_OVERRIDES = {
    # The default model produced mixed-script or materially unnatural output
    # for these catalogs during manual review.
    "bn": "google/gemini-2.5-flash",
    "el": "google/gemini-2.5-flash",
    "gu": "google/gemini-2.5-flash",
    "he": "google/gemini-2.5-flash",
    "te": "google/gemini-2.5-flash",
}
ENDPOINT = "https://openrouter.ai/api/v1/chat/completions"
MAX_KEYS_PER_REQUEST = 100
ALLOWED_SOURCE_VALUES = {
    "AI",
    "Android",
    "BMI",
    "BMR",
    "CSV",
    "Calorify",
    "Google",
    "Google Play Store",
    "Gemini Nano",
    "Health Connect",
    "TDEE",
    "UID",
    "USDA",
}
PLACEHOLDER_RE = re.compile(r"\{[^{}]+\}")

LOCALE_NAMES = {
    "ar": ("العربية", "🇸🇦"),
    "bn": ("বাংলা", "🇧🇩"),
    "cs": ("Čeština", "🇨🇿"),
    "da": ("Dansk", "🇩🇰"),
    "de": ("Deutsch", "🇩🇪"),
    "el": ("Ελληνικά", "🇬🇷"),
    "es": ("Español", "🇪🇸"),
    "fi": ("Suomi", "🇫🇮"),
    "fr": ("Français", "🇫🇷"),
    "gu": ("ગુજરાતી", "🇮🇳"),
    "he": ("עברית", "🇮🇱"),
    "hi": ("हिन्दी", "🇮🇳"),
    "hu": ("Magyar", "🇭🇺"),
    "id": ("Bahasa Indonesia", "🇮🇩"),
    "it": ("Italiano", "🇮🇹"),
    "ja": ("日本語", "🇯🇵"),
    "ko": ("한국어", "🇰🇷"),
    "ms": ("Bahasa Melayu", "🇲🇾"),
    "nl": ("Nederlands", "🇳🇱"),
    "no": ("Norsk", "🇳🇴"),
    "pl": ("Polski", "🇵🇱"),
    "pt": ("Português (Portugal)", "🇵🇹"),
    "ro": ("Română", "🇷🇴"),
    "ru": ("Русский", "🇷🇺"),
    "sv": ("Svenska", "🇸🇪"),
    "te": ("తెలుగు", "🇮🇳"),
    "th": ("ไทย", "🇹🇭"),
    "tl": ("Tagalog", "🇵🇭"),
    "tr": ("Türkçe", "🇹🇷"),
    "uk": ("Українська", "🇺🇦"),
    "ur": ("اردو", "🇵🇰"),
    "vi": ("Tiếng Việt", "🇻🇳"),
    "zh-CN": ("简体中文", "🇨🇳"),
    "zh-TW": ("繁體中文（台灣）", "🇹🇼"),
}


def parse_env_value(path: Path, name: str) -> str | None:
    try:
        lines = path.read_text(encoding="utf-8").splitlines()
    except OSError:
        return None
    pattern = re.compile(rf"^(?:export\s+)?{re.escape(name)}\s*=\s*(.*)$")
    for raw_line in lines:
        line = raw_line.strip()
        if not line or line.startswith("#"):
            continue
        match = pattern.match(line)
        if not match:
            continue
        value = match.group(1).strip()
        if len(value) >= 2 and value[0] == value[-1] and value[0] in "\"'":
            value = value[1:-1]
        if value:
            return value
    return None


def resolve_api_key(root: Path) -> str | None:
    environment = os.environ.get("OPENROUTER_API_KEY", "").strip()
    if environment:
        return environment
    dotfile = root / "scripts" / ".openrouter_api_key"
    try:
        for line in dotfile.read_text(encoding="utf-8").splitlines():
            value = line.strip()
            if value and not value.startswith("#"):
                return value
    except OSError:
        pass
    for candidate in (root / "backend" / "staging.env", root / "backend" / "production.env"):
        value = parse_env_value(candidate, "OPENROUTER_API_KEY")
        if value:
            return value
    return None


def flatten(value: dict[str, Any], prefix: tuple[str, ...] = ()) -> dict[tuple[str, ...], Any]:
    result: dict[tuple[str, ...], Any] = {}
    for key, child in value.items():
        path = prefix + (key,)
        if isinstance(child, dict):
            result.update(flatten(child, path))
        else:
            result[path] = child
    return result


def set_path(value: dict[str, Any], path: tuple[str, ...], child: Any) -> None:
    cursor = value
    for key in path[:-1]:
        cursor = cursor.setdefault(key, {})
    cursor[path[-1]] = child


def subset_for_paths(source: dict[str, Any], paths: list[tuple[str, ...]]) -> dict[str, Any]:
    flat_source = flatten(source)
    result: dict[str, Any] = {}
    for path in paths:
        set_path(result, path, flat_source[path])
    return result


def chunk_paths(paths: list[tuple[str, ...]]) -> list[list[tuple[str, ...]]]:
    """Keep translation responses small enough for strict, lossless JSON output."""
    return [paths[index : index + MAX_KEYS_PER_REQUEST] for index in range(0, len(paths), MAX_KEYS_PER_REQUEST)]


def source_copy_is_allowed(path: tuple[str, ...], value: str) -> bool:
    if path in {("language",), ("flag",), ("appLabel",)} or value in ALLOWED_SOURCE_VALUES:
        return True
    return not re.search(r"[A-Za-z]{3,}", value)


def placeholders(value: Any) -> list[str]:
    return sorted(PLACEHOLDER_RE.findall(str(value)))


def extract_json(content: str) -> dict[str, Any]:
    stripped = content.strip()
    if stripped.startswith("```"):
        stripped = re.sub(r"^```(?:json)?\s*", "", stripped)
        stripped = re.sub(r"\s*```$", "", stripped)
    parsed = json.loads(stripped)
    if not isinstance(parsed, dict):
        raise ValueError("model response is not a JSON object")
    return parsed


def validate_translation(source: dict[str, Any], translated: dict[str, Any]) -> None:
    source_flat = flatten(source)
    translated_flat = flatten(translated)
    if source_flat.keys() != translated_flat.keys():
        missing = [".".join(path) for path in source_flat.keys() - translated_flat.keys()]
        extra = [".".join(path) for path in translated_flat.keys() - source_flat.keys()]
        raise ValueError(f"key mismatch; missing={missing[:10]} extra={extra[:10]}")
    for path, source_value in source_flat.items():
        translated_value = translated_flat[path]
        if not isinstance(translated_value, str):
            raise ValueError(f"{'.'.join(path)} is not a string")
        if placeholders(source_value) != placeholders(translated_value):
            raise ValueError(f"placeholder mismatch at {'.'.join(path)}")


def request_translation(api_key: str, locale: str, source: dict[str, Any]) -> tuple[dict[str, Any], dict[str, Any]]:
    locale_name, _ = LOCALE_NAMES[locale]
    system = (
        "You are a meticulous professional mobile-app localization editor. "
        "Translate every user-facing JSON string naturally from English into "
        f"{locale_name} ({locale}). Preserve the JSON structure and keys exactly. "
        "Preserve every {placeholder} exactly, including braces, and preserve meaningful newlines. "
        "Keep Calorify, Health Connect, Play Store, Google, Gemini Nano, USDA, Android, AI, BMI, BMR, TDEE, CSV, UID, "
        "units, and version tokens unchanged where linguistically appropriate. Translate all other "
        "phrases, including tips, accessibility labels, privacy/legal text, errors, and technical UI labels. "
        "Use concise, idiomatic product language and the source's encouraging, non-judgmental tone. "
        "Do not add explanations. Return only one valid JSON object."
    )
    body = {
        "model": CONFIGURED_MODEL or LOCALE_MODEL_OVERRIDES.get(locale, DEFAULT_MODEL),
        "messages": [
            {"role": "system", "content": system},
            {"role": "user", "content": json.dumps(source, ensure_ascii=False)},
        ],
        "response_format": {"type": "json_object"},
        "temperature": 0.2,
        "max_tokens": 30000,
    }
    request = urllib.request.Request(
        ENDPOINT,
        data=json.dumps(body).encode("utf-8"),
        headers={
            "Authorization": f"Bearer {api_key}",
            "Content-Type": "application/json",
            "HTTP-Referer": "https://github.com/thecodepapaya/calorify",
            "X-Title": "Calorify translation generator",
        },
        method="POST",
    )
    with urllib.request.urlopen(request, timeout=300) as response:
        payload = json.loads(response.read().decode("utf-8"))
    content = payload["choices"][0]["message"]["content"]
    return extract_json(content), payload.get("usage", {})


def translate_with_retries(api_key: str, locale: str, source: dict[str, Any]) -> tuple[dict[str, Any], dict[str, Any]]:
    last_error: Exception | None = None
    for attempt in range(1, 4):
        try:
            translated, usage = request_translation(api_key, locale, source)
            validate_translation(source, translated)
            return translated, usage
        except (urllib.error.HTTPError, urllib.error.URLError, TimeoutError, KeyError, json.JSONDecodeError, ValueError) as error:
            last_error = error
            if isinstance(error, urllib.error.HTTPError):
                try:
                    detail = error.read().decode("utf-8")[:1000]
                except OSError:
                    detail = ""
                print(f"Attempt {attempt} failed with HTTP {error.code}: {detail}", file=sys.stderr)
                if error.code < 500 and error.code != 429:
                    break
            else:
                print(f"Attempt {attempt} failed: {error}", file=sys.stderr)
            time.sleep(attempt * 2)
    raise RuntimeError(f"translation failed after retries: {last_error}")


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--root", required=True)
    parser.add_argument("--locale")
    parser.add_argument("--full", action="store_true")
    parser.add_argument("--source-copies", action="store_true")
    parser.add_argument(
        "--path",
        action="append",
        default=[],
        help="translate one dotted source path; may be repeated",
    )
    parser.add_argument("--check-config", action="store_true")
    args = parser.parse_args()

    root = Path(args.root).resolve()
    api_key = resolve_api_key(root)
    if args.check_config:
        return 0 if api_key else 1
    if not api_key:
        print("No OpenRouter API key found", file=sys.stderr)
        return 1
    if not args.locale or args.locale not in LOCALE_NAMES:
        print(f"Unsupported or missing locale: {args.locale}", file=sys.stderr)
        return 1

    i18n_dir = root / "shared_packages" / "i18n" / "lib" / "i18n"
    source = json.loads((i18n_dir / "en.i18n.json").read_text(encoding="utf-8"))
    target_path = i18n_dir / f"{args.locale}.i18n.json"
    existing = json.loads(target_path.read_text(encoding="utf-8")) if target_path.exists() else {}

    source_flat = flatten(source)
    existing_flat = flatten(existing)
    selected_modes = int(args.full) + int(args.source_copies) + int(bool(args.path))
    if selected_modes > 1:
        print("--full, --source-copies, and --path are mutually exclusive", file=sys.stderr)
        return 1
    if args.full:
        paths = list(source_flat)
    elif args.source_copies:
        paths = [
            path
            for path, source_value in source_flat.items()
            if existing_flat.get(path) == source_value
            and not source_copy_is_allowed(path, str(source_value))
        ]
    elif args.path:
        paths = [tuple(item.split(".")) for item in args.path]
        invalid_paths = [".".join(path) for path in paths if path not in source_flat]
        if invalid_paths:
            print(f"Unknown source path(s): {', '.join(invalid_paths)}", file=sys.stderr)
            return 1
    else:
        paths = [path for path in source_flat if path not in existing_flat]
    if not paths:
        print("0 new translations")
        print("Total requests: 0")
        return 0

    output = {} if args.full else existing
    total_usage = {"prompt_tokens": 0, "completion_tokens": 0}
    requests = 0
    path_chunks = chunk_paths(paths)
    for chunk_index, path_chunk in enumerate(path_chunks, start=1):
        request_source = subset_for_paths(source, path_chunk)
        translated, usage = translate_with_retries(api_key, args.locale, request_source)
        for path, value in flatten(translated).items():
            set_path(output, path, value)
        for key in total_usage:
            total_usage[key] += int(usage.get(key, 0) or 0)
        requests += 1
        print(
            f"Validated chunk {chunk_index}/{len(path_chunks)} "
            f"({len(path_chunk)} keys)",
            file=sys.stderr,
            flush=True,
        )

    locale_name, flag = LOCALE_NAMES[args.locale]
    output["language"] = locale_name
    output["flag"] = flag
    output["appLabel"] = source["appLabel"]
    validate_translation(source, output)

    target_path.parent.mkdir(parents=True, exist_ok=True)
    with tempfile.NamedTemporaryFile("w", encoding="utf-8", dir=target_path.parent, delete=False) as handle:
        json.dump(output, handle, ensure_ascii=False, indent=2)
        handle.write("\n")
        temporary_path = Path(handle.name)
    os.replace(temporary_path, target_path)

    print(f"{len(paths)} new translations")
    print(f"Model: {CONFIGURED_MODEL or LOCALE_MODEL_OVERRIDES.get(args.locale, DEFAULT_MODEL)}")
    print(f"Total requests: {requests}")
    print(f"Input tokens: {total_usage['prompt_tokens']}")
    print(f"Output tokens: {total_usage['completion_tokens']}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
