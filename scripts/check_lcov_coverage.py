#!/usr/bin/env python3
"""Fail when an LCOV report drops below a line-coverage baseline."""

from __future__ import annotations

import argparse
import fnmatch
from pathlib import Path


DEFAULT_EXCLUDES = (
    "*.g.dart",
    "*.freezed.dart",
    "*.gr.dart",
    "*/generated/*",
)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("report", type=Path, help="Path to coverage/lcov.info")
    parser.add_argument(
        "--minimum",
        type=float,
        required=True,
        help="Required covered-line percentage (0-100)",
    )
    parser.add_argument(
        "--exclude",
        action="append",
        default=[],
        help="Additional fnmatch pattern for source paths (repeatable)",
    )
    return parser.parse_args()


def line_coverage(report: Path, excludes: list[str]) -> tuple[int, int, list[str]]:
    if not report.is_file():
        raise ValueError(f"Coverage report does not exist: {report}")

    patterns = [*DEFAULT_EXCLUDES, *excludes]
    source: str | None = None
    line_hits: dict[int, int] = {}
    covered = 0
    found = 0
    included_sources: list[str] = []

    def finish_source() -> None:
        nonlocal covered, found, line_hits
        if source is None:
            return
        normalized = source.replace("\\", "/")
        if any(fnmatch.fnmatch(normalized, pattern) for pattern in patterns):
            line_hits = {}
            return
        included_sources.append(normalized)
        found += len(line_hits)
        covered += sum(hit_count > 0 for hit_count in line_hits.values())
        line_hits = {}

    for raw_line in report.read_text(encoding="utf-8").splitlines():
        if raw_line.startswith("SF:"):
            finish_source()
            source = raw_line[3:]
        elif raw_line.startswith("DA:") and source is not None:
            line_number, hit_count, *_ = raw_line[3:].split(",")
            line = int(line_number)
            line_hits[line] = max(line_hits.get(line, 0), int(hit_count))
        elif raw_line == "end_of_record":
            finish_source()
            source = None
    finish_source()

    if found == 0:
        raise ValueError("Coverage report contains no included executable lines")
    return covered, found, included_sources


def main() -> int:
    args = parse_args()
    if not 0 <= args.minimum <= 100:
        raise SystemExit("--minimum must be between 0 and 100")

    try:
        covered, found, sources = line_coverage(args.report, args.exclude)
    except ValueError as error:
        raise SystemExit(str(error)) from error

    percentage = covered * 100 / found
    print(
        f"LCOV line coverage: {covered}/{found} = {percentage:.2f}% "
        f"across {len(sources)} source files (minimum {args.minimum:.2f}%)"
    )
    if percentage + 1e-9 < args.minimum:
        print("Coverage gate failed. Add meaningful tests or deliberately update the reviewed baseline.")
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
