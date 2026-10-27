- [ ] Refactor database layer to use DTOs (Data Transfer Objects) for database interactions (prevent nil access errors in `internal/api/db.go:142`)
- [ ] Add a lightweight Go script generator for postman config in cmd/gen_postman/main.go. Defines the Postman v2.1 JSON schema.
 Uses protojson.Marshal on empty instances of your request messages (api.UpdateUserRequest{}, api.HealthDataRequest{}) to produce the exact JSON sample bodies.
 Outputs calorify.postman_collection.json.
- [ ] Fix PUT/POST requests returning empty right now instead of created object
- [ ] Remove temporary auth bypasses in `internal/middleware/auth.go`:
  - Remove `/users`, `/users/health-data`, and `/users/meals` from `publicRoutes` (lines 14-16)
  - Remove hardcoded test `userUid` injection and re-enable token validation for protected routes (line 24)
- [ ] Populate and normalize USDA database:
  - Run non-branded LLM normalization: `go run cmd/usda/main.go -normalize -populate_missing`
