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
        val analysisContext = call.argument<Map<String, Any?>>("analysisContext").orEmpty()
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
            inferText(text, analysisContext)
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
        val analysisContext = call.argument<Map<String, Any?>>("analysisContext").orEmpty()
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
            inferImage(imageBytes, analysisContext)
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
                output.validateGeneratedCore()
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

    private suspend fun inferText(text: String, analysisContext: Map<String, Any?>): LocalMealProposalOutput {
        val prompt = """
            ## Task
            Inventory the primary meal described, classify each relevant candidate with isFood, and estimate portions only for food items.
            ## Rules
            Use this application-supplied local context for language and meal-time inference: $analysisContext
            Preserve explicit counts and sizes. Keep localized raw names separate from English lookup names and atomic preparation states.
            For COUNT, set count above 0 and set each per-unit gram value to its matching total gram value divided by count.
            Set count and all per-unit fields to null for BULK or PINCH items. Keep min <= estimate <= max.
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

    private suspend fun inferImage(imageBytes: ByteArray, analysisContext: Map<String, Any?>): LocalMealProposalOutput {
        val prompt = """
            ## Task
            Inventory the primary meal shown, classify each relevant candidate with isFood, and estimate portions only for food items.
            ## Rules
            Use this application-supplied local context for language and meal-time inference: $analysisContext
            Keep localized raw names separate from English lookup names and atomic preparation states.
            For COUNT, set count above 0 and set each per-unit gram value to its matching total gram value divided by count.
            Set count and all per-unit fields to null for BULK or PINCH items. Keep min <= estimate <= max.
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
        "schemaVersion" to 2,
        "proposalId" to UUID.randomUUID().toString(),
        "requestId" to requestId,
        "modality" to modality,
        "mealName" to mealName?.trim().orEmpty(),
        "outcome" to "DECOMPOSITION_OUTCOME_${outcome}",
        "outcomeReason" to outcomeReason.trim(),
        "outcomeConfidence" to outcomeConfidence,
        "inferredMealType" to inferredMealType,
        "mealTypeConfident" to mealTypeConfident,
        "mealTypeReason" to mealTypeReason.trim(),
        "items" to items.filter { it.isFood }.map { ingredient ->
            val lookup = requireNotNull(ingredient.usdaLookup)
            val portion = requireNotNull(ingredient.portion)
            mapOf(
                "rowId" to UUID.randomUUID().toString(),
                "rawName" to ingredient.rawName.trim(),
                "isFoodReason" to ingredient.isFoodReason.trim(),
                "isFoodConfidence" to ingredient.isFoodConfidence,
                "usdaLookup" to mapOf(
                    "proposedCanonicalName" to lookup.proposedCanonicalName.trim(),
                    "aliases" to lookup.aliases,
                    "preparationStates" to lookup.preparationStates,
                ),
                "portion" to mapOf(
                    "kind" to portion.kind,
                    "gramsEstimated" to portion.gramsEstimated,
                    "minGrams" to portion.minGrams,
                    "maxGrams" to portion.maxGrams,
                    "count" to portion.count,
                    "perUnitGrams" to portion.perUnitGrams,
                    "perUnitMinGrams" to portion.perUnitMinGrams,
                    "perUnitMaxGrams" to portion.perUnitMaxGrams,
                    "sizeSpecifiedByUser" to portion.sizeSpecifiedByUser,
                ),
            )
        },
        "interpretationOrigin" to "INTERPRETATION_ORIGIN_LOCAL_NANO",
        "modelName" to modelName,
        "modelVersion" to null,
        "elapsedMs" to elapsedMs,
    )

    private fun LocalMealProposalOutput.validateGeneratedCore() {
        fun validText(value: String, max: Int) = value.trim().isNotEmpty() && value.length <= max
        fun validConfidence(value: Double) = value.isFinite() && value in 0.0..1.0
        if (!validText(outcomeReason, 240) || !validConfidence(outcomeConfidence) ||
            !validText(mealTypeReason, 240) || items.size > 20
        ) throw AdapterException("invalid_output", "Local decomposition fields are invalid")

        val foodItems = items.filter { it.isFood }
        val noFood = outcome == "NO_FOOD"
        if (outcome !in setOf("FOOD", "NO_FOOD") ||
            (!noFood && (foodItems.isEmpty() || mealName.isNullOrBlank())) ||
            (noFood && (foodItems.isNotEmpty() || mealName != null ||
                inferredMealType != "UNKNOWN" || mealTypeConfident))
        ) throw AdapterException("invalid_output", "Local decomposition outcome is inconsistent")

        items.forEach { item ->
            if (!validText(item.rawName, 120) || !validText(item.isFoodReason, 240) ||
                !validConfidence(item.isFoodConfidence)
            ) throw AdapterException("invalid_output", "Local item classification is invalid")
            if (!item.isFood) {
                if (item.usdaLookup != null || item.portion != null) {
                    throw AdapterException("invalid_output", "Non-food items cannot have lookup or portion data")
                }
                return@forEach
            }
            val lookup = item.usdaLookup
                ?: throw AdapterException("invalid_output", "Food items require lookup data")
            val portion = item.portion
                ?: throw AdapterException("invalid_output", "Food items require portion data")
            if (!validText(lookup.proposedCanonicalName, 120) ||
                lookup.aliases.size > 5 || lookup.preparationStates.size > 5
            ) throw AdapterException("invalid_output", "Local USDA lookup proposal is invalid")
            val aliases = lookup.aliases.map { it.trim().lowercase() }
            val states = lookup.preparationStates.map { it.trim().lowercase() }
            if (aliases.any { it.isEmpty() || it.length > 120 } || aliases.toSet().size != aliases.size ||
                aliases.contains(lookup.proposedCanonicalName.trim().lowercase()) ||
                states.any { it.isEmpty() || it.length > 40 || it.contains(',') || Regex("\\bor\\b").containsMatchIn(it) } ||
                states.toSet().size != states.size
            ) throw AdapterException("invalid_output", "Local lookup aliases or preparation states are invalid")
            if (!portion.gramsEstimated.isFinite() || portion.gramsEstimated !in 0.001..5000.0 ||
                portion.minGrams !in 0.0..portion.gramsEstimated ||
                portion.maxGrams !in portion.gramsEstimated..5000.0
            ) throw AdapterException("invalid_output", "Local portion bounds are invalid")
            val unitValues = listOf(portion.perUnitGrams, portion.perUnitMinGrams, portion.perUnitMaxGrams)
            if (portion.kind == "COUNT") {
                if (unitValues.any { it == null || it <= 0.0 } ||
                    (portion.count != null && (portion.count <= 0.0 || portion.count > 20.0))
                ) throw AdapterException("invalid_output", "COUNT portion fields are invalid")
                if (portion.count != null) {
                    val count = portion.count
                    val close = { left: Double, right: Double -> kotlin.math.abs(left - right) < 0.051 }
                    if (!close(portion.gramsEstimated, count * portion.perUnitGrams!!) ||
                        !close(portion.minGrams, count * portion.perUnitMinGrams!!) ||
                        !close(portion.maxGrams, count * portion.perUnitMaxGrams!!)
                    ) throw AdapterException("invalid_output", "COUNT totals are inconsistent")
                }
            } else if (portion.kind !in setOf("BULK", "PINCH") ||
                portion.count != null || unitValues.any { it != null }
            ) throw AdapterException("invalid_output", "Non-count portion fields are invalid")
        }
    }

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
