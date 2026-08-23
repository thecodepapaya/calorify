#!/bin/sh
set -eu

credential_source="/run/secrets/firebase-service-account.json"
credential_directory="/app/runtime-secrets"
credential_target="$credential_directory/firebase-service-account.json"

if [ ! -r "$credential_source" ]; then
  echo "Firebase service account mount is missing or unreadable" >&2
  exit 1
fi

umask 077
install -d -o node -g node -m 0700 "$credential_directory"
install -o node -g node -m 0400 "$credential_source" "$credential_target"
export FIREBASE_SERVICE_ACCOUNT_PATH="$credential_target"

exec gosu node "$@"
