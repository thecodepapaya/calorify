package dev.thecodepapaya.calorify

import android.os.SystemClock
import com.google.mlkit.genai.common.DownloadStatus
import com.google.mlkit.genai.common.FeatureStatus
import com.google.mlkit.genai.common.GenAiException
import com.google.mlkit.genai.prompt.GenerateContentRequest
import com.google.mlkit.genai.prompt.Generation
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
        val job = scope.launch(start = CoroutineStart.LAZY) {
            try {
                val startedAt = SystemClock.elapsedRealtime()
                ensureReady()
                val output = withTimeout(timeoutMs) {
                    inferText(text)
                }
                val elapsedMs = SystemClock.elapsedRealtime() - startedAt
                val modelName = runCatching { model.getBaseModelName() }.getOrNull()
                result.success(output.toPayload(requestId, elapsedMs, modelName))
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
        return mapOf(
            "platformSupported" to true,
            "featureStatus" to statusName(status),
            "ready" to (status == FeatureStatus.AVAILABLE && structuredOutput),
            "canDownload" to (status == FeatureStatus.DOWNLOADABLE),
            "structuredOutputSupported" to structuredOutput,
            "textSupported" to (status != FeatureStatus.UNAVAILABLE),
            "modelName" to modelName,
            "modelVersion" to null,
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
            Set count and per-unit fields to 0 for BULK or PINCH items. Keep min <= estimate <= max.
            Do not provide calories, macros, nutrient facts, health advice, or presentation copy.
            ## Meal
            <meal>${text.take(MAX_TEXT_LENGTH)}</meal>
        """.trimIndent()
        return generate(prompt)
    }

    private suspend fun generate(prompt: String): LocalMealProposalOutput {
        val request = GenerateContentRequest.Builder(TextPart(prompt)).apply {
            temperature = 0.2f
            candidateCount = 1
            maxOutputTokens = 2048
        }.build()
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
            mapOf("nativeType" to error.javaClass.simpleName),
        )
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

    private fun statusName(status: Int): String = when (status) {
        FeatureStatus.AVAILABLE -> "available"
        FeatureStatus.DOWNLOADABLE -> "downloadable"
        FeatureStatus.DOWNLOADING -> "downloading"
        else -> "unavailable"
    }

    private fun LocalMealProposalOutput.toPayload(
        requestId: String,
        elapsedMs: Long,
        modelName: String?,
    ): Map<String, Any?> = mapOf(
        "schemaVersion" to 1,
        "proposalId" to UUID.randomUUID().toString(),
        "requestId" to requestId,
        "modality" to "ANALYSIS_MODALITY_TEXT",
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
                "count" to ingredient.count.takeIf { it > 0 },
                "perUnitGrams" to ingredient.perUnitGrams.takeIf { it > 0 },
                "perUnitMinGrams" to ingredient.perUnitMinGrams.takeIf { it > 0 },
                "perUnitMaxGrams" to ingredient.perUnitMaxGrams.takeIf { it > 0 },
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
