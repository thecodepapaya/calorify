package dev.thecodepapaya.calorify

import android.app.Activity
import android.content.ActivityNotFoundException
import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.widget.Toast

/** Opens the same privacy policy supplied in the Play Console. */
class HealthConnectPrivacyPolicyActivity : Activity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        val privacyPolicyIntent = Intent(
            Intent.ACTION_VIEW,
            Uri.parse(PRIVACY_POLICY_URL),
        ).apply {
            addCategory(Intent.CATEGORY_BROWSABLE)
        }

        try {
            startActivity(privacyPolicyIntent)
        } catch (_: ActivityNotFoundException) {
            showPrivacyPolicyUrl()
        } catch (_: SecurityException) {
            showPrivacyPolicyUrl()
        } finally {
            finish()
        }
    }

    private fun showPrivacyPolicyUrl() {
        Toast.makeText(
            this,
            "Privacy policy: $PRIVACY_POLICY_URL",
            Toast.LENGTH_LONG,
        ).show()
    }

    private companion object {
        const val PRIVACY_POLICY_URL = "https://calorify.thecodepapaya.dev/privacy.html"
    }
}
