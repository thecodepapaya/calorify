package dev.thecodepapaya.calorify

import android.content.Context
import android.util.Log
import com.google.android.gms.wearable.MessageClient
import com.google.android.gms.wearable.MessageEvent
import com.google.android.gms.wearable.Wearable
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.tasks.await
import kotlinx.coroutines.withContext
import org.json.JSONArray
import org.json.JSONObject
import java.nio.charset.StandardCharsets
import kotlin.coroutines.resume

class WearOsMessageHandler(
    private val context: Context,
    flutterEngine: FlutterEngine,
    private val coroutineScope: CoroutineScope,
) : MessageClient.OnMessageReceivedListener {
    private val methodChannel = MethodChannel(
        flutterEngine.dartExecutor.binaryMessenger,
        "dev.thecodepapaya.calorify/wear_os_phone",
    )
    private var wearableMessageClient: MessageClient? = null
    private var disposed = false

    init {
        initializeWearOs()
        setupMethodChannel()
    }

    private fun initializeWearOs() {
        coroutineScope.launch {
            try {
                withContext(Dispatchers.Main) {
                    if (disposed) return@withContext
                    val client = Wearable.getMessageClient(context)
                    client.addListener(this@WearOsMessageHandler).await()
                    if (disposed) {
                        client.removeListener(this@WearOsMessageHandler).await()
                        return@withContext
                    }
                    wearableMessageClient = client
                    checkConnectedNodes()
                    Log.d(TAG, "Wear OS message handler initialized")
                }
            } catch (error: Exception) {
                Log.e(TAG, "Failed to initialize Wear OS: type=${error.javaClass.simpleName}")
            }
        }
    }

    private suspend fun checkConnectedNodes() {
        try {
            val nodes = Wearable.getNodeClient(context).connectedNodes.await()
            val nearbyCount = nodes.count { it.isNearby }
            Log.d(TAG, "Connected nodes: count=${nodes.size}, nearby=$nearbyCount")
        } catch (error: Exception) {
            Log.e(TAG, "Error checking connected nodes: type=${error.javaClass.simpleName}")
        }
    }

    private fun setupMethodChannel() {
        methodChannel.setMethodCallHandler { call, result ->
            when (call.method) {
                "sendToWatch" -> coroutineScope.launch {
                    try {
                        val path = call.argument<String>("path") ?: ""
                        val data = call.argument<Map<String, Any>>("data") ?: emptyMap()
                        result.success(sendToWatch(path, data))
                    } catch (error: Exception) {
                        Log.e(TAG, "Send to watch failed: type=${error.javaClass.simpleName}")
                        result.error("SEND_ERROR", "Wear transport failed", null)
                    }
                }
                "isWatchConnected" -> coroutineScope.launch {
                    result.success(isWatchConnected())
                }
                "getConnectedWatchInfo" -> coroutineScope.launch {
                    result.success(getConnectedWatchInfo())
                }
                else -> result.notImplemented()
            }
        }
    }

    override fun onMessageReceived(messageEvent: MessageEvent) {
        if (!messageEvent.path.startsWith(WATCH_PATH_PREFIX)) {
            Log.d(TAG, "Ignoring message with path: ${messageEvent.path}")
            return
        }

        coroutineScope.launch {
            val path = messageEvent.path.removePrefix("/calorify_watch")
            try {
                val data = JSONObject(
                    String(messageEvent.data, StandardCharsets.UTF_8),
                ).toMap().toMutableMap()
                val requestId = data.remove(REQUEST_ID_KEY) as? String
                Log.d(TAG, "Received watch request: path=$path")

                val response = handleWatchMessage(path, data)
                if (response != null) {
                    sendResponseToWatch(
                        nodeId = messageEvent.sourceNodeId,
                        path = path,
                        response = response,
                        requestId = requestId,
                    )
                }
            } catch (error: Exception) {
                Log.e(
                    TAG,
                    "Error handling watch request: path=$path, type=${error.javaClass.simpleName}",
                )
            }
        }
    }

    private suspend fun handleWatchMessage(
        path: String,
        data: Map<String, Any>,
    ): Map<String, Any?>? = kotlinx.coroutines.suspendCancellableCoroutine { continuation ->
        val handler = object : MethodChannel.Result {
            override fun success(result: Any?) {
                if (!continuation.isActive) return
                val response = (result as? Map<*, *>)?.entries?.associate {
                    it.key.toString() to it.value
                }
                continuation.resume(response)
            }

            override fun error(errorCode: String, errorMessage: String?, errorDetails: Any?) {
                Log.e(TAG, "Flutter watch handler returned error: code=$errorCode")
                if (continuation.isActive) {
                    continuation.resume(
                        mapOf(
                            "success" to false,
                            "error" to (errorMessage ?: "Unknown error"),
                        ),
                    )
                }
            }

            override fun notImplemented() {
                if (continuation.isActive) continuation.resume(null)
            }
        }

        try {
            methodChannel.invokeMethod(
                "handleWatchMessage",
                mapOf("path" to path, "data" to data),
                handler,
            )
        } catch (error: Exception) {
            Log.e(TAG, "Error calling Flutter handler: type=${error.javaClass.simpleName}")
            if (continuation.isActive) {
                continuation.resume(
                    mapOf("success" to false, "error" to "Flutter handler failed"),
                )
            }
        }
    }

    private suspend fun sendResponseToWatch(
        nodeId: String,
        path: String,
        response: Map<String, Any?>,
        requestId: String?,
    ) {
        try {
            val responsePath = "/calorify_phone$path"
            val responseJson = JSONObject(response)
            if (requestId != null) responseJson.put(REQUEST_ID_KEY, requestId)
            wearableMessageClient?.sendMessage(
                nodeId,
                responsePath,
                responseJson.toString().toByteArray(StandardCharsets.UTF_8),
            )?.await()
            Log.d(TAG, "Sent correlated watch response: path=$responsePath")
        } catch (error: Exception) {
            Log.e(TAG, "Error sending watch response: type=${error.javaClass.simpleName}")
        }
    }

    private suspend fun sendToWatch(path: String, data: Map<String, Any>): Boolean {
        return try {
            val nodes = Wearable.getNodeClient(context).connectedNodes.await()
            if (nodes.isEmpty()) return false
            val messagePath = "/calorify_phone$path"
            val payload = JSONObject(data).toString().toByteArray(StandardCharsets.UTF_8)
            for (node in nodes) {
                wearableMessageClient?.sendMessage(node.id, messagePath, payload)?.await()
            }
            true
        } catch (error: Exception) {
            Log.e(TAG, "Error sending to watch: type=${error.javaClass.simpleName}")
            false
        }
    }

    private suspend fun isWatchConnected(): Boolean = try {
        Wearable.getNodeClient(context).connectedNodes.await().isNotEmpty()
    } catch (error: Exception) {
        Log.e(TAG, "Error checking watch connection: type=${error.javaClass.simpleName}")
        false
    }

    private suspend fun getConnectedWatchInfo(): Map<String, Any>? {
        return try {
            val nodes = Wearable.getNodeClient(context).connectedNodes.await()
            val node = nodes.firstOrNull() ?: return null
            mapOf(
                "name" to node.displayName,
                "id" to node.id,
                "isNearby" to node.isNearby,
                "count" to nodes.size,
            )
        } catch (error: Exception) {
            Log.e(TAG, "Error getting watch info: type=${error.javaClass.simpleName}")
            null
        }
    }

    fun dispose() {
        if (disposed) return
        disposed = true
        methodChannel.setMethodCallHandler(null)
        wearableMessageClient?.removeListener(this)?.addOnFailureListener { error ->
            Log.e(TAG, "Error removing Wear listener: type=${error.javaClass.simpleName}")
        }
        wearableMessageClient = null
    }

    private companion object {
        const val TAG = "WearOsMessageHandler"
        const val WATCH_PATH_PREFIX = "/calorify_watch/"
        const val REQUEST_ID_KEY = "_requestId"
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
