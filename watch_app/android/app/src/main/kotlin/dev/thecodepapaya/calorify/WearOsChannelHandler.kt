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
import java.util.concurrent.ConcurrentHashMap

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
    private val pendingResponses = ConcurrentHashMap<String, CompletableDeferred<Map<String, Any>?>>()
    
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
            Log.d(TAG, "Initializing Wear OS...")
            wearableDataClient = Wearable.getDataClient(context)
            wearableMessageClient = Wearable.getMessageClient(context)
            
            Log.d(TAG, "Registering message listener...")
            // Register message listener - await the task
            wearableMessageClient?.addListener(this@WearOsChannelHandler)?.await()
            
            Log.d(TAG, "Wear OS initialized successfully")
            
            // Log connected nodes for debugging
            checkConnectedNodes()
        } catch (e: Exception) {
            Log.e(TAG, "Failed to initialize Wear OS", e)
            // Don't throw - allow app to continue without watch connection
        }
    }
    
    private suspend fun checkConnectedNodes() {
        try {
            val nodes = getConnectedNodes()
            Log.d(TAG, "Connected nodes: ${nodes.size}")
            nodes.forEach { node ->
                Log.d(TAG, "Node: ${node.displayName}, id: ${node.id}, nearby: ${node.isNearby}")
            }
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
                return@withContext mapOf("success" to false, "error" to "No connected phone")
            }

            val jsonData = JSONObject(data).toString()
            val payload = jsonData.toByteArray(StandardCharsets.UTF_8)
            val responsePath = "/calorify_phone$path"
            val responseDeferred = CompletableDeferred<Map<String, Any>?>()
            pendingResponses[responsePath] = responseDeferred
            
            // Use MessageClient for request-response pattern
            val messagePath = "/calorify_watch$path"
            try {
                val targetNode = nodes.first()
                Log.d(TAG, "Sending message to node: ${targetNode.displayName} (${targetNode.id})")
                wearableMessageClient?.sendMessage(
                    targetNode.id,
                    messagePath,
                    payload
                )?.await()
                
                Log.d(TAG, "Message sent successfully to phone: $messagePath")

                val response = withTimeoutOrNull(5000) {
                    responseDeferred.await()
                }

                return@withContext response
                    ?: mapOf("success" to false, "error" to "Response timed out")
            } catch (e: Exception) {
                Log.e(TAG, "Failed to send message", e)
                return@withContext mapOf("success" to false, "error" to (e.message ?: "Unknown error"))
            } finally {
                pendingResponses.remove(responsePath)
            }
        } catch (e: Exception) {
            Log.e(TAG, "Error sending message", e)
            return@withContext mapOf("success" to false, "error" to (e.message ?: "Unknown error"))
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
        Log.d(TAG, "onMessageReceived: path=${messageEvent.path}, sourceNodeId=${messageEvent.sourceNodeId}")
        coroutineScope.launch {
            if (messageEvent.path.startsWith("/calorify_phone/")) {
                try {
                    val data = String(messageEvent.data, StandardCharsets.UTF_8)
                    val jsonObject = JSONObject(data)
                    val payloadMap = jsonObjectToMap(jsonObject)

                    // Include the logical path so the Flutter side can display it
                    val logicalPath = messageEvent.path.removePrefix("/calorify_phone")
                    val message = mutableMapOf<String, Any>("path" to logicalPath)
                    message.putAll(payloadMap)

                    Log.d(TAG, "Received message from phone: path=$logicalPath, data=$payloadMap")
                    pendingResponses.remove(messageEvent.path)?.complete(payloadMap)
                    eventSink?.success(message)
                } catch (e: Exception) {
                    Log.e(TAG, "Error parsing message", e)
                }
            } else {
                Log.d(TAG, "Ignoring message with path: ${messageEvent.path}")
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
        coroutineScope.launch {
            try {
                wearableMessageClient?.removeListener(this@WearOsChannelHandler)?.await()
                eventSink = null
                Log.d(TAG, "WearOsChannelHandler disposed")
            } catch (e: Exception) {
                Log.e(TAG, "Error disposing WearOsChannelHandler", e)
            }
        }
    }
}
