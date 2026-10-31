package config

import "os"

type Config struct {
	AppName         string
	Port            string
	DatabaseURL     string
	UsdaDatabaseURL string
	FirebaseSdkPath string
	OpenAiApiKey    string
	OllamaURL       string
	OtelEndpoint    string
}

func Load() Config {
	appName := os.Getenv("APP_NAME")
	port := os.Getenv("PORT")
	databaseUrl := os.Getenv("DATABASE_URL")
	usdaDatabaseUrl := os.Getenv("USDA_DATABASE_URL")
	firebaseSdk := os.Getenv("FIREBASE_ADMIN_SDK")
	openaiAPiKey := os.Getenv("OPENAI_API_KEY")
	ollamaURL := os.Getenv("OLLAMA_URL")
	otelEndpoint := os.Getenv("OTEL_EXPORTER_OTLP_ENDPOINT")
	if appName == "" {
		appName = "calorify_server"
	}
	if port == "" {
		port = "8000"
	}
	if databaseUrl == "" {
		databaseUrl = "postgres://user:password@localhost:5434/calorify_db_dev?sslmode=disable"
	}
	if usdaDatabaseUrl == "" {
		usdaDatabaseUrl = "postgres://user:password@localhost:5433/usda_db?sslmode=disable"
	}
	if firebaseSdk == "" {
		firebaseSdk = "firebase-adminsdk.json"
	}
	if ollamaURL == "" {
		ollamaURL = "http://localhost:11435"
	}
	if otelEndpoint == "" {
		otelEndpoint = "http://localhost:6006"
	}
	return Config{
		AppName:         appName,
		Port:            ":" + port,
		DatabaseURL:     databaseUrl,
		UsdaDatabaseURL: usdaDatabaseUrl,
		FirebaseSdkPath: firebaseSdk,
		OpenAiApiKey:    openaiAPiKey,
		OllamaURL:       ollamaURL,
		OtelEndpoint:    otelEndpoint,
	}
}
