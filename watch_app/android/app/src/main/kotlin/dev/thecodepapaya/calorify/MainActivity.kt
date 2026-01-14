package dev.thecodepapaya.calorify

import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import kotlinx.coroutines.*
import kotlin.coroutines.CoroutineContext

class MainActivity : FlutterActivity() {
    private val job = SupervisorJob()
    private val coroutineScope = CoroutineScope(job + Dispatchers.Main)
    private var wearOsHandler: WearOsChannelHandler? = null

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        // Delay initialization to ensure Flutter engine is fully ready
        coroutineScope.launch {
            try {
                // Small delay to ensure Flutter engine is ready
                delay(100)
                wearOsHandler = WearOsChannelHandler(this@MainActivity, flutterEngine, coroutineScope)
            } catch (e: Exception) {
                android.util.Log.e("MainActivity", "Failed to initialize Wear OS handler", e)
            }
        }
    }

    override fun onDestroy() {
        super.onDestroy()
        wearOsHandler?.dispose()
        job.cancel()
    }
}
