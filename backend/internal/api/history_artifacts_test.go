package api

import (
	"testing"

	"backend/internal/gen_proto/api"
	"backend/internal/gen_proto/common"
)

const pass1Raw = `{
  "name": "Roti and Dal",
  "quantity": "1 plate",
  "meal_type": "LUNCH",
  "tip": "Balanced combo",
  "meal_health": {"health_score": "HEALTHY", "health_score_reason": "Fiber and protein"},
  "components": [
    {"name": "Roti", "canonical_name": "Wheat flour, whole-grain", "preparation_method": "ROASTED",
     "portion": {"kind": "EXACT", "value": 2, "min_value": 2, "max_value": 2, "per_unit_grams": 35, "origin": "USER_STATED"}},
    {"name": "Dal", "canonical_name": "Lentils, mature seeds, cooked, boiled",
     "portion": {"kind": "BULK", "value": 200, "min_value": 180, "max_value": 220, "origin": "MODEL_INFERRED"}}
  ]
}`

const pass2Raw = `{
  "ingredients": [
    {"component_name": "Roti", "name": "Whole wheat roti", "canonical_name": "Wheat flour, whole-grain",
     "ingredient_type": "BASE",
     "portion": {"kind": "BULK", "value": 70, "min_value": 60, "max_value": 80, "origin": "MODEL_INFERRED"}},
    {"component_name": "Dal", "name": "Cooked dal", "canonical_name": "Lentils, mature seeds, cooked, boiled, without salt",
     "ingredient_type": "BASE",
     "portion": {"kind": "BULK", "value": 200, "min_value": 180, "max_value": 220, "origin": "MODEL_INFERRED"}}
  ]
}`

const enrichedRaw = `{
  "ingredients": [
    {"name": "Whole wheat roti", "description": "Wheat flour, whole-grain", "fdcId": 168893, "similarity": 0.91,
     "canonicalName": "Wheat flour, whole-grain", "componentName": "Roti",
     "grams": {"minValue": 60, "value": 70, "maxValue": 80},
     "macros": {
       "calorie": {"minValue": 204, "value": 238, "maxValue": 272},
       "carb": {"minValue": 39, "value": 46, "maxValue": 53},
       "protein": {"minValue": 7, "value": 8, "maxValue": 9},
       "fat": {"minValue": 2, "value": 2, "maxValue": 2},
       "fiber": {"minValue": 6, "value": 7, "maxValue": 8}
     }}
  ],
  "totalMacros": {
    "calorie": {"minValue": 204, "value": 238, "maxValue": 272}
  }
}`

const clarificationRaw = `{
  "clarification": [
    {"id": 0, "type": "QUANTITY", "question": "How many rotis?",
     "options": [{"text": "1 roti"}, {"text": "2 rotis"}, {"text": "3 rotis"}]}
  ]
}`

const finalRaw = `{
  "meal": {
    "name": "Roti and Dal",
    "macros": {"calorie": {"minValue": 412, "value": 470, "maxValue": 527}},
    "metadata": {"tip": "Pair rotis with dal for complete protein"}
  }
}`

func TestAttachStageArtifacts(t *testing.T) {
	item := &api.AnalysisHistoryItem{Id: "a1"}
	attachStageArtifacts(item, pass1Raw, pass2Raw, enrichedRaw, clarificationRaw, finalRaw)

	if len(item.Components) != 2 {
		t.Fatalf("expected 2 components, got %d", len(item.Components))
	}
	c0 := item.Components[0]
	if c0.Name != "Roti" || c0.CanonicalName != "Wheat flour, whole-grain" || c0.PreparationMethod != "ROASTED" {
		t.Errorf("component 0 mapped wrong: %+v", c0)
	}
	if c0.Portion == nil || c0.Portion.Kind != "EXACT" || c0.Portion.Value != 2 || c0.Portion.Origin != "USER_STATED" {
		t.Errorf("component 0 portion mapped wrong: %+v", c0.Portion)
	}

	if len(item.Ingredients) != 2 {
		t.Fatalf("expected 2 ingredients, got %d", len(item.Ingredients))
	}
	// Ingredient 0 has an index-parallel USDA match; fields must be joined.
	i0 := item.Ingredients[0]
	if i0.Description != "Wheat flour, whole-grain" || i0.FdcId != 168893 || i0.Similarity != 0.91 {
		t.Errorf("ingredient 0 USDA match not joined: %+v", i0)
	}
	if i0.Grams == nil || i0.Grams.Value != 70 || i0.Grams.MinValue != 60 {
		t.Errorf("ingredient 0 grams not joined: %+v", i0.Grams)
	}
	if i0.Macros == nil || i0.Macros.Calorie == nil || i0.Macros.Calorie.Value != 238 {
		t.Errorf("ingredient 0 macros not joined: %+v", i0.Macros)
	}
	// Ingredient 1 has no matching enriched row beyond index 0; must render without match.
	i1 := item.Ingredients[1]
	if i1.Description != "" || i1.FdcId != 0 {
		t.Errorf("ingredient 1 should have no USDA match, got: %+v", i1)
	}

	if len(item.Clarifications) != 1 {
		t.Fatalf("expected 1 clarification, got %d", len(item.Clarifications))
	}
	cl := item.Clarifications[0]
	if cl.Question != "How many rotis?" || cl.Type != common.Clarification_QUANTITY || len(cl.Options) != 3 || cl.Options[2].Text != "3 rotis" {
		t.Errorf("clarification mapped wrong: %+v", cl)
	}

	if item.Final == nil {
		t.Fatal("expected final to be mapped")
	}
	if item.Final.Macros == nil || item.Final.Macros.Calorie == nil || item.Final.Macros.Calorie.Value != 470 {
		t.Errorf("final macros mapped wrong: %+v", item.Final.Macros)
	}
	if item.Final.GetMetadata().GetTip() != "Pair rotis with dal for complete protein" {
		t.Errorf("final tip mapped wrong: %q", item.Final.GetMetadata().GetTip())
	}
}

func TestAttachStageArtifactsToleratesPartialAndMalformedData(t *testing.T) {
	t.Run("empty payloads leave item clean", func(t *testing.T) {
		item := &api.AnalysisHistoryItem{Id: "a2"}
		attachStageArtifacts(item, "", "", "", "", "")
		if item.Components != nil || item.Ingredients != nil || item.Clarifications != nil || item.Final != nil {
			t.Errorf("expected no artifacts from empty payloads, got %+v", item)
		}
	})

	t.Run("malformed payloads do not panic and skip sections", func(t *testing.T) {
		item := &api.AnalysisHistoryItem{Id: "a3"}
		attachStageArtifacts(item, "{not json", "{not json", "{not json", "{not json", "{not json")
		if item.Components != nil || item.Ingredients != nil || item.Clarifications != nil || item.Final != nil {
			t.Errorf("expected no artifacts from malformed payloads, got %+v", item)
		}
	})

	t.Run("pass2 without enrichment still lists ingredients", func(t *testing.T) {
		item := &api.AnalysisHistoryItem{Id: "a4"}
		attachStageArtifacts(item, "", pass2Raw, "", "", "")
		if len(item.Ingredients) != 2 {
			t.Fatalf("expected 2 ingredients without enrichment, got %d", len(item.Ingredients))
		}
		if item.Ingredients[0].Macros != nil || item.Ingredients[0].Description != "" {
			t.Errorf("ingredient should have no joined USDA data, got %+v", item.Ingredients[0])
		}
	})
}
