#!/bin/bash

# Generate every non-English catalog through slang_gpt, validate the results,
# and regenerate Slang's Dart output.

set -o pipefail

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/common.sh"

# Keep the shared colored output style while avoiding glyphs that render
# inconsistently in GitHub Actions logs.
CHECK="OK"
CROSS="FAIL"
WARNING="WARN"
INFO="INFO"
SPARKLE=""
ARROW="->"

FULL_TRANSLATION=false
MAX_PARALLEL_JOBS=3
ORIGINAL_DIR="$PWD"
GIT_ROOT=""
I18N_PKG_DIR=""
I18N_DIR="lib/i18n"
API_KEY=""
RUN_DIR=""
RUN_SUCCEEDED=false
LOCALES=()
FAILED_LOCALES=()

usage() {
    cat <<'EOF'
Usage: ./scripts/generate_translations.sh [options]

Options:
  --full, -f          Regenerate every translation instead of only missing keys.
  --jobs N, -j N      Translate up to N locales concurrently (default: 3).
  --help, -h          Show this help.

OpenAI token lookup:
  1. OPENAI_API_KEY environment variable
  2. scripts/.openai_api_key (one token on one line; gitignored)
EOF
}

positive_integer() {
    [[ "$1" =~ ^[1-9][0-9]*$ ]]
}

parse_arguments() {
    while [ "$#" -gt 0 ]; do
        case "$1" in
            --full|-f)
                FULL_TRANSLATION=true
                shift
                ;;
            --jobs|-j)
                if [ "$#" -lt 2 ] || ! positive_integer "$2"; then
                    print_error "$1 requires a positive integer"
                    return 2
                fi
                MAX_PARALLEL_JOBS="$2"
                shift 2
                ;;
            --help|-h)
                usage
                exit 0
                ;;
            *)
                print_error "Unknown argument: $1"
                usage
                return 2
                ;;
        esac
    done
}

setup() {
    check_command git || return 1
    check_command dart || return 1
    check_command python3 || return 1

    GIT_ROOT=$(git -C "$ORIGINAL_DIR" rev-parse --show-toplevel 2>/dev/null) || {
        print_error "Run this script from inside the Calorify repository"
        return 1
    }
    I18N_PKG_DIR="$GIT_ROOT/shared_packages/i18n"
    if [ ! -d "$I18N_PKG_DIR/$I18N_DIR" ]; then
        print_error "Translation directory not found: $I18N_PKG_DIR/$I18N_DIR"
        return 1
    fi

    API_KEY=$(python3 "$SCRIPT_DIR/resolve_openai_api_key.py" "$GIT_ROOT") || return 1
    RUN_DIR=$(mktemp -d "${TMPDIR:-/tmp}/calorify-translations.XXXXXX") || return 1
    mkdir -p "$RUN_DIR/logs" "$RUN_DIR/results"

    cd "$I18N_PKG_DIR" || return 1
}

cleanup() {
    local status=$?
    cd "$ORIGINAL_DIR" 2>/dev/null || true
    if [ -n "$RUN_DIR" ] && [ -d "$RUN_DIR" ]; then
        if [ "$RUN_SUCCEEDED" = true ]; then
            rm -rf -- "$RUN_DIR"
        else
            print_warning "Translation logs were preserved at $RUN_DIR"
        fi
    fi
    return "$status"
}

collect_locales() {
    local path
    local locale
    LOCALES=()
    for path in "$I18N_DIR"/*.i18n.json; do
        [ -f "$path" ] || continue
        locale=$(basename "$path" .i18n.json)
        case "$locale" in
            en|_*) continue ;;
        esac
        LOCALES+=("$locale")
    done
    if [ "${#LOCALES[@]}" -eq 0 ]; then
        print_error "No non-English locale catalogs found"
        return 1
    fi
}

translate_locale() {
    local locale=$1
    local locale_log="$RUN_DIR/logs/$locale.log"
    local command=(dart run slang_gpt "--target=$locale" "--api-key=$API_KEY")
    [ "$FULL_TRANSLATION" = true ] && command+=(--full)

    if "${command[@]}" > "$locale_log" 2>&1; then
        echo "SUCCESS" > "$RUN_DIR/results/$locale"
        return 0
    fi
    echo "FAILED" > "$RUN_DIR/results/$locale"
    return 1
}

run_translation_workers() {
    local locale
    local pid
    local pids=()

    for locale in "${LOCALES[@]}"; do
        translate_locale "$locale" &
        pids+=("$!")
        if [ "${#pids[@]}" -ge "$MAX_PARALLEL_JOBS" ]; then
            for pid in "${pids[@]}"; do
                wait "$pid" || true
            done
            pids=()
        fi
    done
    for pid in "${pids[@]}"; do
        wait "$pid" || true
    done
}

report_translation_results() {
    local locale
    local result
    local status
    local missing_results=0
    FAILED_LOCALES=()

    for locale in "${LOCALES[@]}"; do
        if [ ! -f "$RUN_DIR/results/$locale" ]; then
            print_error "$locale produced no result"
            FAILED_LOCALES+=("$locale")
            missing_results=$((missing_results + 1))
            continue
        fi
        result=$(cat "$RUN_DIR/results/$locale")
        status=$result
        if [ "$status" = "SUCCESS" ]; then
            printf "  ${GREEN}${CHECK}${NC} %-10s\n" "$locale"
        else
            printf "  ${RED}${CROSS}${NC} %-10s\n" "$locale"
            FAILED_LOCALES+=("$locale")
            tail -n 5 "$RUN_DIR/logs/$locale.log" | cut -c 1-160 | sed 's/^/      /'
        fi
    done

    [ "${#FAILED_LOCALES[@]}" -eq 0 ] && [ "$missing_results" -eq 0 ]
}

validate_catalogs() {
    print_step "3" "Normalizing locale catalogs"
    dart run slang normalize || return 1

    print_step "4" "Analyzing and auditing catalogs"
    dart run slang analyze --full || return 1
    python3 "$SCRIPT_DIR/audit_translations.py" --root "$GIT_ROOT" || return 1
}

generate_outputs() {
    print_step "5" "Regenerating Dart translations"
    dart run slang || return 1
}

main() {
    parse_arguments "$@" || return $?
    trap cleanup EXIT
    setup || return 1

    print_header "Translation regeneration"
    print_info "Engine: slang_gpt with OpenAI"
    print_info "Mode: $([ "$FULL_TRANSLATION" = true ] && echo "full" || echo "missing keys only")"
    print_info "Parallel locales: $MAX_PARALLEL_JOBS"

    print_step "1" "Validating the English source"
    python3 "$SCRIPT_DIR/audit_translations.py" --root "$GIT_ROOT" --source-only || return 1
    collect_locales || return 1

    print_step "2" "Translating locale catalogs"
    print_info "Translating ${#LOCALES[@]} locale catalogs"
    run_translation_workers
    local translation_ok=true
    report_translation_results || translation_ok=false

    local validation_ok=true
    validate_catalogs || validation_ok=false
    if [ "$translation_ok" != true ] || [ "$validation_ok" != true ]; then
        print_error "Translation generation failed. Review the preserved logs and rerun the command."
        return 1
    fi

    generate_outputs || return 1
    RUN_SUCCEEDED=true
    print_success "Translations generated, validated, and integrated successfully"
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
    main "$@"
fi
