#!/usr/bin/env bash
set -euo pipefail

repo_root="$(git rev-parse --show-toplevel)"
cd "$repo_root"

failed=false

tracked_secret_files="$(
  git ls-files | grep -E '(^|/)(\.env($|\.)|production\.env$|staging\.env$|firebase-adminsdk.*\.json$|.*service-account.*\.json$|key\.properties$|.*\.(jks|p12|pem|key)$)' || true
)"
if [[ -n "$tracked_secret_files" ]]; then
  echo "Tracked files look like credentials:" >&2
  echo "$tracked_secret_files" >&2
  failed=true
fi

patterns=(
  'sk-(or-)?[A-Za-z0-9_-]{20,}'
  'BEGIN (RSA |EC |OPENSSH )?PRIVATE KEY'
  '"private_key"[[:space:]]*:'
  'https://[^[:space:]"]+/p/[A-Za-z0-9_-]{20,}/'
  'POSTGRES_PASSWORD=[A-Za-z0-9]'
  'GF_SECURITY_ADMIN_PASSWORD=[A-Za-z0-9]'
)

for pattern in "${patterns[@]}"; do
  matches="$(git grep -Il -E "$pattern" -- . ':(exclude)scripts/check-secrets.sh' || true)"
  if [[ -n "$matches" ]]; then
    echo "Potential hardcoded secret matched in:" >&2
    echo "$matches" >&2
    failed=true
  fi
done

if [[ "$failed" == true ]]; then
  exit 1
fi

echo "Tracked-file secret checks passed."
