package dev.thecodepapaya.calorify

import android.os.Bundle
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob

class MainActivity : FlutterFragmentActivity() {
    private val job = SupervisorJob()
    private val coroutineScope = CoroutineScope(job + Dispatchers.Main)
    private var wearOsHandler: WearOsMessageHandler? = null

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        wearOsHandler = WearOsMessageHandler(this, flutterEngine, coroutineScope)
    }

    override fun onDestroy() {
        super.onDestroy()
        wearOsHandler?.dispose()
        job.cancel()
    }
}
