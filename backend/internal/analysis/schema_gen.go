package analysis

import (
	"reflect"
	"strings"
)

// GenerateSchema generates an OpenAI Structured Outputs compatible JSON schema
// (with strict mode requirements: additionalProperties=false and all fields required)
// from a Go struct with `json`, `description`, and `enum` tags.
func GenerateSchema[T any]() map[string]any {
	var zero T
	t := reflect.TypeOf(zero)
	if t.Kind() == reflect.Pointer {
		t = t.Elem()
	}
	return reflectType(t)
}

func reflectType(t reflect.Type) map[string]any {
	if t.Kind() == reflect.Pointer {
		t = t.Elem()
	}

	switch t.Kind() {
	case reflect.Struct:
		properties := make(map[string]any)
		required := make([]string, 0, t.NumField())

		for i := 0; i < t.NumField(); i++ {
			field := t.Field(i)
			if !field.IsExported() {
				continue
			}

			jsonTag := field.Tag.Get("json")
			if jsonTag == "-" || jsonTag == "" {
				continue
			}
			parts := strings.Split(jsonTag, ",")
			fieldName := parts[0]

			fieldSchema := reflectField(field)
			properties[fieldName] = fieldSchema
			required = append(required, fieldName)
		}

		return map[string]any{
			"type":                 "object",
			"properties":           properties,
			"required":             required,
			"additionalProperties": false,
		}

	default:
		return map[string]any{"type": "object"}
	}
}

func reflectField(field reflect.StructField) map[string]any {
	t := field.Type
	isPtr := t.Kind() == reflect.Pointer
	if isPtr {
		t = t.Elem()
	}

	schema := make(map[string]any)

	if desc := field.Tag.Get("description"); desc != "" {
		schema["description"] = desc
	}

	if enumTag := field.Tag.Get("enum"); enumTag != "" {
		vals := strings.Split(enumTag, ",")
		enumList := make([]string, len(vals))
		for i, v := range vals {
			enumList[i] = strings.TrimSpace(v)
		}
		schema["enum"] = enumList
	}

	switch t.Kind() {
	case reflect.String:
		if isPtr {
			schema["type"] = []string{"string", "null"}
		} else {
			schema["type"] = "string"
		}

	case reflect.Float64, reflect.Float32, reflect.Int, reflect.Int32, reflect.Int64:
		if isPtr {
			schema["type"] = []string{"number", "null"}
		} else {
			schema["type"] = "number"
		}

	case reflect.Bool:
		if isPtr {
			schema["type"] = []string{"boolean", "null"}
		} else {
			schema["type"] = "boolean"
		}

	case reflect.Slice:
		elemType := t.Elem()
		if elemType.Kind() == reflect.String {
			itemSchema := map[string]any{"type": "string"}
			if itemDesc := field.Tag.Get("item_description"); itemDesc != "" {
				itemSchema["description"] = itemDesc
			}
			schema["type"] = "array"
			schema["items"] = itemSchema
		} else if elemType.Kind() == reflect.Struct {
			schema["type"] = "array"
			schema["items"] = reflectType(elemType)
		}

	case reflect.Struct:
		nested := reflectType(t)
		if desc, ok := schema["description"]; ok {
			nested["description"] = desc
		}
		return nested
	}

	return schema
}
