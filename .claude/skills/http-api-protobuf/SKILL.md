name: HTTP API protobuf contracts

# HTTP API: protobuf-first JSON

Calorify REST endpoints that use **JSON** should treat **`.proto` messages** as the source of truth for request/response shapes (serialized with **proto3 JSON**, e.g. `toProto3Json()` / `mergeFromProto3Json` on Dart, and matching object keys on the Node side).

## Do

- Add or change fields only in [`protos/`](../../../protos/): domain HTTP types in [`protos/calorify/http_api.proto`](../../../protos/calorify/http_api.proto), meal detection in [`protos/calorify/meal_detection.proto`](../../../protos/calorify/meal_detection.proto), user profile + save response in [`protos/user/user.proto`](../../../protos/user/user.proto) (avoid duplicating `UserProfile` fields in `http_api`).
- Run [`./scripts/generate_protos.sh`](../../../scripts/generate_protos.sh) so Dart ([`shared_packages/models`](../../../shared_packages/models)) and TypeScript ([`backend/src/protos`](../../../backend/src/protos)) stay in sync.
- On the backend, keep **Zod** only for extra constraints (bounds, trim, URLs) on top of the proto shape; OpenAPI fragments should follow [`schema-generator.ts`](../../../backend/src/utils/schema-generator.ts).
- On Flutter, prefer [`NetworkClient.apiCall<ReqT, RespT>`](../../../app/lib/core/network/network_client.dart) (`ReqT` is a placeholder such as `ApiResult` on GET-only calls; omit `request` for GET) and **`streamPost`** with `GeneratedMessage` bodies where applicable.

## Exceptions (do not force protobuf for these bodies)

- **Streamed event payloads** (V2 NDJSON/SSE lines): still ad hoc JSON per event type unless you deliberately migrate to proto-per-line.
- **Multipart** uploads (e.g. image file parts) and **raw/binary** responses (CSV export, storage PUT).
- **Third-party webhooks** or shapes you do not control.

## Wire compatibility

- Prefer **proto3 lowerCamelCase** JSON keys. When changing keys, either use a **dual-read** period in Zod (see V2 `clarify` answers) or **`json_name`** on proto fields to preserve legacy wire formats.

## Common mistakes

- Editing generated `*.pb.dart` / `backend/src/protos/*.ts` by hand.
- Drift between Fastify JSON Schema and protos—update [`schema-generator.ts`](../../../backend/src/utils/schema-generator.ts) when protos change.
