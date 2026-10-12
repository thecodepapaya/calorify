package dev.thecodepapaya.calorify

import android.content.ActivityNotFoundException
import android.content.Intent
import android.os.Build
import android.os.Bundle
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
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
        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            HEALTH_CONNECT_CHANNEL,
        ).setMethodCallHandler { call, result ->
            when (call.method) {
                OPEN_HEALTH_CONNECT_SETTINGS_METHOD -> {
                    if (openHealthConnectSettings()) {
                        result.success(null)
                    } else {
                        result.error(
                            "health_connect_unavailable",
                            "Health Connect settings are unavailable on this device.",
                            null,
                        )
                    }
                }

                else -> result.notImplemented()
            }
        }
    }

    private fun openHealthConnectSettings(): Boolean {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.UPSIDE_DOWN_CAKE) {
            val permissionsIntent = Intent(MANAGE_HEALTH_PERMISSIONS_ACTION).apply {
                putExtra(Intent.EXTRA_PACKAGE_NAME, packageName)
            }
            if (tryStartActivity(permissionsIntent)) return true

            if (tryStartActivity(Intent(HEALTH_CONNECT_HOME_SETTINGS_ACTION))) {
                return true
            }
        }

        val legacySettingsIntent = Intent(LEGACY_HEALTH_CONNECT_SETTINGS_ACTION).apply {
            setPackage(HEALTH_CONNECT_PROVIDER_PACKAGE)
        }
        if (tryStartActivity(legacySettingsIntent)) {
            return true
        }

        val launchIntent = packageManager.getLaunchIntentForPackage(
            HEALTH_CONNECT_PROVIDER_PACKAGE,
        )
        return launchIntent != null && tryStartActivity(launchIntent)
    }

    private fun tryStartActivity(intent: Intent): Boolean = try {
        startActivity(intent)
        true
    } catch (_: ActivityNotFoundException) {
        false
    } catch (_: SecurityException) {
        false
    }

    override fun onDestroy() {
        wearOsHandler?.dispose()
        wearOsHandler = null
        job.cancel()
        super.onDestroy()
    }

    private companion object {
        const val HEALTH_CONNECT_CHANNEL =
            "dev.thecodepapaya.calorify/health_connect"
        const val OPEN_HEALTH_CONNECT_SETTINGS_METHOD =
            "openHealthConnectSettings"
        const val MANAGE_HEALTH_PERMISSIONS_ACTION =
            "android.health.connect.action.MANAGE_HEALTH_PERMISSIONS"
        const val HEALTH_CONNECT_HOME_SETTINGS_ACTION =
            "android.health.connect.action.HEALTH_HOME_SETTINGS"
        const val LEGACY_HEALTH_CONNECT_SETTINGS_ACTION =
            "androidx.health.ACTION_HEALTH_CONNECT_SETTINGS"
        const val HEALTH_CONNECT_PROVIDER_PACKAGE =
            "com.google.android.apps.healthdata"
    }
}
