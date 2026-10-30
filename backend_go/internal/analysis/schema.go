package analysis

import (
	"encoding/json"

	"backend/internal/gen_proto/common"
	"backend/internal/gen_proto/server"
)

// Pass 1: Meal Component Decomposition Prompt
const pass1Prompt = `You are a clinical nutrition and food decomposition AI.
Your task is to analyze user food descriptions or images and decompose them into distinct meal components with portions and cooking methods.

RULES:
1. Identify the overall meal name (short, natural, 2-6 words).
2. Infer meal_type based on foods described or time of day (BREAKFAST, LUNCH, DINNER, SNACK, or UNKNOWN).
3. Decompose the meal into individual distinct food components (e.g. "Scrambled Eggs", "Whole Wheat Toast", "Butter", "Black Coffee").
4. For each component:
   - Identify primary name and short English search aliases suitable for USDA nutritional database lookup.
   - Identify the preparation_method (e.g. RAW, BOILED, STEAMED, BAKED, ROASTED, GRILLED, TOASTED, SAUTEED, SHALLOW_FRIED, DEEP_FRIED, etc.).
   - Estimate the portion:
     * EXACT: For discrete count items (e.g. 2 eggs, 1 slice of bread). Specify count value and estimated per_unit_grams with min/max bounds.
     * BULK: For volume or weight-measured foods (e.g. rice, oatmeal, soup, pasta, curries). Specify value in estimated total grams with min_value and max_value bounds.
     * PINCH: For garnishes, seasonings, trace amounts (salt, pepper, herbs). Value is typically 1-5 grams.
   - If user explicitly stated quantity, set origin to "USER_STATED". Otherwise set origin to "MODEL_INFERRED".
5. NEVER generate calories, macros, or nutritional values in this pass. Focus strictly on food identity and portion estimation.`

// Pass 1 JSON Schema for OpenAI Structured Outputs
var pass1Schema = map[string]any{
	"type": "object",
	"properties": map[string]any{
		"name": map[string]any{
			"type":        "string",
			"description": "Short, natural display name for the meal",
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
	"required":             []string{"name", "meal_type", "components"},
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

type Pass1DTO struct {
	Name       string         `json:"name"`
	MealType   string         `json:"meal_type"`
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
		Name:       d.Name,
		MealType:   mealType,
		Components: components,
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
