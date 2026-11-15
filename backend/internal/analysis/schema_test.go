package analysis

import (
	"encoding/json"
	"testing"
)

func TestPortionValidate(t *testing.T) {
	perUnit := 40.0
	cases := []struct {
		name    string
		portion PortionDTO
		wantErr bool
	}{
		{name: "exact with per unit grams", portion: PortionDTO{Kind: "EXACT", Value: 2, PerUnitGrams: &perUnit}},
		{name: "exact without per unit grams", portion: PortionDTO{Kind: "EXACT", Value: 2}, wantErr: true},
		{name: "bulk", portion: PortionDTO{Kind: "BULK", Value: 180}},
		{name: "pinch", portion: PortionDTO{Kind: "PINCH", Value: 3}},
	}
	for _, tc := range cases {
		t.Run(tc.name, func(t *testing.T) {
			err := tc.portion.Validate()
			if tc.wantErr && err == nil {
				t.Fatalf("expected error, got nil")
			}
			if !tc.wantErr && err != nil {
				t.Fatalf("expected no error, got %v", err)
			}
		})
	}
}

func TestGeneratedPassSchemas(t *testing.T) {
	for name, schema := range map[string]map[string]any{
		"pass1": pass1Schema,
		"pass2": pass2CallSchema,
	} {
		t.Run(name, func(t *testing.T) {
			if schema["type"] != "object" {
				t.Fatalf("expected type object, got %v", schema["type"])
			}
			if schema["additionalProperties"] != false {
				t.Fatalf("expected additionalProperties false, got %v", schema["additionalProperties"])
			}
			props, ok := schema["properties"].(map[string]any)
			if !ok || len(props) == 0 {
				t.Fatalf("expected non-empty properties")
			}
			req, ok := schema["required"].([]string)
			if !ok || len(req) != len(props) {
				t.Fatalf("expected all properties to be required in strict mode: props=%d req=%d", len(props), len(req))
			}
			data, err := json.Marshal(schema)
			if err != nil {
				t.Fatalf("schema must be JSON-serializable: %v", err)
			}
			if len(data) == 0 {
				t.Fatalf("schema JSON is empty")
			}
		})
	}
}
