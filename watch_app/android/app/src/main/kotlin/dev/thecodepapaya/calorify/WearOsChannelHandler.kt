package dev.thecodepapaya.calorify

import android.util.Log
import com.google.android.gms.wearable.*
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.*
import kotlinx.coroutines.tasks.await
import org.json.JSONObject
import java.nio.charset.StandardCharsets

class WearOsChannelHandler(
    private val context: android.content.Context,
    private val flutterEngine: FlutterEngine,
    private val coroutineScope: CoroutineScope
) : MessageClient.OnMessageReceivedListener {

    private val methodChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "dev.thecodepapaya.calorify/wear_os")
    private val eventChannel = EventChannel(flutterEngine.dartExecutor.binaryMessenger, "dev.thecodepapaya.calorify/wear_os_messages")
    
    private var wearableDataClient: DataClient? = null
    private var wearableMessageClient: MessageClient? = null
    private var eventSink: EventChannel.EventSink? = null
    
    private val TAG = "WearOsChannelHandler"

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
                            // Ensure we're on the main thread for initialization
                            withContext(Dispatchers.Main) {
                                initializeWearOs()
                            }
                            result.success(true)
                        } catch (e: Exception) {
                            Log.e(TAG, "Initialization failed", e)
                            result.error("INIT_ERROR", e.message ?: "Unknown error", null)
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
                            Log.e(TAG, "Send message failed", e)
                            result.error("SEND_ERROR", e.message, null)
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

    private suspend fun initializeWearOs() = withContext(Dispatchers.Main) {
        try {
            wearableDataClient = Wearable.getDataClient(context)
            wearableMessageClient = Wearable.getMessageClient(context)
            
            // Register message listener
            wearableMessageClient?.addListener(this@WearOsChannelHandler)
            
            Log.d(TAG, "Wear OS initialized successfully")
        } catch (e: Exception) {
            Log.e(TAG, "Failed to initialize Wear OS", e)
            // Don't throw - allow app to continue without watch connection
        }
    }

    private suspend fun sendMessageToPhone(path: String, data: Map<String, Any>): Map<String, Any>? = withContext(Dispatchers.IO) {
        try {
            val nodes = getConnectedNodes()
            if (nodes.isEmpty()) {
                Log.w(TAG, "No connected nodes found")
                return@withContext mapOf("success" to false, "error" to "No connected phone")
            }

            val jsonData = JSONObject(data).toString()
            val payload = jsonData.toByteArray(StandardCharsets.UTF_8)
            
            // Use MessageClient for request-response pattern
            val messagePath = "/calorify_watch$path"
            try {
                wearableMessageClient?.sendMessage(
                    nodes.first().id,
                    messagePath,
                    payload
                )?.await()
                
                // Wait for response via DataClient
                val response = waitForResponse(messagePath)
                return@withContext response ?: mapOf("success" to true)
            } catch (e: Exception) {
                Log.e(TAG, "Failed to send message", e)
                return@withContext mapOf("success" to false, "error" to (e.message ?: "Unknown error"))
            }
        } catch (e: Exception) {
            Log.e(TAG, "Error sending message", e)
            return@withContext mapOf("success" to false, "error" to (e.message ?: "Unknown error"))
        }
    }

    private suspend fun waitForResponse(path: String): Map<String, Any>? {
        // Wait up to 5 seconds for a response via message
        // For simplicity, we'll use a timeout and return null if no response
        // In production, you might want to implement a proper response handler
        delay(1000) // Wait 1 second for response
        return null // Response will come via onMessageReceived
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
        coroutineScope.launch {
            if (messageEvent.path.startsWith("/calorify_phone/")) {
                try {
                    val data = String(messageEvent.data, StandardCharsets.UTF_8)
                    val jsonObject = JSONObject(data)
                    val message = jsonObjectToMap(jsonObject)
                    eventSink?.success(message)
                } catch (e: Exception) {
                    Log.e(TAG, "Error parsing message", e)
                }
            }
        }
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
        wearableMessageClient?.removeListener(this)
        eventSink = null
    }
}
