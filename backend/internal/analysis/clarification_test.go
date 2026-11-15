package analysis

import (
	"strings"
	"testing"

	"backend/internal/gen_proto/server"
)

func TestIngredientQuantityClarificationNamesComponent(t *testing.T) {
	ingredient := &server.EnrichedIngredient{Name: "ghee"}
	clarification := buildQuantityClarification(0, ingredient, "Roti", "en")

	if got, want := clarification.GetQuestion(), "Quantity of ghee in Roti?"; got != want {
		t.Fatalf("expected question %q, got %q", want, got)
	}
}

func TestComponentQuantityClarificationUnchanged(t *testing.T) {
	component := &server.EnrichedComponent{Name: "Roti"}
	clarification := buildComponentQuantityClarification(0, component, "en")

	if got, want := clarification.GetQuestion(), "Quantity of Roti?"; got != want {
		t.Fatalf("expected question %q, got %q", want, got)
	}
}

func TestIngredientQuantityClarificationEveryLocale(t *testing.T) {
	ingredient := &server.EnrichedIngredient{Name: "ghee"}
	for code := range clarificationTranslations {
		t.Run(code, func(t *testing.T) {
			clarification := buildQuantityClarification(0, ingredient, "Roti", code)
			question := clarification.GetQuestion()

			if !strings.Contains(question, "ghee") {
				t.Fatalf("question %q does not name the ingredient", question)
			}
			if !strings.Contains(question, "Roti") {
				t.Fatalf("question %q does not name the component", question)
			}
			if strings.Contains(question, "%") {
				t.Fatalf("question %q has an unrendered verb", question)
			}
		})
	}
}
