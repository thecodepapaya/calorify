package config

import "os"

type Config struct {
	Port            string
	DatabaseURL     string
	FirebaseSdkPath string
}

func Load() Config {
	port := os.Getenv("PORT")
	databaseUrl := os.Getenv("DATABASE_URL")
	firebaseSdk := os.Getenv("FIREBASE_ADMIN_SDK")
	if port == "" {
		port = "8000"
	}
	if databaseUrl == "" {
		databaseUrl = "postgres://user:password@localhost:5432/calorify_db_dev?sslmode=disable"
	}
	if firebaseSdk == "" {
		firebaseSdk = "firebase-adminsdk.json"
	}
	return Config{
		Port:            ":" + port,
		DatabaseURL:     databaseUrl,
		FirebaseSdkPath: firebaseSdk,
	}
}
