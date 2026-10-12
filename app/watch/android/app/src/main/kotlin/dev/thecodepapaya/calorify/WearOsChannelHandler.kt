package dev.thecodepapaya.calorify

import android.content.Context
import android.util.Log
import com.google.android.gms.wearable.MessageClient
import com.google.android.gms.wearable.MessageEvent
import com.google.android.gms.wearable.Node
import com.google.android.gms.wearable.Wearable
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.CompletableDeferred
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.tasks.await
import kotlinx.coroutines.withContext
import kotlinx.coroutines.withTimeoutOrNull
import org.json.JSONArray
import org.json.JSONObject
import java.nio.charset.StandardCharsets
import java.util.UUID
import java.util.concurrent.ConcurrentHashMap

class WearOsChannelHandler(
    private val context: Context,
    flutterEngine: FlutterEngine,
    private val coroutineScope: CoroutineScope,
) : MessageClient.OnMessageReceivedListener {
    private val methodChannel = MethodChannel(
        flutterEngine.dartExecutor.binaryMessenger,
        "dev.thecodepapaya.calorify/wear_os",
    )
    private var wearableMessageClient: MessageClient? = null
    private var isInitialized = false
    private var disposed = false
    private val pendingResponses =
        ConcurrentHashMap<String, CompletableDeferred<Map<String, Any>?>>()

    init {
        setupMethodChannel()
    }

    private fun setupMethodChannel() {
        methodChannel.setMethodCallHandler { call, result ->
            when (call.method) {
                "initialize" -> coroutineScope.launch {
                    try {
                        result.success(initializeWearOs())
                    } catch (error: Exception) {
                        Log.e(TAG, "Initialization failed: type=${error.javaClass.simpleName}")
                        result.error("INIT_ERROR", "Wear OS initialization failed", null)
                    }
                }
                "sendMessage" -> coroutineScope.launch {
                    try {
                        val path = call.argument<String>("path") ?: ""
                        val data = call.argument<Map<String, Any>>("data") ?: emptyMap()
                        result.success(sendMessageToPhone(path, data))
                    } catch (error: Exception) {
                        Log.e(TAG, "Send failed: type=${error.javaClass.simpleName}")
                        result.error("SEND_ERROR", "Wear transport failed", null)
                    }
                }
                "isPhoneConnected" -> coroutineScope.launch {
                    result.success(isPhoneConnected())
                }
                else -> result.notImplemented()
            }
        }
    }

    private suspend fun initializeWearOs(): Boolean = withContext(Dispatchers.Main) {
        if (disposed) return@withContext false
        if (isInitialized) return@withContext true
        try {
            val client = Wearable.getMessageClient(context)
            client.addListener(this@WearOsChannelHandler).await()
            if (disposed) {
                client.removeListener(this@WearOsChannelHandler).await()
                return@withContext false
            }
            wearableMessageClient = client
            isInitialized = true
            checkConnectedNodes()
            Log.d(TAG, "Wear OS channel initialized")
            true
        } catch (error: Exception) {
            Log.e(TAG, "Failed to initialize Wear OS: type=${error.javaClass.simpleName}")
            isInitialized = false
            false
        }
    }

    private suspend fun checkConnectedNodes() {
        val nodes = getConnectedNodes()
        val nearbyCount = nodes.count { it.isNearby }
        Log.d(TAG, "Connected nodes: count=${nodes.size}, nearby=$nearbyCount")
    }

    private suspend fun sendMessageToPhone(
        path: String,
        data: Map<String, Any>,
    ): Map<String, Any>? = withContext(Dispatchers.IO) {
        val nodes = getConnectedNodes()
        if (nodes.isEmpty()) {
            return@withContext transportError(
                message = "No connected phone",
                code = "disconnected",
            )
        }
        val messageClient = wearableMessageClient
            ?: return@withContext transportError(
                message = "Wear OS channel unavailable",
                code = "unavailable",
            )

        val requestId = UUID.randomUUID().toString()
        val payload = JSONObject(data)
            .put(REQUEST_ID_KEY, requestId)
            .toString()
            .toByteArray(StandardCharsets.UTF_8)
        val response = CompletableDeferred<Map<String, Any>?>()
        pendingResponses[requestId] = response

        try {
            messageClient.sendMessage(
                nodes.first().id,
                "/calorify_watch$path",
                payload,
            ).await()

            val timeoutMillis = if (path == DETECT_TEXT_PATH) 45_000L else 5_000L
            withTimeoutOrNull(timeoutMillis) { response.await() }
                ?: transportError("Response timed out", "timeout")
        } catch (error: Exception) {
            Log.e(TAG, "Message transport failed: type=${error.javaClass.simpleName}")
            transportError("Message transport failed", "platform")
        } finally {
            pendingResponses.remove(requestId)
        }
    }

    private suspend fun getConnectedNodes(): List<Node> = try {
        Wearable.getNodeClient(context).connectedNodes.await()
    } catch (error: Exception) {
        Log.e(TAG, "Error getting connected nodes: type=${error.javaClass.simpleName}")
        emptyList()
    }

    private suspend fun isPhoneConnected(): Boolean = withContext(Dispatchers.IO) {
        getConnectedNodes().isNotEmpty()
    }

    override fun onMessageReceived(messageEvent: MessageEvent) {
        if (!messageEvent.path.startsWith(PHONE_PATH_PREFIX)) {
            Log.d(TAG, "Ignoring message with path: ${messageEvent.path}")
            return
        }

        coroutineScope.launch {
            val logicalPath = messageEvent.path.removePrefix("/calorify_phone")
            try {
                val payload = JSONObject(
                    String(messageEvent.data, StandardCharsets.UTF_8),
                ).toMap().toMutableMap()
                val requestId = payload.remove(REQUEST_ID_KEY) as? String
                if (requestId == null) {
                    Log.w(TAG, "Dropping uncorrelated phone message: path=$logicalPath")
                    return@launch
                }

                val pending = pendingResponses.remove(requestId)
                if (pending == null) {
                    Log.w(TAG, "Dropping late phone response: path=$logicalPath")
                    return@launch
                }
                pending.complete(payload)
                Log.d(TAG, "Received correlated phone response: path=$logicalPath")
            } catch (error: Exception) {
                Log.e(TAG, "Error parsing phone response: type=${error.javaClass.simpleName}")
            }
        }
    }

    fun dispose() {
        if (disposed) return
        disposed = true
        methodChannel.setMethodCallHandler(null)
        pendingResponses.values.forEach {
            it.complete(transportError("Wear OS channel unavailable", "unavailable"))
        }
        pendingResponses.clear()
        wearableMessageClient?.removeListener(this)?.addOnFailureListener { error ->
            Log.e(TAG, "Error removing Wear listener: type=${error.javaClass.simpleName}")
        }
        wearableMessageClient = null
        isInitialized = false
    }

    private fun transportError(message: String, code: String): Map<String, Any> =
        mapOf(
            "success" to false,
            "error" to message,
            "errorCode" to code,
            TRANSPORT_ERROR_KEY to true,
        )

    private companion object {
        const val TAG = "WearOsChannelHandler"
        const val PHONE_PATH_PREFIX = "/calorify_phone/"
        const val DETECT_TEXT_PATH = "/analysis/detect-text"
        const val REQUEST_ID_KEY = "_requestId"
        const val TRANSPORT_ERROR_KEY = "_transportError"
    }
}

private fun JSONObject.toMap(): Map<String, Any> {
    val map = mutableMapOf<String, Any>()
    val keys = keys()
    while (keys.hasNext()) {
        val key = keys.next()
        map[key] = when (val value = get(key)) {
            is JSONObject -> value.toMap()
            is JSONArray -> value.toList()
            else -> value
        }
    }
    return map
}

private fun JSONArray.toList(): List<Any> = List(length()) { index ->
    when (val value = get(index)) {
        is JSONObject -> value.toMap()
        is JSONArray -> value.toList()
        else -> value
    }
}
