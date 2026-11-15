package api

import (
	"context"
	"encoding/base64"
	"fmt"
	"log/slog"

	"backend/internal/analysis"
	"backend/internal/gen_proto/api"
	"backend/internal/gen_proto/common"
	"backend/internal/gen_proto/server"

	"google.golang.org/protobuf/encoding/protojson"
)

// GetAnalysisImage returns the raw image bytes stored for an analysis, or
// found=false when the analysis or its image does not exist.
func (a *App) GetAnalysisImage(ctx context.Context, id string) ([]byte, bool, error) {
	const query = `SELECT image_base64 FROM meal_analysis WHERE id = $1`
	var b64 string
	err := a.DB.QueryRow(ctx, query, id).Scan(&b64)
	if err != nil {
		return nil, false, fmt.Errorf("failed to fetch analysis image: %w", err)
	}
	if b64 == "" {
		return nil, false, nil
	}
	raw, err := base64.StdEncoding.DecodeString(b64)
	if err != nil {
		return nil, false, fmt.Errorf("failed to decode analysis image: %w", err)
	}
	return raw, true, nil
}

// attachStageArtifacts populates the typed drawer artifacts on a history item
// from the raw persisted stage payloads. Each stage is parsed independently;
// a malformed or absent payload degrades to "section unavailable" in the UI
// instead of failing the whole history listing.
func attachStageArtifacts(item *api.AnalysisHistoryItem, pass1Raw, pass2Raw, enrichedRaw, clarificationRaw, finalRaw string) {
	if pass1Raw != "" {
		pass1, err := analysis.ParsePass1(pass1Raw)
		if err != nil {
			slog.Warn("history: failed to parse decomposed_component", "analysis_id", item.Id, "error", err)
		} else {
			item.Components = make([]*api.HistoryComponent, 0, len(pass1.Components))
			for i := range pass1.Components {
				c := &pass1.Components[i]
				item.Components = append(item.Components, &api.HistoryComponent{
					Name:              c.Name,
					CanonicalName:     c.CanonicalName,
					PreparationMethod: c.PreparationMethod,
					Portion:           c.Portion.ToCommon(),
				})
			}
		}
	}

	if pass2Raw != "" {
		pass2, err := analysis.ParsePass2(pass2Raw)
		if err != nil {
			slog.Warn("history: failed to parse decomposed_ingredient", "analysis_id", item.Id, "error", err)
		} else {
			var enriched server.UsdaEnriched
			hasEnriched := false
			if enrichedRaw != "" {
				if err := protojson.Unmarshal([]byte(enrichedRaw), &enriched); err != nil {
					slog.Warn("history: failed to parse usda_enriched", "analysis_id", item.Id, "error", err)
				} else {
					hasEnriched = true
				}
			}

			if hasEnriched {
				item.EnrichedComponents = enriched.Components
			} else {
				// Hydration not persisted: build the component tree from pass 2
				// so the drawer still shows the decomposition.
				comps := make([]*server.EnrichedComponent, 0, len(pass2.Components))
				for cIdx := range pass2.Components {
					comp := &pass2.Components[cIdx]
					ec := &server.EnrichedComponent{
						ComponentId:   int32(cIdx),
						Name:          comp.Name,
						CanonicalName: comp.CanonicalName,
						Ingredients:   make([]*server.EnrichedIngredient, 0, len(comp.Ingredients)),
					}
					for iIdx := range comp.Ingredients {
						ing := &comp.Ingredients[iIdx]
						ec.Ingredients = append(ec.Ingredients, &server.EnrichedIngredient{
							ComponentId:    int32(cIdx),
							IngredientId:   int32(iIdx),
							Name:           ing.Name,
							CanonicalName:  ing.CanonicalName,
							IngredientType: ing.ServerIngredientType(),
							Portion:        ing.Portion.ToCommon(),
						})
					}
					comps = append(comps, ec)
				}
				item.EnrichedComponents = comps
			}
		}
	}

	if clarificationRaw != "" {
		var clar common.Clarifications
		if err := protojson.Unmarshal([]byte(clarificationRaw), &clar); err != nil {
			slog.Warn("history: failed to parse generated_clarification", "analysis_id", item.Id, "error", err)
		} else {
			item.Clarifications = clar.GetClarification()
		}
	}

	if finalRaw != "" {
		var pkg common.MealPackage
		if err := protojson.Unmarshal([]byte(finalRaw), &pkg); err != nil {
			slog.Warn("history: failed to parse final_response", "analysis_id", item.Id, "error", err)
		} else if meal := pkg.GetMeal(); meal != nil {
			// The history row already carries the input text and serves the
			// image separately; keep the final meal payload lean.
			if meal.Metadata != nil {
				meal.Metadata.ImageBase64 = nil
				meal.Metadata.MealDescription = nil
			}
			item.Final = meal
		}
	}
}
