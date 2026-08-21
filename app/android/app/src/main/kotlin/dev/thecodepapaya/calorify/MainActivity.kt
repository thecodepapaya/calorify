package dev.thecodepapaya.calorify

import android.content.pm.ApplicationInfo
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
    private var localInferenceChannel: LocalInferenceChannel? = null

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        wearOsHandler = WearOsMessageHandler(this, flutterEngine, coroutineScope)
        val debugEnabled = applicationInfo.flags and ApplicationInfo.FLAG_DEBUGGABLE != 0
        localInferenceChannel = LocalInferenceChannel(
            flutterEngine,
            coroutineScope,
            debugEnabled,
        )
    }

    override fun onResume() {
        super.onResume()
        localInferenceChannel?.setForeground(true)
    }

    override fun onPause() {
        localInferenceChannel?.setForeground(false)
        super.onPause()
    }

    override fun onDestroy() {
        super.onDestroy()
        wearOsHandler?.dispose()
        localInferenceChannel?.dispose()
        job.cancel()
    }
}
