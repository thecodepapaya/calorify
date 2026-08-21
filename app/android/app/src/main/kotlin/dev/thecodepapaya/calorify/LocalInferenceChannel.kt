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
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.collect
import kotlinx.coroutines.job
import kotlinx.coroutines.launch
import kotlinx.coroutines.withTimeout

class LocalInferenceChannel(
    flutterEngine: FlutterEngine,
    private val scope: CoroutineScope,
    private val debugEnabled: Boolean,
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
            "cancel" -> {
                val requestId = call.argument<String>("requestId")
                requestId?.let { requests.remove(it)?.cancel() }
                result.success(null)
            }
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
        val debugFailure = call.argument<String>("debugFailure")
        val text = call.argument<String>("text")?.trim().orEmpty()
        val timeoutMs = (call.argument<Number>("timeoutMs")?.toLong() ?: DEFAULT_TIMEOUT_MS)
            .coerceIn(1_000L, MAX_TIMEOUT_MS)
        if (text.isEmpty()) {
            result.error("invalid_input", "Meal text is required", null)
            return
        }
        val job = scope.launch(start = CoroutineStart.LAZY) {
            try {
                simulateFailure(debugFailure)
                val startedAt = SystemClock.elapsedRealtime()
                if (debugEnabled && debugFailure == "malformed") {
                    result.success(malformedPayload(requestId, 0))
                    return@launch
                }
                if (debugEnabled && debugFailure == "sample") {
                    result.success(samplePayload(requestId, 0))
                    return@launch
                }
                ensureReady()
                val output = withTimeout(timeoutMs) {
                    inferText(text)
                }
                val elapsedMs = SystemClock.elapsedRealtime() - startedAt
                val modelName = runCatching { model.getBaseModelName() }.getOrNull()
                val payload = if (debugFailure == "malformed") {
                    malformedPayload(requestId, elapsedMs)
                } else {
                    output.toPayload(requestId, elapsedMs, modelName)
                }
                result.success(payload)
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
            "imageSupported" to false,
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

    private suspend fun simulateFailure(mode: String?) {
        if (!debugEnabled || mode.isNullOrBlank()) return
        when (mode) {
            "unsupported" -> throw AdapterException("unsupported_device", "Simulated unsupported device")
            "not_ready" -> throw AdapterException("model_not_ready", "Simulated model setup")
            "busy" -> throw AdapterException("busy", "Simulated AICore busy state")
            "quota" -> throw AdapterException("quota_limited", "Simulated battery quota")
            "background" -> throw AdapterException("background_blocked", "Simulated background block")
            "thermal" -> throw AdapterException("thermally_limited", "Simulated thermal limit")
            "model_updating" -> throw AdapterException("model_updating", "Simulated model update")
            "timeout" -> {
                delay(100)
                throw AdapterException("timed_out", "Simulated inference timeout")
            }
            "cancelled" -> throw CancellationException("Simulated cancellation")
        }
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

    private fun malformedPayload(
        requestId: String,
        elapsedMs: Long,
    ): Map<String, Any?> = mapOf(
        "schemaVersion" to 1,
        "proposalId" to UUID.randomUUID().toString(),
        "requestId" to requestId,
        "modality" to "ANALYSIS_MODALITY_TEXT",
        "mealName" to "Malformed debug proposal",
        "inferredMealType" to "UNKNOWN",
        "mealTypeConfident" to false,
        "confidence" to 2.0,
        "ingredients" to emptyList<Any>(),
        "interpretationOrigin" to "INTERPRETATION_ORIGIN_LOCAL_NANO",
        "elapsedMs" to elapsedMs,
    )

    private fun samplePayload(
        requestId: String,
        elapsedMs: Long,
    ): Map<String, Any?> = mapOf(
        "schemaVersion" to 1,
        "proposalId" to UUID.randomUUID().toString(),
        "requestId" to requestId,
        "modality" to "ANALYSIS_MODALITY_TEXT",
        "mealName" to "Oatmeal with banana",
        "inferredMealType" to "BREAKFAST",
        "mealTypeConfident" to true,
        "confidence" to 0.9,
        "ingredients" to listOf(
            mapOf(
                "rowId" to UUID.randomUUID().toString(),
                "rawName" to "cooked oatmeal",
                "canonicalHint" to "oatmeal cooked with water",
                "preparation" to "cooked",
                "gramsEstimated" to 240.0,
                "minGrams" to 200.0,
                "maxGrams" to 280.0,
                "notes" to "",
                "portionKind" to "BULK",
                "sizeSpecifiedByUser" to false,
                "confidence" to 0.9,
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
            ),
            mapOf(
                "rowId" to UUID.randomUUID().toString(),
                "rawName" to "banana",
                "canonicalHint" to "banana raw",
                "preparation" to "raw",
                "gramsEstimated" to 118.0,
                "minGrams" to 100.0,
                "maxGrams" to 136.0,
                "notes" to "one medium banana",
                "portionKind" to "COUNT",
                "count" to 1.0,
                "perUnitGrams" to 118.0,
                "perUnitMinGrams" to 100.0,
                "perUnitMaxGrams" to 136.0,
                "sizeSpecifiedByUser" to false,
                "confidence" to 0.9,
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
            ),
        ),
        "interpretationOrigin" to "INTERPRETATION_ORIGIN_LOCAL_NANO",
        "modelName" to "debug-sample",
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
