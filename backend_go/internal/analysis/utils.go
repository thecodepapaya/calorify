package analysis

import "errors"

var ErrorInvalidInput = errors.New("Either text or imageUrl must be provided")
var ErrorLargeImage = errors.New("Max supported image size 200KiB")

// const llm_model = "gpt-4.1-nano-2025-04-14"
const llm_model = "gpt-6-luna"
