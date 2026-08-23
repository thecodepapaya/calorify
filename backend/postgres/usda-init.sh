#!/bin/sh
set -eu

: "${POSTGRES_DB:?POSTGRES_DB is required}"
: "${POSTGRES_USER:?POSTGRES_USER is required}"
: "${USDA_READER_PASSWORD:?USDA_READER_PASSWORD is required}"

psql --set=ON_ERROR_STOP=1 \
  --username "$POSTGRES_USER" \
  --dbname "$POSTGRES_DB" \
  --set=reader_password="$USDA_READER_PASSWORD" <<'SQL'
SELECT format(
  'CREATE ROLE calorify_usda_reader LOGIN PASSWORD %L',
  :'reader_password'
)
WHERE NOT EXISTS (
  SELECT 1 FROM pg_roles WHERE rolname = 'calorify_usda_reader'
) \gexec

SELECT format(
  'ALTER ROLE calorify_usda_reader PASSWORD %L',
  :'reader_password'
) \gexec

ALTER ROLE calorify_usda_reader SET default_transaction_read_only = on;
REVOKE CREATE ON SCHEMA public FROM PUBLIC;
GRANT CONNECT ON DATABASE calorify_usda TO calorify_usda_reader;
GRANT USAGE ON SCHEMA public TO calorify_usda_reader;
ALTER DEFAULT PRIVILEGES IN SCHEMA public
  GRANT SELECT ON TABLES TO calorify_usda_reader;
SQL
