- [ ] Refactor database layer to use DTOs (Data Transfer Objects) for database interactions
- [ ] Add a lightweight Go script generator for postman config in cmd/gen_postman/main.go. Defines the Postman v2.1 JSON schema.
 Uses protojson.Marshal on empty instances of your request messages (api.UpdateUserRequest{}, api.HealthDataRequest{}) to produce the exact JSON sample bodies.
 Outputs calorify.postman_collection.json.
- [ ] Fix PUT/POST requests returning empty right now instead of created object
- [ ] Populate and normalize USDA database:
  - Run non-branded LLM normalization: `go run cmd/usda/main.go -normalize -populate_missing`
