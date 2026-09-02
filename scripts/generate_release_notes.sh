#!/bin/bash

# Draft English Google Play release notes from git history.
# Usage:
#   ./scripts/generate_release_notes.sh
#   ./scripts/generate_release_notes.sh --dry-run
#   ./scripts/generate_release_notes.sh --since <git-ref>
#   ./scripts/generate_release_notes.sh --overwrite

set -euo pipefail

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

CHANGELOG_MAX_LENGTH=500
OPENAI_MODEL="gpt-5.6-luna"
DRY_RUN=false
OVERWRITE=false
SINCE_REF=""
SOURCE_TEXT=""
SOURCE_FILE=""
USE_EXISTING_ENGLISH=false
TARGET_LOCALE=""
GIT_ROOT=""
VERSION_CODE=""
PREVIOUS_VERSION_CODE=""
RELEASE_RANGE=""
TEMP_DIR=""
API_KEY=""

usage() {
    cat <<EOF
Usage:
  ./scripts/generate_release_notes.sh [options]

Options:
  --dry-run       Draft notes, but do not write the changelog file.
  --since <ref>   Override the detected previous release boundary.
  --text <text>   Use supplied English notes instead of drafting from git.
  --file <path>   Read supplied English notes from a UTF-8 text file.
  --use-existing-english
                  Read the current version's existing en-US changelog.
  --locale <id>   Generate one Google Play locale (only en-US is supported).
  --overwrite     Replace existing changelog files for the current version.
  --help          Show this help message.
EOF
}

cleanup() {
    if [ -n "${TEMP_DIR:-}" ] && [ -d "$TEMP_DIR" ]; then
        rm -rf "$TEMP_DIR"
    fi
}
trap cleanup EXIT

parse_arguments() {
    while [ $# -gt 0 ]; do
        case "$1" in
            --dry-run)
                DRY_RUN=true
                shift
                ;;
            --overwrite)
                OVERWRITE=true
                shift
                ;;
            --since)
                if [ -z "${2:-}" ]; then
                    print_error "--since requires a git ref"
                    exit 1
                fi
                SINCE_REF="$2"
                shift 2
                ;;
            --text)
                if [ -z "${2:-}" ]; then
                    print_error "--text requires non-empty English release notes"
                    exit 1
                fi
                SOURCE_TEXT="$2"
                shift 2
                ;;
            --file)
                if [ -z "${2:-}" ]; then
                    print_error "--file requires a path"
                    exit 1
                fi
                SOURCE_FILE="$2"
                shift 2
                ;;
            --use-existing-english)
                USE_EXISTING_ENGLISH=true
                shift
                ;;
            --locale)
                if [ -z "${2:-}" ]; then
                    print_error "--locale requires a Google Play locale"
                    exit 1
                fi
                TARGET_LOCALE="$2"
                shift 2
                ;;
            --help|-h)
                usage
                exit 0
                ;;
            *)
                print_error "Unknown argument: $1"
                usage
                exit 1
                ;;
        esac
    done

    local source_count=0
    if [ -n "$SOURCE_TEXT" ]; then
        source_count=$((source_count + 1))
    fi
    if [ -n "$SOURCE_FILE" ]; then
        source_count=$((source_count + 1))
    fi
    if [ "$USE_EXISTING_ENGLISH" = true ]; then
        source_count=$((source_count + 1))
    fi
    if [ "$source_count" -gt 1 ]; then
        print_error "Use only one of --text, --file, or --use-existing-english"
        exit 1
    fi
    if [ "$source_count" -gt 0 ] && [ -n "$SINCE_REF" ]; then
        print_error "--since cannot be combined with supplied English release notes"
        exit 1
    fi
}

setup_environment() {
    store_original_dir
    change_to_git_root
    GIT_ROOT="$PWD"

    if ! check_command git || ! check_command python3 || ! check_command curl; then
        exit 1
    fi

    TEMP_DIR=$(mktemp -d "/tmp/calorify_release_notes_XXXXXX")
}

extract_version_code() {
    VERSION_CODE=$(python3 - "$GIT_ROOT/app/pubspec.yaml" <<'PY'
import re
import sys
from pathlib import Path

pubspec = Path(sys.argv[1]).read_text(encoding="utf-8")
match = re.search(r"^version:\s*\d+\.\d+\.\d+\+(\d+)\s*$", pubspec, re.MULTILINE)
if not match:
    sys.exit(1)
print(match.group(1))
PY
)

    if [ -z "$VERSION_CODE" ]; then
        print_error "Could not extract version code from app/pubspec.yaml"
        exit 1
    fi
}

resolve_api_key() {
    API_KEY=$(python3 "$SCRIPT_DIR/resolve_openai_api_key.py" "$GIT_ROOT")
    local status=$?
    if [ "$status" -ne 0 ] || [ -z "$API_KEY" ]; then
        print_error "Failed to resolve OpenAI API key; see scripts/resolve_openai_api_key.py"
        exit 1
    fi
}

select_output_locales() {
    if [ -n "$TARGET_LOCALE" ] && [ "$TARGET_LOCALE" != "en-US" ]; then
        print_error "Only the en-US Google Play locale is supported"
        exit 1
    fi
}

has_supplied_english() {
    [ -n "$SOURCE_TEXT" ] || [ -n "$SOURCE_FILE" ] || [ "$USE_EXISTING_ENGLISH" = true ]
}

resolve_supplied_english_file() {
    if [ "$USE_EXISTING_ENGLISH" = true ]; then
        SOURCE_FILE="$GIT_ROOT/fastlane/metadata/android/en-US/changelogs/$VERSION_CODE.txt"
    elif [ -n "$SOURCE_FILE" ] && [[ "$SOURCE_FILE" != /* ]]; then
        SOURCE_FILE="$GIT_ROOT/$SOURCE_FILE"
    fi

    if [ -n "$SOURCE_FILE" ] && [ ! -f "$SOURCE_FILE" ]; then
        print_error "English release-note file not found: $SOURCE_FILE"
        exit 1
    fi
}

requires_api_key() {
    if ! has_supplied_english; then
        return 0
    fi
    return 1
}

current_changelog_exists() {
    if [ -f "$GIT_ROOT/fastlane/metadata/android/en-US/changelogs/$VERSION_CODE.txt" ]; then
        print_warning "Existing changelog: fastlane/metadata/android/en-US/changelogs/$VERSION_CODE.txt"
        return 0
    fi
    return 1
}

find_previous_version_code() {
    if [ -n "$SINCE_REF" ]; then
        return
    fi

    PREVIOUS_VERSION_CODE=$(python3 - "$GIT_ROOT/fastlane/metadata/android/en-US/changelogs" "$VERSION_CODE" <<'PY'
import sys
from pathlib import Path

changelog_dir = Path(sys.argv[1])
current = int(sys.argv[2])
previous = []
if changelog_dir.exists():
    for path in changelog_dir.glob("*.txt"):
        try:
            version_code = int(path.stem)
        except ValueError:
            continue
        if version_code < current:
            previous.append(version_code)
if previous:
    print(max(previous))
PY
)

    if [ -z "$PREVIOUS_VERSION_CODE" ]; then
        print_error "No previous English changelog found below version $VERSION_CODE. Use --since <ref>."
        exit 1
    fi
}

determine_release_range() {
    local boundary_ref=""

    if [ -n "$SINCE_REF" ]; then
        if ! git rev-parse --verify "$SINCE_REF^{commit}" >/dev/null 2>&1; then
            print_error "Invalid --since git ref: $SINCE_REF"
            exit 1
        fi
        boundary_ref="$SINCE_REF"
    else
        local previous_file="fastlane/metadata/android/en-US/changelogs/$PREVIOUS_VERSION_CODE.txt"
        boundary_ref=$(git log -1 --format='%H' -- "$previous_file")
        if [ -z "$boundary_ref" ]; then
            print_error "Could not find the commit that introduced $previous_file"
            exit 1
        fi
    fi

    RELEASE_RANGE="$boundary_ref..HEAD"

    local commit_count
    commit_count=$(git rev-list --count "$RELEASE_RANGE")
    if [ "$commit_count" -eq 0 ]; then
        print_error "No commits found in release range: $RELEASE_RANGE"
        exit 1
    fi
}

build_release_context() {
    local context_file="$1"
    local commits_file="$TEMP_DIR/commits.txt"
    local files_file="$TEMP_DIR/files.txt"
    local stats_file="$TEMP_DIR/stats.txt"

    git log --no-merges --pretty=format:'- %s (%h)' "$RELEASE_RANGE" > "$commits_file"

    git diff --name-only "$RELEASE_RANGE" -- . \
        ':(exclude)shared_packages/i18n/lib/i18n/*.i18n.json' \
        ':(exclude)**/*.g.dart' \
        ':(exclude)**/*.lock' \
        ':(exclude)**/build/**' \
        ':(exclude).dart_tool/**' \
        ':(exclude)fastlane/metadata/android/**/changelogs/*.txt' \
        > "$files_file"

    git diff --stat=80,40 "$RELEASE_RANGE" -- . \
        ':(exclude)shared_packages/i18n/lib/i18n/*.i18n.json' \
        ':(exclude)**/*.g.dart' \
        ':(exclude)**/*.lock' \
        ':(exclude)**/build/**' \
        ':(exclude).dart_tool/**' \
        ':(exclude)fastlane/metadata/android/**/changelogs/*.txt' \
        > "$stats_file"

    python3 - "$context_file" "$commits_file" "$files_file" "$stats_file" "$VERSION_CODE" "${PREVIOUS_VERSION_CODE:-manual}" "$RELEASE_RANGE" <<'PY'
import sys
from pathlib import Path

context_file, commits_file, files_file, stats_file, current, previous, release_range = sys.argv[1:]

def limited_lines(path: str, limit: int) -> str:
    lines = Path(path).read_text(encoding="utf-8").splitlines()
    if len(lines) > limit:
        lines = lines[:limit] + [f"... truncated {len(lines) - limit} more lines"]
    return "\n".join(lines) if lines else "(none)"

context = f"""App: Calorify, an AI-powered calorie tracking and nutrition companion app.
Current Android version code: {current}
Previous release marker: {previous}
Git range: {release_range}

Commit subjects:
{limited_lines(commits_file, 120)}

Changed first-party files, excluding generated and noisy files:
{limited_lines(files_file, 160)}

Compact diff stats:
{limited_lines(stats_file, 80)}
"""

Path(context_file).write_text(context, encoding="utf-8")
PY
}

write_prompt_file() {
    local file="$1"
    shift
    printf "%s\n" "$*" > "$file"
}

call_openai_json() {
    local system_file="$1"
    local user_file="$2"
    local field="$3"
    local output_file="$4"
    local payload_file="$TEMP_DIR/payload_$(basename "$output_file").json"
    local response_file="$TEMP_DIR/response_$(basename "$output_file").json"
    local http_code

    python3 - "$system_file" "$user_file" "$payload_file" "$OPENAI_MODEL" <<'PY'
import json
import sys
from pathlib import Path

system_file, user_file, payload_file, model = sys.argv[1:]
payload = {
    "model": model,
    "messages": [
        {"role": "system", "content": Path(system_file).read_text(encoding="utf-8")},
        {"role": "user", "content": Path(user_file).read_text(encoding="utf-8")},
    ],
    "response_format": {"type": "json_object"},
}
Path(payload_file).write_text(json.dumps(payload, ensure_ascii=False), encoding="utf-8")
PY

    if ! http_code=$(curl -sS -o "$response_file" -w "%{http_code}" \
        https://api.openai.com/v1/chat/completions \
        -H "Content-Type: application/json" \
        -H "Authorization: Bearer $API_KEY" \
        -d "@$payload_file"); then
        print_error "OpenAI request failed"
        return 1
    fi

    if [ "$http_code" -lt 200 ] || [ "$http_code" -gt 299 ]; then
        python3 - "$response_file" <<'PY' >&2
import json
import sys
from pathlib import Path

try:
    data = json.loads(Path(sys.argv[1]).read_text(encoding="utf-8"))
    print(data.get("error", {}).get("message", "OpenAI API error"))
except Exception:
    print("OpenAI API error")
PY
        return 1
    fi

    python3 - "$response_file" "$field" "$output_file" <<'PY'
import json
import re
import sys
from pathlib import Path

response_file, field, output_file = sys.argv[1:]
data = json.loads(Path(response_file).read_text(encoding="utf-8"))
content = data["choices"][0]["message"]["content"].strip()

if content.startswith("```"):
    content = re.sub(r"^```(?:json)?\s*", "", content)
    content = re.sub(r"\s*```$", "", content)

try:
    parsed = json.loads(content)
except json.JSONDecodeError:
    match = re.search(r"\{.*\}", content, re.S)
    if not match:
        raise
    parsed = json.loads(match.group(0))

value = parsed.get(field)
if not isinstance(value, str) or not value.strip():
    raise ValueError(f"Missing JSON string field: {field}")

Path(output_file).write_text(value.strip() + "\n", encoding="utf-8")
PY
}

text_length() {
    python3 - "$1" <<'PY'
import sys
from pathlib import Path

text = Path(sys.argv[1]).read_text(encoding="utf-8").rstrip("\n")
print(len(text))
PY
}

normalize_english_text_file() {
    python3 - "$1" <<'PY'
import sys
from pathlib import Path

path = Path(sys.argv[1])
text = path.read_text(encoding="utf-8").replace("\r\n", "\n").replace("\r", "\n")
replacements = {
    "•": "-",
    "–": "-",
    "—": "-",
    "‘": "'",
    "’": "'",
    "“": '"',
    "”": '"',
    "…": "...",
    "\u00a0": " ",
}
for source, target in replacements.items():
    text = text.replace(source, target)

lines = [line.rstrip() for line in text.splitlines()]
text = "\n".join(lines).strip() + "\n"
lines = text.splitlines()
if not 1 <= len(lines) <= 4 or any(not line for line in lines):
    raise SystemExit("Release notes must contain 1 to 4 nonempty lines")
if any(not line.startswith("- ") or len(line) <= 12 for line in lines):
    raise SystemExit("Release note lines must start with '- ' and contain meaningful text")
invalid = sorted({char for char in text if char != "\n" and not 0x20 <= ord(char) <= 0x7E})
if invalid:
    rendered = ", ".join(f"U+{ord(char):04X}" for char in invalid)
    raise SystemExit(f"Release notes contain unsupported characters: {rendered}")
if "<" in text or ">" in text:
    raise SystemExit("Release notes must not contain angle-bracket markup")

path.write_text(text, encoding="ascii")
PY
}

validate_text_file_length() {
    local file="$1"
    local length
    length=$(text_length "$file")
    [ "$length" -le "$CHANGELOG_MAX_LENGTH" ]
}

compress_text() {
    local input_file="$1"
    local locale_name="$2"
    local output_file="$3"
    local system_file="$TEMP_DIR/compress_system.txt"
    local user_file="$TEMP_DIR/compress_user_$(basename "$output_file").txt"

    write_prompt_file "$system_file" "You shorten Google Play release notes for $locale_name. Preserve the meaning, bullet formatting, and language. Do not add new information. Return JSON exactly as {\"text\":\"...\"}. The text must be at most $CHANGELOG_MAX_LENGTH Unicode characters."
    {
        echo "Shorten this release note text to at most $CHANGELOG_MAX_LENGTH characters:"
        echo
        cat "$input_file"
    } > "$user_file"

    call_openai_json "$system_file" "$user_file" "text" "$output_file"
}

ensure_within_limit() {
    local file="$1"
    local locale="$2"
    local locale_name="$3"
    local compressed_file="$TEMP_DIR/compressed_${locale}.txt"
    local length

    if validate_text_file_length "$file"; then
        return 0
    fi

    length=$(text_length "$file")
    print_warning "$locale generated text is $length/$CHANGELOG_MAX_LENGTH characters; retrying with a compression prompt"

    compress_text "$file" "$locale_name" "$compressed_file"
    mv "$compressed_file" "$file"
    normalize_english_text_file "$file"

    if validate_text_file_length "$file"; then
        return 0
    fi

    length=$(text_length "$file")
    print_error "$locale release notes still exceed $CHANGELOG_MAX_LENGTH characters after retry ($length characters)"
    return 1
}

draft_english_notes() {
    local context_file="$1"
    local output_file="$2"
    local system_file="$TEMP_DIR/draft_system.txt"

    write_prompt_file "$system_file" "You write concise Google Play Store release notes for Calorify. Use only the provided git context. Include only user-facing changes; ignore internal refactors, generated files, version bumps, CI-only work, and dependency churn unless users benefit directly. Use 2 to 4 short bullet lines, no heading, professional friendly tone, and at most $CHANGELOG_MAX_LENGTH Unicode characters. Return JSON exactly as {\"notes\":\"...\"}."

    call_openai_json "$system_file" "$context_file" "notes" "$output_file"
    normalize_english_text_file "$output_file"
    ensure_within_limit "$output_file" "en-US" "English (United States)"
}

generate_all_notes() {
    local context_file="$TEMP_DIR/release_context.txt"
    local english_file="$TEMP_DIR/en-US.txt"

    if has_supplied_english; then
        print_step "3" "Preparing supplied English release notes"
        if [ -n "$SOURCE_TEXT" ]; then
            printf '%s\n' "$SOURCE_TEXT" > "$english_file"
        else
            cp "$SOURCE_FILE" "$english_file"
        fi
        normalize_english_text_file "$english_file"
        if ! validate_text_file_length "$english_file"; then
            print_error "English release notes exceed $CHANGELOG_MAX_LENGTH characters"
            exit 1
        fi
        print_success "Prepared en-US ($(text_length "$english_file")/$CHANGELOG_MAX_LENGTH chars)"
        echo ""
    else
        print_step "3" "Collecting release context"
        build_release_context "$context_file"
        print_success "Release context ready"
        echo ""

        print_step "4" "Drafting English release notes"
        draft_english_notes "$context_file" "$english_file"
        print_success "Drafted en-US ($(text_length "$english_file")/$CHANGELOG_MAX_LENGTH chars)"
        echo ""
    fi

}

print_dry_run_output() {
    print_separator
    print_info "Dry run: generated release notes were not written"
    echo ""
    echo "[en-US] ($(text_length "$TEMP_DIR/en-US.txt")/$CHANGELOG_MAX_LENGTH chars)"
    cat "$TEMP_DIR/en-US.txt"
    echo ""
}

write_changelog_files() {
    local target_dir="$GIT_ROOT/fastlane/metadata/android/en-US/changelogs"
    local target_file="$target_dir/$VERSION_CODE.txt"

    print_step "5" "Writing Fastlane changelog file"
    mkdir -p "$target_dir"
    cp "$TEMP_DIR/en-US.txt" "$target_file"
    print_success "Created fastlane/metadata/android/en-US/changelogs/$VERSION_CODE.txt"
}

main() {
    parse_arguments "$@"
    setup_environment

    print_header "Release Notes Automation"

    extract_version_code
    select_output_locales
    resolve_supplied_english_file

    print_step "1" "Checking release metadata"
    print_info "Current version code: $VERSION_CODE"
    print_info "Target locale: en-US"
    if current_changelog_exists; then
        if [ "$DRY_RUN" = true ]; then
            print_warning "Continuing because --dry-run does not write files"
        elif [ "$OVERWRITE" = true ]; then
            print_warning "Continuing because --overwrite was provided"
        else
            print_error "Changelog files for version $VERSION_CODE already exist. Use --overwrite to replace them."
            exit 1
        fi
    fi
    print_success "Release metadata checks completed"
    echo ""

    if has_supplied_english; then
        print_step "2" "Using supplied English release notes"
        if [ -n "$SOURCE_FILE" ]; then
            print_info "Source: $SOURCE_FILE"
        else
            print_info "Source: --text"
        fi
        print_success "Release-note source selected"
        echo ""
    else
        print_step "2" "Determining release boundary"
        find_previous_version_code
        determine_release_range
        if [ -n "$SINCE_REF" ]; then
            print_info "Using manual boundary: $SINCE_REF"
        else
            print_info "Previous version code: $PREVIOUS_VERSION_CODE"
        fi
        print_info "Git range: $RELEASE_RANGE"
        print_success "Release boundary detected"
        echo ""
    fi

    if requires_api_key; then
        resolve_api_key
    fi
    generate_all_notes

    if [ "$DRY_RUN" = true ]; then
        print_dry_run_output
    else
        write_changelog_files
        print_separator
        print_summary_all_success "English release notes generated"
    fi
}

main "$@"
