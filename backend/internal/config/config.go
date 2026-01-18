package config

import (
	"strings"

	"github.com/spf13/viper"
)

type Config struct {
	Environment     string `mapstructure:"ENVIRONMENT"`
	Port            string `mapstructure:"PORT"`
	DatabaseURL     string `mapstructure:"DATABASE_URL"`
	FirebaseKeyPath string `mapstructure:"FIREBASE_KEY_PATH"`
	GeminiAPIKey    string `mapstructure:"GEMINI_API_KEY"`
}

var AppConfig Config

// LoadConfig loads the configuration from .env file or environment variables
func LoadConfig(env string) (*Config, error) {
	viper.SetEnvKeyReplacer(strings.NewReplacer(".", "_"))
	viper.AutomaticEnv()

	// Set default values
	viper.SetDefault("ENVIRONMENT", "development")
	viper.SetDefault("PORT", "8080")

	if env != "" {
		viper.SetConfigFile(".env." + env)
	} else {
		viper.SetConfigFile(".env")
	}

	viper.ReadInConfig() // Ignore error if config file not found

	err := viper.Unmarshal(&AppConfig)
	if err != nil {
		return nil, err
	}

	return &AppConfig, nil
}
