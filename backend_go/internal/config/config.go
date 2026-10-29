package config

import "os"

type Config struct {
	Port            string
	DatabaseURL     string
	UsdaDatabaseURL string
	FirebaseSdkPath string
	OpenAiApiKey    string
}

func Load() Config {
	port := os.Getenv("PORT")
	databaseUrl := os.Getenv("DATABASE_URL")
	usdaDatabaseUrl := os.Getenv("USDA_DATABASE_URL")
	firebaseSdk := os.Getenv("FIREBASE_ADMIN_SDK")
	openaiAPiKey := os.Getenv("OPENAI_API_KEY")
	if port == "" {
		port = "8000"
	}
	if databaseUrl == "" {
		databaseUrl = "postgres://user:password@localhost:5432/calorify_db_dev?sslmode=disable"
	}
	if usdaDatabaseUrl == "" {
		usdaDatabaseUrl = "postgres://user:password@localhost:5433/usda_db?sslmode=disable"
	}
	if firebaseSdk == "" {
		firebaseSdk = "firebase-adminsdk.json"
	}
	return Config{
		Port:            ":" + port,
		DatabaseURL:     databaseUrl,
		UsdaDatabaseURL: usdaDatabaseUrl,
		FirebaseSdkPath: firebaseSdk,
		OpenAiApiKey:    openaiAPiKey,
	}
}
