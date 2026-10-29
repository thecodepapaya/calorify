package analysis

import "errors"

var ErrorInvalidInput = errors.New("Either text or imageUrl must be provided")
var ErrorLargeImage = errors.New("Max supported image size 200KiB")

const llm_model = "gpt-5.6-luna"
