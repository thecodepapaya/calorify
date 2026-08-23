package dev.thecodepapaya.calorify

import android.os.SystemClock
import com.google.mlkit.genai.common.DownloadStatus
import com.google.mlkit.genai.common.FeatureStatus
import com.google.mlkit.genai.common.GenAiException
import com.google.mlkit.genai.prompt.GenerateContentRequest
import com.google.mlkit.genai.prompt.Generation
import com.google.mlkit.genai.prompt.ImagePart
import com.google.mlkit.genai.prompt.TextPart
import com.google.mlkit.genai.prompt.generateTypedContentRequest
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import java.util.UUID
import java.util.concurrent.ConcurrentHashMap
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.CoroutineStart
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Job
import kotlinx.coroutines.TimeoutCancellationException
import kotlinx.coroutines.flow.collect
import kotlinx.coroutines.job
import kotlinx.coroutines.launch
import kotlinx.coroutines.withTimeout

class LocalInferenceChannel(
    flutterEngine: FlutterEngine,
    private val scope: CoroutineScope,
) : MethodChannel.MethodCallHandler {
    private val channel = MethodChannel(
        flutterEngine.dartExecutor.binaryMessenger,
        CHANNEL_NAME,
    )
    private val model = Generation.getClient()
    private val requests = ConcurrentHashMap<String, Job>()
    @Volatile private var isForeground = false

    init {
        channel.setMethodCallHandler(this)
    }

    fun setForeground(value: Boolean) {
        isForeground = value
        if (!value) {
            requests.values.forEach(Job::cancel)
            requests.clear()
        }
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "getCapabilities" -> launchResult(result) { capabilities() }
            "downloadModel" -> launchResult(result) { downloadModel() }
            "warmUp" -> launchResult(result) { warmUp() }
            "analyzeText" -> startAnalysis(call, result)
            "analyzeImage" -> startImageAnalysis(call, result)
            else -> result.notImplemented()
        }
    }

    private fun launchResult(
        result: MethodChannel.Result,
        block: suspend () -> Any?,
    ) {
        scope.launch {
            try {
                result.success(block())
            } catch (error: Throwable) {
                completeError(result, error)
            }
        }
    }

    private fun startAnalysis(
        call: MethodCall,
        result: MethodChannel.Result,
    ) {
        val requestId = call.argument<String>("requestId") ?: UUID.randomUUID().toString()
        val text = call.argument<String>("text")?.trim().orEmpty()
        val timeoutMs = (call.argument<Number>("timeoutMs")?.toLong() ?: DEFAULT_TIMEOUT_MS)
            .coerceIn(1_000L, MAX_TIMEOUT_MS)
        if (text.isEmpty()) {
            result.error("invalid_input", "Meal text is required", null)
            return
        }
        startInference(
            requestId = requestId,
            timeoutMs = timeoutMs,
            modality = "ANALYSIS_MODALITY_TEXT",
            result = result,
        ) {
            inferText(text)
        }
    }

    private fun startImageAnalysis(
        call: MethodCall,
        result: MethodChannel.Result,
    ) {
        val requestId = call.argument<String>("requestId") ?: UUID.randomUUID().toString()
        val imageBytes = call.argument<ByteArray>("imageBytes")
        val timeoutMs = (call.argument<Number>("timeoutMs")?.toLong() ?: MAX_TIMEOUT_MS)
            .coerceIn(1_000L, MAX_TIMEOUT_MS)
        if (imageBytes == null || imageBytes.isEmpty()) {
            result.error("invalid_input_image", "A meal image is required", null)
            return
        }
        startInference(
            requestId = requestId,
            timeoutMs = timeoutMs,
            modality = "ANALYSIS_MODALITY_IMAGE",
            result = result,
        ) {
            inferImage(imageBytes)
        }
    }

    private fun startInference(
        requestId: String,
        timeoutMs: Long,
        modality: String,
        result: MethodChannel.Result,
        inference: suspend () -> LocalMealProposalOutput,
    ) {
        val job = scope.launch(start = CoroutineStart.LAZY) {
            try {
                val startedAt = SystemClock.elapsedRealtime()
                ensureReady()
                val output = withTimeout(timeoutMs) {
                    inference()
                }
                val elapsedMs = SystemClock.elapsedRealtime() - startedAt
                val modelName = runCatching { model.getBaseModelName() }.getOrNull()
                result.success(output.toPayload(requestId, elapsedMs, modelName, modality))
            } catch (error: Throwable) {
                completeError(result, error)
            } finally {
                requests.remove(requestId, coroutineContext.job)
            }
        }
        if (requests.putIfAbsent(requestId, job) != null) {
            job.cancel()
            result.error("busy", "This local request is already running", null)
            return
        }
        job.start()
    }

    private suspend fun capabilities(): Map<String, Any?> {
        val status = model.checkStatus()
        val structuredOutput = if (status == FeatureStatus.AVAILABLE) {
            runCatching { model.isStructuredOutputFeatureAvailable() }.getOrDefault(false)
        } else {
            false
        }
        val modelName = if (status == FeatureStatus.AVAILABLE) {
            runCatching { model.getBaseModelName() }.getOrNull()
        } else {
            null
        }
        val state = when (status) {
            FeatureStatus.AVAILABLE -> if (structuredOutput) "ready" else "unsupported"
            FeatureStatus.DOWNLOADABLE -> "downloadable"
            FeatureStatus.DOWNLOADING -> "downloading"
            else -> "unsupported"
        }
        return mapOf(
            "state" to state,
            "modelName" to modelName,
        )
    }

    private suspend fun downloadModel(): Map<String, Any?> {
        when (model.checkStatus()) {
            FeatureStatus.AVAILABLE -> return capabilities()
            FeatureStatus.UNAVAILABLE -> throw AdapterException(
                "unsupported_device",
                "Gemini Nano is unavailable on this device",
            )
        }
        var failure: GenAiException? = null
        model.download().collect { status ->
            if (status is DownloadStatus.DownloadFailed) failure = status.e
        }
        failure?.let { throw it }
        return capabilities()
    }

    private suspend fun warmUp(): Map<String, Any?> {
        ensureReady()
        val startedAt = SystemClock.elapsedRealtime()
        model.warmup()
        return mapOf(
            "elapsedMs" to (SystemClock.elapsedRealtime() - startedAt),
            "modelName" to runCatching { model.getBaseModelName() }.getOrNull(),
        )
    }

    private suspend fun ensureReady() {
        if (!isForeground) {
            throw AdapterException("background_blocked", "Local inference requires the foreground")
        }
        when (model.checkStatus()) {
            FeatureStatus.AVAILABLE -> Unit
            FeatureStatus.DOWNLOADABLE,
            FeatureStatus.DOWNLOADING -> throw AdapterException(
                "model_not_ready",
                "Gemini Nano is not ready yet",
            )
            else -> throw AdapterException(
                "unsupported_device",
                "Gemini Nano is unavailable on this device",
            )
        }
        if (!model.isStructuredOutputFeatureAvailable()) {
            throw AdapterException(
                "structured_output_unavailable",
                "Structured local output is unavailable",
            )
        }
    }

    private suspend fun inferText(text: String): LocalMealProposalOutput {
        val prompt = """
            ## Task
            Decompose the user's meal into atomic editable ingredients and realistic total gram ranges.
            ## Rules
            Preserve explicit counts and sizes. Distinguish raw/cooked/fried states. Use generic USDA-friendly names.
            For COUNT, set count above 0 and set each per-unit gram value to its matching total gram value divided by count.
            Set count and all per-unit fields to 0 for BULK or PINCH items. Keep min <= estimate <= max.
            Treat prepared dishes as cooked when implied by the meal wording. Use raw only when explicitly stated; otherwise leave preparation empty.
            Do not invent sizes or notes that the user did not provide.
            Do not provide calories, macros, nutrient facts, health advice, or presentation copy.
            ## Meal
            <meal>${text.take(MAX_TEXT_LENGTH)}</meal>
        """.trimIndent()
        val request = GenerateContentRequest.Builder(TextPart(prompt)).apply {
            temperature = 0.2f
            candidateCount = 1
            maxOutputTokens = 2048
        }.build()
        return generate(request)
    }

    private suspend fun inferImage(imageBytes: ByteArray): LocalMealProposalOutput {
        val prompt = """
            ## Task
            Identify the visible meal and decompose it into atomic editable ingredients with realistic total gram ranges.
            ## Rules
            Include only edible foods reasonably visible in the image. Do not invent hidden ingredients.
            Never include plates, bowls, cups, cutlery, chopsticks, napkins, packaging, tables, or other non-food objects.
            Distinguish raw, cooked, fried, and baked states from visual evidence. Use generic USDA-friendly names.
            For COUNT, set count above 0 and set each per-unit gram value to its matching total gram value divided by count.
            Set count and all per-unit fields to 0 for BULK or PINCH items. Keep min <= estimate <= max.
            Leave preparation or notes empty when the image does not support them.
            Do not provide calories, macros, nutrient facts, health advice, or presentation copy.
        """.trimIndent()
        val image = try {
            ImagePart(imageBytes)
        } catch (error: IllegalArgumentException) {
            throw AdapterException("invalid_input_image", "The selected image could not be decoded")
        }
        val request = GenerateContentRequest.Builder(image, TextPart(prompt)).apply {
            temperature = 0.2f
            candidateCount = 1
            maxOutputTokens = 2048
        }.build()
        return generate(request)
    }

    private suspend fun generate(request: GenerateContentRequest): LocalMealProposalOutput {
        val typedRequest = generateTypedContentRequest(
            generateContentRequest = request,
            outputClass = LocalMealProposalOutput::class,
        )
        val response = model.generateContent(typedRequest)
        return response.candidates.firstOrNull()?.response
            ?: throw AdapterException("invalid_output", "Gemini Nano returned no valid proposal")
    }

    private fun completeError(result: MethodChannel.Result, error: Throwable) {
        val mapped = mapError(error)
        result.error(
            mapped.first,
            mapped.second,
            errorDetails(error),
        )
    }

    private fun errorDetails(error: Throwable): Map<String, Any?> = buildMap {
        put("nativeType", error.javaClass.name)
        put("nativeMessage", error.message)
        if (error is GenAiException) put("nativeErrorCode", error.errorCode)
        error.cause?.let { cause ->
            put("causeType", cause.javaClass.name)
            put("causeMessage", cause.message)
        }
        put("nativeStackTrace", error.stackTraceToString())
    }

    private fun mapError(error: Throwable): Pair<String, String> = when (error) {
        is AdapterException -> error.code to error.message.orEmpty()
        is TimeoutCancellationException -> "timed_out" to "Local inference timed out"
        is CancellationException -> "cancelled" to "Local inference was cancelled"
        is GenAiException -> when (error.errorCode) {
            9 -> "busy" to "Gemini Nano is busy"
            7 -> "cancelled" to "Local inference was cancelled"
            27 -> "quota_limited" to "The on-device battery quota was reached"
            30 -> "background_blocked" to "Local inference requires the foreground"
            8, 16, -101, 604 -> "unsupported_device" to "Gemini Nano is unavailable"
            501 -> "not_enough_disk_space" to "Not enough storage for Gemini Nano"
            12 -> "request_too_large" to "The local request is too large"
            -102 -> "invalid_input_image" to "The image is not supported"
            -104, -105, -106 -> "invalid_output" to "Structured local output failed"
            else -> "inference_failed" to "Local inference could not finish"
        }
        else -> "inference_failed" to "Local inference could not finish"
    }

    fun dispose() {
        channel.setMethodCallHandler(null)
        requests.values.forEach(Job::cancel)
        requests.clear()
        model.close()
    }

    private fun LocalMealProposalOutput.toPayload(
        requestId: String,
        elapsedMs: Long,
        modelName: String?,
        modality: String,
    ): Map<String, Any?> = mapOf(
        "schemaVersion" to 1,
        "proposalId" to UUID.randomUUID().toString(),
        "requestId" to requestId,
        "modality" to modality,
        "mealName" to mealName.trim(),
        "inferredMealType" to inferredMealType,
        "mealTypeConfident" to mealTypeConfident,
        "confidence" to confidence,
        "ingredients" to ingredients.map { ingredient ->
            mapOf(
                "rowId" to UUID.randomUUID().toString(),
                "rawName" to ingredient.rawName.trim(),
                "canonicalHint" to ingredient.canonicalHint.trim(),
                "preparation" to ingredient.preparation.trim(),
                "gramsEstimated" to ingredient.gramsEstimated,
                "minGrams" to ingredient.minGrams,
                "maxGrams" to ingredient.maxGrams,
                "notes" to ingredient.notes.trim(),
                "portionKind" to ingredient.portionKind,
                "count" to ingredient.count.takeIf { ingredient.portionKind == "COUNT" && it > 0 },
                "perUnitGrams" to ingredient.perUnitGrams.takeIf { ingredient.portionKind == "COUNT" && it > 0 },
                "perUnitMinGrams" to ingredient.perUnitMinGrams.takeIf { ingredient.portionKind == "COUNT" && it > 0 },
                "perUnitMaxGrams" to ingredient.perUnitMaxGrams.takeIf { ingredient.portionKind == "COUNT" && it > 0 },
                "sizeSpecifiedByUser" to ingredient.sizeSpecifiedByUser,
                "confidence" to ingredient.confidence,
                "fieldProvenance" to listOf(
                    mapOf(
                        "fieldName" to "identity",
                        "origin" to "INGREDIENT_FIELD_ORIGIN_LOCAL_MODEL",
                    ),
                    mapOf(
                        "fieldName" to "portion",
                        "origin" to "INGREDIENT_FIELD_ORIGIN_LOCAL_MODEL",
                    ),
                ),
            )
        },
        "interpretationOrigin" to "INTERPRETATION_ORIGIN_LOCAL_NANO",
        "modelName" to modelName,
        "modelVersion" to null,
        "elapsedMs" to elapsedMs,
    )

    private class AdapterException(
        val code: String,
        message: String,
    ) : Exception(message)

    companion object {
        private const val CHANNEL_NAME = "dev.thecodepapaya.calorify/local_inference"
        private const val DEFAULT_TIMEOUT_MS = 20_000L
        private const val MAX_TIMEOUT_MS = 45_000L
        private const val MAX_TEXT_LENGTH = 2_000
    }
}
