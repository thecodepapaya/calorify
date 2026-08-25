#!/usr/bin/env python3
"""Resolve the OpenAI token used by repository generation scripts."""

from __future__ import annotations

import os
import sys
from pathlib import Path


def resolve_api_key(root: Path, environment: dict[str, str] | None = None) -> str | None:
    environment = os.environ if environment is None else environment
    value = environment.get("OPENAI_API_KEY", "").strip()
    if value:
        return value

    token_file = root / "scripts" / ".openai_api_key"
    try:
        for line in token_file.read_text(encoding="utf-8").splitlines():
            value = line.strip()
            if value and not value.startswith("#"):
                return value
    except OSError:
        pass
    return None


def main() -> int:
    if len(sys.argv) != 2:
        print("Usage: resolve_openai_api_key.py <git-root>", file=sys.stderr)
        return 2

    root = Path(sys.argv[1]).resolve()
    value = resolve_api_key(root)
    if not value:
        print(
            "No OpenAI token found. Set OPENAI_API_KEY or put the token on one "
            f"line in {root / 'scripts' / '.openai_api_key'}.",
            file=sys.stderr,
        )
        return 1
    print(value, end="")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
