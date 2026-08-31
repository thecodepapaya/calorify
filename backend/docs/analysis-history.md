# Meal-analysis V3 history

`GET /analysis-history` is a read-only operator inspector for durable V3
sessions. It lists sessions in most-recently-updated order and exposes the
persisted input, latest V3 result, submitted nutrition answers, selected meal
type, feedback, and meal-log state. It intentionally does not reconstruct
transient pipeline internals: V3 does not persist V2's stage snapshots or trace
observations.

Set `ANALYSIS_HISTORY_PASSWORD` in the target environment to enable the page.
When unset, the route returns `404`. Authenticate over HTTPS with Basic username
`calorify` and that password. Responses are `no-store`, omit referrers, and use
a restrictive Content Security Policy.

Use the All, Text, and Image filters or pagination links to inspect sessions.
Image previews are rebuilt from the stored V3 object key using the configured
read-only Oracle URL; upload credentials are never displayed.

This shared password grants access to all listed sessions, so use independent,
long values for staging and production and rotate it like any operator secret.
