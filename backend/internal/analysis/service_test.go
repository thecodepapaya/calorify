package analysis

import (
	"backend/internal/database"
	"backend/internal/gen_proto/server"
	"context"
	"fmt"
	"os"
	"testing"
	"time"
)

type TestCaseGroup struct {
	Category string
	Queries  []string
}

func TestUsdaVectorSearch(t *testing.T) {
	testGroups := []TestCaseGroup{
		{
			Category: "1. Production Failures & Regional Vocabulary (Historic Node Misses)",
			Queries: []string{
				"atta",     // Production session f60c15aa failure (4 roti daal raita)
				"toor dal", // Pigeon peas, mature seeds
				"urad dal", // Black gram, mature seeds
				"poha",     // Rice, flattened, cooked
				"sooji",    // Semolina, enriched
				"paneer",   // Indian cottage cheese
				"dahi",     // Whole milk curd / plain yogurt
				"ghee",     // Clarified butter / anhydrous butter oil
				"jaggery",  // Unrefined cane sugar
				"lauki",    // Bottle gourd / calabash
			},
		},
		{
			Category: "2. Adversarial False Positive Checks (Must NOT confuse base with derivative)",
			Queries: []string{
				"milk",    // Must NOT rank 'milk chocolate' #1
				"chicken", // Must NOT rank 'chicken fat' #1
				"coconut", // Must NOT rank 'coconut oil' #1
				"pea",     // Must NOT rank 'peanut' #1
			},
		},
		{
			Category: "3. USDA Inverted & Parenthetical Matches",
			Queries: []string{
				"whole wheat flour",      // Matches "Wheat flour, whole-grain (Includes foods for USDA's Food Distribution Program)"
				"scrambled eggs",         // Matches "Egg, whole, cooked, scrambled"
				"grilled chicken breast", // Matches "Chicken, broilers or fryers, breast, meat only, cooked, roasted"
				"white bread",            // Matches "Bread, white, commercially prepared"
			},
		},
		{
			Category: "4. Preparation & Moisture Stress Tests (Raw vs Cooked)",
			Queries: []string{
				"cooked white rice",
				"raw white rice",
				"boiled potatoes",
				"raw potatoes",
				"cooked lentils",
				"dry lentils",
			},
		},
	}

	usdaURL := os.Getenv("USDA_DATABASE_URL")
	if usdaURL == "" {
		usdaURL = "postgres://user:password@localhost:5433/usda_db?sslmode=disable"
	}

	ollamaURL := os.Getenv("OLLAMA_URL")
	if ollamaURL == "" {
		ollamaURL = "http://localhost:11434"
	}

	ctx, cancel := context.WithTimeout(context.Background(), 60*time.Second)
	defer cancel()

	usdaPool, err := database.Connect(ctx, usdaURL)
	if err != nil {
		t.Skipf("Skipping test: USDA DB not reachable at %s: %v", usdaURL, err)
	}
	defer usdaPool.Close()

	svc := New(nil, usdaPool, "", ollamaURL)

	for _, group := range testGroups {
		fmt.Printf("\n########################################################################################\n")
		fmt.Printf("### %s\n", group.Category)
		fmt.Printf("########################################################################################\n")

		prefixed := make([]string, len(group.Queries))
		for i, q := range group.Queries {
			prefixed[i] = "task: search result | query: " + q
		}

		embeddings, err := svc.getEmbeddings(ctx, prefixed)
		if err != nil {
			t.Fatalf("Failed to get embeddings for group %q: %v", group.Category, err)
		}

		for i, query := range group.Queries {
			vecStr := formatVector(embeddings[i])
			candidate, err := svc.searchUsda(ctx, vecStr, server.IngredientType_BASE)
			if err != nil {
				t.Errorf("searchUsda failed for %q: %v", query, err)
				continue
			}

			fmt.Printf("\nQUERY: %-26q (Top %d Candidate)\n", query, 1)
			fmt.Println("----------------------------------------------------------------------------------------")

			fmt.Printf("  Sim: %.3f | FDC: %-8d | %-52s | %5.1f kcal | P:%4.1fg | C:%4.1fg | F:%4.1fg\n",
				candidate.Similarity,
				candidate.FdcID,
				candidate.Description,
				candidate.KcalPer100g,
				candidate.ProteinPer100g,
				candidate.CarbsPer100g,
				candidate.FatPer100g,
			)

		}
	}
}
