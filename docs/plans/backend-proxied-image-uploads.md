# Backend-proxied image uploads

## Status and decision

Approved for implementation with deliberately simple failure handling.

## Decision record

This numbered record is the implementation authority. It preserves the
disposition of every gap reviewed before implementation; later sections explain
the resulting design but do not override these decisions.

1. **Fix the client WebP fail-open behavior.** If WebP conversion fails, returns
   no bytes, or returns non-WebP bytes, fail the upload. Never upload the
   original JPEG/PNG under a `.webp` name. A valid WebP remains the result even
   when it is larger than the source. Perform only one compression pass. If the
   resulting WebP exceeds 1 MiB, fail locally with a clear user-facing message;
   do not retry at lower quality or send a request that the backend will reject.
2. **Validate the WebP on the backend.** Do not trust the filename or
   `Content-Type` alone. Validate the bounded body as WebP before sending it to
   Oracle.
3. **Authenticate before body parsing.** Move V2 food authentication to
   Fastify `onRequest`, so an unauthenticated caller cannot make the server
   parse or buffer an image first.
4. **Use exactly this object key:**
   `<authenticated-firebase-uid>/<server-utc-timestamp>.webp`. Do not add the
   bucket name, a random ID, an analysis ID, or another directory. The Firebase
   UID comes only from the verified token and the UTC timestamp comes only from
   the server. A same-user upload in the same server millisecond could overwrite
   the same key; that timestamp-only collision risk is accepted rather than
   changing the selected path.
5. **Accept the shared read PAR model.** Oracle object listing is disabled, the
   read PAR is read-only, and keys/PARs will be rotated. The visible read URL may
   fetch any known or guessed key within its configured scope; that is accepted.
6. **Keep validation basic for now.** Enforce a 1 MiB image limit, structurally
   valid static WebP, and dimension/pixel limits. Reject animation, but allow
   otherwise valid metadata chunks; do not claim that the compressed pixel
   stream was fully decoded. Skip food/content moderation, malware scanning,
   and more elaborate media processing.
7. **Let previous read URLs break on rotation.** Persisted URLs contain the read
   PAR, so rotating or revoking that PAR breaks historical rendering. Do not add
   a proxy, redirect, migration, or compatibility bridge; this breakage is
   explicitly accepted for both existing and future app versions.
8. **Keep both PAR values in ignored backend environment files.** This is the
   chosen operational mechanism for easy rotation. The write PAR must never be
   compiled into the app or CI build arguments.
9. **Skip immediate image deletion for now.** Do not add a delete PAR, delete
   endpoint, or object-deletion flow in this implementation.
10. **Skip durable upload coordination for now.** Do not add an upload table,
    image ID, idempotency state machine, Oracle/Postgres reconciliation job, or
    other complex coordination.
11. **Redact secret upload material from telemetry.** Do not log request bodies,
    Firebase tokens, the upload PAR, upstream response bodies, or Oracle error
    details. The returned read URL is deliberately public and does not require
    special log/crash-report redaction.
12. **Buffer the upload in memory.** Keep the first implementation bounded by a
   hard byte limit; do not introduce temp-file or streaming-upload machinery.
   Keep upload rate-limit counters in process memory as well. Counter resets on
   restart and independent allowances across backend replicas are accepted.
13. **Keep the request flow simple and robust.** Use one authenticated backend
    upload request, one Oracle PUT, and a small response. Avoid retries,
    multi-step reservations, and over-engineered recovery flows for now.
14. **Leave orphaned objects.** If analysis or meal persistence fails after a
    successful upload, do not synchronously delete the object or add an orphan
    cleanup job in this iteration.
15. **Remove all legacy Oracle upload/download traces from app-owned paths.**
    Remove direct Oracle upload code, app Oracle configuration, debug PAR/object
    parsing, GitHub Actions build inputs and `--dart-define` values, and the
    matching GitHub Actions secret. Backend-owned upload/download configuration
    and opaque public historical image URLs remain because the new design
    requires them. Do not rewrite Git history; revoke the old upload PAR so any
    historical value becomes inert.
16. **Do not migrate old images or local meal data.** There are no stored images
    to migrate.
17. **Revoke the old app-exposed upload PAR.** Revocation is an explicit rollout
    action after the new backend path is ready.
18. **Allow older app versions to break.** Do not retain the old direct-upload
    credential or add a backwards-compatibility bridge.
19. **Use the verified Firebase Auth UID directly.** The UID comes from Firebase
    authentication rather than request data and is encoded as one object-key
    path component. The UID is not an authentication credential, but it is a
    stable pseudonymous identifier. A
    returned image URL exposes it and permits correlation of known URLs from
    the same account. This is accepted for these non-sensitive meal photos and
    operator browseability; do not describe the resulting URLs as anonymous.
20. **Configure Oracle scope operationally.** No extra application-level scope
    discovery or permission test is required; the PARs will be created with the
    intended bucket and permissions.

Use two Oracle Object Storage pre-authenticated requests (PARs) per environment
bucket:

- one `AnyObjectWrite` PAR stored only in the backend environment; and
- one far-future `AnyObjectRead` PAR with listing disabled, returned as part of
  historical image URLs.

The app uploads one in-memory WebP to the authenticated backend. The backend
validates size, dimensions, container structure, and animation flags, and
then uploads it using the secret write PAR. It returns the corresponding shared
read-PAR URL. The existing `/analyze-image` `imageUrl` contract remains.

The accepted object key is:

```text
<authenticated-firebase-uid>/<server-utc-timestamp>.webp
```

The bucket is already `calorify-images`, so its name is not repeated inside the
object key. A complete Oracle path ends in:

```text
/b/calorify-images/o/<firebase-uid>/<timestamp>.webp
```

Generate the timestamp on the backend in fixed-width UTC form, for example
`20260825T121530123Z`. Use only the UID produced by verified Firebase auth and
encode both path segments independently.

Firebase UID is not a credential and does not allow account takeover. It is a
stable pseudonymous identifier: returned image URLs expose it and allow known
URLs from the same account to be correlated. This trade-off is accepted for
operator browseability. The server uses only the UID from verified Firebase
authentication and encodes it as one path component; it does not accept a UID
from the request body. The photos must not be described as anonymous.

Staging and production use separate buckets/PAR pairs. Oracle requires PAR
expiry, so set the read PAR far enough in the future to be operationally
non-expiring. Store both configured URLs only in ignored backend env files for
easy rotation.

## Flow

```text
Flutter app                 Calorify API                 Oracle Object Storage
    |                            |                                |
    | POST /image-upload         |                                |
    | Firebase token + WebP ---->| authenticate before parsing   |
    |                            | buffer with hard byte limit    |
    |                            | validate WebP + dimensions     |
    |                            | key = uid/server-time.webp     |
    |                            | PUT through secret write PAR ->|
    |                            |<------------------------ success|
    |<-- { imageUrl } -----------| build shared read-PAR URL      |
    |                            |                                |
    | POST /analyze-image        |                                |
    | analysisId + imageUrl ---->| existing owner/path validation |
    |<======= existing NDJSON/SSE analysis stream ================|
```

The app persists the returned `imageUrl` in existing meal metadata. Historical
display continues using `NetworkImage` without an authentication header.

## API

`POST /api/v2/food/image-upload`

Request:

```http
Authorization: Bearer <firebase-id-token>
Content-Type: image/webp
Content-Length: 483921

<raw WebP bytes>
```

Response:

```json
{
  "imageUrl": "<shared read PAR>/<encoded uid>/<server timestamp>.webp"
}
```

Initial limits:

- body must be non-empty and at most 1 MiB;
- content type must be exactly `image/webp`;
- neither width nor height may exceed 4096 pixels;
- total pixels must not exceed 16,777,216;
- only a static WebP profile is accepted; and
- RIFF length and chunk boundaries must be internally consistent.

After Firebase authentication and before body parsing, apply a dedicated
in-memory upload admission limit keyed by both authenticated UID and source IP:

- at most 10 uploads per UID per minute; and
- at most 60 uploads per source IP per minute.

Reject an exceeded limit with `429` before buffering the body. These upload
limits are separate from the later meal-analysis budget. Counters are
process-local and reset when the backend restarts; multiple backend replicas
therefore have independent allowances. This is accepted for the current simple
deployment. Keep `TRUST_PROXY=1` for the single trusted reverse-proxy hop so the
IP key uses the originating client address rather than the proxy address.

Return `400`/`415` for invalid format, `413` for the byte limit, and `503` when
Oracle upload fails. Do not expose upstream bodies, the upload PAR, or Oracle
errors. The successful response intentionally contains the public read PAR as
part of `imageUrl`.

## Required implementation

### WebP conversion and validation

`ImageCompressionService` currently fails open: conversion failure or a larger
WebP returns the original JPEG/PNG bytes, while callers still save `.webp`.
Change it to:

- throw when conversion returns null/empty or raises an error;
- retain valid WebP even when it is larger than the source;
- verify the returned RIFF/WEBP signature; and
- never return original-format fallback bytes from the meal upload path;
- perform only the existing single compression pass; and
- reject a compressed result over 1 MiB locally with a clear user-facing error,
  without a lower-quality retry or backend request.

The backend keeps the bounded body in memory, as explicitly accepted for this
initial implementation. Parse the WebP container structure and reject malformed
chunk boundaries, animation, and invalid or excessive dimensions. Metadata
chunks are allowed. This is structural validation, not a full pixel decode.

### Authentication order

The V2 food plugin currently authenticates in Fastify `preHandler`, after body
parsing. Move authentication to `onRequest` so unauthenticated image bodies are
rejected before parsing. Existing user-aware rate limiting continues after auth.

### Oracle transport

Add `ORACLE_BUCKET_UPLOAD_URL` to backend runtime configuration. Keep
`ORACLE_BUCKET_DOWNLOAD_URL` for constructing the returned read URL.

The backend service:

1. validates both bases as HTTPS Oracle object paths for the same namespace and
   bucket;
2. builds `<uid>/<timestamp>.webp` from server-owned values;
3. performs the fixed-length WebP `PUT` through the upload PAR; and
4. returns the same object key under the configured download PAR.

Keep this behind a narrow service and unit-test URL/key construction and
redaction. No OCI SDK, API key, upload record, new protobuf field, or per-image
PAR is needed.

Timestamp-only uniqueness has a theoretical same-user/same-millisecond
collision. The initial implementation accepts this risk to preserve the chosen
path and avoid additional state. Orphaned objects and cross-system
reconciliation are also explicitly deferred.

### App migration and trace cleanup

Removal of the old direct-Oracle client is a release gate:

- delete `ImageConfig.oracleBucketUploadUrl`, its client build define, and the
  hardcoded write PAR;
- replace `FoodRepository._uploadImage` with the authenticated backend call;
- remove client object-key/Firebase-folder construction and direct Object
  Storage `Dio.put`;
- remove the debug action that displays/parses the Oracle endpoint, PAR token,
  namespace, bucket, or object key;
- keep returned `imageUrl` opaque—Flutter may persist/display it but must not
  parse or construct Oracle URLs;
- surface a localized, actionable message when the single-pass compressed WebP
  exceeds 1 MiB, and stop before opening the upload request;
- rename misleading `uploadUrl`/`uploadedImageUrl` variables to `imageUrl`;
- remove write-PAR references from app launch configuration, GitHub Actions,
  build arguments, scripts, fixtures, docs, and generated files;
- remove the matching GitHub repository/environment secret if present;
- scan release artifacts and Git history to identify exposure, without rewriting
  history, then revoke the old app-exposed PAR; and
- make `scripts/check-secrets.sh` pass without an Oracle PAR match.

There are no stored historical meal images, so no local-data migration is
required. Older app versions may break after upload-PAR revocation, and future
historical images may break after read-PAR rotation; both are accepted.

## Accepted/deferred risks

The following are intentionally not part of this implementation:

- no content/food moderation beyond basic byte, WebP, and dimension checks;
- no immediate object deletion capability; Oracle lifecycle cleanup may be
  added later;
- no upload database record, idempotency state machine, collision repair, or
  Oracle/Postgres reconciliation;
- no orphan cleanup for interrupted requests;
- no compatibility mechanism for read-PAR rotation; breaking all URLs issued
  under the previous read PAR is accepted; and
- no exhaustive permission-scope tests beyond correctly configuring the two
  PARs operationally.

The shared visible read PAR can read any known or guessed key, but listing is
disabled and this risk is accepted. The key exposes the Firebase UID and server
upload timestamp. The read URL is treated as public. Request bodies, Firebase
tokens, the upload PAR, and Oracle error bodies must still be excluded from
logs, traces, analytics, and crash reports.

Oracle PARs stop working if they expire, are deleted, or their creator loses
required permissions. Their values and rotation details remain in backend env
files/operator records.

## Rollout

1. Configure backend-only staging upload/download PARs.
2. Deploy early authentication, WebP validation, and `/image-upload`.
3. Release the app using the backend upload endpoint.
4. Confirm staging/production upload, analysis, and historical rendering.
5. Remove every client credential trace and GitHub write-PAR secret.
6. Revoke the old app-exposed upload PAR; older clients may stop uploading.

## Verification

- strict compression tests prove JPEG/PNG fallback bytes are never returned;
- client tests prove a WebP over 1 MiB fails locally with the expected message,
  without a second compression attempt or HTTP request;
- WebP tests cover valid lossy/lossless files, malformed RIFF/chunks,
  animation rejection, allowed metadata, dimensions, empty body, and 1 MiB
  limit;
- unauthenticated binary requests are rejected before body parsing;
- UID and IP upload limits return `429` before body parsing;
- rate-limit tests cover both UID and trusted source-IP keys, restart-local
  state, and the configured single trusted proxy hop;
- returned object paths match `<authenticated uid>/<server timestamp>.webp`;
- analyze-image still accepts and validates the returned URL for the same UID;
- app debug/source/build configuration contains no Oracle PAR/parser logic;
- backend type-check, lint, focused tests, Flutter analyze/tests, secret scan,
  documentation links, and `git diff --check` pass.

## References

- [Oracle pre-authenticated requests](https://docs.oracle.com/en-us/iaas/Content/Object/Tasks/usingpreauthenticatedrequests.htm)
- [Using Oracle PAR object URLs](https://docs.oracle.com/en-us/iaas/Content/Object/Tasks/usingpreauthenticatedrequests_topic-Working_with_PreAuthenticated_Requests.htm)
- [Fastify request lifecycle](https://fastify.dev/docs/v4.29.x/Reference/Lifecycle/)
- [Fastify content-type parsers](https://fastify.dev/docs/v4.29.x/Reference/ContentTypeParser/)
