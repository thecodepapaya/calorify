package analysis

import (
	"github.com/jackc/pgx/v5/pgxpool"
	"github.com/openai/openai-go"
	"github.com/openai/openai-go/option"
)

type Service struct {
	UsdaDB *pgxpool.Pool
	Client *openai.Client
}

func New(usdaDB *pgxpool.Pool, apiKey string) *Service {
	client := openai.NewClient(option.WithAPIKey(apiKey))
	service := Service{
		UsdaDB: usdaDB,
		Client: &client,
	}

	return &service
}

func (s *Service) AnalyzeMeal() {
	// validate text/image input
	// log a "analysis" with analysis id
	// set 30s timeout for analysis clean-up if stuck
	// do LLM pass 1
	// store update (response) in analysis
	// do LLM pass 2
	// store response in analysis
	// usda db query
	// store enriched json in analysis
	// generate clarification questions
	// store questions in analysis
	// send question to user
	// get answers and store in analysis
	// prepare final presentation
	// store in analysis
	// send to user
}
