package dev.thecodepapaya.calorify

import android.util.Log
import com.google.android.gms.wearable.*
import dev.thecodepapaya.calorify.protocol.WearEnvelope
import dev.thecodepapaya.calorify.protocol.WearError
import dev.thecodepapaya.calorify.protocol.WearErrorCode
import dev.thecodepapaya.calorify.protocol.WearOperation
import dev.thecodepapaya.calorify.protocol.WearResponse
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.*
import kotlinx.coroutines.tasks.await
import org.json.JSONObject
import java.nio.charset.StandardCharsets
import java.util.concurrent.ConcurrentHashMap
import java.util.UUID

class WearOsChannelHandler(
    private val context: android.content.Context,
    private val flutterEngine: FlutterEngine,
    private val coroutineScope: CoroutineScope
) : MessageClient.OnMessageReceivedListener {

    private val methodChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "dev.thecodepapaya.calorify/wear_os")
    private val eventChannel = EventChannel(flutterEngine.dartExecutor.binaryMessenger, "dev.thecodepapaya.calorify/wear_os_messages")
    
    private var wearableDataClient: DataClient? = null
    private var wearableMessageClient: MessageClient? = null
    private var isInitialized = false
    private var eventSink: EventChannel.EventSink? = null
    private val pendingResponses = ConcurrentHashMap<String, CompletableDeferred<Map<String, Any>?>>()
    private val pendingProtocolResponses = ConcurrentHashMap<String, CompletableDeferred<ByteArray?>>()
    
    private val TAG = "WearOsChannelHandler"
    private val watchProtocolPath = "/calorify_watch/protocol"
    private val phoneProtocolPath = "/calorify_phone/protocol"
    private val protocolVersion = 2

    init {
        setupMethodChannel()
        setupEventChannel()
    }

    private fun setupMethodChannel() {
        methodChannel.setMethodCallHandler { call, result ->
            when (call.method) {
                "initialize" -> {
                    coroutineScope.launch {
                        try {
                            result.success(initializeWearOs())
                        } catch (e: Exception) {
                            Log.e(TAG, "Initialization failed: type=${e.javaClass.simpleName}")
                            result.error("INIT_ERROR", "Wear OS initialization failed", null)
                        }
                    }
                }
                "sendMessage" -> {
                    coroutineScope.launch {
                        try {
                            val path = call.argument<String>("path") ?: ""
                            val data = call.argument<Map<String, Any>>("data") ?: emptyMap()
                            val response = sendMessageToPhone(path, data)
                            result.success(response)
                        } catch (e: Exception) {
                            Log.e(TAG, "Send message failed: type=${e.javaClass.simpleName}")
                            result.error("SEND_ERROR", "Wear transport failed", null)
                        }
                    }
                }
                "sendProtocolMessage" -> {
                    coroutineScope.launch {
                        try {
                            val data = call.arguments as? ByteArray
                            if (data == null) {
                                result.error(
                                    "INVALID_PROTOCOL_PAYLOAD",
                                    "Wear protocol payload is required",
                                    null
                                )
                            } else {
                                val response = sendProtocolMessageToPhone(data)
                                if (response == null) {
                                    // A connected old phone ignores the generated protocol
                                    // path. Preserve that transport provenance so Dart can
                                    // probe the one-version legacy compatibility path.
                                    result.error(
                                        "PROTOCOL_NO_RESPONSE",
                                        "Phone did not answer the generated protocol request",
                                        null
                                    )
                                } else {
                                    result.success(response)
                                }
                            }
                        } catch (e: Exception) {
                            Log.e(TAG, "Protocol send failed: type=${e.javaClass.simpleName}")
                            result.error("PROTOCOL_SEND_ERROR", "Protocol transport failed", null)
                        }
                    }
                }
                "isPhoneConnected" -> {
                    coroutineScope.launch {
                        val connected = isPhoneConnected()
                        result.success(connected)
                    }
                }
                else -> {
                    result.notImplemented()
                }
            }
        }
    }

    private fun setupEventChannel() {
        eventChannel.setStreamHandler(object : EventChannel.StreamHandler {
            override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
                eventSink = events
            }

            override fun onCancel(arguments: Any?) {
                eventSink = null
            }
        })
    }

    private suspend fun initializeWearOs(): Boolean = withContext(Dispatchers.Main) {
        if (isInitialized) return@withContext true
        try {
            Log.d(TAG, "Initializing Wear OS...")
            wearableDataClient = Wearable.getDataClient(context)
            wearableMessageClient = Wearable.getMessageClient(context)
            
            Log.d(TAG, "Registering message listener...")
            // Register message listener - await the task
            wearableMessageClient?.addListener(this@WearOsChannelHandler)?.await()
            isInitialized = wearableMessageClient != null
            
            Log.d(TAG, "Wear OS initialized successfully")
            
            // Log connected nodes for debugging
            checkConnectedNodes()
            return@withContext isInitialized
        } catch (e: Exception) {
            Log.e(TAG, "Failed to initialize Wear OS", e)
            isInitialized = false
            return@withContext false
        }
    }
    
    private suspend fun checkConnectedNodes() {
        try {
            val nodes = getConnectedNodes()
            val nearbyCount = nodes.count { it.isNearby }
            Log.d(TAG, "Connected nodes: count=${nodes.size}, nearby=$nearbyCount")
        } catch (e: Exception) {
            Log.e(TAG, "Error checking connected nodes", e)
        }
    }

    private suspend fun sendMessageToPhone(path: String, data: Map<String, Any>): Map<String, Any>? = withContext(Dispatchers.IO) {
        try {
            Log.d(TAG, "Attempting to send message to phone: path=$path")
            val nodes = getConnectedNodes()
            Log.d(TAG, "Found ${nodes.size} connected node(s)")
            if (nodes.isEmpty()) {
                Log.w(TAG, "No connected nodes found - cannot send message")
                return@withContext mapOf(
                    "success" to false,
                    "error" to "No connected phone",
                    "errorCode" to "disconnected"
                )
            }
            val messageClient = wearableMessageClient
                ?: return@withContext mapOf(
                    "success" to false,
                    "error" to "Wear OS channel unavailable",
                    "errorCode" to "unavailable"
                )

            val requestId = UUID.randomUUID().toString()
            val jsonData = JSONObject(data).put("_requestId", requestId).toString()
            val payload = jsonData.toByteArray(StandardCharsets.UTF_8)
            val responsePath = "/calorify_phone$path"
            val responseDeferred = CompletableDeferred<Map<String, Any>?>()
            pendingResponses[requestId] = responseDeferred
            
            // Use MessageClient for request-response pattern
            val messagePath = "/calorify_watch$path"
            try {
                val targetNode = nodes.first()
                Log.d(TAG, "Sending message to connected phone: path=$messagePath")
                messageClient.sendMessage(
                    targetNode.id,
                    messagePath,
                    payload
                ).await()
                
                Log.d(TAG, "Message sent successfully to phone: $messagePath")

                // Phone-side text detection includes a backend AI request and
                // routinely needs longer than the low-latency sync operations.
                // Keep the request correlated instead of misclassifying normal
                // analysis latency as an unsupported protocol.
                val responseTimeoutMillis = if (
                    path == "/analysis/detect-text"
                ) 45_000L else 5_000L
                val response = withTimeoutOrNull(responseTimeoutMillis) {
                    responseDeferred.await()
                }

                return@withContext response
                    ?: mapOf(
                        "success" to false,
                        "error" to "Response timed out",
                        "errorCode" to "timeout"
                    )
            } catch (e: Exception) {
                Log.e(TAG, "Failed to send message: type=${e.javaClass.simpleName}")
                return@withContext mapOf(
                    "success" to false,
                    "error" to "Message transport failed",
                    "errorCode" to "platform"
                )
            } finally {
                pendingResponses.remove(requestId)
            }
        } catch (e: Exception) {
            Log.e(TAG, "Error sending message: type=${e.javaClass.simpleName}")
            return@withContext mapOf(
                "success" to false,
                "error" to "Message transport failed",
                "errorCode" to "platform"
            )
        }
    }

    private suspend fun sendProtocolMessageToPhone(data: ByteArray): ByteArray? = withContext(Dispatchers.IO) {
        val request = try {
            WearEnvelope.parseFrom(data)
        } catch (error: Exception) {
            return@withContext protocolError(
                null,
                WearErrorCode.WEAR_ERROR_CODE_INVALID_PAYLOAD,
                "Malformed Wear protocol envelope"
            )
        }
        if (request.version != protocolVersion) {
            return@withContext protocolError(
                request,
                WearErrorCode.WEAR_ERROR_CODE_INVALID_VERSION,
                "Unsupported Wear protocol version ${request.version}"
            )
        }
        if (request.bodyCase != WearEnvelope.BodyCase.REQUEST || request.requestId.isBlank()) {
            return@withContext protocolError(
                request,
                WearErrorCode.WEAR_ERROR_CODE_INVALID_PAYLOAD,
                "Invalid Wear protocol request"
            )
        }
        if (request.operation == WearOperation.UNRECOGNIZED ||
            request.operation == WearOperation.WEAR_OPERATION_UNSPECIFIED ||
            request.operation == WearOperation.WEAR_OPERATION_DATA_CHANGED
        ) {
            return@withContext protocolError(
                request,
                WearErrorCode.WEAR_ERROR_CODE_UNKNOWN_OPERATION,
                "Unknown Wear operation"
            )
        }

        try {
            val messageClient = wearableMessageClient
                ?: return@withContext protocolError(
                    request,
                    WearErrorCode.WEAR_ERROR_CODE_UNAVAILABLE,
                    "Wear OS message client is unavailable",
                    retryable = true
                )
            val nodes = try {
                Wearable.getNodeClient(context).connectedNodes.await()
            } catch (error: Exception) {
                Log.e(TAG, "Failed to query connected nodes", error)
                return@withContext protocolError(
                    request,
                    WearErrorCode.WEAR_ERROR_CODE_PLATFORM,
                    "Failed to query connected phone",
                    retryable = true
                )
            }
            if (nodes.isEmpty()) {
                return@withContext protocolError(
                    request,
                    WearErrorCode.WEAR_ERROR_CODE_DISCONNECTED,
                    "No connected phone",
                    retryable = true
                )
            }

            val responseDeferred = CompletableDeferred<ByteArray?>()
            pendingProtocolResponses[request.requestId] = responseDeferred
            try {
                messageClient.sendMessage(
                    nodes.first().id,
                    watchProtocolPath,
                    data
                ).await()
                // Text detection includes a backend AI request and must not be
                // mistaken for an unsupported peer while normal work is still
                // running on the phone.
                val responseTimeoutMillis = if (
                    request.operation == WearOperation.WEAR_OPERATION_DETECT_TEXT
                ) 45_000L else 5_000L
                val response = withTimeoutOrNull(responseTimeoutMillis) {
                    responseDeferred.await()
                }
                return@withContext response
            } finally {
                pendingProtocolResponses.remove(request.requestId)
            }
        } catch (error: Exception) {
            Log.e(TAG, "Failed to send Wear protocol request: type=${error.javaClass.simpleName}")
            return@withContext protocolError(
                request,
                WearErrorCode.WEAR_ERROR_CODE_PLATFORM,
                "Wear protocol transport failed",
                retryable = true
            )
        }
    }

    private suspend fun getConnectedNodes(): List<Node> {
        return try {
            Wearable.getNodeClient(context).connectedNodes.await()
        } catch (e: Exception) {
            Log.e(TAG, "Error getting connected nodes", e)
            emptyList()
        }
    }

    private suspend fun isPhoneConnected(): Boolean = withContext(Dispatchers.IO) {
        try {
            val nodes = getConnectedNodes()
            return@withContext nodes.isNotEmpty()
        } catch (e: Exception) {
            Log.e(TAG, "Error checking connection", e)
            return@withContext false
        }
    }

    override fun onMessageReceived(messageEvent: MessageEvent) {
        Log.d(TAG, "onMessageReceived: path=${messageEvent.path}")
        coroutineScope.launch {
            if (messageEvent.path == phoneProtocolPath) {
                handleProtocolMessage(messageEvent.data)
            } else if (messageEvent.path.startsWith("/calorify_phone/")) {
                try {
                    val data = String(messageEvent.data, StandardCharsets.UTF_8)
                    val jsonObject = JSONObject(data)
                    val payloadMap = jsonObjectToMap(jsonObject).toMutableMap()
                    val requestId = payloadMap.remove("_requestId") as? String

                    // Include the logical path so the Flutter side can display it
                    val logicalPath = messageEvent.path.removePrefix("/calorify_phone")
                    val message = mutableMapOf<String, Any>("path" to logicalPath)
                    message.putAll(payloadMap)

                    Log.d(TAG, "Received message from phone: path=$logicalPath")
                    if (requestId != null) {
                        val pendingResponse = pendingResponses.remove(requestId)
                        if (pendingResponse != null) {
                            pendingResponse.complete(payloadMap)
                        } else {
                            Log.w(TAG, "Dropping late response for path=$logicalPath")
                        }
                    } else {
                        eventSink?.success(message)
                    }
                } catch (e: Exception) {
                    Log.e(TAG, "Error parsing message: type=${e.javaClass.simpleName}")
                }
            } else {
                Log.d(TAG, "Ignoring message with path: ${messageEvent.path}")
            }
        }
    }

    private fun handleProtocolMessage(data: ByteArray) {
        val envelope = try {
            WearEnvelope.parseFrom(data)
        } catch (error: Exception) {
            Log.w(TAG, "Ignoring malformed Wear protocol message", error)
            return
        }

        when (envelope.bodyCase) {
            WearEnvelope.BodyCase.RESPONSE -> {
                val pending = pendingProtocolResponses.remove(envelope.requestId)
                if (envelope.requestId.isNotBlank() && pending != null) {
                    pending.complete(data)
                } else {
                    Log.w(TAG, "Dropping late or uncorrelated Wear protocol response")
                }
            }
            WearEnvelope.BodyCase.EVENT -> {
                if (envelope.requestId.isEmpty()) {
                    eventSink?.success(data)
                } else {
                    Log.w(TAG, "Dropping correlated payload marked as an event")
                }
            }
            else -> Log.w(TAG, "Ignoring unexpected Wear protocol body ${envelope.bodyCase}")
        }
    }

    private fun protocolError(
        request: WearEnvelope?,
        code: WearErrorCode,
        message: String,
        retryable: Boolean = false
    ): ByteArray {
        val operation = request?.operation?.takeUnless {
            it == WearOperation.UNRECOGNIZED
        } ?: WearOperation.WEAR_OPERATION_UNSPECIFIED
        return WearEnvelope.newBuilder()
            .setVersion(protocolVersion)
            .setRequestId(request?.requestId ?: "")
            .setOperation(operation)
            .setResponse(
                WearResponse.newBuilder()
                    .setError(
                        WearError.newBuilder()
                            .setCode(code)
                            .setMessage(message)
                            .setRetryable(retryable)
                    )
            )
            .build()
            .toByteArray()
    }

    private fun jsonObjectToMap(jsonObject: JSONObject): Map<String, Any> {
        val map = mutableMapOf<String, Any>()
        val keys = jsonObject.keys()
        while (keys.hasNext()) {
            val key = keys.next()
            val value = jsonObject.get(key)
            when (value) {
                is JSONObject -> map[key] = jsonObjectToMap(value)
                is org.json.JSONArray -> map[key] = jsonArrayToList(value)
                else -> map[key] = value ?: ""
            }
        }
        return map
    }

    private fun jsonArrayToList(jsonArray: org.json.JSONArray): List<Any> {
        val list = mutableListOf<Any>()
        for (i in 0 until jsonArray.length()) {
            val value = jsonArray.get(i)
            when (value) {
                is JSONObject -> list.add(jsonObjectToMap(value))
                is org.json.JSONArray -> list.add(jsonArrayToList(value))
                else -> list.add(value)
            }
        }
        return list
    }

    private fun dataMapToMap(dataMap: DataMap): Map<String, Any> {
        val map = mutableMapOf<String, Any>()
        for (key in dataMap.keySet()) {
            val value: Any? = dataMap.get(key)
            when (value) {
                is DataMap -> map[key] = dataMapToMap(value)
                is ArrayList<*> -> map[key] = value
                else -> map[key] = value ?: ""
            }
        }
        return map
    }

    fun dispose() {
        coroutineScope.launch {
            try {
                wearableMessageClient?.removeListener(this@WearOsChannelHandler)?.await()
                isInitialized = false
                eventSink = null
                Log.d(TAG, "WearOsChannelHandler disposed")
            } catch (e: Exception) {
                Log.e(TAG, "Error disposing WearOsChannelHandler", e)
            }
        }
    }
}
