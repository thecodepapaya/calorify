package dev.thecodepapaya.calorify

import android.util.Log
import com.google.android.gms.wearable.*
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.*
import kotlinx.coroutines.tasks.await
import org.json.JSONObject
import java.nio.charset.StandardCharsets
import kotlin.coroutines.resume

class WearOsMessageHandler(
    private val context: android.content.Context,
    private val flutterEngine: FlutterEngine,
    private val coroutineScope: CoroutineScope
) : MessageClient.OnMessageReceivedListener, DataClient.OnDataChangedListener {

    private val methodChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "dev.thecodepapaya.calorify/wear_os_phone")
    private var wearableDataClient: DataClient? = null
    private var wearableMessageClient: MessageClient? = null
    
    private val TAG = "WearOsMessageHandler"

    init {
        initializeWearOs()
        setupMethodChannel()
    }

    private fun initializeWearOs() {
        coroutineScope.launch {
            try {
                withContext(Dispatchers.Main) {
                    wearableDataClient = Wearable.getDataClient(context)
                    wearableMessageClient = Wearable.getMessageClient(context)
                    
                    Log.d(TAG, "Getting Wearable clients...")
                    
                    // Register listeners - these return Tasks that should be awaited
                    wearableMessageClient?.addListener(this@WearOsMessageHandler)?.await()
                    wearableDataClient?.addListener(this@WearOsMessageHandler)?.await()
                    
                    Log.d(TAG, "Wear OS message handler initialized successfully")
                    
                    // Log connected nodes for debugging
                    checkConnectedNodes()
                }
            } catch (e: Exception) {
                Log.e(TAG, "Failed to initialize Wear OS", e)
            }
        }
    }
    
    private suspend fun checkConnectedNodes() {
        try {
            val nodes = Wearable.getNodeClient(context).connectedNodes.await()
            Log.d(TAG, "Connected nodes: ${nodes.size}")
            nodes.forEach { node ->
                Log.d(TAG, "Node: ${node.displayName}, id: ${node.id}, nearby: ${node.isNearby}")
            }
        } catch (e: Exception) {
            Log.e(TAG, "Error checking connected nodes", e)
        }
    }

    private fun setupMethodChannel() {
        methodChannel.setMethodCallHandler { call, result ->
            when (call.method) {
                "sendToWatch" -> {
                    coroutineScope.launch {
                        try {
                            val path = call.argument<String>("path") ?: ""
                            val data = call.argument<Map<String, Any>>("data") ?: emptyMap()
                            val success = sendToWatch(path, data)
                            result.success(success)
                        } catch (e: Exception) {
                            Log.e(TAG, "Send to watch failed", e)
                            result.error("SEND_ERROR", e.message, null)
                        }
                    }
                }
                "isWatchConnected" -> {
                    coroutineScope.launch {
                        try {
                            val connected = isWatchConnected()
                            result.success(connected)
                        } catch (e: Exception) {
                            Log.e(TAG, "Error checking watch connection", e)
                            result.success(false)
                        }
                    }
                }
                "getConnectedWatchInfo" -> {
                    coroutineScope.launch {
                        try {
                            val watchInfo = getConnectedWatchInfo()
                            result.success(watchInfo)
                        } catch (e: Exception) {
                            Log.e(TAG, "Error getting watch info", e)
                            result.success(null)
                        }
                    }
                }
                else -> {
                    result.notImplemented()
                }
            }
        }
    }

    override fun onMessageReceived(messageEvent: MessageEvent) {
        Log.d(TAG, "onMessageReceived: path=${messageEvent.path}, sourceNodeId=${messageEvent.sourceNodeId}")
        coroutineScope.launch {
            try {
                if (messageEvent.path.startsWith("/calorify_watch/")) {
                    val path = messageEvent.path.removePrefix("/calorify_watch")
                    val dataString = String(messageEvent.data, StandardCharsets.UTF_8)
                    val data = JSONObject(dataString).toMap().toMutableMap()
                    val requestId = data.remove("_requestId") as? String
                    
                    Log.d(TAG, "Received message from watch: $path, data: $data")
                    
                    // Call Flutter method channel to handle the message
                    val response = handleWatchMessage(path, data)
                    
                    // Send response back to watch if needed
                    if (response != null) {
                        sendResponseToWatch(
                            messageEvent.sourceNodeId,
                            path,
                            response,
                            requestId
                        )
                    }
                } else {
                    Log.d(TAG, "Ignoring message with path: ${messageEvent.path}")
                }
            } catch (e: Exception) {
                Log.e(TAG, "Error handling message from watch", e)
            }
        }
    }

    override fun onDataChanged(dataEvents: DataEventBuffer) {
        // Handle data changes if needed
    }

    private suspend fun handleWatchMessage(path: String, data: Map<String, Any>): Map<String, Any>? {
        return suspendCancellableCoroutine { continuation ->
            try {
                val handler = object : MethodChannel.Result {
                    override fun success(result: Any?) {
                        if (result is Map<*, *>) {
                            val resultMap = result.mapKeys { it.key.toString() }.mapValues { it.value }
                            continuation.resume(resultMap as Map<String, Any>)
                        } else {
                            continuation.resume(null)
                        }
                    }
                    
                    override fun error(errorCode: String, errorMessage: String?, errorDetails: Any?) {
                        Log.e(TAG, "Error from Flutter: $errorCode - $errorMessage")
                        continuation.resume(mapOf("success" to false, "error" to (errorMessage ?: "Unknown error")))
                    }
                    
                    override fun notImplemented() {
                        continuation.resume(null)
                    }
                }
                
                methodChannel.invokeMethod("handleWatchMessage", mapOf(
                    "path" to path,
                    "data" to data
                ), handler)
            } catch (e: Exception) {
                Log.e(TAG, "Error calling Flutter handler", e)
                continuation.resume(mapOf("success" to false, "error" to (e.message ?: "Unknown error")))
            }
        }
    }

    private suspend fun sendResponseToWatch(
        nodeId: String,
        path: String,
        response: Map<String, Any>,
        requestId: String?
    ) {
        try {
            val responsePath = "/calorify_phone$path"
            val responseJson = JSONObject(response)
            if (requestId != null) {
                responseJson.put("_requestId", requestId)
            }
            val responseData = responseJson.toString().toByteArray(StandardCharsets.UTF_8)
            
            wearableMessageClient?.sendMessage(
                nodeId,
                responsePath,
                responseData
            )?.await()
            
            Log.d(TAG, "Sent response to watch: $responsePath")
        } catch (e: Exception) {
            Log.e(TAG, "Error sending response to watch", e)
        }
    }

    private suspend fun sendToWatch(path: String, data: Map<String, Any>): Boolean {
        return try {
            Log.d(TAG, "Attempting to send to watch: path=$path")
            val nodes = Wearable.getNodeClient(context)
                .connectedNodes.await()
            
            Log.d(TAG, "Found ${nodes.size} connected node(s)")
            if (nodes.isEmpty()) {
                Log.w(TAG, "No connected watch nodes - cannot send message")
                return false
            }

            val messagePath = "/calorify_phone$path"
            val messageData = JSONObject(data).toString().toByteArray(StandardCharsets.UTF_8)
            
            for (node in nodes) {
                Log.d(TAG, "Sending message to node: ${node.displayName} (${node.id})")
                wearableMessageClient?.sendMessage(
                    node.id,
                    messagePath,
                    messageData
                )?.await()
                Log.d(TAG, "Message sent successfully to node: ${node.id}")
            }
            
            Log.d(TAG, "Sent message to watch: $messagePath")
            true
        } catch (e: Exception) {
            Log.e(TAG, "Error sending to watch", e)
            false
        }
    }
    
    private suspend fun isWatchConnected(): Boolean {
        return try {
            val nodes = Wearable.getNodeClient(context).connectedNodes.await()
            val connected = nodes.isNotEmpty()
            Log.d(TAG, "Watch connected: $connected (${nodes.size} node(s))")
            connected
        } catch (e: Exception) {
            Log.e(TAG, "Error checking watch connection", e)
            false
        }
    }
    
    private suspend fun getConnectedWatchInfo(): Map<String, Any>? {
        return try {
            val nodes = Wearable.getNodeClient(context).connectedNodes.await()
            if (nodes.isEmpty()) {
                return null
            }
            // Return info about the first connected node
            val node = nodes.first()
            mapOf(
                "name" to (node.displayName ?: "Unknown Device"),
                "id" to node.id,
                "isNearby" to node.isNearby,
                "count" to nodes.size
            )
        } catch (e: Exception) {
            Log.e(TAG, "Error getting watch info", e)
            null
        }
    }

    fun dispose() {
        coroutineScope.launch {
            try {
                wearableMessageClient?.removeListener(this@WearOsMessageHandler)?.await()
                wearableDataClient?.removeListener(this@WearOsMessageHandler)?.await()
                Log.d(TAG, "WearOsMessageHandler disposed")
            } catch (e: Exception) {
                Log.e(TAG, "Error disposing WearOsMessageHandler", e)
            }
        }
    }
}

// Extension to convert JSONObject to Map
private fun JSONObject.toMap(): Map<String, Any> {
    val map = mutableMapOf<String, Any>()
    val keys = this.keys()
    while (keys.hasNext()) {
        val key = keys.next()
        val value = this.get(key)
        when (value) {
            is JSONObject -> map[key] = value.toMap()
            is org.json.JSONArray -> map[key] = value.toList()
            else -> map[key] = value
        }
    }
    return map
}

// Extension to convert JSONArray to List
private fun org.json.JSONArray.toList(): List<Any> {
    val list = mutableListOf<Any>()
    for (i in 0 until this.length()) {
        val value = this.get(i)
        when (value) {
            is JSONObject -> list.add(value.toMap())
            is org.json.JSONArray -> list.add(value.toList())
            else -> list.add(value)
        }
    }
    return list
}
