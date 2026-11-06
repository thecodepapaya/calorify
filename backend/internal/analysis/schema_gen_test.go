package analysis

import (
	"encoding/json"
	"testing"
)

func TestGenerateSchema(t *testing.T) {
	type Nested struct {
		FieldA string `json:"field_a" description:"A nested field"`
	}

	type SampleDTO struct {
		Name     string   `json:"name" description:"Name description"`
		Count    int      `json:"count" description:"Count description"`
		Optional *float64 `json:"optional" description:"Optional float"`
		Status   string   `json:"status" enum:"PENDING,ACTIVE,COMPLETED"`
		Tags     []string `json:"tags" item_description:"Tag items"`
		Nested   Nested   `json:"nested"`
	}

	schema := GenerateSchema[SampleDTO]()

	if schema["type"] != "object" {
		t.Fatalf("expected type object, got %v", schema["type"])
	}
	if schema["additionalProperties"] != false {
		t.Fatalf("expected additionalProperties false, got %v", schema["additionalProperties"])
	}

	props, ok := schema["properties"].(map[string]any)
	if !ok {
		t.Fatalf("expected properties map")
	}

	required, ok := schema["required"].([]string)
	if !ok || len(required) != 6 {
		t.Fatalf("expected 6 required fields, got %v", required)
	}

	// Verify optional pointer has null union type
	optProp := props["optional"].(map[string]any)
	optTypes, ok := optProp["type"].([]string)
	if !ok || len(optTypes) != 2 || optTypes[0] != "number" || optTypes[1] != "null" {
		t.Fatalf("expected [number, null], got %v", optProp["type"])
	}

	// Verify enum
	statusProp := props["status"].(map[string]any)
	enums, ok := statusProp["enum"].([]string)
	if !ok || len(enums) != 3 || enums[0] != "PENDING" {
		t.Fatalf("expected enums [PENDING, ACTIVE, COMPLETED], got %v", statusProp["enum"])
	}

	// Verify JSON marshaling works
	bytes, err := json.Marshal(schema)
	if err != nil {
		t.Fatalf("failed to marshal schema: %v", err)
	}
	if len(bytes) == 0 {
		t.Fatalf("schema bytes empty")
	}
}
