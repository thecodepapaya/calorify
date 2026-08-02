package dev.thecodepapaya.calorify

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import kotlinx.coroutines.*

class MainActivity : FlutterActivity() {
    private val job = SupervisorJob()
    private val coroutineScope = CoroutineScope(job + Dispatchers.Main)
    private var wearOsHandler: WearOsChannelHandler? = null

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        // The binary messenger is ready during configureFlutterEngine. Register
        // synchronously so early Dart calls cannot race a delayed channel setup.
        try {
            wearOsHandler = WearOsChannelHandler(this, flutterEngine, coroutineScope)
        } catch (e: Exception) {
            android.util.Log.e("MainActivity", "Failed to initialize Wear OS handler", e)
        }
    }

    override fun onDestroy() {
        wearOsHandler?.dispose()
        job.cancel()
        super.onDestroy()
    }
}
