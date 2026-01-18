package logger

import (
	"os"
	"time"

	"github.com/rs/zerolog"
	"github.com/rs/zerolog/log"
	"gopkg.in/natefinch/lumberjack.v2"
)

// Init initializes the logger with zerolog and lumberjack for rotation
func Init(env string) {
	zerolog.TimeFieldFormat = zerolog.TimeFormatUnix
	
	// Default level
	level := zerolog.InfoLevel
	if env == "staging" || env == "development" {
		level = zerolog.DebugLevel
	}
	zerolog.SetGlobalLevel(level)

	// Lumberjack for file rotation
	fileLogger := &lumberjack.Logger{
		Filename:   "logs/app.log",
		MaxSize:    10, // megabytes
		MaxBackups: 3,
		MaxAge:     28,   // days
		Compress:   true, // disabled by default
	}

	// Multi-writer: Output to both console and file
	consoleWriter := zerolog.ConsoleWriter{Out: os.Stdout, TimeFormat: time.RFC3339}
	multi := zerolog.MultiLevelWriter(consoleWriter, fileLogger)

	log.Logger = zerolog.New(multi).With().Timestamp().Caller().Logger()
}
