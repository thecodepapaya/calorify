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
                val context = flutterEngine.applicationContext
                wearableDataClient = Wearable.getDataClient(context)
                wearableMessageClient = Wearable.getMessageClient(context)
                
                // Register listeners
                wearableMessageClient?.addListener(this@WearOsMessageHandler)
                wearableDataClient?.addOnDataChangedListener(this@WearOsMessageHandler)
                
                Log.d(TAG, "Wear OS message handler initialized")
            } catch (e: Exception) {
                Log.e(TAG, "Failed to initialize Wear OS", e)
            }
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
                else -> {
                    result.notImplemented()
                }
            }
        }
    }

    override fun onMessageReceived(messageEvent: MessageEvent) {
        coroutineScope.launch {
            try {
                if (messageEvent.path.startsWith("/calorify_watch/")) {
                    val path = messageEvent.path.removePrefix("/calorify_watch")
                    val dataString = String(messageEvent.data, StandardCharsets.UTF_8)
                    val data = JSONObject(dataString).toMap()
                    
                    Log.d(TAG, "Received message from watch: $path")
                    
                    // Call Flutter method channel to handle the message
                    val response = handleWatchMessage(path, data)
                    
                    // Send response back to watch if needed
                    if (response != null) {
                        sendResponseToWatch(messageEvent.sourceNodeId, path, response)
                    }
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

    private suspend fun sendResponseToWatch(nodeId: String, path: String, response: Map<String, Any>) {
        try {
            val responsePath = "/calorify_phone$path"
            val responseData = JSONObject(response).toString().toByteArray(StandardCharsets.UTF_8)
            
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
            val nodes = Wearable.getNodeClient(flutterEngine.applicationContext)
                .connectedNodes.await()
            
            if (nodes.isEmpty()) {
                Log.w(TAG, "No connected watch nodes")
                return false
            }

            val messagePath = "/calorify_phone$path"
            val messageData = JSONObject(data).toString().toByteArray(StandardCharsets.UTF_8)
            
            for (node in nodes) {
                wearableMessageClient?.sendMessage(
                    node.id,
                    messagePath,
                    messageData
                )?.await()
            }
            
            Log.d(TAG, "Sent message to watch: $messagePath")
            true
        } catch (e: Exception) {
            Log.e(TAG, "Error sending to watch", e)
            false
        }
    }

    fun dispose() {
        wearableMessageClient?.removeListener(this)
        wearableDataClient?.removeOnDataChangedListener(this)
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
