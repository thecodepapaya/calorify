package config

import "os"

type Config struct {
	Port        string
	DatabaseURL string
}

func Load() Config {
	port := os.Getenv("PORT")
	databaseUrl := os.Getenv("DATABASE_URL")
	if port == "" {
		port = "8000"
	}
	if databaseUrl == "" {
		databaseUrl = "postgres://user:password@localhost:5432/calorify_db_dev?sslmode=disable"
	}
	return Config{
		Port:        ":" + port,
		DatabaseURL: databaseUrl,
	}
}
