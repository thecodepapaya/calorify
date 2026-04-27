#!/usr/bin/env python3
"""
Resolve the OpenAI API key for local scripts (release notes, etc.).

Resolution order (first match wins):
1. OPENAI_API_KEY environment variable
2. scripts/.openai_api_key in the repository (first non-empty line, trimmed; no shell parsing)
3. API_KEY= assignment in scripts/generate_translations.sh (tolerant: optional export, flexible
   spaces around =, double- or single-quoted or unquoted value; ignores full-line # comments)
"""

from __future__ import annotations

import ast
import os
import re
import sys
from pathlib import Path


def _strip_trailing_unquoted_hash_comment(rest: str) -> str:
    in_single = in_double = False
    for i, c in enumerate(rest):
        if c == "'" and not in_double:
            in_single = not in_single
        elif c == '"' and not in_single:
            in_double = not in_double
        elif c == "#" and not in_single and not in_double:
            return rest[:i].rstrip()
    return rest.rstrip()


def _value_from_assignment_tail(tail: str) -> str | None:
    """tail is the part after 'API_KEY=' (possibly with leading space already consumed)."""
    tail = tail.lstrip()
    if not tail:
        return None
    tail = _strip_trailing_unquoted_hash_comment(tail)
    if not tail:
        return None
    if tail[0] in "\"'":
        try:
            out = ast.literal_eval(tail)
        except (ValueError, SyntaxError, MemoryError, RecursionError):
            return None
        return out if isinstance(out, str) else None
    # Unquoted: first shell token
    m = re.match(r"^(\S+)", tail)
    return m.group(1) if m else None


def extract_api_key_from_shell_file(path: Path) -> str | None:
    try:
        text = path.read_text(encoding="utf-8")
    except OSError:
        return None
    for raw_line in text.splitlines():
        line = raw_line.strip()
        if not line or line.lstrip().startswith("#"):
            continue
        m = re.match(
            r"^(?:export\s+)?API_KEY\s*=\s*(.*)$",
            line,
        )
        if not m:
            continue
        value = _value_from_assignment_tail(m.group(1))
        if value:
            return value
    return None


def from_dotfile(scripts_dir: Path) -> str | None:
    p = scripts_dir / ".openai_api_key"
    if not p.is_file():
        return None
    try:
        for line in p.read_text(encoding="utf-8").splitlines():
            s = line.strip()
            if s and not s.lstrip().startswith("#"):
                return s
    except OSError:
        return None
    return None


def main() -> int:
    if len(sys.argv) < 2:
        print("Usage: resolve_openai_api_key.py <git_root>", file=sys.stderr)
        return 1
    root = Path(sys.argv[1]).resolve()
    scripts_dir = root / "scripts"

    env_key = os.environ.get("OPENAI_API_KEY", "").strip()
    if env_key:
        print(env_key, end="")
        return 0

    from_file = from_dotfile(scripts_dir)
    if from_file:
        print(from_file, end="")
        return 0

    path = scripts_dir / "generate_translations.sh"
    from_script = extract_api_key_from_shell_file(path)
    if from_script:
        print(from_script, end="")
        return 0

    print(
        "No OpenAI API key found. Set OPENAI_API_KEY, add scripts/.openai_api_key "
        f"(one line), or set API_KEY in {path.name}.",
        file=sys.stderr,
    )
    return 1


if __name__ == "__main__":
    raise SystemExit(main())
