package analysis

import (
	"encoding/json"

	"backend/internal/gen_proto/common"
	"backend/internal/gen_proto/server"
)

// Pass 1: Meal Component Decomposition Prompt
const pass1Prompt = `Decompose food input (text/image) into meal components, portions, and clinical health insights.

RULES:
1. Context: Use country for regional cuisine, timezone/time for meal_type, and locale for user-facing text (name, quantity, tip, health_score_reason, component name).
2. Database Aliases: Regardless of locale, component aliases MUST contain plain English USDA search terms (e.g. "Palak Paneer" -> ["spinach cottage cheese curry"]).
3. Components & Portions: Decompose into distinct items with preparation_method. Portions: EXACT (count + per_unit_grams), BULK (grams), or PINCH (1-5g), with min/max bounds. Set origin to USER_STATED or MODEL_INFERRED.
4. Health & Tip: Assign health_score (HEALTHY, NEUTRAL, UNHEALTHY) with a 1-sentence reason and a practical localized dietary tip.
5. NEVER output calories or macros.`

// Pass 1 JSON Schema for OpenAI Structured Outputs
var pass1Schema = map[string]any{
	"type": "object",
	"properties": map[string]any{
		"name": map[string]any{
			"type":        "string",
			"description": "Short, natural display name for the meal",
		},
		"quantity": map[string]any{
			"type":        "string",
			"description": "Natural language summary of portion size or count (e.g. '1 bowl', '2 slices', '1 plate')",
		},
		"meal_type": map[string]any{
			"type": "string",
			"enum": []string{
				"MEAL_TYPE_UNKNOWN",
				"MEAL_TYPE_BREAKFAST",
				"MEAL_TYPE_LUNCH",
				"MEAL_TYPE_DINNER",
				"MEAL_TYPE_SNACK",
			},
		},
		"tip": map[string]any{
			"type":        "string",
			"description": "Concise, actionable nutritional or dietary coaching tip specific to this meal",
		},
		"meal_health": map[string]any{
			"type": "object",
			"properties": map[string]any{
				"health_score": map[string]any{
					"type": "string",
					"enum": []string{
						"NEUTRAL",
						"HEALTHY",
						"UNHEALTHY",
					},
					"description": "Clinical health assessment rating for this meal",
				},
				"health_score_reason": map[string]any{
					"type":        "string",
					"description": "Short justification for the assigned health rating based on macronutrient balance, processing, and ingredients",
				},
			},
			"required":             []string{"health_score", "health_score_reason"},
			"additionalProperties": false,
		},
		"components": map[string]any{
			"type": "array",
			"items": map[string]any{
				"type": "object",
				"properties": map[string]any{
					"name": map[string]any{
						"type":        "string",
						"description": "Name of the component dish or item",
					},
					"aliases": map[string]any{
						"type": "array",
						"items": map[string]any{
							"type": "string",
						},
						"description": "English keywords and synonyms for database matching",
					},
					"preparation_method": map[string]any{
						"type": "string",
						"enum": []string{
							"UNKNOWN",
							"RAW",
							"BOILED",
							"SIMMERED",
							"STEAMED",
							"PRESSURE_COOKED",
							"POACHED",
							"BAKED",
							"ROASTED",
							"GRILLED",
							"TOASTED",
							"SAUTEED",
							"STIR_FRIED",
							"SHALLOW_FRIED",
							"DEEP_FRIED",
							"BLENDED",
							"JUICED",
							"FERMENTED",
							"PICKLED",
							"DRIED",
							"SMOKED",
							"COOKED_UNKNOWN",
							"OTHER",
						},
					},
					"portion": map[string]any{
						"type": "object",
						"properties": map[string]any{
							"kind": map[string]any{
								"type": "string",
								"enum": []string{"EXACT", "BULK", "PINCH"},
							},
							"value": map[string]any{
								"type":        "number",
								"description": "Count for EXACT (e.g. 2 for 2 eggs), or estimated grams for BULK/PINCH",
							},
							"min_value": map[string]any{
								"type":        "number",
								"description": "Plausible lower bound: count for EXACT, or grams for BULK/PINCH",
							},
							"max_value": map[string]any{
								"type":        "number",
								"description": "Plausible upper bound: count for EXACT, or grams for BULK/PINCH",
							},
							"per_unit_grams": map[string]any{
								"type":        []string{"number", "null"},
								"description": "Estimated weight in grams per single unit if kind is EXACT, else null",
							},
							"per_unit_min_grams": map[string]any{
								"type":        []string{"number", "null"},
								"description": "Plausible lower-bound grams per single unit if kind is EXACT, else null",
							},
							"per_unit_max_grams": map[string]any{
								"type":        []string{"number", "null"},
								"description": "Plausible upper-bound grams per single unit if kind is EXACT, else null",
							},
							"origin": map[string]any{
								"type": "string",
								"enum": []string{"MODEL_INFERRED", "USER_STATED", "USER_CLARIFICATION"},
							},
						},
						"required":             []string{"kind", "value", "min_value", "max_value", "per_unit_grams", "per_unit_min_grams", "per_unit_max_grams", "origin"},
						"additionalProperties": false,
					},
				},
				"required":             []string{"name", "aliases", "preparation_method", "portion"},
				"additionalProperties": false,
			},
		},
	},
	"required":             []string{"name", "quantity", "meal_type", "tip", "meal_health", "components"},
	"additionalProperties": false,
}

// Pass 2: Base Ingredient Decomposition Prompt
const pass2Prompt = `You are a clinical nutrition AI.
You receive decomposed meal components and their preparation methods.
Your task is to break down each component into its elemental base or branded food ingredients for USDA food database matching.

RULES:
1. For each component, identify the constituent single-ingredient foods (e.g., "Omelette" decomposes into "Whole egg", "Cooking oil / Butter", "Milk", "Salt").
2. Classify ingredient_type as "BASE" (whole raw/cooked commodity food) or "BRANDED" (commercial packaged food product).
3. Provide standardized USDA-friendly search aliases (e.g. "egg, whole, raw, fresh" or "butter, salted").
4. Split total component portions accurately across ingredients:
   - Estimate portion values (nominal value, min_value, max_value in grams) and grams per unit (with per_unit_min_grams and per_unit_max_grams for EXACT items).
   - Account for hidden fats/oils used in cooking methods like SAUTEED, SHALLOW_FRIED, or DEEP_FRIED.
5. NEVER invent fantasy nutrients; only decompose ingredients and their estimated gram amounts.`

// Pass 2 JSON Schema for OpenAI Structured Outputs
var pass2Schema = map[string]any{
	"type": "object",
	"properties": map[string]any{
		"ingredients": map[string]any{
			"type": "array",
			"items": map[string]any{
				"type": "object",
				"properties": map[string]any{
					"name": map[string]any{
						"type":        "string",
						"description": "Clean English ingredient name",
					},
					"aliases": map[string]any{
						"type": "array",
						"items": map[string]any{
							"type": "string",
						},
						"description": "Synonyms and USDA catalog search terms",
					},
					"ingredient_type": map[string]any{
						"type": "string",
						"enum": []string{"BASE", "BRANDED"},
					},
					"portion": map[string]any{
						"type": "object",
						"properties": map[string]any{
							"kind": map[string]any{
								"type": "string",
								"enum": []string{"EXACT", "BULK", "PINCH"},
							},
							"value": map[string]any{
								"type":        "number",
								"description": "Count for EXACT, or grams for BULK/PINCH",
							},
							"min_value": map[string]any{
								"type":        "number",
								"description": "Plausible lower bound: count for EXACT, or grams for BULK/PINCH",
							},
							"max_value": map[string]any{
								"type":        "number",
								"description": "Plausible upper bound: count for EXACT, or grams for BULK/PINCH",
							},
							"per_unit_grams": map[string]any{
								"type":        []string{"number", "null"},
								"description": "Weight in grams per unit for EXACT items, else null",
							},
							"per_unit_min_grams": map[string]any{
								"type":        []string{"number", "null"},
								"description": "Plausible lower-bound grams per single unit if kind is EXACT, else null",
							},
							"per_unit_max_grams": map[string]any{
								"type":        []string{"number", "null"},
								"description": "Plausible upper-bound grams per single unit if kind is EXACT, else null",
							},
							"origin": map[string]any{
								"type": "string",
								"enum": []string{"MODEL_INFERRED", "USER_STATED", "USER_CLARIFICATION"},
							},
						},
						"required":             []string{"kind", "value", "min_value", "max_value", "per_unit_grams", "per_unit_min_grams", "per_unit_max_grams", "origin"},
						"additionalProperties": false,
					},
				},
				"required":             []string{"name", "aliases", "ingredient_type", "portion"},
				"additionalProperties": false,
			},
		},
	},
	"required":             []string{"ingredients"},
	"additionalProperties": false,
}

// Intermediate Go DTO structs for JSON unmarshaling

type PortionDTO struct {
	Kind            string   `json:"kind"`
	Value           float64  `json:"value"`
	MinValue        float64  `json:"min_value"`
	MaxValue        float64  `json:"max_value"`
	PerUnitGrams    *float64 `json:"per_unit_grams"`
	PerUnitMinGrams *float64 `json:"per_unit_min_grams"`
	PerUnitMaxGrams *float64 `json:"per_unit_max_grams"`
	Origin          string   `json:"origin"`
}

type ComponentDTO struct {
	Name              string     `json:"name"`
	Aliases           []string   `json:"aliases"`
	PreparationMethod string     `json:"preparation_method"`
	Portion           PortionDTO `json:"portion"`
}

type MealHealthDTO struct {
	HealthScore       string `json:"health_score"`
	HealthScoreReason string `json:"health_score_reason"`
}

type Pass1DTO struct {
	Name       string         `json:"name"`
	Quantity   string         `json:"quantity"`
	MealType   string         `json:"meal_type"`
	Tip        string         `json:"tip"`
	MealHealth MealHealthDTO  `json:"meal_health"`
	Components []ComponentDTO `json:"components"`
}

type IngredientDTO struct {
	Name           string     `json:"name"`
	Aliases        []string   `json:"aliases"`
	IngredientType string     `json:"ingredient_type"`
	Portion        PortionDTO `json:"portion"`
}

type Pass2DTO struct {
	Ingredients []IngredientDTO `json:"ingredients"`
}

func (p *PortionDTO) toOrigin() server.Origin {
	if val, ok := server.Origin_value[p.Origin]; ok {
		return server.Origin(val)
	}
	return server.Origin_MODEL_INFERRED
}

func (p *PortionDTO) applyToComponent(c *server.MealComponent) {
	origin := p.toOrigin()
	switch p.Kind {
	case "EXACT":
		var perUnit *common.Measurement
		if p.PerUnitGrams != nil {
			grams := int32(*p.PerUnitGrams)
			minGrams := grams
			if p.PerUnitMinGrams != nil && *p.PerUnitMinGrams > 0 {
				minGrams = int32(*p.PerUnitMinGrams)
			}
			maxGrams := grams
			if p.PerUnitMaxGrams != nil && *p.PerUnitMaxGrams > 0 {
				maxGrams = int32(*p.PerUnitMaxGrams)
			}
			perUnit = &common.Measurement{
				Value:    grams,
				MinValue: minGrams,
				MaxValue: maxGrams,
			}
		} else {
			perUnit = &common.Measurement{
				Value:    0,
				MinValue: 0,
				MaxValue: 0,
			}
		}
		c.Portion = &server.MealComponent_Exact{
			Exact: &server.PortionExact{
				Value:       int32(p.Value),
				PerUnitGram: perUnit,
				Origin:      origin,
			},
		}
	case "PINCH":
		c.Portion = &server.MealComponent_Pinch{
			Pinch: &server.PortionPinch{
				Value:  int32(p.Value),
				Origin: origin,
			},
		}
	default: // BULK
		val := int32(p.Value)
		minVal := int32(p.MinValue)
		maxVal := int32(p.MaxValue)
		if minVal == 0 || minVal > val {
			minVal = val
		}
		if maxVal == 0 || maxVal < val {
			maxVal = val
		}
		c.Portion = &server.MealComponent_Bulk{
			Bulk: &server.PortionBulk{
				Value: &common.Measurement{
					Value:    val,
					MinValue: minVal,
					MaxValue: maxVal,
				},
				Origin: origin,
			},
		}
	}
}

func (p *PortionDTO) applyToIngredient(ing *server.MealIngredient) {
	origin := p.toOrigin()
	switch p.Kind {
	case "EXACT":
		var perUnit *common.Measurement
		if p.PerUnitGrams != nil {
			grams := int32(*p.PerUnitGrams)
			minGrams := grams
			if p.PerUnitMinGrams != nil && *p.PerUnitMinGrams > 0 {
				minGrams = int32(*p.PerUnitMinGrams)
			}
			maxGrams := grams
			if p.PerUnitMaxGrams != nil && *p.PerUnitMaxGrams > 0 {
				maxGrams = int32(*p.PerUnitMaxGrams)
			}
			perUnit = &common.Measurement{
				Value:    grams,
				MinValue: minGrams,
				MaxValue: maxGrams,
			}
		} else {
			perUnit = &common.Measurement{
				Value:    0,
				MinValue: 0,
				MaxValue: 0,
			}
		}
		ing.Portion = &server.MealIngredient_Exact{
			Exact: &server.PortionExact{
				Value:       int32(p.Value),
				PerUnitGram: perUnit,
				Origin:      origin,
			},
		}
	case "PINCH":
		ing.Portion = &server.MealIngredient_Pinch{
			Pinch: &server.PortionPinch{
				Value:  int32(p.Value),
				Origin: origin,
			},
		}
	default: // BULK
		val := int32(p.Value)
		minVal := int32(p.MinValue)
		maxVal := int32(p.MaxValue)
		if minVal == 0 || minVal > val {
			minVal = val
		}
		if maxVal == 0 || maxVal < val {
			maxVal = val
		}
		ing.Portion = &server.MealIngredient_Bulk{
			Bulk: &server.PortionBulk{
				Value: &common.Measurement{
					Value:    val,
					MinValue: minVal,
					MaxValue: maxVal,
				},
				Origin: origin,
			},
		}
	}
}

func (d *Pass1DTO) ToProto() *server.Pass1 {
	var mealType *common.MealType
	if val, ok := common.MealType_value[d.MealType]; ok {
		mt := common.MealType(val)
		mealType = &mt
	}

	var healthScore common.HealthScore
	if val, ok := common.HealthScore_value[d.MealHealth.HealthScore]; ok {
		healthScore = common.HealthScore(val)
	}

	mealHealth := &common.MealHealth{
		HealthScore:       &healthScore,
		HealthScoreReason: &d.MealHealth.HealthScoreReason,
	}

	components := make([]*server.MealComponent, 0, len(d.Components))
	for _, c := range d.Components {
		var prepMethod server.PreparationMethod
		if val, ok := server.PreparationMethod_value[c.PreparationMethod]; ok {
			prepMethod = server.PreparationMethod(val)
		}

		comp := &server.MealComponent{
			Name:              c.Name,
			Alias:             c.Aliases,
			PreparationMethod: prepMethod,
		}
		c.Portion.applyToComponent(comp)
		components = append(components, comp)
	}

	return &server.Pass1{
		Name:        d.Name,
		Quantity:    d.Quantity,
		MealType:    mealType,
		Tip:         d.Tip,
		MealHealth:  mealHealth,
		Components:  components,
	}
}

func (d *Pass2DTO) ToProto() *server.Pass2 {
	ingredients := make([]*server.MealIngredient, 0, len(d.Ingredients))
	for _, ing := range d.Ingredients {
		var ingType server.IngredientType
		if val, ok := server.IngredientType_value[ing.IngredientType]; ok {
			ingType = server.IngredientType(val)
		}

		ingredient := &server.MealIngredient{
			Name:           ing.Name,
			Alias:          ing.Aliases,
			IngredientType: ingType,
		}
		ing.Portion.applyToIngredient(ingredient)
		ingredients = append(ingredients, ingredient)
	}

	return &server.Pass2{
		Ingredients: ingredients,
	}
}

func parsePass1Response(rawJson string) (*server.Pass1, error) {
	var dto Pass1DTO
	if err := json.Unmarshal([]byte(rawJson), &dto); err != nil {
		return nil, err
	}
	return dto.ToProto(), nil
}

func parsePass2Response(rawJson string) (*server.Pass2, error) {
	var dto Pass2DTO
	if err := json.Unmarshal([]byte(rawJson), &dto); err != nil {
		return nil, err
	}
	return dto.ToProto(), nil
}

type UsdaCandidate struct {
	FdcID          int64   `json:"fdc_id"`
	Description    string  `json:"description"`
	KcalPer100g    float32 `json:"kcal_per_100g"`
	ProteinPer100g float32 `json:"protein_per_100g"`
	CarbsPer100g   float32 `json:"carbs_per_100g"`
	FatPer100g     float32 `json:"fat_per_100g"`
	FiberPer100g   float32 `json:"fiber_per_100g"`
	Similarity     float32 `json:"similarity"`
}
